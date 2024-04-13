.class final Lcom/bumptech/glide/load/b/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/x$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/b/x$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/x$a;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/x;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/load/b/u;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/x;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/load/b/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_12
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/x;->a:Z

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->d()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/load/b/x;->a:Z

    return-void
.end method
