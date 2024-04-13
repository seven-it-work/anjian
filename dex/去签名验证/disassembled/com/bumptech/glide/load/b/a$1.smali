.class final Lcom/bumptech/glide/load/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a$1;->a:Lcom/bumptech/glide/load/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a$1;->a:Lcom/bumptech/glide/load/b/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/b/a$b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/b/a$b;)V

    return v1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
