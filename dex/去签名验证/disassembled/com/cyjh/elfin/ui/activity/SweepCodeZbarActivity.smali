.class public Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Lcom/cyjh/elfin/sweepcode/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "SWEEP_RESULT_BACK"

.field public static final c:I = 0x63

.field public static final d:I = 0x64

.field private static final i:I = 0x11

.field private static final j:I = 0x12


# instance fields
.field e:Lcom/cyjh/elfin/sweepcode/d;

.field public f:Z

.field g:Landroid/hardware/Camera$PreviewCallback;

.field h:Z

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/FrameLayout;

.field private final o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->k:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->l:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->n:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->f:Z

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->g:Landroid/hardware/Camera$PreviewCallback;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$2;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->o:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->l:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SWEEP_RESULT_BACK"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->finish()V

    return-void

    :cond_2b
    const p1, 0x7f090164

    invoke-static {p0, p1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void
.end method

.method private a([BLandroid/hardware/Camera;Landroid/view/View;)V
    .registers 10

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    if-eqz v0, :cond_7e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->f:Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    :try_start_e
    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    iget-boolean v1, v1, Lcom/cyjh/elfin/sweepcode/d$b;->a:Z

    if-eqz v1, :cond_1e

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_1e
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    new-instance v1, Lnet/sourceforge/zbar/Image;

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    const-string v4, "Y800"

    invoke-direct {v1, v2, v3, v4}, Lnet/sourceforge/zbar/Image;-><init>(IILjava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/elfin/sweepcode/c;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/elfin/sweepcode/c;->b(Landroid/content/Context;)I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, p2

    div-double/2addr v2, v4

    double-to-float p2, v2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p2

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p2, p3

    invoke-virtual {v1, p1}, Lnet/sourceforge/zbar/Image;->setData([B)V

    invoke-virtual {v1, v2, v3, v4, p2}, Lnet/sourceforge/zbar/Image;->setCrop(IIII)V

    new-instance p1, Lcom/cyjh/elfin/sweepcode/d$b;

    invoke-direct {p1, v0, v1, p0}, Lcom/cyjh/elfin/sweepcode/d$b;-><init>(Lcom/cyjh/elfin/sweepcode/d;Lnet/sourceforge/zbar/Image;Lcom/cyjh/elfin/sweepcode/d$a;)V

    iput-object p1, v0, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    iget-object p1, v0, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    invoke-virtual {p1}, Lcom/cyjh/elfin/sweepcode/d$b;->start()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_78} :catch_79

    return-void

    :catch_79
    if-eqz p0, :cond_7e

    invoke-interface {p0}, Lcom/cyjh/elfin/sweepcode/d$a;->a()V

    :cond_7e
    return-void
.end method

.method private b()V
    .registers 6

    new-instance v0, Lcom/cyjh/elfin/sweepcode/d;

    invoke-direct {v0}, Lcom/cyjh/elfin/sweepcode/d;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    new-instance v1, Lnet/sourceforge/zbar/ImageScanner;

    invoke-direct {v1}, Lnet/sourceforge/zbar/ImageScanner;-><init>()V

    iput-object v1, v0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-virtual {v1, v3, v4, v2}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    iget-object v0, v0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    const/16 v1, 0x101

    invoke-virtual {v0, v3, v1, v2}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SWEEP_RESULT_BACK"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->finish()V

    return-void

    :cond_2b
    const p1, 0x7f090164

    invoke-static {p0, p1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void
.end method

.method private c()V
    .registers 4

    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090162

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    return-void
.end method

.method private d()V
    .registers 13

    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->n:Landroid/widget/FrameLayout;

    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->m:Landroid/widget/ImageView;

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

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f100110

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$3;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$3;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .registers 4

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->h:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->h:Z

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/b;->a()Lcom/cyjh/elfin/sweepcode/b;

    move-result-object v0

    const-string v1, "zzz"

    const-string v2, "openLight1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_34

    const-string v1, "zzz"

    const-string v2, "openLight2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object v0, v0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_34
    return-void

    :cond_35
    iput-boolean v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->h:Z

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/b;->a()Lcom/cyjh/elfin/sweepcode/b;

    move-result-object v0

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_55

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->a:Landroid/hardware/Camera;

    iget-object v0, v0, Lcom/cyjh/elfin/sweepcode/b;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_55
    return-void
.end method

.method private f()V
    .registers 6

    new-instance v0, Lcom/cyjh/elfin/sweepcode/d;

    invoke-direct {v0}, Lcom/cyjh/elfin/sweepcode/d;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    new-instance v1, Lnet/sourceforge/zbar/ImageScanner;

    invoke-direct {v1}, Lnet/sourceforge/zbar/ImageScanner;-><init>()V

    iput-object v1, v0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    iget-object v1, v0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-virtual {v1, v3, v4, v2}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    iget-object v0, v0, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    const/16 v1, 0x101

    invoke-virtual {v0, v3, v1, v2}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    return-void
.end method

.method private g()V
    .registers 3

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->n:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/cyjh/elfin/sweepcode/b;->a()Lcom/cyjh/elfin/sweepcode/b;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->g:Landroid/hardware/Camera$PreviewCallback;

    iput-object v1, v0, Lcom/cyjh/elfin/sweepcode/b;->e:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->f:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x11

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040032

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->setContentView(I)V

    const p1, 0x7f1000d4

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const v0, 0x7f0200df

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;B)V

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    const p1, 0x7f100108

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->n:Landroid/widget/FrameLayout;

    const p1, 0x7f100107

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->k:Landroid/widget/RelativeLayout;

    const p1, 0x7f10010a

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x2

    mul-int/lit8 p1, p1, 0x2

    const/4 v3, 0x3

    div-int/2addr p1, v3

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f10010b

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->m:Landroid/widget/ImageView;

    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x2

    const v12, 0x3f666666    # 0.9f

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {p1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    invoke-virtual {p1, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    const p1, 0x7f100110

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$3;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$3;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/cyjh/elfin/sweepcode/d;

    invoke-direct {p1}, Lcom/cyjh/elfin/sweepcode/d;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    new-instance v0, Lnet/sourceforge/zbar/ImageScanner;

    invoke-direct {v0}, Lnet/sourceforge/zbar/ImageScanner;-><init>()V

    iput-object v0, p1, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    iget-object v0, p1, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2, v3}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    iget-object p1, p1, Lcom/cyjh/elfin/sweepcode/d;->a:Lnet/sourceforge/zbar/ImageScanner;

    const/16 v0, 0x101

    invoke-virtual {p1, v1, v0, v3}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_dc

    const/4 v1, 0x1

    :cond_dc
    if-nez v1, :cond_ea

    const-string p1, "android.permission.CAMERA"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x63

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_ea
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->h()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/common/base/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestPermissionsResult --> permissions[0]="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object p2, p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",grantResults[0]="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p3, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x63

    if-eq p1, p2, :cond_28

    return-void

    :cond_28
    array-length p1, p3

    if-lez p1, :cond_33

    aget p1, p3, v2

    if-nez p1, :cond_33

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->h()V

    return-void

    :cond_33
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->finish()V

    return-void
.end method
