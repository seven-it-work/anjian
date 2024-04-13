.class final Lcom/b/a/a/e/ai;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/a/e/ai;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    iput-wide v0, p0, Lcom/b/a/a/e/ai;->c:J

    return-void
.end method


# virtual methods
.method final a()V
    .registers 6

    iget-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    return-void
.end method

.method final b()V
    .registers 6

    iget-wide v0, p0, Lcom/b/a/a/e/ai;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    iget-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    goto :goto_1b

    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/e/ai;->c:J

    iget-object v0, p0, Lcom/b/a/a/e/ai;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1b
    :goto_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final c()V
    .registers 7

    iget-wide v0, p0, Lcom/b/a/a/e/ai;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1d

    iget-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    goto :goto_1d

    :cond_f
    iget-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/a/a/e/ai;->c:J

    iget-object v0, p0, Lcom/b/a/a/e/ai;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
