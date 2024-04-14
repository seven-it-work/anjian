package com.lidroid.xutils.bitmap;

import android.app.ActivityManager;
import android.content.Context;
import android.text.TextUtils;
import com.lidroid.xutils.bitmap.core.BitmapCache;
import com.lidroid.xutils.bitmap.download.DefaultDownloader;
import com.lidroid.xutils.bitmap.download.Downloader;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.task.Priority;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.task.PriorityExecutor;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.util.HashMap;

/* loaded from: classes.dex */
public class BitmapGlobalConfig {
    private static final int DEFAULT_POOL_SIZE = 5;
    public static final int MIN_DISK_CACHE_SIZE = 10485760;
    public static final int MIN_MEMORY_CACHE_SIZE = 2097152;
    private BitmapCache bitmapCache;
    private BitmapCacheListener bitmapCacheListener;
    private String diskCachePath;
    private Downloader downloader;
    private FileNameGenerator fileNameGenerator;
    private Context mContext;
    private static final PriorityExecutor BITMAP_LOAD_EXECUTOR = new PriorityExecutor(5);
    private static final PriorityExecutor DISK_CACHE_EXECUTOR = new PriorityExecutor(2);
    private static final HashMap<String, BitmapGlobalConfig> configMap = new HashMap<>(1);
    private int memoryCacheSize = 4194304;
    private int diskCacheSize = 52428800;
    private boolean memoryCacheEnabled = true;
    private boolean diskCacheEnabled = true;
    private long defaultCacheExpiry = 2592000000L;
    private int defaultConnectTimeout = 15000;
    private int defaultReadTimeout = 15000;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class BitmapCacheManagementTask extends PriorityAsyncTask<Object, Void, Object[]> {
        public static final int MESSAGE_CLEAR = 4;
        public static final int MESSAGE_CLEAR_BY_KEY = 7;
        public static final int MESSAGE_CLEAR_DISK = 6;
        public static final int MESSAGE_CLEAR_DISK_BY_KEY = 9;
        public static final int MESSAGE_CLEAR_MEMORY = 5;
        public static final int MESSAGE_CLEAR_MEMORY_BY_KEY = 8;
        public static final int MESSAGE_CLOSE = 3;
        public static final int MESSAGE_FLUSH = 2;
        public static final int MESSAGE_INIT_DISK_CACHE = 1;
        public static final int MESSAGE_INIT_MEMORY_CACHE = 0;

        private BitmapCacheManagementTask() {
            setPriority(Priority.UI_TOP);
        }

        /* synthetic */ BitmapCacheManagementTask(BitmapGlobalConfig bitmapGlobalConfig, BitmapCacheManagementTask bitmapCacheManagementTask) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.lidroid.xutils.task.PriorityAsyncTask
        public Object[] doInBackground(Object... objArr) {
            BitmapCache bitmapCache;
            if (objArr == null || objArr.length == 0 || (bitmapCache = BitmapGlobalConfig.this.getBitmapCache()) == null) {
                return objArr;
            }
            try {
                switch (((Integer) objArr[0]).intValue()) {
                    case 0:
                        bitmapCache.initMemoryCache();
                        return objArr;
                    case 1:
                        bitmapCache.initDiskCache();
                        return objArr;
                    case 2:
                        bitmapCache.flush();
                        return objArr;
                    case 3:
                        bitmapCache.clearMemoryCache();
                        bitmapCache.close();
                        return objArr;
                    case 4:
                        bitmapCache.clearCache();
                        return objArr;
                    case 5:
                        bitmapCache.clearMemoryCache();
                        return objArr;
                    case 6:
                        bitmapCache.clearDiskCache();
                        return objArr;
                    case 7:
                        if (objArr.length != 2) {
                            return objArr;
                        }
                        bitmapCache.clearCache(String.valueOf(objArr[1]));
                        return objArr;
                    case 8:
                        if (objArr.length != 2) {
                            return objArr;
                        }
                        bitmapCache.clearMemoryCache(String.valueOf(objArr[1]));
                        return objArr;
                    case 9:
                        if (objArr.length != 2) {
                            return objArr;
                        }
                        bitmapCache.clearDiskCache(String.valueOf(objArr[1]));
                        return objArr;
                    default:
                        return objArr;
                }
            } catch (Throwable th) {
                LogUtils.m10369e(th.getMessage(), th);
                return objArr;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.lidroid.xutils.task.PriorityAsyncTask
        public void onPostExecute(Object[] objArr) {
            if (BitmapGlobalConfig.this.bitmapCacheListener == null || objArr == null || objArr.length == 0) {
                return;
            }
            try {
                switch (((Integer) objArr[0]).intValue()) {
                    case 0:
                        BitmapGlobalConfig.this.bitmapCacheListener.onInitMemoryCacheFinished();
                        return;
                    case 1:
                        BitmapGlobalConfig.this.bitmapCacheListener.onInitDiskFinished();
                        return;
                    case 2:
                        BitmapGlobalConfig.this.bitmapCacheListener.onFlushCacheFinished();
                        return;
                    case 3:
                        BitmapGlobalConfig.this.bitmapCacheListener.onCloseCacheFinished();
                        return;
                    case 4:
                        BitmapGlobalConfig.this.bitmapCacheListener.onClearCacheFinished();
                        return;
                    case 5:
                        BitmapGlobalConfig.this.bitmapCacheListener.onClearMemoryCacheFinished();
                        return;
                    case 6:
                        BitmapGlobalConfig.this.bitmapCacheListener.onClearDiskCacheFinished();
                        return;
                    case 7:
                        if (objArr.length != 2) {
                            return;
                        }
                        BitmapGlobalConfig.this.bitmapCacheListener.onClearCacheFinished(String.valueOf(objArr[1]));
                        return;
                    case 8:
                        if (objArr.length != 2) {
                            return;
                        }
                        BitmapGlobalConfig.this.bitmapCacheListener.onClearMemoryCacheFinished(String.valueOf(objArr[1]));
                        return;
                    case 9:
                        if (objArr.length != 2) {
                            return;
                        }
                        BitmapGlobalConfig.this.bitmapCacheListener.onClearDiskCacheFinished(String.valueOf(objArr[1]));
                        return;
                    default:
                        return;
                }
            } catch (Throwable th) {
                LogUtils.m10369e(th.getMessage(), th);
            }
        }
    }

    public BitmapGlobalConfig(Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("context may not be null");
        }
        this.mContext = context;
        this.diskCachePath = str;
        initBitmapCache();
    }

    public static synchronized BitmapGlobalConfig getInstance(Context context, String str) {
        synchronized (BitmapGlobalConfig.class) {
            if (TextUtils.isEmpty(str)) {
                str = OtherUtils.getDiskCacheDir(context, "xBitmapCache");
            }
            if (configMap.containsKey(str)) {
                return configMap.get(str);
            }
            BitmapGlobalConfig bitmapGlobalConfig = new BitmapGlobalConfig(context, str);
            configMap.put(str, bitmapGlobalConfig);
            return bitmapGlobalConfig;
        }
    }

    private int getMemoryClass() {
        return ((ActivityManager) this.mContext.getSystemService("activity")).getMemoryClass();
    }

    private void initBitmapCache() {
        BitmapCacheManagementTask bitmapCacheManagementTask = null;
        new BitmapCacheManagementTask(this, bitmapCacheManagementTask).execute(0);
        new BitmapCacheManagementTask(this, bitmapCacheManagementTask).execute(1);
    }

    public void clearCache() {
        new BitmapCacheManagementTask(this, null).execute(4);
    }

    public void clearCache(String str) {
        new BitmapCacheManagementTask(this, null).execute(7, str);
    }

    public void clearDiskCache() {
        new BitmapCacheManagementTask(this, null).execute(6);
    }

    public void clearDiskCache(String str) {
        new BitmapCacheManagementTask(this, null).execute(9, str);
    }

    public void clearMemoryCache() {
        new BitmapCacheManagementTask(this, null).execute(5);
    }

    public void clearMemoryCache(String str) {
        new BitmapCacheManagementTask(this, null).execute(8, str);
    }

    public void closeCache() {
        new BitmapCacheManagementTask(this, null).execute(3);
    }

    public void flushCache() {
        new BitmapCacheManagementTask(this, null).execute(2);
    }

    public BitmapCache getBitmapCache() {
        if (this.bitmapCache == null) {
            this.bitmapCache = new BitmapCache(this);
        }
        return this.bitmapCache;
    }

    public BitmapCacheListener getBitmapCacheListener() {
        return this.bitmapCacheListener;
    }

    public PriorityExecutor getBitmapLoadExecutor() {
        return BITMAP_LOAD_EXECUTOR;
    }

    public long getDefaultCacheExpiry() {
        return this.defaultCacheExpiry;
    }

    public int getDefaultConnectTimeout() {
        return this.defaultConnectTimeout;
    }

    public int getDefaultReadTimeout() {
        return this.defaultReadTimeout;
    }

    public PriorityExecutor getDiskCacheExecutor() {
        return DISK_CACHE_EXECUTOR;
    }

    public String getDiskCachePath() {
        return this.diskCachePath;
    }

    public int getDiskCacheSize() {
        return this.diskCacheSize;
    }

    public Downloader getDownloader() {
        if (this.downloader == null) {
            this.downloader = new DefaultDownloader();
        }
        this.downloader.setContext(this.mContext);
        this.downloader.setDefaultExpiry(getDefaultCacheExpiry());
        this.downloader.setDefaultConnectTimeout(getDefaultConnectTimeout());
        this.downloader.setDefaultReadTimeout(getDefaultReadTimeout());
        return this.downloader;
    }

    public FileNameGenerator getFileNameGenerator() {
        return this.fileNameGenerator;
    }

    public int getMemoryCacheSize() {
        return this.memoryCacheSize;
    }

    public int getThreadPoolSize() {
        return BITMAP_LOAD_EXECUTOR.getPoolSize();
    }

    public boolean isDiskCacheEnabled() {
        return this.diskCacheEnabled;
    }

    public boolean isMemoryCacheEnabled() {
        return this.memoryCacheEnabled;
    }

    public void setBitmapCacheListener(BitmapCacheListener bitmapCacheListener) {
        this.bitmapCacheListener = bitmapCacheListener;
    }

    public void setDefaultCacheExpiry(long j) {
        this.defaultCacheExpiry = j;
    }

    public void setDefaultConnectTimeout(int i) {
        this.defaultConnectTimeout = i;
    }

    public void setDefaultReadTimeout(int i) {
        this.defaultReadTimeout = i;
    }

    public void setDiskCacheEnabled(boolean z) {
        this.diskCacheEnabled = z;
    }

    public void setDiskCacheSize(int i) {
        if (i >= 10485760) {
            this.diskCacheSize = i;
            if (this.bitmapCache != null) {
                this.bitmapCache.setDiskCacheSize(this.diskCacheSize);
            }
        }
    }

    public void setDownloader(Downloader downloader) {
        this.downloader = downloader;
    }

    public void setFileNameGenerator(FileNameGenerator fileNameGenerator) {
        this.fileNameGenerator = fileNameGenerator;
        if (this.bitmapCache != null) {
            this.bitmapCache.setDiskCacheFileNameGenerator(fileNameGenerator);
        }
    }

    public void setMemCacheSizePercent(float f) {
        if (f < 0.05f || f > 0.8f) {
            throw new IllegalArgumentException("percent must be between 0.05 and 0.8 (inclusive)");
        }
        this.memoryCacheSize = Math.round(f * getMemoryClass() * 1024.0f * 1024.0f);
        if (this.bitmapCache != null) {
            this.bitmapCache.setMemoryCacheSize(this.memoryCacheSize);
        }
    }

    public void setMemoryCacheEnabled(boolean z) {
        this.memoryCacheEnabled = z;
    }

    public void setMemoryCacheSize(int i) {
        if (i < 2097152) {
            setMemCacheSizePercent(0.3f);
            return;
        }
        this.memoryCacheSize = i;
        if (this.bitmapCache != null) {
            this.bitmapCache.setMemoryCacheSize(this.memoryCacheSize);
        }
    }

    public void setThreadPoolSize(int i) {
        BITMAP_LOAD_EXECUTOR.setPoolSize(i);
    }
}
