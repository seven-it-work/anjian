.class final Lcom/b/a/a/e/m;
.super Lcom/b/a/a/b;


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/b/a/a/e/ai;

.field final synthetic f:Lcom/b/a/a/e/j;


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;II)V
    .registers 6

    iput-object p1, p0, Lcom/b/a/a/e/m;->f:Lcom/b/a/a/e/j;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/b/a/a/e/m;->a:Z

    iput p4, p0, Lcom/b/a/a/e/m;->c:I

    iput p5, p0, Lcom/b/a/a/e/m;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/b/a/a/e/m;->e:Lcom/b/a/a/e/ai;

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/m;->f:Lcom/b/a/a/e/j;

    iget-boolean v1, p0, Lcom/b/a/a/e/m;->a:Z

    iget v2, p0, Lcom/b/a/a/e/m;->c:I

    iget v3, p0, Lcom/b/a/a/e/m;->d:I

    iget-object v4, p0, Lcom/b/a/a/e/m;->e:Lcom/b/a/a/e/ai;

    iget-object v5, v0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    monitor-enter v5
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_1e

    if-eqz v4, :cond_15

    :try_start_f
    invoke-virtual {v4}, Lcom/b/a/a/e/ai;->a()V

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_1c

    :cond_15
    :goto_15
    iget-object v0, v0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/a/e/af;->a(ZII)V

    monitor-exit v5

    return-void

    :goto_1c
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_13

    :try_start_1d
    throw v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method
