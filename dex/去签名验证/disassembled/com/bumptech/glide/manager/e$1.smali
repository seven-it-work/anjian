.class final Lcom/bumptech/glide/manager/e$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/manager/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/e;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-boolean p2, p2, Lcom/bumptech/glide/manager/e;->b:Z

    iget-object v0, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    invoke-static {p1}, Lcom/bumptech/glide/manager/e;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/bumptech/glide/manager/e;->b:Z

    iget-object p1, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-boolean p1, p1, Lcom/bumptech/glide/manager/e;->b:Z

    if-eq p2, p1, :cond_3d

    const-string p1, "ConnectivityMonitor"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "ConnectivityMonitor"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "connectivity changed, isConnected: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-boolean v0, v0, Lcom/bumptech/glide/manager/e;->b:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-object p1, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-object p1, p1, Lcom/bumptech/glide/manager/e;->a:Lcom/bumptech/glide/manager/c$a;

    iget-object p2, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-boolean p2, p2, Lcom/bumptech/glide/manager/e;->b:Z

    invoke-interface {p1, p2}, Lcom/bumptech/glide/manager/c$a;->a(Z)V

    :cond_3d
    return-void
.end method
