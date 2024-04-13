.class public final Lcom/google/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1, p1}, Lcom/google/a/c/b;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1b

    if-gtz p2, :cond_8

    goto :goto_1b

    :cond_8
    iput p1, p0, Lcom/google/a/c/b;->a:I

    iput p2, p0, Lcom/google/a/c/b;->b:I

    add-int/lit8 p1, p1, 0x1f

    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/a/c/b;->c:I

    iget p1, p0, Lcom/google/a/c/b;->c:I

    mul-int p1, p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/a/c/b;->d:[I

    return-void

    :cond_1b
    :goto_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(III[I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/c/b;->a:I

    iput p2, p0, Lcom/google/a/c/b;->b:I

    iput p3, p0, Lcom/google/a/c/b;->c:I

    iput-object p4, p0, Lcom/google/a/c/b;->d:[I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/c/b;
    .registers 13

    if-nez p0, :cond_8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_8e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_75

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_2c

    goto :goto_75

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    const/4 v8, 0x1

    aput-boolean v8, v0, v4

    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    aput-boolean v2, v0, v4

    goto :goto_43

    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "illegal character encountered: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    :goto_75
    if-le v4, v5, :cond_8b

    if-ne v6, v1, :cond_7c

    sub-int v6, v4, v5

    goto :goto_88

    :cond_7c
    sub-int v5, v4, v5

    if-eq v5, v6, :cond_88

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row lengths do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    :goto_88
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_8e
    if-le v4, v5, :cond_a4

    if-ne v6, v1, :cond_96

    sub-int p0, v4, v5

    move v6, p0

    goto :goto_a2

    :cond_96
    sub-int p0, v4, v5

    if-eq p0, v6, :cond_a2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row lengths do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a2
    :goto_a2
    add-int/lit8 v7, v7, 0x1

    :cond_a4
    new-instance p0, Lcom/google/a/c/b;

    invoke-direct {p0, v6, v7}, Lcom/google/a/c/b;-><init>(II)V

    :goto_a9
    if-ge v2, v4, :cond_b9

    aget-boolean p1, v0, v2

    if-eqz p1, :cond_b6

    rem-int p1, v2, v6

    div-int p2, v2, v6

    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/b;->b(II)V

    :cond_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    :cond_b9
    return-object p0
.end method

.method public static a([[Z)Lcom/google/a/c/b;
    .registers 9

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    new-instance v3, Lcom/google/a/c/b;

    invoke-direct {v3, v2, v0}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v0, :cond_1f

    aget-object v5, p0, v4

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v2, :cond_1c

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_19

    invoke-virtual {v3, v6, v4}, Lcom/google/a/c/b;->b(II)V

    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1f
    return-object v3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "\n"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/a/c/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/a/c/b;)V
    .registers 12

    iget v0, p0, Lcom/google/a/c/b;->a:I

    iget v1, p1, Lcom/google/a/c/b;->a:I

    if-ne v0, v1, :cond_41

    iget v0, p0, Lcom/google/a/c/b;->b:I

    iget v1, p1, Lcom/google/a/c/b;->b:I

    if-ne v0, v1, :cond_41

    iget v0, p0, Lcom/google/a/c/b;->c:I

    iget v1, p1, Lcom/google/a/c/b;->c:I

    if-eq v0, v1, :cond_13

    goto :goto_41

    :cond_13
    new-instance v0, Lcom/google/a/c/a;

    iget v1, p0, Lcom/google/a/c/b;->a:I

    invoke-direct {v0, v1}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    iget v3, p0, Lcom/google/a/c/b;->b:I

    if-ge v2, v3, :cond_40

    iget v3, p0, Lcom/google/a/c/b;->c:I

    mul-int v3, v3, v2

    invoke-virtual {p1, v2, v0}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v4

    iget-object v4, v4, Lcom/google/a/c/a;->a:[I

    const/4 v5, 0x0

    :goto_2b
    iget v6, p0, Lcom/google/a/c/b;->c:I

    if-ge v5, v6, :cond_3d

    iget-object v6, p0, Lcom/google/a/c/b;->d:[I

    add-int v7, v3, v5

    aget v8, v6, v7

    aget v9, v4, v5

    xor-int/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_40
    return-void

    :cond_41
    :goto_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input matrix dimensions do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/c/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/c/b;->b:I

    iget v2, p0, Lcom/google/a/c/b;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    iget v3, p0, Lcom/google/a/c/b;->b:I

    if-ge v2, v3, :cond_2d

    const/4 v3, 0x0

    :goto_14
    iget v4, p0, Lcom/google/a/c/b;->a:I

    if-ge v3, v4, :cond_27

    invoke-virtual {p0, v3, v2}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object v4, p1

    goto :goto_21

    :cond_20
    move-object v4, p2

    :goto_21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(II)V
    .registers 6

    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method private e()V
    .registers 6

    iget v0, p0, Lcom/google/a/c/b;->a:I

    iget v1, p0, Lcom/google/a/c/b;->b:I

    new-instance v2, Lcom/google/a/c/a;

    invoke-direct {v2, v0}, Lcom/google/a/c/a;-><init>(I)V

    new-instance v3, Lcom/google/a/c/a;

    invoke-direct {v3, v0}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v0, 0x0

    :goto_f
    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_2f

    invoke-virtual {p0, v0, v2}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4, v3}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/a/c/a;->c()V

    invoke-virtual {v3}, Lcom/google/a/c/a;->c()V

    invoke-virtual {p0, v0, v3}, Lcom/google/a/c/b;->b(ILcom/google/a/c/a;)V

    invoke-virtual {p0, v4, v2}, Lcom/google/a/c/b;->b(ILcom/google/a/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2f
    return-void
.end method

.method private f()[I
    .registers 13

    iget v0, p0, Lcom/google/a/c/b;->a:I

    iget v1, p0, Lcom/google/a/c/b;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v1

    const/4 v4, -0x1

    move v1, v0

    const/4 v0, 0x0

    :goto_a
    iget v6, p0, Lcom/google/a/c/b;->b:I

    if-ge v0, v6, :cond_54

    move v6, v4

    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    :goto_12
    iget v7, p0, Lcom/google/a/c/b;->c:I

    if-ge v1, v7, :cond_4e

    iget-object v7, p0, Lcom/google/a/c/b;->d:[I

    iget v8, p0, Lcom/google/a/c/b;->c:I

    mul-int v8, v8, v0

    add-int/2addr v8, v1

    aget v7, v7, v8

    if-eqz v7, :cond_4b

    if-ge v0, v5, :cond_24

    move v5, v0

    :cond_24
    if-le v0, v6, :cond_27

    move v6, v0

    :cond_27
    shl-int/lit8 v8, v1, 0x5

    const/16 v9, 0x1f

    if-ge v8, v2, :cond_3b

    const/4 v10, 0x0

    :goto_2e
    rsub-int/lit8 v11, v10, 0x1f

    shl-int v11, v7, v11

    if-nez v11, :cond_37

    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_37
    add-int/2addr v10, v8

    if-ge v10, v2, :cond_3b

    move v2, v10

    :cond_3b
    add-int/lit8 v10, v8, 0x1f

    if-le v10, v4, :cond_4b

    :goto_3f
    ushr-int v10, v7, v9

    if-nez v10, :cond_46

    add-int/lit8 v9, v9, -0x1

    goto :goto_3f

    :cond_46
    add-int v7, v8, v9

    if-le v7, v4, :cond_4b

    move v4, v7

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v4

    move v4, v6

    goto :goto_a

    :cond_54
    if-lt v2, v1, :cond_6c

    if-ge v4, v5, :cond_59

    goto :goto_6c

    :cond_59
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v1, v0, v3

    const/4 v3, 0x1

    aput v5, v0, v3

    const/4 v6, 0x2

    sub-int/2addr v2, v1

    add-int/2addr v2, v3

    aput v2, v0, v6

    const/4 v1, 0x3

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    aput v4, v0, v1

    return-object v0

    :cond_6c
    :goto_6c
    const/4 v0, 0x0

    return-object v0
.end method

.method private g()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/b;->a:I

    return v0
.end method

.method private h()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/b;->b:I

    return v0
.end method

.method private i()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/b;->c:I

    return v0
.end method


# virtual methods
.method public final a(ILcom/google/a/c/a;)Lcom/google/a/c/a;
    .registers 7

    if-eqz p2, :cond_d

    iget v0, p2, Lcom/google/a/c/a;->b:I

    iget v1, p0, Lcom/google/a/c/b;->a:I

    if-ge v0, v1, :cond_9

    goto :goto_d

    :cond_9
    invoke-virtual {p2}, Lcom/google/a/c/a;->b()V

    goto :goto_14

    :cond_d
    :goto_d
    new-instance p2, Lcom/google/a/c/a;

    iget v0, p0, Lcom/google/a/c/b;->a:I

    invoke-direct {p2, v0}, Lcom/google/a/c/a;-><init>(I)V

    :goto_14
    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p1, p1, v0

    const/4 v0, 0x0

    :goto_19
    iget v1, p0, Lcom/google/a/c/b;->c:I

    if-ge v0, v1, :cond_2e

    shl-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    add-int v3, p1, v0

    aget v2, v2, v3

    iget-object v3, p2, Lcom/google/a/c/a;->a:[I

    div-int/lit8 v1, v1, 0x20

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2e
    return-object p2
.end method

.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_e

    iget-object v3, p0, Lcom/google/a/c/b;->d:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method public final a(IIII)V
    .registers 12

    if-ltz p2, :cond_44

    if-gez p1, :cond_5

    goto :goto_44

    :cond_5
    if-lez p4, :cond_3c

    if-gtz p3, :cond_a

    goto :goto_3c

    :cond_a
    add-int/2addr p3, p1

    add-int/2addr p4, p2

    iget v0, p0, Lcom/google/a/c/b;->b:I

    if-gt p4, v0, :cond_34

    iget v0, p0, Lcom/google/a/c/b;->a:I

    if-le p3, v0, :cond_15

    goto :goto_34

    :cond_15
    :goto_15
    if-ge p2, p4, :cond_33

    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int v0, v0, p2

    move v1, p1

    :goto_1c
    if-ge v1, p3, :cond_30

    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    div-int/lit8 v3, v1, 0x20

    add-int/2addr v3, v0

    aget v4, v2, v3

    and-int/lit8 v5, v1, 0x1f

    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_30
    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_33
    return-void

    :cond_34
    :goto_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    :goto_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    :goto_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(II)Z
    .registers 4

    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_14

    return p2

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final b(II)V
    .registers 6

    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public final b(ILcom/google/a/c/a;)V
    .registers 6

    iget-object p2, p2, Lcom/google/a/c/a;->a:[I

    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    iget v1, p0, Lcom/google/a/c/b;->c:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/google/a/c/b;->c:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b()[I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    array-length v2, v2

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    aget v2, v2, v1

    if-nez v2, :cond_10

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    array-length v2, v2

    if-ne v1, v2, :cond_17

    const/4 v0, 0x0

    return-object v0

    :cond_17
    iget v2, p0, Lcom/google/a/c/b;->c:I

    div-int v2, v1, v2

    iget v3, p0, Lcom/google/a/c/b;->c:I

    rem-int v3, v1, v3

    shl-int/lit8 v3, v3, 0x5

    iget-object v4, p0, Lcom/google/a/c/b;->d:[I

    aget v1, v4, v1

    const/4 v4, 0x0

    :goto_26
    rsub-int/lit8 v5, v4, 0x1f

    shl-int v5, v1, v5

    if-nez v5, :cond_2f

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_2f
    add-int/2addr v3, v4

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v3, v1, v0

    const/4 v0, 0x1

    aput v2, v1, v0

    return-object v1
.end method

.method public final c(II)V
    .registers 6

    iget v0, p0, Lcom/google/a/c/b;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public final c()[I
    .registers 7

    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_10

    iget-object v2, p0, Lcom/google/a/c/b;->d:[I

    aget v2, v2, v0

    if-nez v2, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_10
    if-gez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    iget v2, p0, Lcom/google/a/c/b;->c:I

    div-int v2, v0, v2

    iget v3, p0, Lcom/google/a/c/b;->c:I

    rem-int v3, v0, v3

    shl-int/lit8 v3, v3, 0x5

    iget-object v4, p0, Lcom/google/a/c/b;->d:[I

    aget v0, v4, v0

    const/16 v4, 0x1f

    :goto_24
    ushr-int v5, v0, v4

    if-nez v5, :cond_2b

    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    :cond_2b
    add-int/2addr v3, v4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v3, v0, v4

    aput v2, v0, v1

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/c/b;->d()Lcom/google/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/a/c/b;
    .registers 6

    new-instance v0, Lcom/google/a/c/b;

    iget v1, p0, Lcom/google/a/c/b;->a:I

    iget v2, p0, Lcom/google/a/c/b;->b:I

    iget v3, p0, Lcom/google/a/c/b;->c:I

    iget-object v4, p0, Lcom/google/a/c/b;->d:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/c/b;-><init>(III[I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/a/c/b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/a/c/b;

    iget v0, p0, Lcom/google/a/c/b;->a:I

    iget v2, p1, Lcom/google/a/c/b;->a:I

    if-ne v0, v2, :cond_26

    iget v0, p0, Lcom/google/a/c/b;->b:I

    iget v2, p1, Lcom/google/a/c/b;->b:I

    if-ne v0, v2, :cond_26

    iget v0, p0, Lcom/google/a/c/b;->c:I

    iget v2, p1, Lcom/google/a/c/b;->c:I

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/a/c/b;->d:[I

    iget-object p1, p1, Lcom/google/a/c/b;->d:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/a/c/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/a/c/b;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/a/c/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/a/c/b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/a/c/b;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "X "

    const-string v1, "  "

    const-string v2, "\n"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/a/c/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
