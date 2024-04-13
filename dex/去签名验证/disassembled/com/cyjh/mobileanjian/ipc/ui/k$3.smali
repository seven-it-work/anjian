.class final Lcom/cyjh/mobileanjian/ipc/ui/k$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/ui/k;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$3;->a:Lcom/cyjh/mobileanjian/ipc/ui/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$3;->a:Lcom/cyjh/mobileanjian/ipc/ui/k;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(Lcom/cyjh/mobileanjian/ipc/ui/k;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
