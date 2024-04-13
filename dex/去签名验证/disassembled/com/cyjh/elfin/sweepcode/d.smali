.class public final Lcom/cyjh/elfin/sweepcode/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/sweepcode/d$b;,
        Lcom/cyjh/elfin/sweepcode/d$a;
    }
.end annotation


# instance fields
.field public a:Lnet/sourceforge/zbar/ImageScanner;

.field public b:Lcom/cyjh/elfin/sweepcode/d$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "iconv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 1

    invoke-static {p0}, Lcom/cyjh/elfin/sweepcode/d;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/elfin/sweepcode/d;Lnet/sourceforge/zbar/Image;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {v0, p1}, Lnet/sourceforge/zbar/ImageScanner;->scanImage(Lnet/sourceforge/zbar/Image;)I

    move-result p1

    if-eqz p1, :cond_41

    iget-object p0, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {p0}, Lnet/sourceforge/zbar/ImageScanner;->getResults()Lnet/sourceforge/zbar/SymbolSet;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sourceforge/zbar/SymbolSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/zbar/Symbol;

    invoke-virtual {p1}, Lnet/sourceforge/zbar/Symbol;->getType()I

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_36

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/zbar/Symbol;->getDataBytes()[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_3a

    :cond_36
    invoke-virtual {p1}, Lnet/sourceforge/zbar/Symbol;->getData()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    return-object v0

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lnet/sourceforge/zbar/Image;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {v0, p1}, Lnet/sourceforge/zbar/ImageScanner;->scanImage(Lnet/sourceforge/zbar/Image;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    :cond_a
    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {p1}, Lnet/sourceforge/zbar/ImageScanner;->getResults()Lnet/sourceforge/zbar/SymbolSet;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/zbar/SymbolSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/zbar/Symbol;

    invoke-virtual {v1}, Lnet/sourceforge/zbar/Symbol;->getType()I

    move-result v2

    if-eqz v2, :cond_14

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_38

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lnet/sourceforge/zbar/Symbol;->getDataBytes()[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_3c

    :cond_38
    invoke-virtual {v1}, Lnet/sourceforge/zbar/Symbol;->getData()Ljava/lang/String;

    move-result-object v2

    :goto_3c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    return-object v2

    :cond_43
    return-object v0
.end method

.method private a()V
    .registers 5

    new-instance v0, Lnet/sourceforge/zbar/ImageScanner;

    invoke-direct {v0}, Lnet/sourceforge/zbar/ImageScanner;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-virtual {v0, v2, v3, v1}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    const/16 v3, 0x101

    invoke-virtual {v0, v2, v3, v1}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/sweepcode/d;Lnet/sourceforge/zbar/Image;Lcom/cyjh/elfin/sweepcode/d$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {v0, p1}, Lnet/sourceforge/zbar/ImageScanner;->scanImage(Lnet/sourceforge/zbar/Image;)I

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p0, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {p0}, Lnet/sourceforge/zbar/ImageScanner;->getResults()Lnet/sourceforge/zbar/SymbolSet;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sourceforge/zbar/SymbolSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/zbar/Symbol;

    if-eqz p2, :cond_2b

    invoke-virtual {p0}, Lnet/sourceforge/zbar/Symbol;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/cyjh/elfin/sweepcode/d$a;->a(Ljava/lang/String;)V

    :cond_2b
    return-void

    :cond_2c
    if-eqz p2, :cond_31

    invoke-interface {p2}, Lcom/cyjh/elfin/sweepcode/d$a;->a()V

    :cond_31
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/cyjh/elfin/sweepcode/d$a;)V
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/sweepcode/d$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cyjh/elfin/sweepcode/d$1;-><init>(Lcom/cyjh/elfin/sweepcode/d;Ljava/lang/String;Lcom/cyjh/elfin/sweepcode/d$a;)V

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/q;->a(Lcom/cyjh/elfin/e/c/q$d;)V

    return-void
.end method

.method private a(Lnet/sourceforge/zbar/Image;Lcom/cyjh/elfin/sweepcode/d$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {v0, p1}, Lnet/sourceforge/zbar/ImageScanner;->scanImage(Lnet/sourceforge/zbar/Image;)I

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {p1}, Lnet/sourceforge/zbar/ImageScanner;->getResults()Lnet/sourceforge/zbar/SymbolSet;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/zbar/SymbolSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/zbar/Symbol;

    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Lnet/sourceforge/zbar/Symbol;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/cyjh/elfin/sweepcode/d$a;->a(Ljava/lang/String;)V

    :cond_2b
    return-void

    :cond_2c
    if-eqz p2, :cond_31

    invoke-interface {p2}, Lcom/cyjh/elfin/sweepcode/d$a;->a()V

    :cond_31
    return-void
.end method

.method private a([BLandroid/hardware/Camera;Landroid/view/View;Lcom/cyjh/elfin/sweepcode/d$a;)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    iget-boolean v0, v0, Lcom/cyjh/elfin/sweepcode/d$b;->a:Z

    if-eqz v0, :cond_10

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_10
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    new-instance v0, Lnet/sourceforge/zbar/Image;

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    const-string v3, "Y800"

    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/zbar/Image;-><init>(IILjava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/elfin/sweepcode/c;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/elfin/sweepcode/c;->b(Landroid/content/Context;)I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v3, p2

    div-double/2addr v1, v3

    double-to-float p2, v1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p2, p3

    invoke-virtual {v0, p1}, Lnet/sourceforge/zbar/Image;->setData([B)V

    invoke-virtual {v0, v1, v2, v3, p2}, Lnet/sourceforge/zbar/Image;->setCrop(IIII)V

    new-instance p1, Lcom/cyjh/elfin/sweepcode/d$b;

    invoke-direct {p1, p0, v0, p4}, Lcom/cyjh/elfin/sweepcode/d$b;-><init>(Lcom/cyjh/elfin/sweepcode/d;Lnet/sourceforge/zbar/Image;Lcom/cyjh/elfin/sweepcode/d$a;)V

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    invoke-virtual {p1}, Lcom/cyjh/elfin/sweepcode/d$b;->start()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    return-void

    :catch_6b
    if-eqz p4, :cond_70

    invoke-interface {p4}, Lcom/cyjh/elfin/sweepcode/d$a;->a()V

    :cond_70
    return-void
.end method

.method private static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit16 v2, v2, 0x190

    if-gtz v2, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
