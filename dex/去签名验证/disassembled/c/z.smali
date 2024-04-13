.class public Lc/z;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lc/z;


# instance fields
.field private a:Z

.field private b:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc/z$1;

    invoke-direct {v0}, Lc/z$1;-><init>()V

    sput-object v0, Lc/z;->c:Lc/z;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(JLjava/util/concurrent/TimeUnit;)Lc/z;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1a

    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duration <= 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1a
    if-nez p3, :cond_24

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long v2, v0, p1

    invoke-virtual {p0, v2, v3}, Lc/z;->a(J)Lc/z;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(J)Lc/z;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/z;->a:Z

    iput-wide p1, p0, Lc/z;->b:J

    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lc/z;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1a

    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeout < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1a
    if-nez p3, :cond_24

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lc/z;->d:J

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lc/z;->m_()Z

    move-result v0

    invoke-virtual {p0}, Lc/z;->l_()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_14

    cmp-long v5, v1, v3

    if-nez v5, :cond_14

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    return-void

    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    if-eqz v0, :cond_2a

    cmp-long v7, v1, v3

    if-eqz v7, :cond_2a

    invoke-virtual {p0}, Lc/z;->c()J

    move-result-wide v7

    const/4 v0, 0x0

    sub-long v9, v7, v5

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_34

    :cond_2a
    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lc/z;->c()J

    move-result-wide v0

    const/4 v2, 0x0

    sub-long v7, v0, v5

    move-wide v1, v7

    :cond_34
    :goto_34
    cmp-long v0, v1, v3

    if-lez v0, :cond_4e

    const-wide/32 v3, 0xf4240

    div-long v7, v1, v3

    mul-long v3, v3, v7

    const/4 v0, 0x0

    sub-long v9, v1, v3

    long-to-int v0, v9

    invoke-virtual {p1, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 p1, 0x0

    sub-long v7, v3, v5

    move-wide v3, v7

    :cond_4e
    cmp-long p1, v3, v1

    if-ltz p1, :cond_5a

    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5a} :catch_5b

    :cond_5a
    return-void

    :catch_5b
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "interrupted"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()J
    .registers 3

    iget-boolean v0, p0, Lc/z;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, Lc/z;->b:J

    return-wide v0
.end method

.method public d()Lc/z;
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/z;->d:J

    return-object p0
.end method

.method public f()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-boolean v0, p0, Lc/z;->a:Z

    if-eqz v0, :cond_28

    iget-wide v0, p0, Lc/z;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_28

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    return-void
.end method

.method public l_()J
    .registers 3

    iget-wide v0, p0, Lc/z;->d:J

    return-wide v0
.end method

.method public m_()Z
    .registers 2

    iget-boolean v0, p0, Lc/z;->a:Z

    return v0
.end method

.method public n_()Lc/z;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/z;->a:Z

    return-object p0
.end method
