.class public final Lcom/cyjh/elfin/sweepcode/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/sweepcode/b$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "CameraInterface"

.field private static h:Lcom/cyjh/elfin/sweepcode/b;


# instance fields
.field public a:Landroid/hardware/Camera;

.field public b:Landroid/hardware/Camera$Parameters;

.field c:Z

.field d:Landroid/os/Handler;

.field public e:Landroid/hardware/Camera$PreviewCallback;

.field f:Landroid/hardware/Camera$AutoFocusCallback;

.field private i:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/sweepcode/b;->c:Z

    new-instance v0, Lcom/cyjh/elfin/sweepcode/b$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/sweepcode/b$1;-><init>(Lcom/cyjh/elfin/sweepcode/b;)V

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->f:Landroid/hardware/Camera$AutoFocusCallback;

    new-instance v0, Lcom/cyjh/elfin/sweepcode/b$2;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/sweepcode/b$2;-><init>(Lcom/cyjh/elfin/sweepcode/b;)V

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->i:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->d:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/cyjh/elfin/sweepcode/b;
    .registers 2

    const-class v0, Lcom/cyjh/elfin/sweepcode/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/cyjh/elfin/sweepcode/b;->h:Lcom/cyjh/elfin/sweepcode/b;

    if-nez v1, :cond_e

    new-instance v1, Lcom/cyjh/elfin/sweepcode/b;

    invoke-direct {v1}, Lcom/cyjh/elfin/sweepcode/b;-><init>()V

    sput-object v1, Lcom/cyjh/elfin/sweepcode/b;->h:Lcom/cyjh/elfin/sweepcode/b;

    :cond_e
    sget-object v1, Lcom/cyjh/elfin/sweepcode/b;->h:Lcom/cyjh/elfin/sweepcode/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/cyjh/elfin/sweepcode/b;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/sweepcode/b;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/b;->e:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .registers 15

    iget-boolean v0, p0, Lcom/cyjh/elfin/sweepcode/b;->c:Z

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1c8

    :try_start_e
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_29

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const-string v0, "\u8bf7\u68c0\u67e5\u76f8\u673a\u662f\u5426\u53ef\u7528\u6216\u6743\u9650\u662f\u5426\u88ab\u7981\u7528"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_29
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/a;->a()Lcom/cyjh/elfin/sweepcode/a;

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/cyjh/elfin/sweepcode/a;->b(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/a;->a()Lcom/cyjh/elfin/sweepcode/a;

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/cyjh/elfin/sweepcode/a;->a(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/elfin/sweepcode/c;->b(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/elfin/sweepcode/c;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1c8

    const/4 v3, 0x1

    :try_start_59
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_60

    return-void

    :cond_60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_73

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    :goto_6f
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    goto/16 :goto_164

    :cond_73
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_163

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/a;->a()Lcom/cyjh/elfin/sweepcode/a;

    move-result-object v4

    int-to-float v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v6, v6, v7

    int-to-float v7, v1

    div-float/2addr v6, v7

    iget-object v4, v4, Lcom/cyjh/elfin/sweepcode/a;->a:Lcom/cyjh/elfin/sweepcode/a$a;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_8e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-float v9, v9

    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const-string v10, "yanzi"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ratioPreview:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "yanzi"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewSize:w = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "h = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v8, Landroid/hardware/Camera$Size;->height:I

    if-lt v9, v1, :cond_118

    invoke-static {v8, v6}, Lcom/cyjh/elfin/sweepcode/a;->a(Landroid/hardware/Camera$Size;F)Z

    move-result v9

    if-eqz v9, :cond_118

    const-string v4, "yanzi"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ratioPreview2:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "   minH:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "yanzi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "PreviewSize:w = "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "h = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    :cond_118
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8e

    :cond_11c
    :goto_11c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v7, v4, :cond_123

    goto :goto_124

    :cond_123
    move v5, v7

    :goto_124
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_132
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    if-lt v8, v0, :cond_132

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    if-lt v8, v1, :cond_132

    iget v0, v7, Landroid/hardware/Camera$Size;->width:I

    iget v1, v7, Landroid/hardware/Camera$Size;->height:I

    move v5, v0

    goto :goto_14d

    :cond_14c
    move v1, v4

    :goto_14d
    if-eqz v5, :cond_154

    if-nez v1, :cond_152

    goto :goto_154

    :cond_152
    move v0, v1

    goto :goto_164

    :cond_154
    :goto_154
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    goto/16 :goto_6f

    :cond_163
    const/4 v0, 0x0

    :goto_164
    const-string v1, "CameraInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PreviewWidth:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CameraInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PreviewHeight:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v5, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_19d} :catch_19e

    goto :goto_1a2

    :catch_19e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a2
    :try_start_1a2
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->f:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1b8} :catch_1b9

    goto :goto_1bd

    :catch_1b9
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1bd
    iput-boolean v3, p0, Lcom/cyjh/elfin/sweepcode/b;->c:Z

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    return-void

    :cond_1c8
    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/sweepcode/b;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/sweepcode/b;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .registers 2

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    return-void
.end method

.method private c()V
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/elfin/sweepcode/b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/elfin/sweepcode/b;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/cyjh/elfin/sweepcode/b;)Landroid/hardware/Camera;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    return-object p0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_9
    return-void
.end method

.method private e()V
    .registers 3

    const-string v0, "zzz"

    const-string v1, "openLight1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_28

    const-string v0, "zzz"

    const-string v1, "openLight2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_28
    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1a
    return-void
.end method

.method private g()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/sweepcode/b;->c:Z

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->e:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b;->e:Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    :cond_9
    return-void
.end method
