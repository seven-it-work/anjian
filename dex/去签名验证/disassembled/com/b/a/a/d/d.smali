.class final Lcom/b/a/a/d/d;
.super Lcom/b/a/a/d/b;


# instance fields
.field final synthetic d:Lcom/b/a/a/d/a;

.field private final e:Lcom/b/a/ac;

.field private f:J

.field private g:Z


# direct methods
.method constructor <init>(Lcom/b/a/a/d/a;Lcom/b/a/ac;)V
    .registers 5

    iput-object p1, p0, Lcom/b/a/a/d/d;->d:Lcom/b/a/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/d/b;-><init>(Lcom/b/a/a/d/a;B)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/a/d/d;->f:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/b/a/a/d/d;->g:Z

    iput-object p2, p0, Lcom/b/a/a/d/d;->e:Lcom/b/a/ac;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/f;J)J
    .registers 13

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
    iget-boolean v2, p0, Lcom/b/a/a/d/d;->b:Z

    if-eqz v2, :cond_26

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    iget-boolean v2, p0, Lcom/b/a/a/d/d;->g:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_2d

    return-wide v3

    :cond_2d
    iget-wide v5, p0, Lcom/b/a/a/d/d;->f:J

    cmp-long v2, v5, v0

    const/4 v5, 0x0

    if-eqz v2, :cond_3a

    iget-wide v6, p0, Lcom/b/a/a/d/d;->f:J

    cmp-long v2, v6, v3

    if-nez v2, :cond_96

    :cond_3a
    iget-wide v6, p0, Lcom/b/a/a/d/d;->f:J

    cmp-long v2, v6, v3

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/b/a/a/d/d;->d:Lcom/b/a/a/d/a;

    iget-object v2, v2, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    invoke-interface {v2}, Lcom/b/b/h;->m()Ljava/lang/String;

    :cond_47
    :try_start_47
    iget-object v2, p0, Lcom/b/a/a/d/d;->d:Lcom/b/a/a/d/a;

    iget-object v2, v2, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    invoke-interface {v2}, Lcom/b/b/h;->j()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/b/a/a/d/d;->f:J

    iget-object v2, p0, Lcom/b/a/a/d/d;->d:Lcom/b/a/a/d/a;

    iget-object v2, v2, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    invoke-interface {v2}, Lcom/b/b/h;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-wide v6, p0, Lcom/b/a/a/d/d;->f:J

    cmp-long v8, v6, v0

    if-ltz v8, :cond_ba

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_72

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_6f} :catch_d8

    if-nez v6, :cond_72

    goto :goto_ba

    :cond_72
    iget-wide v6, p0, Lcom/b/a/a/d/d;->f:J

    cmp-long v2, v6, v0

    if-nez v2, :cond_91

    iput-boolean v5, p0, Lcom/b/a/a/d/d;->g:Z

    iget-object v0, p0, Lcom/b/a/a/d/d;->d:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->a:Lcom/b/a/ai;

    invoke-virtual {v0}, Lcom/b/a/ai;->f()Lcom/b/a/s;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/d/d;->e:Lcom/b/a/ac;

    iget-object v2, p0, Lcom/b/a/a/d/d;->d:Lcom/b/a/a/d/a;

    invoke-virtual {v2}, Lcom/b/a/a/d/a;->c()Lcom/b/a/aa;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/a/c/f;->a(Lcom/b/a/s;Lcom/b/a/ac;Lcom/b/a/aa;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/b/a/a/d/d;->a(Z)V

    :cond_91
    iget-boolean v0, p0, Lcom/b/a/a/d/d;->g:Z

    if-nez v0, :cond_96

    return-wide v3

    :cond_96
    iget-object v0, p0, Lcom/b/a/a/d/d;->d:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    iget-wide v1, p0, Lcom/b/a/a/d/d;->f:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lcom/b/b/h;->a(Lcom/b/b/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-nez p3, :cond_b3

    invoke-virtual {p0, v5}, Lcom/b/a/a/d/d;->a(Z)V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b3
    iget-wide v0, p0, Lcom/b/a/a/d/d;->f:J

    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/b/a/a/d/d;->f:J

    return-wide p1

    :cond_ba
    :goto_ba
    :try_start_ba
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "expected chunk size and optional extensions but was \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/b/a/a/d/d;->f:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d8
    .catch Ljava/lang/NumberFormatException; {:try_start_ba .. :try_end_d8} :catch_d8

    :catch_d8
    move-exception p1

    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/a/d/d;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/b/a/a/d/d;->g:Z

    if-eqz v0, :cond_15

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lcom/b/a/a/c;->a(Lcom/b/b/x;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/a/d/d;->a(Z)V

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/d/d;->b:Z

    return-void
.end method
