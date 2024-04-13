.class final Lb/a/e/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lc/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lb/a/e/a;

.field private final b:Lc/j;

.field private c:Z


# direct methods
.method constructor <init>(Lb/a/e/a;)V
    .registers 3

    iput-object p1, p0, Lb/a/e/a$b;->a:Lb/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/j;

    iget-object v0, p0, Lb/a/e/a$b;->a:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0}, Lc/d;->timeout()Lc/z;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/j;-><init>(Lc/z;)V

    iput-object p1, p0, Lb/a/e/a$b;->b:Lc/j;

    return-void
.end method


# virtual methods
.method public final a(Lc/c;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/e/a$b;->c:Z

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
    iget-object v0, p0, Lb/a/e/a$b;->a:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0, p2, p3}, Lc/d;->m(J)Lc/d;

    iget-object v0, p0, Lb/a/e/a$b;->a:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->e:Lc/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    iget-object v0, p0, Lb/a/e/a$b;->a:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0, p1, p2, p3}, Lc/d;->a(Lc/c;J)V

    iget-object p1, p0, Lb/a/e/a$b;->a:Lb/a/e/a;

    iget-object p1, p1, Lb/a/e/a;->e:Lc/d;

    const-string p2, "\r\n"

    invoke-interface {p1, p2}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    return-void
.end method

.method public final declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/e/a$b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lb/a/e/a$b;->c:Z

    iget-object v0, p0, Lb/a/e/a$b;->a:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->e:Lc/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    iget-object v0, p0, Lb/a/e/a$b;->b:Lc/j;

    invoke-static {v0}, Lb/a/e/a;->a(Lc/j;)V

    iget-object v0, p0, Lb/a/e/a$b;->a:Lb/a/e/a;

    const/4 v1, 0x3

    iput v1, v0, Lb/a/e/a;->f:I
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/e/a$b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lb/a/e/a$b;->a:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0}, Lc/d;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lb/a/e/a$b;->b:Lc/j;

    return-object v0
.end method
