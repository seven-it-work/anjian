package com.lidroid.xutils.bitmap.core;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import com.lidroid.xutils.bitmap.factory.BitmapFactory;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.cache.LruDiskCache;
import com.lidroid.xutils.cache.LruMemoryCache;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class BitmapCache {
    private BitmapGlobalConfig globalConfig;
    private LruDiskCache mDiskLruCache;
    private LruMemoryCache<MemoryCacheKey, Bitmap> mMemoryCache;
    private final int DISK_CACHE_INDEX = 0;
    private final Object mDiskCacheLock = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class BitmapMeta {
        public byte[] data;
        public long expiryTimestamp;
        public FileInputStream inputStream;

        private BitmapMeta() {
        }

        /* synthetic */ BitmapMeta(BitmapCache bitmapCache, BitmapMeta bitmapMeta) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public class MemoryCacheKey {
        private String subKey;
        private String uri;

        private MemoryCacheKey(String str, BitmapDisplayConfig bitmapDisplayConfig) {
            this.uri = str;
            this.subKey = bitmapDisplayConfig == null ? null : bitmapDisplayConfig.toString();
        }

        /* synthetic */ MemoryCacheKey(BitmapCache bitmapCache, String str, BitmapDisplayConfig bitmapDisplayConfig, MemoryCacheKey memoryCacheKey) {
            this(str, bitmapDisplayConfig);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MemoryCacheKey)) {
                return false;
            }
            MemoryCacheKey memoryCacheKey = (MemoryCacheKey) obj;
            if (!this.uri.equals(memoryCacheKey.uri)) {
                return false;
            }
            if (this.subKey == null || memoryCacheKey.subKey == null) {
                return true;
            }
            return this.subKey.equals(memoryCacheKey.subKey);
        }

        public int hashCode() {
            return this.uri.hashCode();
        }
    }

    public BitmapCache(BitmapGlobalConfig bitmapGlobalConfig) {
        if (bitmapGlobalConfig == null) {
            throw new IllegalArgumentException("globalConfig may not be null");
        }
        this.globalConfig = bitmapGlobalConfig;
    }

    private Bitmap decodeBitmapMeta(BitmapMeta bitmapMeta, BitmapDisplayConfig bitmapDisplayConfig) throws IOException {
        if (bitmapMeta == null) {
            return null;
        }
        if (bitmapMeta.inputStream != null) {
            return (bitmapDisplayConfig == null || bitmapDisplayConfig.isShowOriginal()) ? BitmapDecoder.decodeFileDescriptor(bitmapMeta.inputStream.getFD()) : BitmapDecoder.decodeSampledBitmapFromDescriptor(bitmapMeta.inputStream.getFD(), bitmapDisplayConfig.getBitmapMaxSize(), bitmapDisplayConfig.getBitmapConfig());
        }
        if (bitmapMeta.data != null) {
            return (bitmapDisplayConfig == null || bitmapDisplayConfig.isShowOriginal()) ? BitmapDecoder.decodeByteArray(bitmapMeta.data) : BitmapDecoder.decodeSampledBitmapFromByteArray(bitmapMeta.data, bitmapDisplayConfig.getBitmapMaxSize(), bitmapDisplayConfig.getBitmapConfig());
        }
        return null;
    }

    private synchronized Bitmap rotateBitmapIfNeeded(String str, BitmapDisplayConfig bitmapDisplayConfig, Bitmap bitmap) {
        File bitmapFileFromDiskCache;
        Bitmap createBitmap;
        if (bitmapDisplayConfig != null) {
            if (bitmapDisplayConfig.isAutoRotation() && (bitmapFileFromDiskCache = getBitmapFileFromDiskCache(str)) != null && bitmapFileFromDiskCache.exists()) {
                try {
                    int i = 0;
                    int attributeInt = new ExifInterface(bitmapFileFromDiskCache.getPath()).getAttributeInt("Orientation", 0);
                    if (attributeInt == 3) {
                        i = 180;
                    } else if (attributeInt == 6) {
                        i = 90;
                    } else if (attributeInt == 8) {
                        i = 270;
                    }
                    if (i != 0) {
                        Matrix matrix = new Matrix();
                        matrix.postRotate(i);
                        createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                        bitmap.recycle();
                    }
                } catch (Throwable unused) {
                    return bitmap;
                }
            }
        }
        createBitmap = bitmap;
        return createBitmap;
    }

    public Bitmap addBitmapToMemoryCache(String str, BitmapDisplayConfig bitmapDisplayConfig, Bitmap bitmap, long j) throws IOException {
        BitmapFactory bitmapFactory;
        if (bitmapDisplayConfig != null && (bitmapFactory = bitmapDisplayConfig.getBitmapFactory()) != null) {
            bitmap = bitmapFactory.cloneNew().createBitmap(bitmap);
        }
        if (str != null && bitmap != null && this.globalConfig.isMemoryCacheEnabled() && this.mMemoryCache != null) {
            this.mMemoryCache.put(new MemoryCacheKey(this, str, bitmapDisplayConfig, null), bitmap, j);
        }
        return bitmap;
    }

    public void clearCache() {
        clearMemoryCache();
        clearDiskCache();
    }

    public void clearCache(String str) {
        clearMemoryCache(str);
        clearDiskCache(str);
    }

    public void clearDiskCache() {
        synchronized (this.mDiskCacheLock) {
            if (this.mDiskLruCache != null && !this.mDiskLruCache.isClosed()) {
                try {
                    this.mDiskLruCache.delete();
                    this.mDiskLruCache.close();
                } catch (Throwable th) {
                    LogUtils.m10369e(th.getMessage(), th);
                }
                this.mDiskLruCache = null;
            }
        }
        initDiskCache();
    }

    public void clearDiskCache(String str) {
        synchronized (this.mDiskCacheLock) {
            if (this.mDiskLruCache != null && !this.mDiskLruCache.isClosed()) {
                try {
                    this.mDiskLruCache.remove(str);
                } catch (Throwable th) {
                    LogUtils.m10369e(th.getMessage(), th);
                }
            }
        }
    }

    public void clearMemoryCache() {
        if (this.mMemoryCache != null) {
            this.mMemoryCache.evictAll();
        }
    }

    public void clearMemoryCache(String str) {
        MemoryCacheKey memoryCacheKey = new MemoryCacheKey(this, str, null, 0 == true ? 1 : 0);
        if (this.mMemoryCache != null) {
            while (this.mMemoryCache.containsKey(memoryCacheKey)) {
                this.mMemoryCache.remove(memoryCacheKey);
            }
        }
    }

    public void close() {
        synchronized (this.mDiskCacheLock) {
            if (this.mDiskLruCache != null) {
                try {
                    if (!this.mDiskLruCache.isClosed()) {
                        this.mDiskLruCache.close();
                    }
                } catch (Throwable th) {
                    LogUtils.m10369e(th.getMessage(), th);
                }
                this.mDiskLruCache = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ac A[Catch: all -> 0x00dc, Throwable -> 0x00df, TRY_LEAVE, TryCatch #1 {Throwable -> 0x00df, blocks: (B:18:0x00ac, B:29:0x00e6, B:59:0x009e), top: B:58:0x009e }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e6 A[Catch: all -> 0x00dc, Throwable -> 0x00df, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Throwable -> 0x00df, blocks: (B:18:0x00ac, B:29:0x00e6, B:59:0x009e), top: B:58:0x009e }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Bitmap downloadBitmap(java.lang.String r17, com.lidroid.xutils.bitmap.BitmapDisplayConfig r18, com.lidroid.xutils.BitmapUtils.BitmapLoadTask<?> r19) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.bitmap.core.BitmapCache.downloadBitmap(java.lang.String, com.lidroid.xutils.bitmap.BitmapDisplayConfig, com.lidroid.xutils.BitmapUtils$BitmapLoadTask):android.graphics.Bitmap");
    }

    public void flush() {
        synchronized (this.mDiskCacheLock) {
            if (this.mDiskLruCache != null) {
                try {
                    this.mDiskLruCache.flush();
                } catch (Throwable th) {
                    LogUtils.m10369e(th.getMessage(), th);
                }
            }
        }
    }

    public File getBitmapFileFromDiskCache(String str) {
        synchronized (this.mDiskCacheLock) {
            if (this.mDiskLruCache == null) {
                return null;
            }
            return this.mDiskLruCache.getCacheFile(str, 0);
        }
    }

    public Bitmap getBitmapFromDiskCache(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        LruDiskCache.Snapshot snapshot;
        Bitmap decodeSampledBitmapFromDescriptor;
        if (str == null || !this.globalConfig.isDiskCacheEnabled()) {
            return null;
        }
        if (this.mDiskLruCache == null) {
            initDiskCache();
        }
        LruDiskCache lruDiskCache = this.mDiskLruCache;
        try {
            if (lruDiskCache != null) {
                try {
                    snapshot = this.mDiskLruCache.get(str);
                    if (snapshot != null) {
                        if (bitmapDisplayConfig != null) {
                            try {
                                if (!bitmapDisplayConfig.isShowOriginal()) {
                                    decodeSampledBitmapFromDescriptor = BitmapDecoder.decodeSampledBitmapFromDescriptor(snapshot.getInputStream(0).getFD(), bitmapDisplayConfig.getBitmapMaxSize(), bitmapDisplayConfig.getBitmapConfig());
                                    Bitmap addBitmapToMemoryCache = addBitmapToMemoryCache(str, bitmapDisplayConfig, rotateBitmapIfNeeded(str, bitmapDisplayConfig, decodeSampledBitmapFromDescriptor), this.mDiskLruCache.getExpiryTimestamp(str));
                                    IOUtils.closeQuietly(snapshot);
                                    return addBitmapToMemoryCache;
                                }
                            } catch (Throwable th) {
                                th = th;
                                LogUtils.m10369e(th.getMessage(), th);
                                IOUtils.closeQuietly(snapshot);
                                return null;
                            }
                        }
                        decodeSampledBitmapFromDescriptor = BitmapDecoder.decodeFileDescriptor(snapshot.getInputStream(0).getFD());
                        Bitmap addBitmapToMemoryCache2 = addBitmapToMemoryCache(str, bitmapDisplayConfig, rotateBitmapIfNeeded(str, bitmapDisplayConfig, decodeSampledBitmapFromDescriptor), this.mDiskLruCache.getExpiryTimestamp(str));
                        IOUtils.closeQuietly(snapshot);
                        return addBitmapToMemoryCache2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    lruDiskCache = null;
                    IOUtils.closeQuietly(lruDiskCache);
                    throw th;
                }
                IOUtils.closeQuietly(snapshot);
                return null;
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public Bitmap getBitmapFromMemCache(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        MemoryCacheKey memoryCacheKey = null;
        if (this.mMemoryCache == null || !this.globalConfig.isMemoryCacheEnabled()) {
            return null;
        }
        return this.mMemoryCache.get(new MemoryCacheKey(this, str, bitmapDisplayConfig, memoryCacheKey));
    }

    public void initDiskCache() {
        synchronized (this.mDiskCacheLock) {
            if (this.globalConfig.isDiskCacheEnabled() && (this.mDiskLruCache == null || this.mDiskLruCache.isClosed())) {
                File file = new File(this.globalConfig.getDiskCachePath());
                if (file.exists() || file.mkdirs()) {
                    long availableSpace = OtherUtils.getAvailableSpace(file);
                    long diskCacheSize = this.globalConfig.getDiskCacheSize();
                    if (availableSpace > diskCacheSize) {
                        availableSpace = diskCacheSize;
                    }
                    try {
                        this.mDiskLruCache = LruDiskCache.open(file, 1, 1, availableSpace);
                        this.mDiskLruCache.setFileNameGenerator(this.globalConfig.getFileNameGenerator());
                        LogUtils.m10366d("create disk cache success");
                    } catch (Throwable th) {
                        this.mDiskLruCache = null;
                        LogUtils.m10369e("create disk cache error", th);
                    }
                }
            }
        }
    }

    public void initMemoryCache() {
        if (this.globalConfig.isMemoryCacheEnabled()) {
            if (this.mMemoryCache != null) {
                try {
                    clearMemoryCache();
                } catch (Throwable unused) {
                }
            }
            this.mMemoryCache = new LruMemoryCache<MemoryCacheKey, Bitmap>(this.globalConfig.getMemoryCacheSize()) { // from class: com.lidroid.xutils.bitmap.core.BitmapCache.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.lidroid.xutils.cache.LruMemoryCache
                public int sizeOf(MemoryCacheKey memoryCacheKey, Bitmap bitmap) {
                    if (bitmap == null) {
                        return 0;
                    }
                    return bitmap.getRowBytes() * bitmap.getHeight();
                }
            };
        }
    }

    public void setDiskCacheFileNameGenerator(FileNameGenerator fileNameGenerator) {
        synchronized (this.mDiskCacheLock) {
            if (this.mDiskLruCache != null && fileNameGenerator != null) {
                this.mDiskLruCache.setFileNameGenerator(fileNameGenerator);
            }
        }
    }

    public void setDiskCacheSize(int i) {
        synchronized (this.mDiskCacheLock) {
            if (this.mDiskLruCache != null) {
                this.mDiskLruCache.setMaxSize(i);
            }
        }
    }

    public void setMemoryCacheSize(int i) {
        if (this.mMemoryCache != null) {
            this.mMemoryCache.setMaxSize(i);
        }
    }
}
