.class final Lcom/google/a/c/b/b;
.super Ljava/lang/Object;


# instance fields
.field final a:[I

.field private final b:Lcom/google/a/c/b/a;


# direct methods
.method constructor <init>(Lcom/google/a/c/b/a;[I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-nez v0, :cond_c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    iput-object p1, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_38

    const/4 v1, 0x0

    aget v2, p2, v1

    if-nez v2, :cond_38

    const/4 v2, 0x1

    :goto_18
    if-ge v2, p1, :cond_21

    aget v3, p2, v2

    if-nez v3, :cond_21

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_21
    if-ne v2, p1, :cond_2a

    new-array p1, v0, [I

    aput v1, p1, v1

    iput-object p1, p0, Lcom/google/a/c/b/b;->a:[I

    return-void

    :cond_2a
    sub-int/2addr p1, v2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/a/c/b/b;->a:[I

    iget-object p1, p0, Lcom/google/a/c/b/b;->a:[I

    iget-object v0, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v0, v0

    invoke-static {p2, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_38
    iput-object p2, p0, Lcom/google/a/c/b/b;->a:[I

    return-void
.end method

.method private b()[I
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/b/b;->a:[I

    return-object v0
.end method

.method private c()I
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method final a(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/a/c/b/b;->a:[I

    iget-object v1, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method final a(II)Lcom/google/a/c/b/b;
    .registers 7

    if-gez p1, :cond_8

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_8
    if-nez p2, :cond_f

    iget-object p1, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object p1, p1, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    return-object p1

    :cond_f
    iget-object v0, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v0, v0

    add-int/2addr p1, v0

    new-array p1, p1, [I

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object v3, p0, Lcom/google/a/c/b/b;->a:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3, p2}, Lcom/google/a/c/b/a;->c(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_27
    new-instance p2, Lcom/google/a/c/b/b;

    iget-object v0, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-direct {p2, v0, p1}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    return-object p2
.end method

.method final a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;
    .registers 9

    iget-object v0, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object v1, p1, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-virtual {p0}, Lcom/google/a/c/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p1

    :cond_19
    invoke-virtual {p1}, Lcom/google/a/c/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    return-object p0

    :cond_20
    iget-object v0, p0, Lcom/google/a/c/b/b;->a:[I

    iget-object p1, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v1, v0

    array-length v2, p1

    if-le v1, v2, :cond_2b

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :cond_2b
    array-length v1, p1

    new-array v1, v1, [I

    array-length v2, p1

    array-length v3, v0

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    :goto_36
    array-length v4, p1

    if-ge v3, v4, :cond_48

    sub-int v4, v3, v2

    aget v4, v0, v4

    aget v5, p1, v3

    invoke-static {v4, v5}, Lcom/google/a/c/b/a;->b(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_48
    new-instance p1, Lcom/google/a/c/b/b;

    iget-object v0, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-direct {p1, v0, v1}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    return-object p1
.end method

.method final a()Z
    .registers 3

    iget-object v0, p0, Lcom/google/a/c/b/b;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method final b(I)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_8

    invoke-virtual {p0, v0}, Lcom/google/a/c/b/b;->a(I)I

    move-result p1

    return p1

    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    iget-object p1, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_f
    if-ge v0, v1, :cond_1a

    aget v3, p1, v0

    invoke-static {v2, v3}, Lcom/google/a/c/b/a;->b(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1a
    return v2

    :cond_1b
    iget-object v2, p0, Lcom/google/a/c/b/b;->a:[I

    aget v0, v2, v0

    iget-object v2, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v2, v2

    :goto_22
    if-ge v1, v2, :cond_35

    iget-object v3, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-virtual {v3, p1, v0}, Lcom/google/a/c/b/a;->c(II)I

    move-result v0

    iget-object v3, p0, Lcom/google/a/c/b/b;->a:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Lcom/google/a/c/b/a;->b(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_35
    return v0
.end method

.method final b(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;
    .registers 14

    iget-object v0, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object v1, p1, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-virtual {p0}, Lcom/google/a/c/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {p1}, Lcom/google/a/c/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_54

    :cond_1f
    iget-object v0, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v1, v0

    iget-object p1, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v2, p1

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v1, :cond_4c

    aget v6, v0, v5

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v2, :cond_49

    add-int v8, v5, v7

    aget v9, v3, v8

    iget-object v10, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    aget v11, p1, v7

    invoke-virtual {v10, v6, v11}, Lcom/google/a/c/b/a;->c(II)I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/a/c/b/a;->b(II)I

    move-result v9

    aput v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_4c
    new-instance p1, Lcom/google/a/c/b/b;

    iget-object v0, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-direct {p1, v0, v3}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    return-object p1

    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object p1, p1, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    return-object p1
.end method

.method final c(I)Lcom/google/a/c/b/b;
    .registers 7

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object p1, p1, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    return-object p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    return-object p0

    :cond_b
    iget-object v0, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object v4, p0, Lcom/google/a/c/b/b;->a:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p1}, Lcom/google/a/c/b/a;->c(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_22
    new-instance p1, Lcom/google/a/c/b/b;

    iget-object v0, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-direct {p1, v0, v1}, Lcom/google/a/c/b/b;-><init>(Lcom/google/a/c/b/a;[I)V

    return-object p1
.end method

.method final c(Lcom/google/a/c/b/b;)[Lcom/google/a/c/b/b;
    .registers 10

    iget-object v0, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object v1, p1, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-virtual {p1}, Lcom/google/a/c/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Divide by 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    iget-object v0, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object v0, v0, Lcom/google/a/c/b/a;->j:Lcom/google/a/c/b/b;

    iget-object v1, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/google/a/c/b/b;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-virtual {v3, v1}, Lcom/google/a/c/b/a;->b(I)I

    move-result v1

    move-object v3, v0

    move-object v0, p0

    :goto_35
    iget-object v4, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    iget-object v5, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v5, v5

    sub-int/2addr v5, v2

    if-lt v4, v5, :cond_6f

    invoke-virtual {v0}, Lcom/google/a/c/b/b;->a()Z

    move-result v4

    if-nez v4, :cond_6f

    iget-object v4, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    iget-object v5, p1, Lcom/google/a/c/b/b;->a:[I

    array-length v5, v5

    sub-int/2addr v5, v2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    iget-object v6, v0, Lcom/google/a/c/b/b;->a:[I

    array-length v6, v6

    sub-int/2addr v6, v2

    invoke-virtual {v0, v6}, Lcom/google/a/c/b/b;->a(I)I

    move-result v6

    invoke-virtual {v5, v6, v1}, Lcom/google/a/c/b/a;->c(II)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/a/c/b/b;->a(II)Lcom/google/a/c/b/b;

    move-result-object v6

    iget-object v7, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-virtual {v7, v4, v5}, Lcom/google/a/c/b/a;->a(II)Lcom/google/a/c/b/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v3

    invoke-virtual {v0, v6}, Lcom/google/a/c/b/b;->a(Lcom/google/a/c/b/b;)Lcom/google/a/c/b/b;

    move-result-object v0

    goto :goto_35

    :cond_6f
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/a/c/b/b;

    const/4 v1, 0x0

    aput-object v3, p1, v1

    aput-object v0, p1, v2

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/a/c/b/b;->a:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_60

    invoke-virtual {p0, v1}, Lcom/google/a/c/b/b;->a(I)I

    move-result v3

    if-eqz v3, :cond_5d

    if-gez v3, :cond_21

    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v3, v3

    goto :goto_2c

    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2c

    const-string v4, " + "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_30

    if-eq v3, v2, :cond_4b

    :cond_30
    iget-object v4, p0, Lcom/google/a/c/b/b;->b:Lcom/google/a/c/b/a;

    invoke-virtual {v4, v3}, Lcom/google/a/c/b/a;->a(I)I

    move-result v3

    if-nez v3, :cond_3e

    const/16 v3, 0x31

    :goto_3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4b

    :cond_3e
    if-ne v3, v2, :cond_43

    const/16 v3, 0x61

    goto :goto_3a

    :cond_43
    const-string v4, "a^"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4b
    :goto_4b
    if-eqz v1, :cond_5d

    if-ne v1, v2, :cond_55

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_55
    const-string v3, "x^"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
