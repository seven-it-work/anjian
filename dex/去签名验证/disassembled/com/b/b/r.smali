.class final Lcom/b/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/b/g;


# instance fields
.field public final a:Lcom/b/b/f;

.field public final b:Lcom/b/b/w;

.field c:Z


# direct methods
.method constructor <init>(Lcom/b/b/w;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    iput-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    if-nez p1, :cond_14

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    iput-object p1, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    invoke-interface {v0}, Lcom/b/b/w;->a()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final a_(Lcom/b/b/f;J)V
    .registers 5

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/b/f;->a_(Lcom/b/b/f;J)V

    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/b/b/g;
    .registers 3

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final b([B)Lcom/b/b/g;
    .registers 3

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->a([B)Lcom/b/b/f;

    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final b([BII)Lcom/b/b/g;
    .registers 5

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/b/f;->a([BII)Lcom/b/b/f;

    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/b/b/f;
    .registers 2

    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    return-object v0
.end method

.method public final close()V
    .registers 7

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-wide v1, v1, Lcom/b/b/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1d

    iget-object v1, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    iget-object v2, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-object v3, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-wide v3, v3, Lcom/b/b/f;->b:J

    invoke-interface {v1, v2, v3, v4}, Lcom/b/b/w;->a_(Lcom/b/b/f;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v0

    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    invoke-interface {v1}, Lcom/b/b/w;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v1

    if-nez v0, :cond_27

    move-object v0, v1

    :cond_27
    :goto_27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_2f

    invoke-static {v0}, Lcom/b/b/aa;->a(Ljava/lang/Throwable;)V

    :cond_2f
    return-void
.end method

.method public final f(I)Lcom/b/b/g;
    .registers 3

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->d(I)Lcom/b/b/f;

    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final flush()V
    .registers 6

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-wide v0, v0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    iget-object v0, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    iget-object v1, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-object v2, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-wide v2, v2, Lcom/b/b/f;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/w;->a_(Lcom/b/b/f;J)V

    :cond_21
    iget-object v0, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    invoke-interface {v0}, Lcom/b/b/w;->flush()V

    return-void
.end method

.method public final g(I)Lcom/b/b/g;
    .registers 3

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->c(I)Lcom/b/b/f;

    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final h(I)Lcom/b/b/g;
    .registers 3

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final i(J)Lcom/b/b/g;
    .registers 4

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/f;->h(J)Lcom/b/b/f;

    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final j(J)Lcom/b/b/g;
    .registers 4

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/f;->g(J)Lcom/b/b/f;

    invoke-virtual {p0}, Lcom/b/b/r;->p()Lcom/b/b/g;

    move-result-object p1

    return-object p1
.end method

.method public final p()Lcom/b/b/g;
    .registers 10

    iget-boolean v0, p0, Lcom/b/b/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    iget-wide v1, v0, Lcom/b/b/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_18

    move-wide v1, v3

    goto :goto_2f

    :cond_18
    iget-object v0, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v0, v0, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget v5, v0, Lcom/b/b/t;->c:I

    const/16 v6, 0x2000

    if-ge v5, v6, :cond_2f

    iget-boolean v5, v0, Lcom/b/b/t;->e:Z

    if-eqz v5, :cond_2f

    iget v5, v0, Lcom/b/b/t;->c:I

    iget v0, v0, Lcom/b/b/t;->b:I

    sub-int/2addr v5, v0

    int-to-long v5, v5

    sub-long v7, v1, v5

    move-wide v1, v7

    :cond_2f
    :goto_2f
    cmp-long v0, v1, v3

    if-lez v0, :cond_3a

    iget-object v0, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    iget-object v3, p0, Lcom/b/b/r;->a:Lcom/b/b/f;

    invoke-interface {v0, v3, v1, v2}, Lcom/b/b/w;->a_(Lcom/b/b/f;J)V

    :cond_3a
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/r;->b:Lcom/b/b/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
