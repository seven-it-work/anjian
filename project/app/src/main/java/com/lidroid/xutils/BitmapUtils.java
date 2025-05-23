package com.lidroid.xutils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import com.lidroid.xutils.bitmap.BitmapCacheListener;
import com.lidroid.xutils.bitmap.BitmapCommonUtils;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import com.lidroid.xutils.bitmap.callback.BitmapLoadCallBack;
import com.lidroid.xutils.bitmap.callback.BitmapLoadFrom;
import com.lidroid.xutils.bitmap.callback.DefaultBitmapLoadCallBack;
import com.lidroid.xutils.bitmap.core.AsyncDrawable;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import com.lidroid.xutils.bitmap.download.Downloader;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.task.PriorityExecutor;
import com.lidroid.xutils.task.TaskHandler;
import java.io.File;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class BitmapUtils implements TaskHandler {
    private boolean cancelAllTask;
    private Context context;
    private BitmapDisplayConfig defaultDisplayConfig;
    private BitmapGlobalConfig globalConfig;
    private boolean pauseTask;
    private final Object pauseTaskLock;

    /* loaded from: classes.dex */
    public class BitmapLoadTask<T extends View> extends PriorityAsyncTask<Object, Object, Bitmap> {
        private static final int PROGRESS_LOADING = 1;
        private static final int PROGRESS_LOAD_STARTED = 0;
        private final BitmapLoadCallBack<T> callBack;
        private final WeakReference<T> containerReference;
        private final BitmapDisplayConfig displayConfig;
        private BitmapLoadFrom from = BitmapLoadFrom.DISK_CACHE;
        private final String uri;

        public BitmapLoadTask(T t, String str, BitmapDisplayConfig bitmapDisplayConfig, BitmapLoadCallBack<T> bitmapLoadCallBack) {
            if (t == null || str == null || bitmapDisplayConfig == null || bitmapLoadCallBack == null) {
                throw new IllegalArgumentException("args may not be null");
            }
            this.containerReference = new WeakReference<>(t);
            this.callBack = bitmapLoadCallBack;
            this.uri = str;
            this.displayConfig = bitmapDisplayConfig;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.lidroid.xutils.task.PriorityAsyncTask
        public Bitmap doInBackground(Object... objArr) {
            Bitmap bitmap;
            synchronized (BitmapUtils.this.pauseTaskLock) {
                while (true) {
                    bitmap = null;
                    if (!BitmapUtils.this.pauseTask || isCancelled()) {
                        break;
                    }
                    try {
                        BitmapUtils.this.pauseTaskLock.wait();
                    } catch (Throwable unused) {
                    }
                    if (BitmapUtils.this.cancelAllTask) {
                        return null;
                    }
                }
                if (!isCancelled() && getTargetContainer() != null) {
                    publishProgress(0);
                    bitmap = BitmapUtils.this.globalConfig.getBitmapCache().getBitmapFromDiskCache(this.uri, this.displayConfig);
                }
                if (bitmap != null || isCancelled() || getTargetContainer() == null) {
                    return bitmap;
                }
                Bitmap downloadBitmap = BitmapUtils.this.globalConfig.getBitmapCache().downloadBitmap(this.uri, this.displayConfig, this);
                this.from = BitmapLoadFrom.URI;
                return downloadBitmap;
            }
        }

        public T getTargetContainer() {
            T t = this.containerReference.get();
            if (this == BitmapUtils.getBitmapTaskFromContainer(t, this.callBack)) {
                return t;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.lidroid.xutils.task.PriorityAsyncTask
        public void onCancelled(Bitmap bitmap) {
            synchronized (BitmapUtils.this.pauseTaskLock) {
                BitmapUtils.this.pauseTaskLock.notifyAll();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.lidroid.xutils.task.PriorityAsyncTask
        public void onPostExecute(Bitmap bitmap) {
            T targetContainer = getTargetContainer();
            if (targetContainer != null) {
                if (bitmap != null) {
                    this.callBack.onLoadCompleted(targetContainer, this.uri, bitmap, this.displayConfig, this.from);
                } else {
                    this.callBack.onLoadFailed(targetContainer, this.uri, this.displayConfig.getLoadFailedDrawable());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.lidroid.xutils.task.PriorityAsyncTask
        public void onProgressUpdate(Object... objArr) {
            T targetContainer;
            if (objArr == null || objArr.length == 0 || (targetContainer = getTargetContainer()) == null) {
                return;
            }
            switch (((Integer) objArr[0]).intValue()) {
                case 0:
                    this.callBack.onLoadStarted(targetContainer, this.uri, this.displayConfig);
                    return;
                case 1:
                    if (objArr.length != 3) {
                        return;
                    }
                    this.callBack.onLoading(targetContainer, this.uri, this.displayConfig, ((Long) objArr[1]).longValue(), ((Long) objArr[2]).longValue());
                    return;
                default:
                    return;
            }
        }

        public void updateProgress(long j, long j2) {
            publishProgress(1, Long.valueOf(j), Long.valueOf(j2));
        }
    }

    public BitmapUtils(Context context) {
        this(context, null);
    }

    public BitmapUtils(Context context, String str) {
        this.pauseTask = false;
        this.cancelAllTask = false;
        this.pauseTaskLock = new Object();
        if (context == null) {
            throw new IllegalArgumentException("context may not be null");
        }
        this.context = context.getApplicationContext();
        this.globalConfig = BitmapGlobalConfig.getInstance(this.context, str);
        this.defaultDisplayConfig = new BitmapDisplayConfig();
    }

    public BitmapUtils(Context context, String str, float f) {
        this(context, str);
        this.globalConfig.setMemCacheSizePercent(f);
    }

    public BitmapUtils(Context context, String str, float f, int i) {
        this(context, str);
        this.globalConfig.setMemCacheSizePercent(f);
        this.globalConfig.setDiskCacheSize(i);
    }

    public BitmapUtils(Context context, String str, int i) {
        this(context, str);
        this.globalConfig.setMemoryCacheSize(i);
    }

    public BitmapUtils(Context context, String str, int i, int i2) {
        this(context, str);
        this.globalConfig.setMemoryCacheSize(i);
        this.globalConfig.setDiskCacheSize(i2);
    }

    private static <T extends View> boolean bitmapLoadTaskExist(T t, String str, BitmapLoadCallBack<T> bitmapLoadCallBack) {
        BitmapLoadTask bitmapTaskFromContainer = getBitmapTaskFromContainer(t, bitmapLoadCallBack);
        if (bitmapTaskFromContainer == null) {
            return false;
        }
        String str2 = bitmapTaskFromContainer.uri;
        if (!TextUtils.isEmpty(str2) && str2.equals(str)) {
            return true;
        }
        bitmapTaskFromContainer.cancel(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends View> BitmapLoadTask<T> getBitmapTaskFromContainer(T t, BitmapLoadCallBack<T> bitmapLoadCallBack) {
        if (t == null) {
            return null;
        }
        Drawable drawable = bitmapLoadCallBack.getDrawable(t);
        if (drawable instanceof AsyncDrawable) {
            return ((AsyncDrawable) drawable).getBitmapWorkerTask();
        }
        return null;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public void cancel() {
        this.pauseTask = true;
        this.cancelAllTask = true;
        synchronized (this.pauseTaskLock) {
            this.pauseTaskLock.notifyAll();
        }
    }

    public void clearCache() {
        this.globalConfig.clearCache();
    }

    public void clearCache(String str) {
        this.globalConfig.clearCache(str);
    }

    public void clearDiskCache() {
        this.globalConfig.clearDiskCache();
    }

    public void clearDiskCache(String str) {
        this.globalConfig.clearDiskCache(str);
    }

    public void clearMemoryCache() {
        this.globalConfig.clearMemoryCache();
    }

    public void clearMemoryCache(String str) {
        this.globalConfig.clearMemoryCache(str);
    }

    public void closeCache() {
        this.globalConfig.closeCache();
    }

    public BitmapUtils configBitmapCacheListener(BitmapCacheListener bitmapCacheListener) {
        this.globalConfig.setBitmapCacheListener(bitmapCacheListener);
        return this;
    }

    public BitmapUtils configDefaultAutoRotation(boolean z) {
        this.defaultDisplayConfig.setAutoRotation(z);
        return this;
    }

    public BitmapUtils configDefaultBitmapConfig(Bitmap.Config config) {
        this.defaultDisplayConfig.setBitmapConfig(config);
        return this;
    }

    public BitmapUtils configDefaultBitmapMaxSize(int i, int i2) {
        this.defaultDisplayConfig.setBitmapMaxSize(new BitmapSize(i, i2));
        return this;
    }

    public BitmapUtils configDefaultBitmapMaxSize(BitmapSize bitmapSize) {
        this.defaultDisplayConfig.setBitmapMaxSize(bitmapSize);
        return this;
    }

    public BitmapUtils configDefaultCacheExpiry(long j) {
        this.globalConfig.setDefaultCacheExpiry(j);
        return this;
    }

    public BitmapUtils configDefaultConnectTimeout(int i) {
        this.globalConfig.setDefaultConnectTimeout(i);
        return this;
    }

    public BitmapUtils configDefaultDisplayConfig(BitmapDisplayConfig bitmapDisplayConfig) {
        this.defaultDisplayConfig = bitmapDisplayConfig;
        return this;
    }

    public BitmapUtils configDefaultImageLoadAnimation(Animation animation) {
        this.defaultDisplayConfig.setAnimation(animation);
        return this;
    }

    public BitmapUtils configDefaultLoadFailedImage(int i) {
        this.defaultDisplayConfig.setLoadFailedDrawable(this.context.getResources().getDrawable(i));
        return this;
    }

    public BitmapUtils configDefaultLoadFailedImage(Bitmap bitmap) {
        this.defaultDisplayConfig.setLoadFailedDrawable(new BitmapDrawable(this.context.getResources(), bitmap));
        return this;
    }

    public BitmapUtils configDefaultLoadFailedImage(Drawable drawable) {
        this.defaultDisplayConfig.setLoadFailedDrawable(drawable);
        return this;
    }

    public BitmapUtils configDefaultLoadingImage(int i) {
        this.defaultDisplayConfig.setLoadingDrawable(this.context.getResources().getDrawable(i));
        return this;
    }

    public BitmapUtils configDefaultLoadingImage(Bitmap bitmap) {
        this.defaultDisplayConfig.setLoadingDrawable(new BitmapDrawable(this.context.getResources(), bitmap));
        return this;
    }

    public BitmapUtils configDefaultLoadingImage(Drawable drawable) {
        this.defaultDisplayConfig.setLoadingDrawable(drawable);
        return this;
    }

    public BitmapUtils configDefaultReadTimeout(int i) {
        this.globalConfig.setDefaultReadTimeout(i);
        return this;
    }

    public BitmapUtils configDefaultShowOriginal(boolean z) {
        this.defaultDisplayConfig.setShowOriginal(z);
        return this;
    }

    public BitmapUtils configDiskCacheEnabled(boolean z) {
        this.globalConfig.setDiskCacheEnabled(z);
        return this;
    }

    public BitmapUtils configDiskCacheFileNameGenerator(FileNameGenerator fileNameGenerator) {
        this.globalConfig.setFileNameGenerator(fileNameGenerator);
        return this;
    }

    public BitmapUtils configDownloader(Downloader downloader) {
        this.globalConfig.setDownloader(downloader);
        return this;
    }

    public BitmapUtils configGlobalConfig(BitmapGlobalConfig bitmapGlobalConfig) {
        this.globalConfig = bitmapGlobalConfig;
        return this;
    }

    public BitmapUtils configMemoryCacheEnabled(boolean z) {
        this.globalConfig.setMemoryCacheEnabled(z);
        return this;
    }

    public BitmapUtils configThreadPoolSize(int i) {
        this.globalConfig.setThreadPoolSize(i);
        return this;
    }

    public <T extends View> void display(T t, String str) {
        display(t, str, null, null);
    }

    public <T extends View> void display(T t, String str, BitmapDisplayConfig bitmapDisplayConfig) {
        display(t, str, bitmapDisplayConfig, null);
    }

    public <T extends View> void display(T t, String str, BitmapDisplayConfig bitmapDisplayConfig, BitmapLoadCallBack<T> bitmapLoadCallBack) {
        if (t == null) {
            return;
        }
        if (bitmapLoadCallBack == null) {
            bitmapLoadCallBack = new DefaultBitmapLoadCallBack<>();
        }
        if (bitmapDisplayConfig == null || bitmapDisplayConfig == this.defaultDisplayConfig) {
            bitmapDisplayConfig = this.defaultDisplayConfig.cloneNew();
        }
        BitmapSize bitmapMaxSize = bitmapDisplayConfig.getBitmapMaxSize();
        bitmapDisplayConfig.setBitmapMaxSize(BitmapCommonUtils.optimizeMaxSizeByView(t, bitmapMaxSize.getWidth(), bitmapMaxSize.getHeight()));
        t.clearAnimation();
        if (TextUtils.isEmpty(str)) {
            bitmapLoadCallBack.onLoadFailed(t, str, bitmapDisplayConfig.getLoadFailedDrawable());
            return;
        }
        bitmapLoadCallBack.onPreLoad(t, str, bitmapDisplayConfig);
        Bitmap bitmapFromMemCache = this.globalConfig.getBitmapCache().getBitmapFromMemCache(str, bitmapDisplayConfig);
        if (bitmapFromMemCache != null) {
            bitmapLoadCallBack.onLoadStarted(t, str, bitmapDisplayConfig);
            bitmapLoadCallBack.onLoadCompleted(t, str, bitmapFromMemCache, bitmapDisplayConfig, BitmapLoadFrom.MEMORY_CACHE);
            return;
        }
        if (bitmapLoadTaskExist(t, str, bitmapLoadCallBack)) {
            return;
        }
        BitmapLoadTask bitmapLoadTask = new BitmapLoadTask(t, str, bitmapDisplayConfig, bitmapLoadCallBack);
        PriorityExecutor bitmapLoadExecutor = this.globalConfig.getBitmapLoadExecutor();
        File bitmapFileFromDiskCache = getBitmapFileFromDiskCache(str);
        if ((bitmapFileFromDiskCache != null && bitmapFileFromDiskCache.exists()) && bitmapLoadExecutor.isBusy()) {
            bitmapLoadExecutor = this.globalConfig.getDiskCacheExecutor();
        }
        bitmapLoadCallBack.setDrawable(t, new AsyncDrawable(bitmapDisplayConfig.getLoadingDrawable(), bitmapLoadTask));
        bitmapLoadTask.setPriority(bitmapDisplayConfig.getPriority());
        bitmapLoadTask.executeOnExecutor(bitmapLoadExecutor, new Object[0]);
    }

    public <T extends View> void display(T t, String str, BitmapLoadCallBack<T> bitmapLoadCallBack) {
        display(t, str, null, bitmapLoadCallBack);
    }

    public void flushCache() {
        this.globalConfig.flushCache();
    }

    public File getBitmapFileFromDiskCache(String str) {
        return this.globalConfig.getBitmapCache().getBitmapFileFromDiskCache(str);
    }

    public Bitmap getBitmapFromMemCache(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        if (bitmapDisplayConfig == null) {
            bitmapDisplayConfig = this.defaultDisplayConfig;
        }
        return this.globalConfig.getBitmapCache().getBitmapFromMemCache(str, bitmapDisplayConfig);
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean isCancelled() {
        return this.cancelAllTask;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean isPaused() {
        return this.pauseTask;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public void pause() {
        this.pauseTask = true;
        flushCache();
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public void resume() {
        this.pauseTask = false;
        synchronized (this.pauseTaskLock) {
            this.pauseTaskLock.notifyAll();
        }
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean supportCancel() {
        return true;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean supportPause() {
        return true;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean supportResume() {
        return true;
    }
}
