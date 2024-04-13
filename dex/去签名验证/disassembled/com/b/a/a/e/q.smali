.class final Lcom/b/a/a/e/q;
.super Lcom/b/a/a/b;


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/b/a/a/e/b;

.field final synthetic d:Lcom/b/a/a/e/j;


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/a/a/e/b;)V
    .registers 6

    iput-object p1, p0, Lcom/b/a/a/e/q;->d:Lcom/b/a/a/e/j;

    iput p4, p0, Lcom/b/a/a/e/q;->a:I

    iput-object p5, p0, Lcom/b/a/a/e/q;->c:Lcom/b/a/a/e/b;

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/b/a/a/e/q;->d:Lcom/b/a/a/e/j;

    iget-object v0, v0, Lcom/b/a/a/e/j;->i:Lcom/b/a/a/e/aj;

    invoke-interface {v0}, Lcom/b/a/a/e/aj;->c()V

    iget-object v0, p0, Lcom/b/a/a/e/q;->d:Lcom/b/a/a/e/j;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/b/a/a/e/q;->d:Lcom/b/a/a/e/j;

    iget-object v1, v1, Lcom/b/a/a/e/j;->r:Ljava/util/Set;

    iget v2, p0, Lcom/b/a/a/e/q;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v1
.end method
