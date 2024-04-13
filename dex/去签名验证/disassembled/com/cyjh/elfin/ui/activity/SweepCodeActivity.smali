.class public Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "SWEEP_RESULT_BACK"

.field private static final o:F = 0.5f

.field private static final s:J = 0xc8L


# instance fields
.field public c:Landroid/widget/ImageView;

.field public d:Lcom/zbar/a/b/a;

.field public e:Lcom/zbar/a/b/e;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Landroid/media/MediaPlayer;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field n:Z

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Z

.field private final t:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->p:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->f:Z

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->j:I

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->k:I

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->l:I

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->n:Z

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$2;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->j:I

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object v0

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    const/4 v2, 0x1

    if-nez v1, :cond_a8

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-nez v1, :cond_19

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_19
    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean p1, v0, Lcom/zbar/a/a/c;->d:Z

    if-nez p1, :cond_84

    iput-boolean v2, v0, Lcom/zbar/a/a/c;->d:Z

    iget-object p1, v0, Lcom/zbar/a/a/c;->b:Lcom/zbar/a/a/b;

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v3

    iput v3, p1, Lcom/zbar/a/a/b;->e:I

    const-string v3, "preview-format"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

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

    if-ge v4, v5, :cond_7e

    iget-object v4, p1, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p1, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    :cond_7e
    invoke-static {v1, v3}, Lcom/zbar/a/a/b;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p1, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    :cond_84
    iget-object p1, v0, Lcom/zbar/a/a/c;->b:Lcom/zbar/a/a/b;

    iget-object v0, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v3, p1, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object p1, p1, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-static {v1}, Lcom/zbar/a/a/b;->a(Landroid/hardware/Camera$Parameters;)V

    invoke-static {v1}, Lcom/zbar/a/a/b;->b(Landroid/hardware/Camera$Parameters;)V

    const/16 p1, 0x5a

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/zbar/a/a/d;->a()V

    :cond_a8
    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object p1

    iget-object p1, p1, Lcom/zbar/a/a/c;->b:Lcom/zbar/a/a/b;

    iget-object p1, p1, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v1

    mul-int v1, v1, v0

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    div-int/2addr v1, v3

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    mul-int v3, v3, p1

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    mul-int v4, v4, v0

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/2addr v4, v0

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    mul-int v0, v0, p1

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    div-int/2addr v0, p1

    iput v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->j:I

    iput v3, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->k:I

    iput v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->l:I

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->m:I

    iput-boolean v2, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->f:Z
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_fa} :catch_105
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_fa} :catch_105

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    if-nez p1, :cond_105

    new-instance p1, Lcom/zbar/a/b/a;

    invoke-direct {p1, p0}, Lcom/zbar/a/b/a;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    :catch_105
    :cond_105
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->e:Lcom/zbar/a/b/e;

    invoke-virtual {v0}, Lcom/zbar/a/b/e;->a()V

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_12
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->h:Z

    if-eqz v0, :cond_23

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_23
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->b()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    if-eqz p1, :cond_3f

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SWEEP_RESULT_BACK"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->finish()V

    return-void

    :cond_3f
    const p1, 0x7f090164

    invoke-static {p0, p1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->k:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "Scan failed!"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_10
    return-void
.end method

.method private c(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->l:I

    return-void
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->f:Z

    return v0
.end method

.method private d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->f:Z

    return-void
.end method

.method private d(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->m:I

    return-void
.end method

.method private e()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->j:I

    return v0
.end method

.method private f()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->k:I

    return v0
.end method

.method private g()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->l:I

    return v0
.end method

.method private h()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->m:I

    return v0
.end method

.method private i()V
    .registers 4

    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090162

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    return-void
.end method

.method private j()V
    .registers 13

    invoke-static {p0}, Lcom/zbar/a/a/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->r:Z

    new-instance v0, Lcom/zbar/a/b/e;

    invoke-direct {v0, p0}, Lcom/zbar/a/b/e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->e:Lcom/zbar/a/b/e;

    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->c:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const v11, 0x3f666666    # 0.9f

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f100110

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()V
    .registers 4

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->n:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->n:Z

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object v0

    const-string v1, "zzz"

    const-string v2, "openLight1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_34

    const-string v1, "zzz"

    const-string v2, "openLight2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    iget-object v1, v0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object v0, v0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_34
    return-void

    :cond_35
    iput-boolean v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->n:Z

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object v0

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_55

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    iget-object v1, v0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object v0, v0, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_55
    return-void
.end method

.method private l()V
    .registers 4

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->g:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_d
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->h:Z

    if-eqz v0, :cond_1e

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1e
    return-void
.end method

.method private m()V
    .registers 8

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->g:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4d

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->setVolumeControlStream(I)V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    :try_start_29
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    :cond_4d
    return-void
.end method

.method private n()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    sget v2, Lcom/zbar/a/b/a$a;->DONE$65384932:I

    iput v2, v0, Lcom/zbar/a/b/a;->c:I

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object v2

    iget-object v3, v2, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v3, :cond_32

    iget-boolean v3, v2, Lcom/zbar/a/a/c;->e:Z

    if-eqz v3, :cond_32

    iget-boolean v3, v2, Lcom/zbar/a/a/c;->f:Z

    if-nez v3, :cond_20

    iget-object v3, v2, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_20
    iget-object v3, v2, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v3, v2, Lcom/zbar/a/a/c;->g:Lcom/zbar/a/a/e;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/zbar/a/a/e;->a(Landroid/os/Handler;I)V

    iget-object v3, v2, Lcom/zbar/a/a/c;->h:Lcom/zbar/a/a/a;

    invoke-virtual {v3, v1, v4}, Lcom/zbar/a/a/a;->a(Landroid/os/Handler;I)V

    iput-boolean v4, v2, Lcom/zbar/a/a/c;->e:Z

    :cond_32
    const v2, 0x7f100007

    invoke-virtual {v0, v2}, Lcom/zbar/a/b/a;->removeMessages(I)V

    const v2, 0x7f100006

    invoke-virtual {v0, v2}, Lcom/zbar/a/b/a;->removeMessages(I)V

    const v2, 0x7f100005

    invoke-virtual {v0, v2}, Lcom/zbar/a/b/a;->removeMessages(I)V

    const v2, 0x7f100004

    invoke-virtual {v0, v2}, Lcom/zbar/a/b/a;->removeMessages(I)V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    :cond_4c
    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object v0

    iget-object v2, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v2, :cond_5e

    invoke-static {}, Lcom/zbar/a/a/d;->b()V

    iget-object v2, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    iput-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    :cond_5e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040031

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->setContentView(I)V

    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    const-string p1, "android.permission.CAMERA"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_1c
    const p1, 0x7f1000d4

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090162

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const v1, 0x7f0200df

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;B)V

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    invoke-static {p0}, Lcom/zbar/a/a/c;->a(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->r:Z

    new-instance p1, Lcom/zbar/a/b/e;

    invoke-direct {p1, p0}, Lcom/zbar/a/b/e;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->e:Lcom/zbar/a/b/e;

    const p1, 0x7f100107

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->p:Landroid/widget/RelativeLayout;

    const p1, 0x7f10010a

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f10010b

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->c:Landroid/widget/ImageView;

    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const v10, 0x3f666666    # 0.9f

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    invoke-virtual {p1, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    const p1, 0x7f100110

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->e:Lcom/zbar/a/b/e;

    invoke-virtual {v0}, Lcom/zbar/a/b/e;->b()V

    iget-object v0, v0, Lcom/zbar/a/b/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->b()V

    return-void
.end method

.method protected onResume()V
    .registers 9

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->r:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_1c

    invoke-direct {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->a(Landroid/view/SurfaceHolder;)V

    goto :goto_22

    :cond_1c
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->g:Z

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_37

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->g:Z

    :cond_37
    iget-boolean v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->g:Z

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    if-nez v1, :cond_83

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->setVolumeControlStream(I)V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    :try_start_5f
    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_7f} :catch_80

    goto :goto_83

    :catch_80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    :cond_83
    :goto_83
    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->h:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->r:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->r:Z

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->a(Landroid/view/SurfaceHolder;)V

    :cond_a
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->r:Z

    return-void
.end method
