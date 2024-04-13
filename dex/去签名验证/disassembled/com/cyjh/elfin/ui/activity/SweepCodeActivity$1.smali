.class final Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$1;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$1;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-boolean v0, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->n:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->n:Z

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object p1

    const-string v0, "zzz"

    const-string v1, "openLight1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_36

    const-string v0, "zzz"

    const-string v1, "openLight2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p1, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    iget-object v0, p1, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object p1, p1, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_36
    return-void

    :cond_37
    iput-boolean v1, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->n:Z

    invoke-static {}, Lcom/zbar/a/a/c;->a()Lcom/zbar/a/a/c;

    move-result-object p1

    iget-object v0, p1, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_57

    iget-object v0, p1, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p1, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    iget-object v0, p1, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/zbar/a/a/c;->c:Landroid/hardware/Camera;

    iget-object p1, p1, Lcom/zbar/a/a/c;->i:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_57
    return-void
.end method
