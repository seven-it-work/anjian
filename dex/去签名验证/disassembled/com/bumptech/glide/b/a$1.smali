.class final Lcom/bumptech/glide/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/b/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit v0

    return-object v2

    :cond_e
    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->b(Lcom/bumptech/glide/b/a;)V

    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->c(Lcom/bumptech/glide/b/a;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->d(Lcom/bumptech/glide/b/a;)V

    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->e(Lcom/bumptech/glide/b/a;)I

    :cond_25
    monitor-exit v0

    return-object v2

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/b/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
