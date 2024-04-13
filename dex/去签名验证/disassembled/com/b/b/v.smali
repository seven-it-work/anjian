.class final Lcom/b/b/v;
.super Lcom/b/b/i;


# instance fields
.field final transient f:[[B

.field final transient g:[I


# direct methods
.method constructor <init>(Lcom/b/b/f;I)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/b/i;-><init>([B)V

    iget-wide v1, p1, Lcom/b/b/f;->b:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/b/b/aa;->a(JJJ)V

    iget-object v0, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v0, p2, :cond_2d

    iget v4, v2, Lcom/b/b/t;->c:I

    iget v5, v2, Lcom/b/b/t;->b:I

    if-ne v4, v5, :cond_22

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_22
    iget v4, v2, Lcom/b/b/t;->c:I

    iget v5, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v2, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    goto :goto_12

    :cond_2d
    new-array v0, v3, [[B

    iput-object v0, p0, Lcom/b/b/v;->f:[[B

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/b/b/v;->g:[I

    iget-object p1, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    move-object v0, p1

    const/4 p1, 0x0

    :goto_3b
    if-ge v1, p2, :cond_62

    iget-object v2, p0, Lcom/b/b/v;->f:[[B

    iget-object v3, v0, Lcom/b/b/t;->a:[B

    aput-object v3, v2, p1

    iget v2, v0, Lcom/b/b/t;->c:I

    iget v3, v0, Lcom/b/b/t;->b:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    if-le v1, p2, :cond_4c

    move v1, p2

    :cond_4c
    iget-object v2, p0, Lcom/b/b/v;->g:[I

    aput v1, v2, p1

    iget-object v2, p0, Lcom/b/b/v;->g:[I

    iget-object v3, p0, Lcom/b/b/v;->f:[[B

    array-length v3, v3

    add-int/2addr v3, p1

    iget v4, v0, Lcom/b/b/t;->b:I

    aput v4, v2, v3

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/b/b/t;->d:Z

    add-int/lit8 p1, p1, 0x1

    iget-object v0, v0, Lcom/b/b/t;->f:Lcom/b/b/t;

    goto :goto_3b

    :cond_62
    return-void
.end method

.method private b(I)I
    .registers 5

    iget-object v0, p0, Lcom/b/b/v;->g:[I

    iget-object v1, p0, Lcom/b/b/v;->f:[[B

    array-length v1, v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_f

    return p1

    :cond_f
    xor-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private i()Lcom/b/b/i;
    .registers 3

    new-instance v0, Lcom/b/b/i;

    invoke-virtual {p0}, Lcom/b/b/v;->h()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/b/i;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final a(I)B
    .registers 9

    iget-object v0, p0, Lcom/b/b/v;->g:[I

    iget-object v1, p0, Lcom/b/b/v;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/b/b/aa;->a(JJJ)V

    invoke-direct {p0, p1}, Lcom/b/b/v;->b(I)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Lcom/b/b/v;->g:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    :goto_1e
    iget-object v2, p0, Lcom/b/b/v;->g:[I

    iget-object v3, p0, Lcom/b/b/v;->f:[[B

    array-length v3, v3

    add-int/2addr v3, v0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/b/b/v;->f:[[B

    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public final a(II)Lcom/b/b/i;
    .registers 4

    invoke-direct {p0}, Lcom/b/b/v;->i()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/b/b/i;->a(II)Lcom/b/b/i;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/b/b/v;->i()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/b/b/f;)V
    .registers 10

    iget-object v0, p0, Lcom/b/b/v;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_33

    iget-object v3, p0, Lcom/b/b/v;->g:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/b/b/v;->g:[I

    aget v4, v4, v1

    new-instance v5, Lcom/b/b/t;

    iget-object v6, p0, Lcom/b/b/v;->f:[[B

    aget-object v6, v6, v1

    add-int v7, v3, v4

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v3, v7}, Lcom/b/b/t;-><init>([BII)V

    iget-object v2, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v2, :cond_28

    iput-object v5, v5, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v5, v5, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object v5, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    goto :goto_2f

    :cond_28
    iget-object v2, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v2, v2, Lcom/b/b/t;->g:Lcom/b/b/t;

    invoke-virtual {v2, v5}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_5

    :cond_33
    iget-wide v0, p1, Lcom/b/b/f;->b:J

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p1, Lcom/b/b/f;->b:J

    return-void
.end method

.method public final a(ILcom/b/b/i;II)Z
    .registers 11

    invoke-virtual {p0}, Lcom/b/b/v;->g()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-gez v0, :cond_9

    return v1

    :cond_9
    invoke-direct {p0, v1}, Lcom/b/b/v;->b(I)I

    move-result v0

    :goto_d
    if-lez p4, :cond_40

    if-nez v0, :cond_13

    const/4 v2, 0x0

    goto :goto_19

    :cond_13
    iget-object v2, p0, Lcom/b/b/v;->g:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    :goto_19
    iget-object v3, p0, Lcom/b/b/v;->g:[I

    aget v3, v3, v0

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/b/b/v;->g:[I

    iget-object v5, p0, Lcom/b/b/v;->f:[[B

    array-length v5, v5

    add-int/2addr v5, v0

    aget v4, v4, v5

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/b/b/v;->f:[[B

    aget-object v4, v4, v0

    invoke-virtual {p2, p3, v4, v2, v3}, Lcom/b/b/i;->a(I[BII)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    :cond_3a
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_40
    const/4 p1, 0x1

    return p1
.end method

.method public final a(I[BII)Z
    .registers 11

    const/4 v0, 0x0

    if-ltz p1, :cond_4a

    invoke-virtual {p0}, Lcom/b/b/v;->g()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_4a

    if-ltz p3, :cond_4a

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_11

    return v0

    :cond_11
    invoke-direct {p0, p1}, Lcom/b/b/v;->b(I)I

    move-result v1

    :goto_15
    if-lez p4, :cond_48

    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_21

    :cond_1b
    iget-object v2, p0, Lcom/b/b/v;->g:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    :goto_21
    iget-object v3, p0, Lcom/b/b/v;->g:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/b/b/v;->g:[I

    iget-object v5, p0, Lcom/b/b/v;->f:[[B

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/b/b/v;->f:[[B

    aget-object v4, v4, v1

    invoke-static {v4, v2, p2, p3, v3}, Lcom/b/b/aa;->a([BI[BII)Z

    move-result v2

    if-nez v2, :cond_42

    return v0

    :cond_42
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_48
    const/4 p1, 0x1

    return p1

    :cond_4a
    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/b/b/v;->i()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/b/b/i;
    .registers 2

    invoke-direct {p0}, Lcom/b/b/v;->i()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->c()Lcom/b/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/b/b/i;
    .registers 2

    invoke-direct {p0}, Lcom/b/b/v;->i()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->d()Lcom/b/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/b/b/v;->i()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/b/b/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/b/v;->g()I

    move-result v3

    if-ne v1, v3, :cond_20

    invoke-virtual {p0}, Lcom/b/b/v;->g()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, Lcom/b/b/v;->a(ILcom/b/b/i;II)Z

    move-result p1

    if-eqz p1, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public final f()Lcom/b/b/i;
    .registers 2

    invoke-direct {p0}, Lcom/b/b/v;->i()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->f()Lcom/b/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .registers 3

    iget-object v0, p0, Lcom/b/b/v;->g:[I

    iget-object v1, p0, Lcom/b/b/v;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final h()[B
    .registers 9

    iget-object v0, p0, Lcom/b/b/v;->g:[I

    iget-object v1, p0, Lcom/b/b/v;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/b/b/v;->f:[[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v2, v1, :cond_29

    iget-object v4, p0, Lcom/b/b/v;->g:[I

    add-int v5, v1, v2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/b/b/v;->g:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/b/b/v;->f:[[B

    aget-object v6, v6, v2

    sub-int v7, v5, v3

    invoke-static {v6, v4, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_10

    :cond_29
    return-object v0
.end method

.method public final hashCode()I
    .registers 9

    iget v0, p0, Lcom/b/b/v;->d:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lcom/b/b/v;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_c
    if-ge v1, v0, :cond_2d

    iget-object v4, p0, Lcom/b/b/v;->f:[[B

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/b/b/v;->g:[I

    add-int v6, v0, v1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/b/b/v;->g:[I

    aget v6, v6, v1

    sub-int v2, v6, v2

    add-int/2addr v2, v5

    :goto_1f
    if-ge v5, v2, :cond_29

    mul-int/lit8 v3, v3, 0x1f

    aget-byte v7, v4, v5

    add-int/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_29
    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_c

    :cond_2d
    iput v3, p0, Lcom/b/b/v;->d:I

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/b/b/v;->i()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
