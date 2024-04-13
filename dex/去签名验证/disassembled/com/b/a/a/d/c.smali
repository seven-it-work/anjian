.class final Lcom/b/a/a/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/b/w;


# instance fields
.field final synthetic a:Lcom/b/a/a/d/a;

.field private final b:Lcom/b/b/k;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/b/a/a/d/a;)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/a/d/c;->a:Lcom/b/a/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/b/b/k;

    iget-object v0, p0, Lcom/b/a/a/d/c;->a:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->a()Lcom/b/b/y;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/b/b/k;-><init>(Lcom/b/b/y;)V

    iput-object p1, p0, Lcom/b/a/a/d/c;->b:Lcom/b/b/k;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/d/c;->b:Lcom/b/b/k;

    return-object v0
.end method

.method public final a_(Lcom/b/b/f;J)V
    .registers 7

    iget-boolean v0, p0, Lcom/b/a/a/d/c;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/b/a/a/d/c;->a:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0, p2, p3}, Lcom/b/b/g;->i(J)Lcom/b/b/g;

    iget-object v0, p0, Lcom/b/a/a/d/c;->a:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    iget-object v0, p0, Lcom/b/a/a/d/c;->a:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/b/b/g;->a_(Lcom/b/b/f;J)V

    iget-object p1, p0, Lcom/b/a/a/d/c;->a:Lcom/b/a/a/d/a;

    iget-object p1, p1, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    const-string p2, "\r\n"

    invoke-interface {p1, p2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    return-void
.end method

.method public final declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/a/d/c;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/b/a/a/d/c;->c:Z

    iget-object v0, p0, Lcom/b/a/a/d/c;->a:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    iget-object v0, p0, Lcom/b/a/a/d/c;->b:Lcom/b/b/k;

    invoke-static {v0}, Lcom/b/a/a/d/a;->a(Lcom/b/b/k;)V

    iget-object v0, p0, Lcom/b/a/a/d/c;->a:Lcom/b/a/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Lcom/b/a/a/d/a;->e:I
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/a/d/c;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/b/a/a/d/c;->a:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
