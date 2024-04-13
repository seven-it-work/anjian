.class public final Lcom/google/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:[I

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/c/a;->b:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/c/a;->a:[I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/c/a;->b:I

    invoke-static {p1}, Lcom/google/a/c/a;->g(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/a/c/a;->a:[I

    return-void
.end method

.method private constructor <init>([II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/c/a;->a:[I

    iput p2, p0, Lcom/google/a/c/a;->b:I

    return-void
.end method

.method private b(Lcom/google/a/c/a;)V
    .registers 6

    iget v0, p0, Lcom/google/a/c/a;->b:I

    iget v1, p1, Lcom/google/a/c/a;->b:I

    if-eq v0, v1, :cond_e

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sizes don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/google/a/c/a;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/google/a/c/a;->a:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/a/c/a;->a:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_22
    return-void
.end method

.method private c(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/a/c/a;->a:[I

    div-int/lit8 p1, p1, 0x20

    aput p2, v0, p1

    return-void
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/a;->b:I

    return v0
.end method

.method private d(II)V
    .registers 9

    if-lt p2, p1, :cond_33

    if-ltz p1, :cond_33

    iget v0, p0, Lcom/google/a/c/a;->b:I

    if-le p2, v0, :cond_9

    goto :goto_33

    :cond_9
    if-ne p2, p1, :cond_c

    return-void

    :cond_c
    add-int/lit8 p2, p2, -0x1

    div-int/lit8 v0, p1, 0x20

    div-int/lit8 v1, p2, 0x20

    move v2, v0

    :goto_13
    if-gt v2, v1, :cond_32

    const/16 v3, 0x1f

    if-le v2, v0, :cond_1b

    const/4 v4, 0x0

    goto :goto_1d

    :cond_1b
    and-int/lit8 v4, p1, 0x1f

    :goto_1d
    if-ge v2, v1, :cond_20

    goto :goto_21

    :cond_20
    and-int/2addr v3, p2

    :goto_21
    const/4 v5, 0x2

    shl-int v3, v5, v3

    const/4 v5, 0x1

    shl-int v4, v5, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/a/c/a;->a:[I

    aget v5, v4, v2

    or-int/2addr v3, v5

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_32
    return-void

    :cond_33
    :goto_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private e(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/a/c/a;->a:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    if-le p1, v0, :cond_16

    invoke-static {p1}, Lcom/google/a/c/a;->g(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/a/c/a;->a:[I

    iget-object v1, p0, Lcom/google/a/c/a;->a:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/google/a/c/a;->a:[I

    :cond_16
    return-void
.end method

.method private e()[I
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/a;->a:[I

    return-object v0
.end method

.method private f()Lcom/google/a/c/a;
    .registers 4

    new-instance v0, Lcom/google/a/c/a;

    iget-object v1, p0, Lcom/google/a/c/a;->a:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Lcom/google/a/c/a;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/a;-><init>([II)V

    return-object v0
.end method

.method private f(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/a/c/a;->a:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x1

    shl-int p1, v3, p1

    xor-int/2addr p1, v2

    aput p1, v0, v1

    return-void
.end method

.method private static g(I)[I
    .registers 1

    add-int/lit8 p0, p0, 0x1f

    div-int/lit8 p0, p0, 0x20

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/a;->b:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final a(I[BI)V
    .registers 10

    const/4 v0, 0x0

    move v1, p1

    const/4 p1, 0x0

    :goto_3
    if-ge p1, p3, :cond_26

    move v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_8
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1d

    invoke-virtual {p0, v2}, Lcom/google/a/c/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_18

    rsub-int/lit8 v4, v1, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    :cond_18
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    add-int/lit8 v1, p1, 0x0

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    add-int/lit8 p1, p1, 0x1

    move v1, v2

    goto :goto_3

    :cond_26
    return-void
.end method

.method public final a(Lcom/google/a/c/a;)V
    .registers 5

    iget v0, p1, Lcom/google/a/c/a;->b:I

    iget v1, p0, Lcom/google/a/c/a;->b:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/a/c/a;->e(I)V

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/a/c/a;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

.method public final a(Z)V
    .registers 6

    iget v0, p0, Lcom/google/a/c/a;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/a/c/a;->e(I)V

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/google/a/c/a;->a:[I

    iget v0, p0, Lcom/google/a/c/a;->b:I

    div-int/lit8 v0, v0, 0x20

    aget v2, p1, v0

    iget v3, p0, Lcom/google/a/c/a;->b:I

    and-int/lit8 v3, v3, 0x1f

    shl-int v3, v1, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    :cond_1a
    iget p1, p0, Lcom/google/a/c/a;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/a/c/a;->b:I

    return-void
.end method

.method public final a(I)Z
    .registers 4

    iget-object v0, p0, Lcom/google/a/c/a;->a:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    return v1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final a(II)Z
    .registers 11

    if-lt p2, p1, :cond_35

    if-ltz p1, :cond_35

    iget v0, p0, Lcom/google/a/c/a;->b:I

    if-le p2, v0, :cond_9

    goto :goto_35

    :cond_9
    const/4 v0, 0x1

    if-ne p2, p1, :cond_d

    return v0

    :cond_d
    add-int/lit8 p2, p2, -0x1

    div-int/lit8 v1, p1, 0x20

    div-int/lit8 v2, p2, 0x20

    move v3, v1

    :goto_14
    if-gt v3, v2, :cond_34

    const/4 v4, 0x0

    const/16 v5, 0x1f

    if-le v3, v1, :cond_1d

    const/4 v6, 0x0

    goto :goto_1f

    :cond_1d
    and-int/lit8 v6, p1, 0x1f

    :goto_1f
    if-ge v3, v2, :cond_22

    goto :goto_23

    :cond_22
    and-int/2addr v5, p2

    :goto_23
    const/4 v7, 0x2

    shl-int v5, v7, v5

    shl-int v6, v0, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/a/c/a;->a:[I

    aget v6, v6, v3

    and-int/2addr v5, v6

    if-eqz v5, :cond_31

    return v4

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_34
    return v0

    :cond_35
    :goto_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/google/a/c/a;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_e

    iget-object v3, p0, Lcom/google/a/c/a;->a:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method public final b(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/a/c/a;->a:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    aput p1, v0, v1

    return-void
.end method

.method public final b(II)V
    .registers 5

    if-ltz p2, :cond_20

    const/16 v0, 0x20

    if-le p2, v0, :cond_7

    goto :goto_20

    :cond_7
    iget v0, p0, Lcom/google/a/c/a;->b:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/a/c/a;->e(I)V

    :goto_d
    if-lez p2, :cond_1f

    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {p0, v1}, Lcom/google/a/c/a;->a(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    :cond_1f
    return-void

    :cond_20
    :goto_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Num bits must be between 0 and 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(I)I
    .registers 5

    iget v0, p0, Lcom/google/a/c/a;->b:I

    if-lt p1, v0, :cond_7

    iget p1, p0, Lcom/google/a/c/a;->b:I

    return p1

    :cond_7
    div-int/lit8 v0, p1, 0x20

    iget-object v1, p0, Lcom/google/a/c/a;->a:[I

    aget v1, v1, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    :goto_16
    if-nez p1, :cond_27

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lcom/google/a/c/a;->a:[I

    array-length p1, p1

    if-ne v0, p1, :cond_22

    iget p1, p0, Lcom/google/a/c/a;->b:I

    return p1

    :cond_22
    iget-object p1, p0, Lcom/google/a/c/a;->a:[I

    aget p1, p1, v0

    goto :goto_16

    :cond_27
    shl-int/lit8 v0, v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/a/c/a;->b:I

    if-le v0, p1, :cond_35

    iget p1, p0, Lcom/google/a/c/a;->b:I

    return p1

    :cond_35
    return v0
.end method

.method public final c()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/c/a;->a:[I

    array-length v1, v1

    new-array v1, v1, [I

    iget v2, v0, Lcom/google/a/c/a;->b:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x20

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v4, :cond_67

    iget-object v7, v0, Lcom/google/a/c/a;->a:[I

    aget v7, v7, v6

    int-to-long v7, v7

    shr-long v9, v7, v3

    const-wide/32 v11, 0x55555555

    and-long v13, v9, v11

    and-long v9, v7, v11

    shl-long v7, v9, v3

    or-long v9, v13, v7

    const/4 v7, 0x2

    shr-long v11, v9, v7

    const-wide/32 v13, 0x33333333

    and-long v15, v11, v13

    and-long v11, v9, v13

    shl-long v7, v11, v7

    or-long v9, v15, v7

    const/4 v7, 0x4

    shr-long v11, v9, v7

    const-wide/32 v13, 0xf0f0f0f

    and-long v15, v11, v13

    and-long v11, v9, v13

    shl-long v7, v11, v7

    or-long v9, v15, v7

    const/16 v7, 0x8

    shr-long v11, v9, v7

    const-wide/32 v13, 0xff00ff

    and-long v15, v11, v13

    and-long v11, v9, v13

    shl-long v7, v11, v7

    or-long v9, v15, v7

    const/16 v7, 0x10

    shr-long v11, v9, v7

    const-wide/32 v13, 0xffff

    and-long v15, v11, v13

    and-long v11, v9, v13

    shl-long v7, v11, v7

    or-long v9, v15, v7

    sub-int v7, v2, v6

    long-to-int v8, v9

    aput v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_67
    iget v2, v0, Lcom/google/a/c/a;->b:I

    shl-int/lit8 v6, v4, 0x5

    if-eq v2, v6, :cond_8a

    iget v2, v0, Lcom/google/a/c/a;->b:I

    sub-int/2addr v6, v2

    aget v2, v1, v5

    ushr-int/2addr v2, v6

    move v5, v2

    const/4 v2, 0x1

    :goto_75
    if-ge v2, v4, :cond_87

    aget v7, v1, v2

    rsub-int/lit8 v8, v6, 0x20

    shl-int v8, v7, v8

    or-int/2addr v5, v8

    add-int/lit8 v8, v2, -0x1

    aput v5, v1, v8

    ushr-int v5, v7, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_87
    sub-int/2addr v4, v3

    aput v5, v1, v4

    :cond_8a
    iput-object v1, v0, Lcom/google/a/c/a;->a:[I

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/google/a/c/a;

    iget-object v1, p0, Lcom/google/a/c/a;->a:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Lcom/google/a/c/a;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/a;-><init>([II)V

    return-object v0
.end method

.method public final d(I)I
    .registers 5

    iget v0, p0, Lcom/google/a/c/a;->b:I

    if-lt p1, v0, :cond_7

    iget p1, p0, Lcom/google/a/c/a;->b:I

    return p1

    :cond_7
    div-int/lit8 v0, p1, 0x20

    iget-object v1, p0, Lcom/google/a/c/a;->a:[I

    aget v1, v1, v0

    xor-int/lit8 v1, v1, -0x1

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    :goto_18
    if-nez p1, :cond_2b

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lcom/google/a/c/a;->a:[I

    array-length p1, p1

    if-ne v0, p1, :cond_24

    iget p1, p0, Lcom/google/a/c/a;->b:I

    return p1

    :cond_24
    iget-object p1, p0, Lcom/google/a/c/a;->a:[I

    aget p1, p1, v0

    xor-int/lit8 p1, p1, -0x1

    goto :goto_18

    :cond_2b
    shl-int/lit8 v0, v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/a/c/a;->b:I

    if-le v0, p1, :cond_39

    iget p1, p0, Lcom/google/a/c/a;->b:I

    return p1

    :cond_39
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/a/c/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/a/c/a;

    iget v0, p0, Lcom/google/a/c/a;->b:I

    iget v2, p1, Lcom/google/a/c/a;->b:I

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/google/a/c/a;->a:[I

    iget-object p1, p1, Lcom/google/a/c/a;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/a/c/a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/a/c/a;->a:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/c/a;->b:I

    iget v2, p0, Lcom/google/a/c/a;->b:I

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_f
    iget v2, p0, Lcom/google/a/c/a;->b:I

    if-ge v1, v2, :cond_2d

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_1c

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v2, 0x58

    goto :goto_27

    :cond_25
    const/16 v2, 0x2e

    :goto_27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
