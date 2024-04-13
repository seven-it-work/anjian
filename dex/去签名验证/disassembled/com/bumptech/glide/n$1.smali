.class final Lcom/bumptech/glide/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/n;->b(II)Lcom/bumptech/glide/request/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/e;

.field final synthetic b:Lcom/bumptech/glide/n;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/n;Lcom/bumptech/glide/request/e;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/n$1;->b:Lcom/bumptech/glide/n;

    iput-object p2, p0, Lcom/bumptech/glide/n$1;->a:Lcom/bumptech/glide/request/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/n$1;->a:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/n$1;->b:Lcom/bumptech/glide/n;

    iget-object v1, p0, Lcom/bumptech/glide/n$1;->a:Lcom/bumptech/glide/request/e;

    iget-object v2, p0, Lcom/bumptech/glide/n$1;->a:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/Target;

    :cond_11
    return-void
.end method
