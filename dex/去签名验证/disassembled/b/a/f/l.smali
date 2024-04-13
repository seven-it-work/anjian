.class final Lb/a/f/l;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;

.field b:J

.field c:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lb/a/f/l;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/a/f/l;->b:J

    iput-wide v0, p0, Lb/a/f/l;->c:J

    return-void
.end method

.method private a(JLjava/util/concurrent/TimeUnit;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/l;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-wide p1, p0, Lb/a/f/l;->c:J

    iget-wide v0, p0, Lb/a/f/l;->b:J

    sub-long v2, p1, v0

    return-wide v2

    :cond_f
    const-wide/16 p1, -0x2

    return-wide p1
.end method

.method private a()V
    .registers 6

    iget-wide v0, p0, Lb/a/f/l;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/f/l;->b:J

    return-void
.end method

.method private b()V
    .registers 6

    iget-wide v0, p0, Lb/a/f/l;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    iget-wide v0, p0, Lb/a/f/l;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    goto :goto_1b

    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/f/l;->c:J

    iget-object v0, p0, Lb/a/f/l;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1b
    :goto_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private c()V
    .registers 7

    iget-wide v0, p0, Lb/a/f/l;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1d

    iget-wide v0, p0, Lb/a/f/l;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    goto :goto_1d

    :cond_f
    iget-wide v0, p0, Lb/a/f/l;->b:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lb/a/f/l;->c:J

    iget-object v0, p0, Lb/a/f/l;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private d()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/l;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-wide v0, p0, Lb/a/f/l;->c:J

    iget-wide v2, p0, Lb/a/f/l;->b:J

    sub-long v4, v0, v2

    return-wide v4
.end method
