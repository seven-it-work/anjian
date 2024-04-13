.class public Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;
.super Ljava/lang/Object;


# static fields
.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt p0, p1, :cond_b

    if-le v0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_b
    if-le p0, v0, :cond_15

    int-to-float v1, v0

    int-to-float v2, p2

    :goto_f
    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_18

    :cond_15
    int-to-float v1, p0

    int-to-float v2, p1

    goto :goto_f

    :goto_18
    mul-int p0, p0, v0

    int-to-float p0, p0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    :goto_20
    mul-int p2, v1, v1

    int-to-float p2, p2

    div-float p2, p0, p2

    cmpl-float p2, p2, p1

    if-gtz p2, :cond_2b

    move p0, v1

    return p0

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method public static decodeByteArray([B)Landroid/graphics/Bitmap;
    .registers 5

    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_20

    const/4 v2, 0x0

    :try_start_e
    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_15
    .catchall {:try_start_e .. :try_end_13} :catchall_20

    :try_start_13
    monitor-exit v0

    return-object p0

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    :try_start_d
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_11} :catch_13
    .catchall {:try_start_d .. :try_end_11} :catchall_1e

    :try_start_11
    monitor-exit v0

    return-object p0

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    const/4 v2, 0x0

    :try_start_e
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_12} :catch_14
    .catchall {:try_start_e .. :try_end_12} :catchall_1e

    :try_start_12
    monitor-exit v0

    return-object p0

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return-object v2

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 5

    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    :try_start_d
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_11} :catch_13
    .catchall {:try_start_d .. :try_end_11} :catchall_1e

    :try_start_11
    monitor-exit v0

    return-object p0

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static decodeSampledBitmapFromByteArray([BLcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 7

    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_28

    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_3a

    :cond_28
    :try_start_28
    array-length p1, p0

    invoke-static {p0, v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2d} :catch_2f
    .catchall {:try_start_28 .. :try_end_2d} :catchall_3a

    :try_start_2d
    monitor-exit v0

    return-object p0

    :catch_2f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 7

    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result p1

    invoke-static {v1, v3, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_28

    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_38

    :cond_28
    :try_start_28
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2c} :catch_2e
    .catchall {:try_start_28 .. :try_end_2c} :catchall_38

    :try_start_2c
    monitor-exit v0

    return-object p0

    :catch_2e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return-object v2

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 6

    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_27

    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_38

    :cond_27
    :try_start_27
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2b} :catch_2d
    .catchall {:try_start_27 .. :try_end_2b} :catchall_38

    :try_start_2b
    monitor-exit v0

    return-object p0

    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;ILcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 7

    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result p2

    invoke-static {v1, v2, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    iput-boolean p2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p3, :cond_27

    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_38

    :cond_27
    :try_start_27
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2b} :catch_2d
    .catchall {:try_start_27 .. :try_end_2b} :catchall_38

    :try_start_2b
    monitor-exit v0

    return-object p0

    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw p0
.end method
