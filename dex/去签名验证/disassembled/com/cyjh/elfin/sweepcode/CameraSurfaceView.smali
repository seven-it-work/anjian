.class public Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 16

    iget-object p2, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-nez p2, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-static {}, Lcom/cyjh/elfin/sweepcode/b;->a()Lcom/cyjh/elfin/sweepcode/b;

    move-result-object p2

    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz p3, :cond_16

    iget-object p2, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    invoke-static {}, Lcom/cyjh/elfin/sweepcode/b;->a()Lcom/cyjh/elfin/sweepcode/b;

    move-result-object p2

    iget-boolean p3, p2, Lcom/cyjh/elfin/sweepcode/b;->c:Z

    if-eqz p3, :cond_24

    iget-object p1, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    return-void

    :cond_24
    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz p3, :cond_1e2

    :try_start_28
    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p3

    iput-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_35
    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    if-nez p3, :cond_43

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const-string p2, "\u8bf7\u68c0\u67e5\u76f8\u673a\u662f\u5426\u53ef\u7528\u6216\u6743\u9650\u662f\u5426\u88ab\u7981\u7528"

    invoke-static {p1, p2}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_43
    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    const/16 p4, 0x100

    invoke-virtual {p3, p4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/a;->a()Lcom/cyjh/elfin/sweepcode/a;

    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-static {p3}, Lcom/cyjh/elfin/sweepcode/a;->b(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/a;->a()Lcom/cyjh/elfin/sweepcode/a;

    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-static {p3}, Lcom/cyjh/elfin/sweepcode/a;->a(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p3

    invoke-static {p3}, Lcom/cyjh/elfin/sweepcode/c;->b(Landroid/content/Context;)I

    move-result p3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p4

    invoke-static {p4}, Lcom/cyjh/elfin/sweepcode/c;->a(Landroid/content/Context;)I

    move-result p4

    iget-object v0, p2, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e2

    const/4 v1, 0x1

    :try_start_73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7a

    return-void

    :cond_7a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_8d

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/Camera$Size;

    iget v3, p3, Landroid/hardware/Camera$Size;->width:I

    :goto_89
    iget p3, p3, Landroid/hardware/Camera$Size;->height:I

    goto/16 :goto_17e

    :cond_8d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_17d

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/a;->a()Lcom/cyjh/elfin/sweepcode/a;

    move-result-object v2

    int-to-float v4, p3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    int-to-float v5, p4

    div-float/2addr v4, v5

    iget-object v2, v2, Lcom/cyjh/elfin/sweepcode/a;->a:Lcom/cyjh/elfin/sweepcode/a$a;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_a8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_136

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const-string v8, "yanzi"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ratioPreview:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "yanzi"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "PreviewSize:w = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    if-lt v7, p4, :cond_132

    invoke-static {v6, v4}, Lcom/cyjh/elfin/sweepcode/a;->a(Landroid/hardware/Camera$Size;F)Z

    move-result v7

    if-eqz v7, :cond_132

    const-string v2, "yanzi"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ratioPreview2:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "   minH:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "yanzi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "PreviewSize:w = "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "h = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    :cond_132
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a8

    :cond_136
    :goto_136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v5, v2, :cond_13d

    goto :goto_13e

    :cond_13d
    move v3, v5

    :goto_13e
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_166

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    if-lt v6, p3, :cond_14c

    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    if-lt v6, p4, :cond_14c

    iget p3, v5, Landroid/hardware/Camera$Size;->width:I

    iget p4, v5, Landroid/hardware/Camera$Size;->height:I

    move v3, p3

    goto :goto_167

    :cond_166
    move p4, v2

    :goto_167
    if-eqz v3, :cond_16e

    if-nez p4, :cond_16c

    goto :goto_16e

    :cond_16c
    move p3, p4

    goto :goto_17e

    :cond_16e
    :goto_16e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/Camera$Size;

    iget v3, p3, Landroid/hardware/Camera$Size;->width:I

    goto/16 :goto_89

    :cond_17d
    const/4 p3, 0x0

    :goto_17e
    const-string p4, "CameraInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PreviewWidth:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "CameraInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PreviewHeight:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p2, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p4, v3, p3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    const/16 p4, 0x5a

    invoke-virtual {p3, p4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object p4, p2, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p3, p4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_1b7} :catch_1b8

    goto :goto_1bc

    :catch_1b8
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1bc
    :try_start_1bc
    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p3, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object p1, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    iget-object p1, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object p3, p2, Lcom/cyjh/elfin/sweepcode/b;->f:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {p1, p3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1d2} :catch_1d3

    goto :goto_1d7

    :catch_1d3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1d7
    iput-boolean v1, p2, Lcom/cyjh/elfin/sweepcode/b;->c:Z

    iget-object p1, p2, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p2, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    return-void

    :cond_1e2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/b;->a()Lcom/cyjh/elfin/sweepcode/b;

    move-result-object p1

    :try_start_4
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p1, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/b;->a()Lcom/cyjh/elfin/sweepcode/b;

    move-result-object p1

    :try_start_4
    iget-object v0, p1, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p1, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/cyjh/elfin/sweepcode/b;->c:Z

    iget-object v0, p1, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p1, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object p1, p1, Lcom/cyjh/elfin/sweepcode/b;->d:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    :cond_22
    return-void

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
