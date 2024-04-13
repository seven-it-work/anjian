.class final Lcom/b/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/b/h;


# instance fields
.field public final a:Lcom/b/b/f;

.field public final b:Lcom/b/b/x;

.field c:Z


# direct methods
.method constructor <init>(Lcom/b/b/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    iput-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    if-nez p1, :cond_14

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    iput-object p1, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    return-void
.end method

.method private b(J)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_26

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v0, v0, Lcom/b/b/f;->b:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_40

    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    const/4 p1, 0x0

    return p1

    :cond_40
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(B)J
    .registers 12

    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v2, p1, v0, v1}, Lcom/b/b/f;->a(BJ)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1b

    return-wide v2

    :cond_1b
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v2, v2, Lcom/b/b/f;->b:J

    iget-object v6, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v7, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_2e

    return-wide v4

    :cond_2e
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_e
.end method

.method public final a(Lcom/b/b/f;J)J
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_24

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-boolean v2, p0, Lcom/b/b/s;->c:Z

    if-eqz v2, :cond_30

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v2, v2, Lcom/b/b/f;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_49

    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_49

    return-wide v2

    :cond_49
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v0, v0, Lcom/b/b/f;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/b/f;->a(Lcom/b/b/f;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    invoke-interface {v0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-object v1, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    invoke-virtual {v0, v1}, Lcom/b/b/f;->a(Lcom/b/b/x;)J

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/b/b/s;->b(J)Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_c
    return-void
.end method

.method public final b(Lcom/b/b/i;)Z
    .registers 11

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v0

    iget-boolean v1, p0, Lcom/b/b/s;->c:Z

    if-eqz v1, :cond_10

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    const/4 v1, 0x0

    if-ltz v0, :cond_42

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1b

    return v1

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_40

    const-wide/16 v3, 0x0

    int-to-long v5, v2

    add-long v7, v5, v3

    const-wide/16 v3, 0x1

    add-long v5, v7, v3

    invoke-direct {p0, v5, v6}, Lcom/b/b/s;->b(J)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    :cond_2e
    iget-object v3, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v3, v7, v8}, Lcom/b/b/f;->b(J)B

    move-result v3

    add-int/lit8 v4, v2, 0x0

    invoke-virtual {p1, v4}, Lcom/b/b/i;->a(I)B

    move-result v4

    if-eq v3, v4, :cond_3d

    return v1

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_40
    const/4 p1, 0x1

    return p1

    :cond_42
    return v1
.end method

.method public final c()Lcom/b/b/f;
    .registers 2

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    return-object v0
.end method

.method public final c(J)Lcom/b/b/i;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/b/b/s;->a(J)V

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/f;->c(J)Lcom/b/b/i;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/s;->c:Z

    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    invoke-interface {v0}, Lcom/b/b/x;->close()V

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->o()V

    return-void
.end method

.method public final d()Z
    .registers 6

    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final e()B
    .registers 3

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->e()B

    move-result v0

    return v0
.end method

.method public final e(J)[B
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/b/b/s;->a(J)V

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/f;->e(J)[B

    move-result-object p1

    return-object p1
.end method

.method public final f()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->f()S

    move-result v0

    return v0
.end method

.method public final f(J)V
    .registers 8

    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_41

    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v2, v2, Lcom/b/b/f;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_30

    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_30

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_30
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v0, v0, Lcom/b/b/f;->b:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v2, v0, v1}, Lcom/b/b/f;->f(J)V

    sub-long v2, p1, v0

    move-wide p1, v2

    goto :goto_c

    :cond_41
    return-void
.end method

.method public final g()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->g()I

    move-result v0

    return v0
.end method

.method public final h()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->f()S

    move-result v0

    invoke-static {v0}, Lcom/b/b/aa;->a(S)S

    move-result v0

    return v0
.end method

.method public final i()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->g()I

    move-result v0

    invoke-static {v0}, Lcom/b/b/aa;->a(I)I

    move-result v0

    return v0
.end method

.method public final j()J
    .registers 7

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/b/b/s;->b(J)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/b/b/f;->b(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_30

    :cond_1f
    const/16 v4, 0x61

    if-lt v3, v4, :cond_27

    const/16 v4, 0x66

    if-le v3, v4, :cond_30

    :cond_27
    const/16 v4, 0x41

    if-lt v3, v4, :cond_32

    const/16 v4, 0x46

    if-le v3, v4, :cond_30

    goto :goto_32

    :cond_30
    move v1, v2

    goto :goto_7

    :cond_32
    :goto_32
    if-nez v1, :cond_49

    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .registers 12

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/b/b/s;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_50

    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    iget-object v5, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x20

    iget-object v3, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v3, v3, Lcom/b/b/f;->b:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/b/b/f;->a(Lcom/b/b/f;JJ)Lcom/b/b/f;

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v3, v3, Lcom/b/b/f;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/b/b/f;->k()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v2, v0, v1}, Lcom/b/b/f;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
