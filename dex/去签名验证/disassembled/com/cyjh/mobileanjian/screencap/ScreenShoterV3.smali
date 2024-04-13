.class public final Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ScreenShoterV3"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/media/projection/MediaProjection;

.field private d:Ljava/lang/Object;

.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;

.field private g:Landroid/content/Intent;

.field private h:Landroid/media/ImageReader;

.field private i:Landroid/hardware/display/VirtualDisplay;

.field private j:Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

.field private k:Landroid/graphics/Bitmap;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private volatile r:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;-><init>()V

    return-void
.end method

.method private a(II)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->k:Landroid/graphics/Bitmap;

    return-object p1

    :cond_b
    invoke-static {v0, p1, p2}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Landroid/media/Image;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->k:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Landroid/media/Image;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Landroid/media/Image;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/media/Image;II)Landroid/graphics/Bitmap;
    .registers 11

    :try_start_0
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    mul-int v6, v5, v0

    sub-int/2addr v2, v6

    div-int/2addr v2, v5

    add-int/2addr v2, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-le v0, v1, :cond_7f

    if-eqz v2, :cond_7f

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    invoke-virtual {v0, v1, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/16 v4, 0x9

    new-array v4, v4, [F

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    aget v5, v4, v5

    const/4 v6, 0x5

    aget v4, v4, v6

    sub-float/2addr v1, v5

    const/4 v5, 0x0

    sub-float/2addr v5, v4

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, v1

    goto :goto_80

    :cond_7f
    move-object v7, v2

    :goto_80
    if-nez p1, :cond_87

    if-eqz p2, :cond_85

    goto :goto_87

    :cond_85
    move-object p1, v7

    goto :goto_bc

    :cond_87
    :goto_87
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const-string v1, "ScreenShoterV3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "load bitmap info return  1 width="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    add-int/lit8 v3, p1, 0x0

    mul-int/lit8 p1, p2, 0x2

    sub-int v4, v0, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :goto_bc
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const-string v1, "ScreenShoterV3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load bitmap info return  2 width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_df} :catch_ec
    .catchall {:try_start_0 .. :try_end_df} :catchall_e5

    if-eqz p0, :cond_e4

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_e4
    return-object p1

    :catchall_e5
    move-exception p1

    if-eqz p0, :cond_eb

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_eb
    throw p1

    :catch_ec
    if-eqz p0, :cond_f1

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_f1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->k:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a()Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->j:Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    return-object v0

    :cond_b
    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->j:Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    return-object v0
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->j:Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    return-object p1
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    return p0
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    return-object p0
.end method

.method private b(Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .registers 9

    :try_start_0
    new-instance v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;-><init>()V

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iput v1, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->width:I

    iput v2, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->height:I

    iget v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->o:I

    iput v1, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->rotation:I

    iput v6, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->rowStride:I

    iput v3, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->pixelStride:I

    iput-object v4, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->data:[B
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_48
    .catchall {:try_start_0 .. :try_end_3b} :catchall_41

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_40
    return-object v0

    :catchall_41
    move-exception v0

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_47
    throw v0

    :catch_48
    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_4d
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized b()V
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->recycler()V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->updateScreenSize()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    if-nez v1, :cond_20

    if-eqz v0, :cond_20

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->g:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    :cond_20
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "imageReaderHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    const-string v0, "getprop phone.id"

    invoke-static {v0}, Lcom/cyjh/mq/d/f;->a(Ljava/lang/String;)Lcom/cyjh/mq/d/f$a;

    move-result-object v0

    iget-object v1, v0, Lcom/cyjh/mq/d/f$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_5b

    iget-object v0, v0, Lcom/cyjh/mq/d/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5b

    iget v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    iget v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    const/4 v4, 0x2

    invoke-static {v0, v1, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    :goto_58
    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    goto :goto_64

    :cond_5b
    iget v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    iget v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    goto :goto_58

    :goto_64
    iget-object v3, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    const-string v4, "screen-mirror"

    iget v5, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    iget v6, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    iget v7, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->n:I

    const/16 v8, 0x10

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->i:Landroid/hardware/display/VirtualDisplay;

    iput-boolean v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    new-instance v1, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;

    invoke-direct {v1, p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;-><init>(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_90
    .catchall {:try_start_1 .. :try_end_90} :catchall_92

    :cond_90
    monitor-exit p0

    return-void

    :catchall_92
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;
    .registers 2

    const-class v0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$a;->a()Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final init(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->g:Landroid/content/Intent;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->n:I

    :cond_1b
    return-void
.end method

.method public final init(Landroid/content/Context;Landroid/content/Intent;Landroid/media/projection/MediaProjection;)V
    .registers 5

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->g:Landroid/content/Intent;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->n:I

    iput-object p3, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    :cond_1d
    return-void
.end method

.method public final isInited()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    return v0
.end method

.method public final obtainScreenShotImage()Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .registers 5

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    if-eqz v0, :cond_d

    :try_start_4
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a()Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b()V

    const/4 v1, 0x0

    :goto_14
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_2f

    if-nez v2, :cond_29

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_29

    const-wide/16 v2, 0x14

    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_2f

    goto :goto_14

    :catch_24
    move-exception v2

    :try_start_25
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14

    :cond_29
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a()Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public final obtainScreenShotImageReturnBitmap(II)Landroid/graphics/Bitmap;
    .registers 7

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    if-eqz v0, :cond_d

    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b()V

    const/4 v1, 0x0

    :goto_14
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_2f

    if-nez v2, :cond_29

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_29

    const-wide/16 v2, 0x14

    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_2f

    goto :goto_14

    :catch_24
    move-exception v2

    :try_start_25
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14

    :cond_29
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(II)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final recycler()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    iput v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    iput v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    iput v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->o:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    :cond_1a
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    :cond_25
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    :cond_30
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->i:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->i:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->i:Landroid/hardware/display/VirtualDisplay;

    :cond_3b
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public final updateScreenSize()V
    .registers 6

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/screencap/a;->a(Landroid/content/Context;)[I

    move-result-object v1

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    if-eqz v3, :cond_29

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    if-eqz v3, :cond_29

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    :cond_29
    iput v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->o:I

    iget v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    if-ne v0, v2, :cond_33

    iget v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    if-eq v0, v1, :cond_37

    :cond_33
    iput v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    iput v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    :cond_37
    return-void
.end method
