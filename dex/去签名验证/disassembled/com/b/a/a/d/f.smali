.class final Lcom/b/a/a/d/f;
.super Lcom/b/a/a/d/b;


# instance fields
.field final synthetic d:Lcom/b/a/a/d/a;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/b/a/a/d/a;J)V
    .registers 6

    iput-object p1, p0, Lcom/b/a/a/d/f;->d:Lcom/b/a/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/d/b;-><init>(Lcom/b/a/a/d/a;B)V

    iput-wide p2, p0, Lcom/b/a/a/d/f;->e:J

    iget-wide p1, p0, Lcom/b/a/a/d/f;->e:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_14

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/b/a/a/d/f;->a(Z)V

    :cond_14
    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/f;J)J
    .registers 11

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
    iget-boolean v2, p0, Lcom/b/a/a/d/f;->b:Z

    if-eqz v2, :cond_26

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    iget-wide v2, p0, Lcom/b/a/a/d/f;->e:J

    cmp-long v4, v2, v0

    const-wide/16 v2, -0x1

    if-nez v4, :cond_2f

    return-wide v2

    :cond_2f
    iget-object v4, p0, Lcom/b/a/a/d/f;->d:Lcom/b/a/a/d/a;

    iget-object v4, v4, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    iget-wide v5, p0, Lcom/b/a/a/d/f;->e:J

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v4, p1, p2, p3}, Lcom/b/b/h;->a(Lcom/b/b/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-nez p3, :cond_4d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/b/a/a/d/f;->a(Z)V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    iget-wide v2, p0, Lcom/b/a/a/d/f;->e:J

    sub-long v4, v2, p1

    iput-wide v4, p0, Lcom/b/a/a/d/f;->e:J

    iget-wide v2, p0, Lcom/b/a/a/d/f;->e:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_5d

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/b/a/a/d/f;->a(Z)V

    :cond_5d
    return-wide p1
.end method

.method public final close()V
    .registers 6

    iget-boolean v0, p0, Lcom/b/a/a/d/f;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lcom/b/a/a/d/f;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lcom/b/a/a/c;->a(Lcom/b/b/x;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/a/d/f;->a(Z)V

    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/d/f;->b:Z

    return-void
.end method
