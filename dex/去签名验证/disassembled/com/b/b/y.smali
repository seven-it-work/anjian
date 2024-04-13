.class public Lcom/b/b/y;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lcom/b/b/y;


# instance fields
.field private a:Z

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/b/b/z;

    invoke-direct {v0}, Lcom/b/b/z;-><init>()V

    sput-object v0, Lcom/b/b/y;->b:Lcom/b/b/y;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/b/b/y;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/y;->a:Z

    iput-wide p1, p0, Lcom/b/b/y;->c:J

    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;
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

    iput-wide p1, p0, Lcom/b/b/y;->d:J

    return-object p0
.end method

.method public b_()J
    .registers 3

    iget-wide v0, p0, Lcom/b/b/y;->d:J

    return-wide v0
.end method

.method public c_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/b/y;->a:Z

    return v0
.end method

.method public d()J
    .registers 3

    iget-boolean v0, p0, Lcom/b/b/y;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, Lcom/b/b/y;->c:J

    return-wide v0
.end method

.method public d_()Lcom/b/b/y;
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/b/y;->d:J

    return-object p0
.end method

.method public e_()Lcom/b/b/y;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/b/y;->a:Z

    return-object p0
.end method

.method public f_()V
    .registers 7

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-boolean v0, p0, Lcom/b/b/y;->a:Z

    if-eqz v0, :cond_28

    iget-wide v0, p0, Lcom/b/b/y;->c:J

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
