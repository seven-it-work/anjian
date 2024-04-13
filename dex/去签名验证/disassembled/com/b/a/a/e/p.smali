.class final Lcom/b/a/a/e/p;
.super Lcom/b/a/a/b;


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/b/b/f;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/b/a/a/e/j;


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/b/f;IZ)V
    .registers 8

    iput-object p1, p0, Lcom/b/a/a/e/p;->f:Lcom/b/a/a/e/j;

    iput p4, p0, Lcom/b/a/a/e/p;->a:I

    iput-object p5, p0, Lcom/b/a/a/e/p;->c:Lcom/b/b/f;

    iput p6, p0, Lcom/b/a/a/e/p;->d:I

    iput-boolean p7, p0, Lcom/b/a/a/e/p;->e:Z

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/p;->f:Lcom/b/a/a/e/j;

    iget-object v0, v0, Lcom/b/a/a/e/j;->i:Lcom/b/a/a/e/aj;

    iget-object v1, p0, Lcom/b/a/a/e/p;->c:Lcom/b/b/f;

    iget v2, p0, Lcom/b/a/a/e/p;->d:I

    invoke-interface {v0, v1, v2}, Lcom/b/a/a/e/aj;->a(Lcom/b/b/h;I)Z

    iget-object v0, p0, Lcom/b/a/a/e/p;->f:Lcom/b/a/a/e/j;

    iget-object v0, v0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    iget v1, p0, Lcom/b/a/a/e/p;->a:I

    sget-object v2, Lcom/b/a/a/e/b;->f:Lcom/b/a/a/e/b;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/e/af;->a(ILcom/b/a/a/e/b;)V

    iget-object v0, p0, Lcom/b/a/a/e/p;->f:Lcom/b/a/a/e/j;

    monitor-enter v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_2b

    :try_start_19
    iget-object v1, p0, Lcom/b/a/a/e/p;->f:Lcom/b/a/a/e/j;

    iget-object v1, v1, Lcom/b/a/a/e/j;->r:Ljava/util/Set;

    iget v2, p0, Lcom/b/a/a/e/p;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method
