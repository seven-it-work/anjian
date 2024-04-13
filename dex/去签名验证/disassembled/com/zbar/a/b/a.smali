.class public final Lcom/zbar/a/b/a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zbar/a/b/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/zbar/a/b/c;

.field b:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zbar/a/b/a;->a:Lcom/zbar/a/b/c;

    iput-object v0, p0, Lcom/zbar/a/b/a;->b:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iput-object p1, p0, Lcom/zbar/a/b/a;->b:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    new-instance v0, Lcom/zbar/a/b/c;

    invoke-direct {v0, p1}, Lcom/zbar/a/b/c;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lcom/zbar/a/b/a;->a:Lcom/zbar/a/b/c;

    iget-object p1, p0, Lcom/zbar/a/b/a;->a:Lcom/zbar/a/b/c;

    invoke-virtual {p1}, Lcom/zbar/a/b/c;->start()V

    sget p1, Lcom/zbar/a/b/a$a;->SUCCESS$65384932:I

    iput p1, p0, Lcom/zbar/a/b/a;->c:I

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object p1

    iget-object v0, p1, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_2e

    iget-boolean v0, p1, Lcom/zbar/a/a/c;->e:Z

    if-nez v0, :cond_2e

    iget-object v0, p1, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zbar/a/a/c;->e:Z

    :cond_2e
    invoke-direct {p0}, Lcom/zbar/a/b/a;->b()V

    return-void
.end method

.method private a()V
    .registers 5

    sget v0, Lcom/zbar/a/b/a$a;->DONE$65384932:I

    iput v0, p0, Lcom/zbar/a/b/a;->c:I

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object v0

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Lcom/zbar/a/a/c;->e:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Lcom/zbar/a/a/c;->f:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1a
    iget-object v1, v0, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v1, v0, Lcom/zbar/a/a/c;->g:Lcom/zbar/a/a/e;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zbar/a/a/e;->a(Landroid/os/Handler;I)V

    iget-object v1, v0, Lcom/zbar/a/a/c;->h:Lcom/zbar/a/a/a;

    invoke-virtual {v1, v2, v3}, Lcom/zbar/a/a/a;->a(Landroid/os/Handler;I)V

    iput-boolean v3, v0, Lcom/zbar/a/a/c;->e:Z

    :cond_2c
    const v0, 0x7f100007

    invoke-virtual {p0, v0}, Lcom/zbar/a/b/a;->removeMessages(I)V

    const v0, 0x7f100006

    invoke-virtual {p0, v0}, Lcom/zbar/a/b/a;->removeMessages(I)V

    const v0, 0x7f100005

    invoke-virtual {p0, v0}, Lcom/zbar/a/b/a;->removeMessages(I)V

    const v0, 0x7f100004

    invoke-virtual {p0, v0}, Lcom/zbar/a/b/a;->removeMessages(I)V

    return-void
.end method

.method private b()V
    .registers 3

    iget v0, p0, Lcom/zbar/a/b/a;->c:I

    sget v1, Lcom/zbar/a/b/a$a;->SUCCESS$65384932:I

    if-ne v0, v1, :cond_1e

    sget v0, Lcom/zbar/a/b/a$a;->PREVIEW$65384932:I

    iput v0, p0, Lcom/zbar/a/b/a;->c:I

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zbar/a/b/a;->a:Lcom/zbar/a/b/c;

    invoke-virtual {v1}, Lcom/zbar/a/b/c;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zbar/a/a/c;->a(Landroid/os/Handler;)V

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zbar/a/a/c;->b(Landroid/os/Handler;)V

    :cond_1e
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_7a

    return-void

    :sswitch_6
    invoke-direct {p0}, Lcom/zbar/a/b/a;->b()V

    return-void

    :sswitch_a
    sget v0, Lcom/zbar/a/b/a$a;->SUCCESS$65384932:I

    iput v0, p0, Lcom/zbar/a/b/a;->c:I

    iget-object v0, p0, Lcom/zbar/a/b/a;->b:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->e:Lcom/zbar/a/b/e;

    invoke-virtual {v1}, Lcom/zbar/a/b/e;->a()V

    iget-boolean v1, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->g:Z

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    :cond_26
    iget-boolean v1, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->h:Z

    if-eqz v1, :cond_37

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_37
    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->b()V

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    if-eqz p1, :cond_53

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "SWEEP_RESULT_BACK"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->finish()V

    goto :goto_59

    :cond_53
    const p1, 0x7f090164

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    :goto_59
    :sswitch_59
    sget p1, Lcom/zbar/a/b/a$a;->PREVIEW$65384932:I

    iput p1, p0, Lcom/zbar/a/b/a;->c:I

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object p1

    iget-object v0, p0, Lcom/zbar/a/b/a;->a:Lcom/zbar/a/b/c;

    invoke-virtual {v0}, Lcom/zbar/a/b/c;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zbar/a/a/c;->a(Landroid/os/Handler;)V

    return-void

    :sswitch_6b
    iget p1, p0, Lcom/zbar/a/b/a;->c:I

    sget v0, Lcom/zbar/a/b/a$a;->PREVIEW$65384932:I

    if-ne p1, v0, :cond_78

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zbar/a/a/c;->b(Landroid/os/Handler;)V

    :cond_78
    return-void

    nop

    :sswitch_data_7a
    .sparse-switch
        0x7f100004 -> :sswitch_6b
        0x7f100006 -> :sswitch_59
        0x7f100007 -> :sswitch_a
        0x7f100015 -> :sswitch_6
    .end sparse-switch
.end method
