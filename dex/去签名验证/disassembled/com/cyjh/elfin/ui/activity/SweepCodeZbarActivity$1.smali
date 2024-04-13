.class final Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$1;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 11

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$1;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$1;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->a(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-boolean v2, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->f:Z

    if-nez v2, :cond_85

    iget-object v2, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    if-eqz v2, :cond_85

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->f:Z

    iget-object v2, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->e:Lcom/cyjh/elfin/sweepcode/d;

    :try_start_15
    iget-object v3, v2, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    if-eqz v3, :cond_25

    iget-object v3, v2, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    iget-boolean v3, v3, Lcom/cyjh/elfin/sweepcode/d$b;->a:Z

    if-eqz v3, :cond_25

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_25
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    new-instance v3, Lnet/sourceforge/zbar/Image;

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    iget v5, p2, Landroid/hardware/Camera$Size;->height:I

    const-string v6, "Y800"

    invoke-direct {v3, v4, v5, v6}, Lnet/sourceforge/zbar/Image;-><init>(IILjava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/elfin/sweepcode/c;->a(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v5

    invoke-static {v5}, Lcom/cyjh/elfin/sweepcode/c;->b(Landroid/content/Context;)I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v6

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, p2

    div-double/2addr v4, v6

    double-to-float p2, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p2

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, p2

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, p2

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {v3, p1}, Lnet/sourceforge/zbar/Image;->setData([B)V

    invoke-virtual {v3, v4, v5, v6, p2}, Lnet/sourceforge/zbar/Image;->setCrop(IIII)V

    new-instance p1, Lcom/cyjh/elfin/sweepcode/d$b;

    invoke-direct {p1, v2, v3, v0}, Lcom/cyjh/elfin/sweepcode/d$b;-><init>(Lcom/cyjh/elfin/sweepcode/d;Lnet/sourceforge/zbar/Image;Lcom/cyjh/elfin/sweepcode/d$a;)V

    iput-object p1, v2, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    iget-object p1, v2, Lcom/cyjh/elfin/sweepcode/d;->b:Lcom/cyjh/elfin/sweepcode/d$b;

    invoke-virtual {p1}, Lcom/cyjh/elfin/sweepcode/d$b;->start()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_7f} :catch_80

    return-void

    :catch_80
    if-eqz v0, :cond_85

    invoke-interface {v0}, Lcom/cyjh/elfin/sweepcode/d$a;->a()V

    :cond_85
    return-void
.end method
