.class final Lb/a/k/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:J

.field c:Z

.field d:Z

.field final synthetic e:Lb/a/k/d;


# direct methods
.method constructor <init>(Lb/a/k/d;)V
    .registers 2

    iput-object p1, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/c;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/k/d$a;->d:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    iget-object v0, v0, Lb/a/k/d;->e:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->a(Lc/c;J)V

    iget-boolean p1, p0, Lb/a/k/d$a;->c:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_32

    iget-wide v0, p0, Lb/a/k/d$a;->b:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_32

    iget-object p1, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    iget-object p1, p1, Lb/a/k/d;->e:Lc/c;

    iget-wide v0, p1, Lc/c;->c:J

    iget-wide v2, p0, Lb/a/k/d$a;->b:J

    const-wide/16 v4, 0x2000

    sub-long v6, v2, v4

    cmp-long p1, v0, v6

    if-lez p1, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    iget-object p3, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    iget-object p3, p3, Lb/a/k/d;->e:Lc/c;

    invoke-virtual {p3}, Lc/c;->f()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-lez p3, :cond_57

    if-nez p1, :cond_57

    iget-object p1, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    monitor-enter p1

    :try_start_46
    iget-object v0, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    iget v1, p0, Lb/a/k/d$a;->a:I

    iget-boolean v4, p0, Lb/a/k/d$a;->c:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lb/a/k/d;->a(IJZZ)V

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_54

    iput-boolean p2, p0, Lb/a/k/d$a;->c:Z

    return-void

    :catchall_54
    move-exception p2

    :try_start_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p2

    :cond_57
    return-void
.end method

.method public final close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/k/d$a;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    iget v2, p0, Lb/a/k/d$a;->a:I

    iget-object v3, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    iget-object v3, v3, Lb/a/k/d;->e:Lc/c;

    iget-wide v3, v3, Lc/c;->c:J

    iget-boolean v5, p0, Lb/a/k/d$a;->c:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lb/a/k/d;->a(IJZZ)V

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_29

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/k/d$a;->d:Z

    iget-object v0, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/a/k/d;->g:Z

    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public final flush()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/k/d$a;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    iget v2, p0, Lb/a/k/d$a;->a:I

    iget-object v3, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    iget-object v3, v3, Lb/a/k/d;->e:Lc/c;

    iget-wide v3, v3, Lc/c;->c:J

    iget-boolean v5, p0, Lb/a/k/d$a;->c:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lb/a/k/d;->a(IJZZ)V

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_24

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/k/d$a;->c:Z

    return-void

    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lb/a/k/d$a;->e:Lb/a/k/d;

    iget-object v0, v0, Lb/a/k/d;->c:Lc/d;

    invoke-interface {v0}, Lc/d;->timeout()Lc/z;

    move-result-object v0

    return-object v0
.end method
