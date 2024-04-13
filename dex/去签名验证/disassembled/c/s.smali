.class final Lc/s;
.super Ljava/lang/Object;

# interfaces
.implements Lc/d;


# instance fields
.field public final a:Lc/c;

.field public final b:Lc/x;

.field c:Z


# direct methods
.method constructor <init>(Lc/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    iput-object v0, p0, Lc/s;->a:Lc/c;

    if-nez p1, :cond_14

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    iput-object p1, p0, Lc/s;->b:Lc/x;

    return-void
.end method


# virtual methods
.method public final a(Lc/y;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    iget-object v2, p0, Lc/s;->a:Lc/c;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lc/y;->read(Lc/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_21

    add-long v4, v0, v2

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-wide v0, v4

    goto :goto_c

    :cond_21
    return-wide v0
.end method

.method public final a()Lc/c;
    .registers 2

    iget-object v0, p0, Lc/s;->a:Lc/c;

    return-object v0
.end method

.method public final a(Lc/y;J)Lc/d;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_20

    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-interface {p1, v0, p2, p3}, Lc/y;->read(Lc/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_18
    const/4 v2, 0x0

    sub-long v2, p2, v0

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-wide p2, v2

    goto :goto_0

    :cond_20
    return-object p0
.end method

.method public final a(Lc/c;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->a(Lc/c;J)V

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lc/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;II)Lc/d;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->a(Ljava/lang/String;II)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;IILjava/nio/charset/Charset;)Lc/d;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c;->a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/nio/charset/Charset;)Lc/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Lc/s$1;

    invoke-direct {v0, p0}, Lc/s$1;-><init>(Lc/s;)V

    return-object v0
.end method

.method public final c()Lc/d;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    iget-wide v0, v0, Lc/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1d

    iget-object v2, p0, Lc/s;->b:Lc/x;

    iget-object v3, p0, Lc/s;->a:Lc/c;

    invoke-interface {v2, v3, v0, v1}, Lc/x;->a(Lc/c;J)V

    :cond_1d
    return-object p0
.end method

.method public final c([BII)Lc/d;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->b([BII)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lc/s;->a:Lc/c;

    iget-wide v1, v1, Lc/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1d

    iget-object v1, p0, Lc/s;->b:Lc/x;

    iget-object v2, p0, Lc/s;->a:Lc/c;

    iget-object v3, p0, Lc/s;->a:Lc/c;

    iget-wide v3, v3, Lc/c;->c:J

    invoke-interface {v1, v2, v3, v4}, Lc/x;->a(Lc/c;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v0

    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lc/s;->b:Lc/x;

    invoke-interface {v1}, Lc/x;->close()V
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

    iput-boolean v1, p0, Lc/s;->c:Z

    if-eqz v0, :cond_2f

    invoke-static {v0}, Lc/ab;->a(Ljava/lang/Throwable;)V

    :cond_2f
    return-void
.end method

.method public final d([B)Lc/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->c([B)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lc/f;)Lc/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->a(Lc/f;)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    iget-wide v0, v0, Lc/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    iget-object v0, p0, Lc/s;->b:Lc/x;

    iget-object v1, p0, Lc/s;->a:Lc/c;

    iget-object v2, p0, Lc/s;->a:Lc/c;

    iget-wide v2, v2, Lc/c;->c:J

    invoke-interface {v0, v1, v2, v3}, Lc/x;->a(Lc/c;J)V

    :cond_21
    iget-object v0, p0, Lc/s;->b:Lc/x;

    invoke-interface {v0}, Lc/x;->flush()V

    return-void
.end method

.method public final h(I)Lc/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->f(I)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final i(I)Lc/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->e(I)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final j(I)Lc/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->d(I)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final k(I)Lc/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->c(I)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final l(I)Lc/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->b(I)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final m(I)Lc/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->a(I)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final m(J)Lc/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->l(J)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final n(J)Lc/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->k(J)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final o(J)Lc/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->j(J)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final p(J)Lc/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->i(J)Lc/c;

    invoke-virtual {p0}, Lc/s;->y()Lc/d;

    move-result-object p1

    return-object p1
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lc/s;->b:Lc/x;

    invoke-interface {v0}, Lc/x;->timeout()Lc/z;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/s;->b:Lc/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lc/d;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/s;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lc/s;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1f

    iget-object v2, p0, Lc/s;->b:Lc/x;

    iget-object v3, p0, Lc/s;->a:Lc/c;

    invoke-interface {v2, v3, v0, v1}, Lc/x;->a(Lc/c;J)V

    :cond_1f
    return-object p0
.end method
