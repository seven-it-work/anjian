.class public final Lcom/google/a/h/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/a/h/a/a/b;

.field public final b:[I


# direct methods
.method public constructor <init>(Lcom/google/a/h/a/a/b;[I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-nez v0, :cond_c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    iput-object p1, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

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

    iput-object p1, p0, Lcom/google/a/h/a/a/c;->b:[I

    return-void

    :cond_2a
    sub-int/2addr p1, v2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/a/h/a/a/c;->b:[I

    iget-object p1, p0, Lcom/google/a/h/a/a/c;->b:[I

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v0, v0

    invoke-static {p2, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_38
    iput-object p2, p0, Lcom/google/a/h/a/a/c;->b:[I

    return-void
.end method

.method private a(II)Lcom/google/a/h/a/a/c;
    .registers 7

    if-gez p1, :cond_8

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_8
    if-nez p2, :cond_f

    iget-object p1, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object p1, p1, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    return-object p1

    :cond_f
    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v0, v0

    add-int/2addr p1, v0

    new-array p1, p1, [I

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v3, p0, Lcom/google/a/h/a/a/c;->b:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3, p2}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_27
    new-instance p2, Lcom/google/a/h/a/a/c;

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {p2, v0, p1}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    return-object p2
.end method

.method private c()[I
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    return-object v0
.end method

.method private d()I
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public final a(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    iget-object v1, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public final a(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;
    .registers 10

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v1, p1, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-virtual {p0}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p1

    :cond_19
    invoke-virtual {p1}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    return-object p0

    :cond_20
    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    iget-object p1, p1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v1, v0

    array-length v2, p1

    if-le v1, v2, :cond_2b

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

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

    if-ge v3, v4, :cond_4a

    iget-object v4, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    sub-int v5, v3, v2

    aget v5, v0, v5

    aget v6, p1, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/a/h/a/a/b;->b(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_4a
    new-instance p1, Lcom/google/a/h/a/a/c;

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {p1, v0, v1}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    return-object p1
.end method

.method public final a()Z
    .registers 3

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method public final b(I)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_8

    invoke-virtual {p0, v0}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result p1

    return p1

    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1d

    iget-object p1, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_f
    if-ge v0, v1, :cond_1c

    aget v3, p1, v0

    iget-object v4, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v4, v2, v3}, Lcom/google/a/h/a/a/b;->b(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1c
    return v2

    :cond_1d
    iget-object v2, p0, Lcom/google/a/h/a/a/c;->b:[I

    aget v0, v2, v0

    iget-object v2, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v2, v2

    :goto_24
    if-ge v1, v2, :cond_39

    iget-object v3, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v4, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v4, p1, v0}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/a/h/a/a/c;->b:[I

    aget v4, v4, v1

    invoke-virtual {v3, v0, v4}, Lcom/google/a/h/a/a/b;->b(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_39
    return v0
.end method

.method public final b()Lcom/google/a/h/a/a/c;
    .registers 7

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_18

    iget-object v4, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v5, p0, Lcom/google/a/h/a/a/c;->b:[I

    aget v5, v5, v3

    invoke-virtual {v4, v2, v5}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_18
    new-instance v0, Lcom/google/a/h/a/a/c;

    iget-object v2, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v0, v2, v1}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    return-object v0
.end method

.method public final b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;
    .registers 4

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v1, p1, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-virtual {p1}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p0

    :cond_19
    invoke-virtual {p1}, Lcom/google/a/h/a/a/c;->b()Lcom/google/a/h/a/a/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/a/h/a/a/c;->a(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Lcom/google/a/h/a/a/c;
    .registers 7

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object p1, p1, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    return-object p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    return-object p0

    :cond_b
    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v4, p0, Lcom/google/a/h/a/a/c;->b:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p1}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_22
    new-instance p1, Lcom/google/a/h/a/a/c;

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {p1, v0, v1}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    return-object p1
.end method

.method public final c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;
    .registers 15

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v1, p1, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-virtual {p0}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {p1}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_56

    :cond_1f
    iget-object v0, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v1, v0

    iget-object p1, p1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v2, p1

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v1, :cond_4e

    aget v6, v0, v5

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v2, :cond_4b

    add-int v8, v5, v7

    iget-object v9, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    aget v10, v3, v8

    iget-object v11, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    aget v12, p1, v7

    invoke-virtual {v11, v6, v12}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/a/h/a/a/b;->b(II)I

    move-result v9

    aput v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_4e
    new-instance p1, Lcom/google/a/h/a/a/c;

    iget-object v0, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {p1, v0, v3}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    return-object p1

    :cond_56
    :goto_56
    iget-object p1, p0, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object p1, p1, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/a/h/a/a/c;->b:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_48

    invoke-virtual {p0, v1}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v3

    if-eqz v3, :cond_45

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

    if-eq v3, v2, :cond_33

    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_33
    if-eqz v1, :cond_45

    if-ne v1, v2, :cond_3d

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_3d
    const-string v3, "x^"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_45
    :goto_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
