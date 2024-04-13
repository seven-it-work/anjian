.class public final Lcom/c/b/d;
.super Lcom/c/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/c/b/a<",
        "Landroid/graphics/Bitmap;",
        "Lcom/c/b/d;",
        ">;"
    }
.end annotation


# static fields
.field private static A:I = 0x14

.field private static B:I = 0x9c4

.field private static C:I = 0x27100

.field private static D:I = 0xf4240

.field private static E:Z = false

.field private static F:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static G:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static H:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static I:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/ImageView;",
            "Lcom/c/b/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private static R:Landroid/graphics/Bitmap; = null

.field private static S:Landroid/graphics/Bitmap; = null

.field private static final T:I = 0x12c

.field private static z:I = 0x14


# instance fields
.field private J:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private K:I

.field private L:Landroid/graphics/Bitmap;

.field private M:I

.field private N:Z

.field private O:F

.field private P:Z

.field private Q:Z

.field public u:I

.field public v:I

.field public w:Ljava/io/File;

.field public x:Landroid/graphics/Bitmap;

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/d;->I:Ljava/util/HashMap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/c/b/d;->R:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/c/b/d;->S:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/c/b/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/d;->N:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/c/b/d;->O:F

    const-class v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    move-object v1, p0

    check-cast v1, Lcom/c/b/d;

    invoke-virtual {v1, v0}, Lcom/c/b/d;->b(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/d;

    invoke-virtual {v1, v0}, Lcom/c/b/d;->a(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/d;

    const-string v1, ""

    iput-object v1, v0, Lcom/c/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(II)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xa

    if-lt v1, v2, :cond_7

    return v0

    :cond_7
    mul-int/lit8 v2, p1, 0x2

    if-lt p0, v2, :cond_12

    div-int/lit8 p0, p0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/c/b/d;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-static {v0, v1, v1, v2, v1}, Lcom/c/b/d;->a(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    :cond_18
    return-object v2
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float p1, p1

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/c/b/d;->R:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_14

    const/4 p1, 0x0

    :cond_14
    if-eqz p1, :cond_1b

    const/4 p2, 0x0

    :goto_17
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    :cond_1b
    const/4 v0, -0x2

    if-ne p2, v0, :cond_21

    const/16 p2, 0x8

    goto :goto_17

    :cond_21
    const/4 v0, -0x1

    if-ne p2, v0, :cond_26

    const/4 p2, 0x4

    goto :goto_17

    :cond_26
    return-object p1
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/c/b/d;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/c/b/d;->h()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_1a

    invoke-static {}, Lcom/c/b/d;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :cond_1a
    const/4 p2, 0x0

    if-nez p1, :cond_33

    invoke-static {}, Lcom/c/b/d;->j()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_33

    sget p0, Lcom/c/b/a;->t:I

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_33

    sput-object p2, Lcom/c/b/d;->H:Ljava/util/Map;

    move-object p1, p2

    :cond_33
    return-object p1
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x1

    :try_start_5
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    goto :goto_16

    :catch_11
    move-exception p0

    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    :goto_16
    if-lez p0, :cond_a3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_a6

    goto :goto_49

    :pswitch_2b
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_49

    :pswitch_2f
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_3e

    :pswitch_33
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_49

    :pswitch_37
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_3e

    :pswitch_3b
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    :goto_3e
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_49

    :pswitch_42
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_49

    :pswitch_46
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_49
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "before"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "after"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq p1, p0, :cond_a4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_a3
    move-object p0, p1

    :cond_a4
    return-object p0

    nop

    :pswitch_data_a6
    .packed-switch 0x2
        :pswitch_46
        :pswitch_42
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v0, 0x0

    :try_start_d
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_33
    .catchall {:try_start_d .. :try_end_12} :catchall_31

    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_2d
    .catchall {:try_start_12 .. :try_end_1a} :catchall_2a

    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    :try_start_1e
    invoke-static {p0, p1}, Lcom/c/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_23
    .catchall {:try_start_1e .. :try_end_22} :catchall_2a

    goto :goto_26

    :catch_23
    move-exception p0

    goto :goto_2f

    :cond_25
    move-object p0, p1

    :goto_26
    invoke-static {v1}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_2a
    move-exception p0

    move-object v0, v1

    goto :goto_3d

    :catch_2d
    move-exception p0

    move-object p1, v0

    :goto_2f
    move-object v0, v1

    goto :goto_35

    :catchall_31
    move-exception p0

    goto :goto_3d

    :catch_33
    move-exception p0

    move-object p1, v0

    :goto_35
    :try_start_35
    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_31

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    move-object p0, p1

    return-object p0

    :goto_3d
    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .registers 9

    iget v2, p0, Lcom/c/b/d;->u:I

    iget-boolean v3, p0, Lcom/c/b/d;->N:Z

    iget v4, p0, Lcom/c/b/d;->M:I

    iget-boolean v5, p0, Lcom/c/b/d;->Q:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/c/b/d;->a(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    const/4 v1, 0x1

    if-lez p2, :cond_29

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v2, p5}, Lcom/c/b/d;->a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez p3, :cond_1d

    iget p3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1d
    invoke-static {v3, p2}, Lcom/c/b/d;->a(II)I

    move-result p2

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2a

    :cond_29
    move-object p3, v0

    :goto_2a
    :try_start_2a
    invoke-static {p0, p1, p3, p5}, Lcom/c/b/d;->a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception p0

    invoke-static {}, Lcom/c/b/d;->g()V

    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_37
    if-lez p4, :cond_82

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    new-instance p5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p5, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float p4, p4

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v1, -0xbdbdbe

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v0, p4, p4, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p2, p0, p5, p5, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, p1

    :cond_82
    return-object p0
.end method

.method private static a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .registers 5

    if-eqz p0, :cond_7

    invoke-static {p0, p2, p3}, Lcom/c/b/d;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_11

    :cond_7
    if-eqz p1, :cond_10

    const/4 p3, 0x0

    array-length v0, p1

    invoke-static {p1, p3, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    if-nez p1, :cond_1e

    if-eqz p2, :cond_1e

    iget-boolean p2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p2, :cond_1e

    const-string p2, "decode image failed"

    invoke-static {p2, p0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    return-object p1
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_14

    new-instance v0, Lcom/c/d/g;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/c/d/g;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    return-object v0

    :cond_14
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private a(F)Lcom/c/b/d;
    .registers 2

    iput p1, p0, Lcom/c/b/d;->y:F

    return-object p0
.end method

.method private a(I)Lcom/c/b/d;
    .registers 2

    iput p1, p0, Lcom/c/b/d;->u:I

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;)Lcom/c/b/d;
    .registers 2

    iput-object p1, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private a(Ljava/io/File;)Lcom/c/b/d;
    .registers 2

    iput-object p1, p0, Lcom/c/b/d;->w:Ljava/io/File;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/c/a/a;Lcom/c/b/e;Lorg/apache/http/HttpHost;)V
    .registers 25

    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/c/b/e;->a:Z

    iget-boolean v5, v0, Lcom/c/b/e;->b:Z

    iget v6, v0, Lcom/c/b/e;->e:I

    iget v7, v0, Lcom/c/b/e;->f:I

    iget-object v8, v0, Lcom/c/b/e;->c:Landroid/graphics/Bitmap;

    iget v9, v0, Lcom/c/b/e;->g:I

    iget v10, v0, Lcom/c/b/e;->h:F

    iget v11, v0, Lcom/c/b/e;->j:F

    iget v14, v0, Lcom/c/b/e;->d:I

    iget v15, v0, Lcom/c/b/e;->i:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v16, p7

    invoke-static/range {v0 .. v16}, Lcom/c/b/d;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/c/a/a;IILorg/apache/http/HttpHost;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/c/a/a;IILorg/apache/http/HttpHost;)V
    .registers 26

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p6

    move-object/from16 v5, p12

    move/from16 v6, p15

    const/4 v7, 0x0

    if-eqz v3, :cond_11

    invoke-static {v2, v4, v6}, Lcom/c/b/d;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_12

    :cond_11
    move-object v8, v7

    :goto_12
    if-eqz v8, :cond_2f

    const v0, 0x40ff0001

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v5, v2, v0}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v7, 0x4

    move-object v0, v1

    move-object v1, v8

    move-object/from16 v2, p8

    move/from16 v3, p7

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    invoke-static/range {v0 .. v7}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    return-void

    :cond_2f
    new-instance v8, Lcom/c/b/d;

    invoke-direct {v8}, Lcom/c/b/d;-><init>()V

    iput-object v2, v8, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object v2, v8

    check-cast v2, Lcom/c/b/d;

    invoke-virtual {v2, v1}, Lcom/c/b/d;->a(Landroid/widget/ImageView;)Lcom/c/b/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/c/b/d;->b(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/d;

    move v2, p5

    invoke-virtual {v1, v2}, Lcom/c/b/d;->a(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/d;

    iput v4, v1, Lcom/c/b/d;->u:I

    move/from16 v2, p7

    iput v2, v1, Lcom/c/b/d;->v:I

    move-object/from16 v2, p8

    iput-object v2, v1, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    move/from16 v2, p9

    iput v2, v1, Lcom/c/b/d;->K:I

    move/from16 v2, p10

    iput v2, v1, Lcom/c/b/d;->y:F

    move/from16 v2, p11

    iput v2, v1, Lcom/c/b/d;->O:F

    invoke-virtual {v1, v5}, Lcom/c/b/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/d;

    move-object/from16 v2, p13

    invoke-virtual {v1, v2}, Lcom/c/b/d;->a(Lcom/c/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/d;

    move/from16 v2, p14

    iput v2, v1, Lcom/c/b/a;->j:I

    check-cast v1, Lcom/c/b/d;

    iput v6, v1, Lcom/c/b/d;->M:I

    iput-object v7, v1, Lcom/c/b/a;->d:Ljava/lang/String;

    if-eqz p16, :cond_85

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {v8, v2, v1}, Lcom/c/b/d;->a(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_85
    if-eqz v0, :cond_8b

    invoke-virtual {v8, v0}, Lcom/c/b/d;->a(Landroid/app/Activity;)V

    return-void

    :cond_8b
    move-object v0, p1

    invoke-virtual {v8, v0}, Lcom/c/b/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_15

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v1, :cond_15

    sget-object v2, Lcom/c/b/d;->R:Landroid/graphics/Bitmap;

    if-eq p1, v2, :cond_15

    move-object p1, v0

    :cond_15
    const/4 v2, 0x0

    if-eqz p1, :cond_1c

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    :cond_1c
    const/4 v3, -0x2

    if-ne p3, v3, :cond_25

    const/16 p3, 0x8

    :goto_21
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    :cond_25
    const/4 v3, -0x1

    if-ne p3, v3, :cond_2a

    const/4 p3, 0x4

    goto :goto_21

    :cond_2a
    :goto_2a
    if-nez p1, :cond_30

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_30
    invoke-static {p0, p1, p5, p6}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    packed-switch p4, :pswitch_data_96

    goto :goto_41

    :goto_38
    :pswitch_38
    const/4 p3, 0x1

    goto :goto_42

    :pswitch_3a
    const/4 p3, 0x3

    if-ne p7, p3, :cond_3e

    goto :goto_38

    :cond_3e
    :pswitch_3e
    if-ne p7, v1, :cond_41

    goto :goto_38

    :cond_41
    :goto_41
    const/4 p3, 0x0

    :goto_42
    if-eqz p3, :cond_75

    if-nez p2, :cond_5c

    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p2, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_81

    :cond_5c
    invoke-static {p0, p2, p5, p6}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    aput-object p2, p3, v2

    aput-object p1, p3, v1

    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p1, p3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_80

    :cond_75
    if-lez p4, :cond_80

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    goto :goto_81

    :cond_80
    :goto_80
    move-object p2, v0

    :goto_81
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_91

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_91
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    nop

    :pswitch_data_96
    .packed-switch -0x3
        :pswitch_3a
        :pswitch_3e
        :pswitch_38
    .end packed-switch
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .registers 12

    if-nez p2, :cond_7

    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_7
    if-eqz p3, :cond_12

    iget p3, p0, Lcom/c/b/d;->y:F

    iget v0, p0, Lcom/c/b/d;->O:F

    invoke-static {p1, p2, p3, v0}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_3

    :cond_12
    iget-object p3, p0, Lcom/c/b/d;->m:Lcom/c/b/c;

    if-eqz p3, :cond_29

    iget-object v2, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/c/b/d;->v:I

    iget v4, p0, Lcom/c/b/d;->K:I

    iget v5, p0, Lcom/c/b/d;->y:F

    iget v6, p0, Lcom/c/b/d;->O:F

    iget-object p3, p0, Lcom/c/b/d;->m:Lcom/c/b/c;

    iget v7, p3, Lcom/c/b/c;->r:I

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    :cond_29
    return-void
.end method

.method private static a(Lcom/c/b/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 5

    if-eqz p2, :cond_19

    if-nez p0, :cond_5

    return-void

    :cond_5
    const v0, 0x40ff0001

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-direct {p0, p2, p3, v0}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_16
    invoke-virtual {p0, v0}, Lcom/c/b/d;->c(Z)V

    :cond_19
    return-void
.end method

.method private static a(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V
    .registers 7

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    if-eqz p4, :cond_14

    invoke-static {}, Lcom/c/b/d;->j()Ljava/util/Map;

    move-result-object p4

    goto :goto_21

    :cond_14
    sget p4, Lcom/c/b/d;->B:I

    if-gt v0, p4, :cond_1d

    invoke-static {}, Lcom/c/b/d;->i()Ljava/util/Map;

    move-result-object p4

    goto :goto_21

    :cond_1d
    invoke-static {}, Lcom/c/b/d;->h()Ljava/util/Map;

    move-result-object p4

    :goto_21
    if-gtz p1, :cond_2a

    if-lez p2, :cond_26

    goto :goto_2a

    :cond_26
    invoke-interface {p4, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2a
    :goto_2a
    invoke-static {p0, p1, p2}, Lcom/c/b/d;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    const/4 p1, 0x0

    invoke-interface {p4, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/c/b/c;)V
    .registers 8

    iget-object v0, p0, Lcom/c/b/d;->J:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/c/b/d;->I:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_18
    invoke-static {p0, p1, v0, p2}, Lcom/c/b/d;->a(Lcom/c/b/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_1b
    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2c

    return-void

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/b/d;

    iput-object p3, v3, Lcom/c/b/d;->m:Lcom/c/b/c;

    invoke-static {v3, p1, v2, p2}, Lcom/c/b/d;->a(Lcom/c/b/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_25

    :cond_3e
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5

    const v0, 0x40ff0001

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2d

    :cond_11
    invoke-virtual {p2, v0, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    if-eqz p1, :cond_29

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/c/b/d;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2, p1, v0}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_29
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_2d
    return-void
.end method

.method private b(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/c/b/d;->a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private b([BLcom/c/b/c;)Landroid/graphics/Bitmap;
    .registers 7

    iget-object v0, p2, Lcom/c/b/c;->m:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_a
    move-object v2, v1

    :goto_b
    invoke-direct {p0, v2, p1}, Lcom/c/b/d;->a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_6b

    iget v2, p0, Lcom/c/b/d;->v:I

    if-lez v2, :cond_3f

    iget-object p1, p0, Lcom/c/b/d;->J:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3d

    iget v1, p0, Lcom/c/b/d;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/c/b/d;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3b

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v2, p0, Lcom/c/b/d;->v:I

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-direct {p0, v1, p1}, Lcom/c/b/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_54

    :cond_3b
    move-object p1, v2

    goto :goto_54

    :cond_3d
    move-object p1, v1

    goto :goto_54

    :cond_3f
    iget v1, p0, Lcom/c/b/d;->v:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_52

    iget v1, p0, Lcom/c/b/d;->v:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4a

    goto :goto_52

    :cond_4a
    iget v1, p0, Lcom/c/b/d;->v:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_54

    iget-object p1, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    goto :goto_54

    :cond_52
    :goto_52
    sget-object p1, Lcom/c/b/d;->S:Landroid/graphics/Bitmap;

    :cond_54
    :goto_54
    iget v1, p2, Lcom/c/b/c;->i:I

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5d

    iput-boolean v3, p0, Lcom/c/b/d;->P:Z

    :cond_5d
    iget p2, p2, Lcom/c/b/c;->r:I

    if-ne p2, v3, :cond_6b

    if-eqz v0, :cond_6b

    const-string p2, "invalid bm from net"

    invoke-static {p2}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6b
    return-object p1
.end method

.method private b(F)Lcom/c/b/d;
    .registers 2

    iput p1, p0, Lcom/c/b/d;->O:F

    return-object p0
.end method

.method private b(I)Lcom/c/b/d;
    .registers 2

    iput p1, p0, Lcom/c/b/d;->v:I

    return-object p0
.end method

.method private b(Landroid/graphics/Bitmap;)Lcom/c/b/d;
    .registers 2

    iput-object p1, p0, Lcom/c/b/d;->x:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static b(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    if-lez p1, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_17
    if-lez p2, :cond_2e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "#"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2e
    return-object p0
.end method

.method private b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iget v0, p0, Lcom/c/b/d;->u:I

    iget v1, p0, Lcom/c/b/d;->M:I

    iget-boolean v2, p0, Lcom/c/b/d;->P:Z

    invoke-static {p1, v0, v1, p2, v2}, Lcom/c/b/d;->a(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    sget-object v0, Lcom/c/b/d;->I:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-nez v0, :cond_24

    sget-object v0, Lcom/c/b/d;->I:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/c/b/d;->I:Ljava/util/HashMap;

    :goto_1c
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_20
    sget-object p2, Lcom/c/b/d;->I:Ljava/util/HashMap;

    const/4 v0, 0x0

    goto :goto_1c

    :cond_24
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(II)Z
    .registers 3

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_10

    goto :goto_d

    :pswitch_5
    return v0

    :pswitch_6
    const/4 p0, 0x3

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    :pswitch_a
    if-ne p1, v0, :cond_d

    return v0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_10
    .packed-switch -0x3
        :pswitch_6
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/c/b/d;->a(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private c(I)Lcom/c/b/d;
    .registers 2

    iput p1, p0, Lcom/c/b/d;->K:I

    return-object p0
.end method

.method private d(I)Lcom/c/b/d;
    .registers 2

    iput p1, p0, Lcom/c/b/d;->M:I

    return-object p0
.end method

.method private d(Z)Lcom/c/b/d;
    .registers 2

    iput-boolean p1, p0, Lcom/c/b/d;->Q:Z

    return-object p0
.end method

.method protected static d()V
    .registers 1

    sget-object v0, Lcom/c/b/d;->I:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/c/b/d;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/c/b/d;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/c/b/d;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method private e()Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Lcom/c/b/d;->J:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_26

    iget v1, p0, Lcom/c/b/d;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/c/b/d;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_27

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/c/b/d;->v:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-direct {p0, v1, v2}, Lcom/c/b/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v2

    :cond_26
    const/4 v2, 0x0

    :cond_27
    return-object v2
.end method

.method public static e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/c/b/d;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static e(I)Landroid/graphics/Matrix;
    .registers 7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_32

    return-object v0

    :pswitch_13
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    return-object v0

    :pswitch_17
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_26

    :pswitch_1b
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    return-object v0

    :pswitch_1f
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_26

    :pswitch_23
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    :goto_26
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object v0

    :pswitch_2a
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    return-object v0

    :pswitch_2e
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    return-object v0

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_2a
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
    .end packed-switch
.end method

.method private static e(Z)V
    .registers 1

    sput-boolean p0, Lcom/c/b/d;->E:Z

    return-void
.end method

.method private static f()Landroid/graphics/Bitmap;
    .registers 1

    sget-object v0, Lcom/c/b/d;->R:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static f(I)V
    .registers 1

    sput p0, Lcom/c/b/d;->z:I

    invoke-static {}, Lcom/c/b/d;->g()V

    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/c/b/d;->I:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Lcom/c/b/d;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/c/b/d;->x:Landroid/graphics/Bitmap;

    return-object p1

    :cond_7
    iget-boolean v0, p0, Lcom/c/b/d;->o:Z

    if-nez v0, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    iget v0, p0, Lcom/c/b/d;->u:I

    iget v1, p0, Lcom/c/b/d;->M:I

    invoke-static {p1, v0, v1}, Lcom/c/b/d;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static g()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/c/b/d;->G:Ljava/util/Map;

    sput-object v0, Lcom/c/b/d;->F:Ljava/util/Map;

    sput-object v0, Lcom/c/b/d;->H:Ljava/util/Map;

    return-void
.end method

.method private static g(I)V
    .registers 1

    sput p0, Lcom/c/b/d;->A:I

    invoke-static {}, Lcom/c/b/d;->g()V

    return-void
.end method

.method private static h()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/c/b/d;->G:Ljava/util/Map;

    if-nez v0, :cond_15

    new-instance v0, Lcom/c/d/b;

    sget v1, Lcom/c/b/d;->A:I

    sget v2, Lcom/c/b/d;->C:I

    sget v3, Lcom/c/b/d;->D:I

    invoke-direct {v0, v1, v2, v3}, Lcom/c/d/b;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/d;->G:Ljava/util/Map;

    :cond_15
    sget-object v0, Lcom/c/b/d;->G:Ljava/util/Map;

    return-object v0
.end method

.method private static h(I)V
    .registers 1

    sput p0, Lcom/c/b/d;->C:I

    invoke-static {}, Lcom/c/b/d;->g()V

    return-void
.end method

.method private static i()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/c/b/d;->F:Ljava/util/Map;

    if-nez v0, :cond_16

    new-instance v0, Lcom/c/d/b;

    sget v1, Lcom/c/b/d;->z:I

    sget v2, Lcom/c/b/d;->B:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/c/d/b;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/d;->F:Ljava/util/Map;

    :cond_16
    sget-object v0, Lcom/c/b/d;->F:Ljava/util/Map;

    return-object v0
.end method

.method private static i(I)V
    .registers 1

    sput p0, Lcom/c/b/d;->B:I

    invoke-static {}, Lcom/c/b/d;->g()V

    return-void
.end method

.method private static j()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/c/b/d;->H:Ljava/util/Map;

    if-nez v0, :cond_16

    new-instance v0, Lcom/c/d/b;

    const/16 v1, 0x64

    sget v2, Lcom/c/b/d;->C:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/c/d/b;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/d;->H:Ljava/util/Map;

    :cond_16
    sget-object v0, Lcom/c/b/d;->H:Ljava/util/Map;

    return-object v0
.end method

.method private static j(I)V
    .registers 1

    sput p0, Lcom/c/b/d;->D:I

    invoke-static {}, Lcom/c/b/d;->g()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)Lcom/c/b/d;
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/c/b/d;->J:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method protected final a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/c/b/d;->w:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b/d;->w:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/c/b/d;->w:Ljava/io/File;

    return-object p1

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/c/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Ljava/io/File;Lcom/c/b/c;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/c/b/d;->a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a([BLcom/c/b/c;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p2, Lcom/c/b/c;->m:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_a
    move-object v2, v1

    :goto_b
    invoke-direct {p0, v2, p1}, Lcom/c/b/d;->a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_6b

    iget v2, p0, Lcom/c/b/d;->v:I

    if-lez v2, :cond_3f

    iget-object p1, p0, Lcom/c/b/d;->J:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3d

    iget v1, p0, Lcom/c/b/d;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/c/b/d;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3b

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v2, p0, Lcom/c/b/d;->v:I

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-direct {p0, v1, p1}, Lcom/c/b/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_54

    :cond_3b
    move-object p1, v2

    goto :goto_54

    :cond_3d
    move-object p1, v1

    goto :goto_54

    :cond_3f
    iget v1, p0, Lcom/c/b/d;->v:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_52

    iget v1, p0, Lcom/c/b/d;->v:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4a

    goto :goto_52

    :cond_4a
    iget v1, p0, Lcom/c/b/d;->v:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_54

    iget-object p1, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    goto :goto_54

    :cond_52
    :goto_52
    sget-object p1, Lcom/c/b/d;->S:Landroid/graphics/Bitmap;

    :cond_54
    :goto_54
    iget v1, p2, Lcom/c/b/c;->i:I

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5d

    iput-boolean v3, p0, Lcom/c/b/d;->P:Z

    :cond_5d
    iget p2, p2, Lcom/c/b/c;->r:I

    if-ne p2, v3, :cond_6b

    if-eqz v0, :cond_6b

    const-string p2, "invalid bm from net"

    invoke-static {p2}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6b
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .registers 7

    iget-object p1, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/c/b/d;->J:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez p1, :cond_15

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/c/b/d;->c(Z)V

    invoke-direct {p0, v0, v1, p1}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_15
    invoke-direct {p0, p1}, Lcom/c/b/d;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x40ff0001

    if-eqz v2, :cond_35

    invoke-virtual {v0, v3, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lcom/c/b/c;

    invoke-direct {v0}, Lcom/c/b/c;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/c/b/c;->r:I

    invoke-virtual {v0}, Lcom/c/b/c;->a()Lcom/c/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/d;->m:Lcom/c/b/c;

    iget-object v0, p0, Lcom/c/b/d;->m:Lcom/c/b/c;

    invoke-direct {p0, p1, v2, v0}, Lcom/c/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/c/b/c;)V

    return-void

    :cond_35
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5a

    :cond_44
    invoke-virtual {v0, v3, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_57

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/c/b/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_57

    iget-object v1, p0, Lcom/c/b/d;->L:Landroid/graphics/Bitmap;

    :cond_57
    invoke-direct {p0, v0, v1, v4}, Lcom/c/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_5a
    sget-object v1, Lcom/c/b/d;->I:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-direct {p0, p1, v0}, Lcom/c/b/d;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/c/b/a;->a(Landroid/content/Context;)V

    return-void

    :cond_6d
    invoke-virtual {p0, v4}, Lcom/c/b/d;->c(Z)V

    invoke-direct {p0, p1, v0}, Lcom/c/b/d;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/c/b/d;->I:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;Lcom/c/b/c;)V
    .registers 4

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, p3}, Lcom/c/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/c/b/c;)V

    return-void
.end method

.method protected final synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/c/b/d;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/c/b/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected final b()Z
    .registers 2

    sget-boolean v0, Lcom/c/b/d;->E:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method
