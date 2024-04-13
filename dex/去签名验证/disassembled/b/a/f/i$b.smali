.class final Lb/a/f/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Lc/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic c:Z = true


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Lb/a/f/i;

.field private final e:Lc/c;

.field private final f:Lc/c;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lb/a/f/i;

    return-void
.end method

.method constructor <init>(Lb/a/f/i;J)V
    .registers 4

    iput-object p1, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    iput-object p1, p0, Lb/a/f/i$b;->e:Lc/c;

    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    iput-object p1, p0, Lb/a/f/i$b;->f:Lc/c;

    iput-wide p2, p0, Lb/a/f/i$b;->g:J

    return-void
.end method

.method private a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v0, v0, Lb/a/f/i;->i:Lb/a/f/i$c;

    invoke-virtual {v0}, Lb/a/f/i$c;->j_()V

    :goto_7
    :try_start_7
    iget-object v0, p0, Lb/a/f/i$b;->f:Lc/c;

    iget-wide v0, v0, Lc/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_25

    iget-boolean v0, p0, Lb/a/f/i$b;->b:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lb/a/f/i$b;->a:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v0, v0, Lb/a/f/i;->k:Lb/a/f/b;

    if-nez v0, :cond_25

    iget-object v0, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    invoke-virtual {v0}, Lb/a/f/i;->h()V
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_2d

    goto :goto_7

    :cond_25
    iget-object v0, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v0, v0, Lb/a/f/i;->i:Lb/a/f/i$c;

    invoke-virtual {v0}, Lb/a/f/i$c;->b()V

    return-void

    :catchall_2d
    move-exception v0

    iget-object v1, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v1, v1, Lb/a/f/i;->i:Lb/a/f/i$c;

    invoke-virtual {v1}, Lb/a/f/i$c;->b()V

    throw v0
.end method

.method private b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/f/i$b;->a:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v0, v0, Lb/a/f/i;->k:Lb/a/f/b;

    if-eqz v0, :cond_1c

    new-instance v0, Lb/a/f/o;

    iget-object v1, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v1, v1, Lb/a/f/i;->k:Lb/a/f/b;

    invoke-direct {v0, v1}, Lb/a/f/o;-><init>(Lb/a/f/b;)V

    throw v0

    :cond_1c
    return-void
.end method


# virtual methods
.method final a(Lc/e;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lb/a/f/i$b;->c:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_12
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_7b

    iget-object v2, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    monitor-enter v2

    :try_start_1b
    iget-boolean v3, p0, Lb/a/f/i$b;->b:Z

    iget-object v4, p0, Lb/a/f/i$b;->f:Lc/c;

    iget-wide v4, v4, Lc/c;->c:J

    const/4 v6, 0x0

    add-long v6, p2, v4

    iget-wide v4, p0, Lb/a/f/i$b;->g:J

    cmp-long v8, v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v8, :cond_2e

    const/4 v6, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    :goto_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_78

    if-eqz v6, :cond_3d

    invoke-interface {p1, p2, p3}, Lc/e;->h(J)V

    iget-object p1, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    sget-object p2, Lb/a/f/b;->FLOW_CONTROL_ERROR:Lb/a/f/b;

    invoke-virtual {p1, p2}, Lb/a/f/i;->b(Lb/a/f/b;)V

    return-void

    :cond_3d
    if-eqz v3, :cond_43

    invoke-interface {p1, p2, p3}, Lc/e;->h(J)V

    return-void

    :cond_43
    iget-object v2, p0, Lb/a/f/i$b;->e:Lc/c;

    invoke-interface {p1, v2, p2, p3}, Lc/e;->read(Lc/c;J)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-nez v8, :cond_55

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_55
    const/4 v6, 0x0

    sub-long v6, p2, v2

    iget-object p2, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    monitor-enter p2

    :try_start_5b
    iget-object p3, p0, Lb/a/f/i$b;->f:Lc/c;

    iget-wide v2, p3, Lc/c;->c:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_64

    const/4 v4, 0x1

    :cond_64
    iget-object p3, p0, Lb/a/f/i$b;->f:Lc/c;

    iget-object v0, p0, Lb/a/f/i$b;->e:Lc/c;

    invoke-virtual {p3, v0}, Lc/c;->a(Lc/y;)J

    if-eqz v4, :cond_72

    iget-object p3, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    :cond_72
    monitor-exit p2

    move-wide p2, v6

    goto :goto_12

    :catchall_75
    move-exception p1

    monitor-exit p2
    :try_end_77
    .catchall {:try_start_5b .. :try_end_77} :catchall_75

    throw p1

    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p1

    :cond_7b
    return-void
.end method

.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lb/a/f/i$b;->a:Z

    iget-object v1, p0, Lb/a/f/i$b;->f:Lc/c;

    invoke-virtual {v1}, Lc/c;->w()V

    iget-object v1, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    iget-object v0, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    invoke-virtual {v0}, Lb/a/f/i;->f()V

    return-void

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public final read(Lc/c;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    iget-object v2, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    monitor-enter v2

    :try_start_1d
    invoke-direct {p0}, Lb/a/f/i$b;->a()V

    iget-boolean v3, p0, Lb/a/f/i$b;->a:Z

    if-eqz v3, :cond_2c

    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    iget-object v3, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v3, v3, Lb/a/f/i;->k:Lb/a/f/b;

    if-eqz v3, :cond_3c

    new-instance p1, Lb/a/f/o;

    iget-object p2, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object p2, p2, Lb/a/f/i;->k:Lb/a/f/b;

    invoke-direct {p1, p2}, Lb/a/f/o;-><init>(Lb/a/f/b;)V

    throw p1

    :cond_3c
    iget-object v3, p0, Lb/a/f/i$b;->f:Lc/c;

    iget-wide v3, v3, Lc/c;->c:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_48

    const-wide/16 p1, -0x1

    monitor-exit v2

    return-wide p1

    :cond_48
    iget-object v3, p0, Lb/a/f/i$b;->f:Lc/c;

    iget-object v4, p0, Lb/a/f/i$b;->f:Lc/c;

    iget-wide v4, v4, Lc/c;->c:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lc/c;->read(Lc/c;J)J

    move-result-wide p1

    iget-object p3, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-wide v3, p3, Lb/a/f/i;->a:J

    const/4 v5, 0x0

    add-long v5, v3, p1

    iput-wide v5, p3, Lb/a/f/i;->a:J

    iget-object p3, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-wide v3, p3, Lb/a/f/i;->a:J

    iget-object p3, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object p3, p3, Lb/a/f/i;->d:Lb/a/f/g;

    iget-object p3, p3, Lb/a/f/g;->m:Lb/a/f/n;

    invoke-virtual {p3}, Lb/a/f/n;->b()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_87

    iget-object p3, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object p3, p3, Lb/a/f/i;->d:Lb/a/f/g;

    iget-object v3, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget v3, v3, Lb/a/f/i;->c:I

    iget-object v4, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-wide v4, v4, Lb/a/f/i;->a:J

    invoke-virtual {p3, v3, v4, v5}, Lb/a/f/g;->a(IJ)V

    iget-object p3, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iput-wide v0, p3, Lb/a/f/i;->a:J

    :cond_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_1d .. :try_end_88} :catchall_c8

    iget-object p3, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object p3, p3, Lb/a/f/i;->d:Lb/a/f/g;

    monitor-enter p3

    :try_start_8d
    iget-object v2, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v2, v2, Lb/a/f/i;->d:Lb/a/f/g;

    iget-wide v3, v2, Lb/a/f/g;->k:J

    const/4 v5, 0x0

    add-long v5, v3, p1

    iput-wide v5, v2, Lb/a/f/g;->k:J

    iget-object v2, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v2, v2, Lb/a/f/i;->d:Lb/a/f/g;

    iget-wide v2, v2, Lb/a/f/g;->k:J

    iget-object v4, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v4, v4, Lb/a/f/i;->d:Lb/a/f/g;

    iget-object v4, v4, Lb/a/f/g;->m:Lb/a/f/n;

    invoke-virtual {v4}, Lb/a/f/n;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_c3

    iget-object v2, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v2, v2, Lb/a/f/i;->d:Lb/a/f/g;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v4, v4, Lb/a/f/i;->d:Lb/a/f/g;

    iget-wide v4, v4, Lb/a/f/g;->k:J

    invoke-virtual {v2, v3, v4, v5}, Lb/a/f/g;->a(IJ)V

    iget-object v2, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v2, v2, Lb/a/f/i;->d:Lb/a/f/g;

    iput-wide v0, v2, Lb/a/f/g;->k:J

    :cond_c3
    monitor-exit p3

    return-wide p1

    :catchall_c5
    move-exception p1

    monitor-exit p3
    :try_end_c7
    .catchall {:try_start_8d .. :try_end_c7} :catchall_c5

    throw p1

    :catchall_c8
    move-exception p1

    :try_start_c9
    monitor-exit v2
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw p1
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lb/a/f/i$b;->d:Lb/a/f/i;

    iget-object v0, v0, Lb/a/f/i;->i:Lb/a/f/i$c;

    return-object v0
.end method
