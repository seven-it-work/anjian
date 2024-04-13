.class public final Lcom/zbar/a/a/c;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field private static j:Lcom/zbar/a/a/c;


# instance fields
.field public final b:Lcom/zbar/a/a/b;

.field public c:Landroid/hardware/Camera;

.field public d:Z

.field public e:Z

.field public final f:Z

.field public final g:Lcom/zbar/a/a/e;

.field public final h:Lcom/zbar/a/a/a;

.field public i:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_2} :catch_3

    goto :goto_5

    :catch_3
    const/16 v0, 0x2710

    :goto_5
    sput v0, Lcom/zbar/a/a/c;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zbar/a/a/b;

    invoke-direct {v0, p1}, Lcom/zbar/a/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zbar/a/a/c;->b:Lcom/zbar/a/a/b;

    sget p1, Lcom/zbar/a/a/c;->a:I

    const/4 v0, 0x3

    if-le p1, v0, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcom/zbar/a/a/c;->f:Z

    new-instance p1, Lcom/zbar/a/a/e;

    iget-object v0, p0, Lcom/zbar/a/a/c;->b:Lcom/zbar/a/a/b;

    iget-boolean v1, p0, Lcom/zbar/a/a/c;->f:Z

    invoke-direct {p1, v0, v1}, Lcom/zbar/a/a/e;-><init>(Lcom/zbar/a/a/b;Z)V

    iput-object p1, p0, Lcom/zbar/a/a/c;->g:Lcom/zbar/a/a/e;

    new-instance p1, Lcom/zbar/a/a/a;

    invoke-direct {p1}, Lcom/zbar/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/zbar/a/a/c;->h:Lcom/zbar/a/a/a;

    return-void
.end method

.method public static a()Lcom/zbar/a/a/c;
    .registers 1

    sget-object v0, Lcom/zbar/a/a/c;->j:Lcom/zbar/a/a/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/zbar/a/a/c;->j:Lcom/zbar/a/a/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/zbar/a/a/c;

    invoke-direct {v0, p0}, Lcom/zbar/a/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zbar/a/a/c;->j:Lcom/zbar/a/a/c;

    :cond_b
    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_175

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_14

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_14
    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean p1, p0, Lcom/zbar/a/a/c;->d:Z

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-nez p1, :cond_a1

    iput-boolean v0, p0, Lcom/zbar/a/a/c;->d:Z

    iget-object p1, p0, Lcom/zbar/a/a/c;->b:Lcom/zbar/a/a/b;

    iget-object v2, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v3

    iput v3, p1, Lcom/zbar/a/a/b;->e:I

    const-string v3, "preview-format"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/zbar/a/a/b;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/zbar/a/a/b;->b:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p1, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p1, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p1, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p1, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p1, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge v4, v5, :cond_7b

    iget-object v4, p1, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p1, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    :cond_7b
    const-string v4, "preview-size-values"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_89

    const-string v4, "preview-size-value"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_89
    const/4 v2, 0x0

    if-eqz v4, :cond_90

    invoke-static {v4, v3}, Lcom/zbar/a/a/b;->a(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    :cond_90
    if-nez v2, :cond_9f

    new-instance v2, Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    shr-int/2addr v4, v1

    shl-int/2addr v4, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    shr-int/2addr v3, v1

    shl-int/2addr v3, v1

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    :cond_9f
    iput-object v2, p1, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    :cond_a1
    iget-object p1, p0, Lcom/zbar/a/a/c;->b:Lcom/zbar/a/a/b;

    iget-object v2, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iget-object v4, p1, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object p1, p1, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Behold II"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c8

    sget p1, Lcom/zbar/a/a/c;->a:I

    if-ne p1, v1, :cond_c8

    const-string p1, "flash-value"

    invoke-virtual {v3, p1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_ce

    :cond_c8
    const-string p1, "flash-value"

    const/4 v1, 0x2

    invoke-virtual {v3, p1, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :goto_ce
    const-string p1, "flash-mode"

    const-string v1, "off"

    invoke-virtual {v3, p1, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "zoom-supported"

    invoke-virtual {v3, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e3

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16a

    :cond_e3
    const-string p1, "max-zoom"

    invoke-virtual {v3, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1b

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    if-eqz p1, :cond_10d

    :try_start_ef
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_f3
    .catch Ljava/lang/NumberFormatException; {:try_start_ef .. :try_end_f3} :catch_fa

    mul-double v6, v6, v4

    double-to-int v6, v6

    if-le v1, v6, :cond_10d

    move v1, v6

    goto :goto_10d

    :catch_fa
    sget-object v6, Lcom/zbar/a/a/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bad max-zoom: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10d
    :goto_10d
    const-string v6, "taking-picture-zoom-max"

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_130

    :try_start_115
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_119
    .catch Ljava/lang/NumberFormatException; {:try_start_115 .. :try_end_119} :catch_11d

    if-le v1, v7, :cond_130

    move v1, v7

    goto :goto_130

    :catch_11d
    sget-object v7, Lcom/zbar/a/a/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Bad taking-picture-zoom-max: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_130
    :goto_130
    const-string v7, "mot-zoom-values"

    invoke-virtual {v3, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13c

    invoke-static {v7, v1}, Lcom/zbar/a/a/b;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    :cond_13c
    const-string v8, "mot-zoom-step"

    invoke-virtual {v3, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_154

    :try_start_144
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    mul-double v8, v8, v4

    double-to-int v8, v8

    if-le v8, v0, :cond_154

    rem-int v0, v1, v8
    :try_end_153
    .catch Ljava/lang/NumberFormatException; {:try_start_144 .. :try_end_153} :catch_154

    sub-int/2addr v1, v0

    :catch_154
    :cond_154
    if-nez p1, :cond_158

    if-eqz v7, :cond_163

    :cond_158
    const-string p1, "zoom"

    int-to-double v7, v1

    div-double/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_163
    if-eqz v6, :cond_16a

    const-string p1, "taking-picture-zoom"

    invoke-virtual {v3, p1, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_16a
    const/16 p1, 0x5a

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/zbar/a/a/d;->a()V

    :cond_175
    return-void
.end method

.method private b()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/zbar/a/a/c;->b:Lcom/zbar/a/a/b;

    iget-object v0, v0, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    return-object v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/zbar/a/a/d;->b()V

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    :cond_f
    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/zbar/a/a/c;->e:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zbar/a/a/c;->e:Z

    :cond_10
    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/zbar/a/a/c;->e:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/zbar/a/a/c;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_12
    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/zbar/a/a/c;->g:Lcom/zbar/a/a/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zbar/a/a/e;->a(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/zbar/a/a/c;->h:Lcom/zbar/a/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/zbar/a/a/a;->a(Landroid/os/Handler;I)V

    iput-boolean v2, p0, Lcom/zbar/a/a/c;->e:Z

    :cond_24
    return-void
.end method

.method private f()V
    .registers 3

    const-string v0, "zzz"

    const-string v1, "openLight1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_28

    const-string v0, "zzz"

    const-string v1, "openLight2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_28
    return-void
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;)V
    .registers 4

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/zbar/a/a/c;->e:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/zbar/a/a/c;->g:Lcom/zbar/a/a/e;

    const v1, 0x7f100005

    invoke-virtual {v0, p1, v1}, Lcom/zbar/a/a/e;->a(Landroid/os/Handler;I)V

    iget-boolean p1, p0, Lcom/zbar/a/a/c;->f:Z

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/zbar/a/a/c;->g:Lcom/zbar/a/a/e;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void

    :cond_1c
    iget-object p1, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/zbar/a/a/c;->g:Lcom/zbar/a/a/e;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_23
    return-void
.end method

.method public final b(Landroid/os/Handler;)V
    .registers 4

    iget-object v0, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/zbar/a/a/c;->e:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/zbar/a/a/c;->h:Lcom/zbar/a/a/a;

    const v1, 0x7f100004

    invoke-virtual {v0, p1, v1}, Lcom/zbar/a/a/a;->a(Landroid/os/Handler;I)V

    iget-object p1, p0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/zbar/a/a/c;->h:Lcom/zbar/a/a/a;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_17
    return-void
.end method
