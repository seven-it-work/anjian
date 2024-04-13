.class public Lcom/lidroid/xutils/bitmap/core/BitmapCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;,
        Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    }
.end annotation


# instance fields
.field private final DISK_CACHE_INDEX:I

.field private globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

.field private mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/cache/LruMemoryCache<",
            "Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->DISK_CACHE_INDEX:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    if-nez p1, :cond_17

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "globalConfig may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    return-void
.end method

.method private decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_2f

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    :cond_11
    iget-object p1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_24
    :goto_24
    iget-object p1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2f
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    if-eqz v1, :cond_51

    if-eqz p2, :cond_4b

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_4b

    :cond_3c
    iget-object p1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromByteArray([BLcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4b
    :goto_4b
    iget-object p1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_51
    return-object v0
.end method

.method private declared-synchronized rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12

    monitor-enter p0

    if-eqz p2, :cond_5c

    :try_start_3
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isAutoRotation()Z

    move-result p2

    if-eqz p2, :cond_5c

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_59

    if-eqz p2, :cond_5c

    :try_start_15
    new-instance p2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1e} :catch_57
    .catchall {:try_start_15 .. :try_end_1e} :catchall_59

    :try_start_1e
    const-string p1, "Orientation"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_36

    const/4 p2, 0x6

    if-eq p1, p2, :cond_33

    const/16 p2, 0x8

    if-eq p1, p2, :cond_30

    goto :goto_38

    :cond_30
    const/16 v0, 0x10e

    goto :goto_38

    :cond_33
    const/16 v0, 0x5a

    goto :goto_38

    :cond_36
    const/16 v0, 0xb4

    :goto_38
    if-eqz v0, :cond_5c

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, v0

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_56
    .catchall {:try_start_1e .. :try_end_56} :catchall_59

    goto :goto_5d

    :catch_57
    monitor-exit p0

    return-object p3

    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5c
    move-object p1, p3

    :goto_5d
    monitor-exit p0

    return-object p1
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapFactory()Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;->cloneNew()Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_10
    if-eqz p1, :cond_2b

    if-eqz p3, :cond_2b

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {p1, v0, p3, p4, p5}, Lcom/lidroid/xutils/cache/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    :cond_2b
    return-object p3
.end method

.method public clearCache()V
    .registers 1

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache()V

    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    return-void
.end method

.method public clearDiskCache()V
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2a

    if-nez v1, :cond_25

    :try_start_f
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->delete()V

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_1a
    .catchall {:try_start_f .. :try_end_19} :catchall_2a

    goto :goto_22

    :catch_1a
    move-exception v1

    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    return-void

    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    if-nez v1, :cond_1d

    :try_start_f
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_1f

    goto :goto_1d

    :catch_15
    move-exception p1

    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public clearMemoryCache()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->evictAll()V

    :cond_9
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz p1, :cond_19

    :goto_a
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_19
    return-void
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_20

    :try_start_7
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_15
    .catchall {:try_start_7 .. :try_end_14} :catchall_22

    goto :goto_1d

    :catch_15
    move-exception v1

    :try_start_16
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public downloadBitmap(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Landroid/graphics/Bitmap;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    new-instance v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;)V

    :try_start_e
    iget-object v5, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v5}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v5

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_a7

    iget-object v5, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-nez v5, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    :cond_1f
    iget-object v5, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_21} :catch_ff
    .catchall {:try_start_e .. :try_end_21} :catchall_fa

    if-eqz v5, :cond_a7

    :try_start_23
    iget-object v5, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v5, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v5
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_29} :catch_99
    .catchall {:try_start_23 .. :try_end_29} :catchall_fa

    const/4 v6, 0x0

    if-nez v5, :cond_78

    :try_start_2c
    iget-object v11, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v11, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->edit(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v11

    if-eqz v11, :cond_78

    invoke-virtual {v11, v6}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v12
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_38} :catch_72
    .catchall {:try_start_2c .. :try_end_38} :catchall_6c

    :try_start_38
    iget-object v13, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v13}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;

    move-result-object v13

    invoke-virtual {v13, v2, v12, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J

    move-result-wide v13

    iput-wide v13, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    iget-wide v13, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    cmp-long v15, v13, v9

    if-gez v15, :cond_54

    invoke-virtual {v11}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_4d} :catch_68
    .catchall {:try_start_38 .. :try_end_4d} :catchall_63

    invoke-static {v12}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    :cond_54
    :try_start_54
    iget-wide v13, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    invoke-virtual {v11, v13, v14}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->setEntryExpiryTimestamp(J)V

    invoke-virtual {v11}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->commit()V

    iget-object v11, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v11, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v11
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_62} :catch_68
    .catchall {:try_start_54 .. :try_end_62} :catchall_63

    goto :goto_7a

    :catchall_63
    move-exception v0

    move-object v1, v0

    move-object v11, v5

    goto/16 :goto_114

    :catch_68
    move-exception v0

    move-object v11, v5

    move-object v6, v8

    goto :goto_76

    :catchall_6c
    move-exception v0

    move-object v1, v0

    move-object v11, v5

    move-object v12, v8

    goto/16 :goto_114

    :catch_72
    move-exception v0

    move-object v11, v5

    move-object v6, v8

    move-object v12, v6

    :goto_76
    move-object v5, v0

    goto :goto_9e

    :cond_78
    move-object v11, v5

    move-object v12, v8

    :goto_7a
    if-eqz v11, :cond_97

    :try_start_7c
    invoke-virtual {v11, v6}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v5

    iput-object v5, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-direct {v7, v4, v3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_86} :catch_93
    .catchall {:try_start_7c .. :try_end_86} :catchall_dc

    if-nez v5, :cond_aa

    :try_start_88
    iput-object v8, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    iget-object v6, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v6, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8f} :catch_90
    .catchall {:try_start_88 .. :try_end_8f} :catchall_dc

    goto :goto_aa

    :catch_90
    move-exception v0

    move-object v6, v5

    goto :goto_76

    :catch_93
    move-exception v0

    move-object v5, v0

    move-object v6, v8

    goto :goto_9e

    :cond_97
    move-object v5, v8

    goto :goto_aa

    :catch_99
    move-exception v0

    move-object v5, v0

    move-object v6, v8

    move-object v11, v6

    move-object v12, v11

    :goto_9e
    :try_start_9e
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    goto :goto_aa

    :cond_a7
    move-object v5, v8

    move-object v11, v5

    move-object v12, v11

    :cond_aa
    :goto_aa
    if-nez v5, :cond_e3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_b1} :catch_df
    .catchall {:try_start_9e .. :try_end_b1} :catchall_dc

    :try_start_b1
    iget-object v6, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v6}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;

    move-result-object v6

    invoke-virtual {v6, v2, v5, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J

    move-result-wide v12

    iput-wide v12, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    iget-wide v12, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_bf} :catch_d9
    .catchall {:try_start_b1 .. :try_end_bf} :catchall_111

    cmp-long v1, v12, v9

    if-gez v1, :cond_ca

    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    :cond_ca
    :try_start_ca
    move-object v1, v5

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    invoke-direct {v7, v4, v3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_d7} :catch_d9
    .catchall {:try_start_ca .. :try_end_d7} :catchall_111

    move-object v12, v5

    goto :goto_e4

    :catch_d9
    move-exception v0

    move-object v1, v0

    goto :goto_103

    :catchall_dc
    move-exception v0

    move-object v1, v0

    goto :goto_114

    :catch_df
    move-exception v0

    move-object v1, v0

    move-object v5, v12

    goto :goto_103

    :cond_e3
    move-object v1, v5

    :goto_e4
    if-eqz v1, :cond_f3

    :try_start_e6
    invoke-direct {v7, v2, v3, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-wide v9, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    move-object v1, v7

    move-object v4, v5

    move-wide v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_f3} :catch_df
    .catchall {:try_start_e6 .. :try_end_f3} :catchall_dc

    :cond_f3
    invoke-static {v12}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_fa
    move-exception v0

    move-object v1, v0

    move-object v11, v8

    move-object v12, v11

    goto :goto_114

    :catch_ff
    move-exception v0

    move-object v1, v0

    move-object v5, v8

    move-object v11, v5

    :goto_103
    :try_start_103
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_111

    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    :catchall_111
    move-exception v0

    move-object v1, v0

    move-object v12, v5

    :goto_114
    invoke-static {v12}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public flush()V
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v1, :cond_15

    :try_start_7
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->flush()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_17

    goto :goto_15

    :catch_d
    move-exception v1

    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_10
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_77

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    :cond_13
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_77

    :try_start_17
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1d} :catch_68
    .catchall {:try_start_17 .. :try_end_1d} :catchall_65

    if-eqz v1, :cond_61

    const/4 v2, 0x0

    if-eqz p2, :cond_40

    :try_start_22
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_40

    :cond_29
    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_4c

    :catch_3e
    move-exception p1

    goto :goto_6a

    :cond_40
    :goto_40
    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_4c
    invoke-direct {p0, p1, p2, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->getExpiryTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_5d} :catch_3e
    .catchall {:try_start_22 .. :try_end_5d} :catchall_72

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :cond_61
    :goto_61
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_65
    move-exception p1

    move-object v1, v0

    goto :goto_73

    :catch_68
    move-exception p1

    move-object v1, v0

    :goto_6a
    :try_start_6a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_72

    goto :goto_61

    :catchall_72
    move-exception p1

    :goto_73
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_77
    return-object v0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_1b
    return-object v1
.end method

.method public initDiskCache()V
    .registers 8

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_5f

    :cond_17
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_2e
    invoke-static {v1}, Lcom/lidroid/xutils/util/OtherUtils;->getAvailableSpace(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCacheSize()I

    move-result v4
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_61

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_3e

    move-wide v2, v4

    :cond_3e
    const/4 v4, 0x1

    :try_start_3f
    invoke-static {v1, v4, v4, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->open(Ljava/io/File;IIJ)Lcom/lidroid/xutils/cache/LruDiskCache;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getFileNameGenerator()Lcom/lidroid/xutils/cache/FileNameGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    const-string v1, "create disk cache success"

    invoke-static {v1}, Lcom/lidroid/xutils/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_55} :catch_56
    .catchall {:try_start_3f .. :try_end_55} :catchall_61

    goto :goto_5f

    :catch_56
    move-exception v1

    const/4 v2, 0x0

    :try_start_58
    iput-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    const-string v2, "create disk cache error"

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5f
    :goto_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public initMemoryCache()V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_10

    :try_start_d
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getMemoryCacheSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;I)V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    return-void
.end method

.method public setDiskCacheFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_e

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public setDiskCacheSize(I)V
    .registers 6

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->setMaxSize(J)V

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public setMemoryCacheSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruMemoryCache;->setMaxSize(I)V

    :cond_9
    return-void
.end method
