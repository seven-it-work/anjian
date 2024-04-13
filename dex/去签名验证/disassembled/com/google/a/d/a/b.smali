.class final Lcom/google/a/d/a/b;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:[B


# direct methods
.method constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/d/a/b;->a:I

    iput-object p2, p0, Lcom/google/a/d/a/b;->b:[B

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/d/a/b;->a:I

    return v0
.end method

.method private static a([BLcom/google/a/d/a/e;)[Lcom/google/a/d/a/b;
    .registers 15

    iget-object v0, p1, Lcom/google/a/d/a/e;->f:Lcom/google/a/d/a/e$b;

    iget-object v1, v0, Lcom/google/a/d/a/e$b;->b:[Lcom/google/a/d/a/e$a;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ge v4, v2, :cond_12

    aget-object v6, v1, v4

    iget v6, v6, Lcom/google/a/d/a/e$a;->a:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    new-array v2, v5, [Lcom/google/a/d/a/b;

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_17
    if-ge v5, v4, :cond_39

    aget-object v7, v1, v5

    move v8, v6

    const/4 v6, 0x0

    :goto_1d
    iget v9, v7, Lcom/google/a/d/a/e$a;->a:I

    if-ge v6, v9, :cond_35

    iget v9, v7, Lcom/google/a/d/a/e$a;->b:I

    iget v10, v0, Lcom/google/a/d/a/e$b;->a:I

    add-int/2addr v10, v9

    add-int/lit8 v11, v8, 0x1

    new-instance v12, Lcom/google/a/d/a/b;

    new-array v10, v10, [B

    invoke-direct {v12, v9, v10}, Lcom/google/a/d/a/b;-><init>(I[B)V

    aput-object v12, v2, v8

    add-int/lit8 v6, v6, 0x1

    move v8, v11

    goto :goto_1d

    :cond_35
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_17

    :cond_39
    aget-object v1, v2, v3

    iget-object v1, v1, Lcom/google/a/d/a/b;->b:[B

    array-length v1, v1

    iget v0, v0, Lcom/google/a/d/a/e$b;->a:I

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_45
    if-ge v4, v0, :cond_5d

    move v7, v5

    const/4 v5, 0x0

    :goto_49
    if-ge v5, v6, :cond_59

    aget-object v8, v2, v5

    iget-object v8, v8, Lcom/google/a/d/a/b;->b:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v8, v4

    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto :goto_49

    :cond_59
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_45

    :cond_5d
    iget p1, p1, Lcom/google/a/d/a/e;->a:I

    const/16 v4, 0x18

    if-ne p1, v4, :cond_65

    const/4 p1, 0x1

    goto :goto_66

    :cond_65
    const/4 p1, 0x0

    :goto_66
    if-eqz p1, :cond_6b

    const/16 v4, 0x8

    goto :goto_6c

    :cond_6b
    move v4, v6

    :goto_6c
    move v7, v5

    const/4 v5, 0x0

    :goto_6e
    if-ge v5, v4, :cond_7e

    aget-object v8, v2, v5

    iget-object v8, v8, Lcom/google/a/d/a/b;->b:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v8, v0

    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto :goto_6e

    :cond_7e
    aget-object v0, v2, v3

    iget-object v0, v0, Lcom/google/a/d/a/b;->b:[B

    array-length v0, v0

    :goto_83
    if-ge v1, v0, :cond_a9

    const/4 v4, 0x0

    :goto_86
    if-ge v4, v6, :cond_a6

    if-eqz p1, :cond_8e

    add-int/lit8 v5, v4, 0x8

    rem-int/2addr v5, v6

    goto :goto_8f

    :cond_8e
    move v5, v4

    :goto_8f
    if-eqz p1, :cond_97

    const/4 v8, 0x7

    if-le v5, v8, :cond_97

    add-int/lit8 v8, v1, -0x1

    goto :goto_98

    :cond_97
    move v8, v1

    :goto_98
    aget-object v5, v2, v5

    iget-object v5, v5, Lcom/google/a/d/a/b;->b:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v5, v8

    add-int/lit8 v4, v4, 0x1

    move v7, v9

    goto :goto_86

    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    :cond_a9
    array-length p0, p0

    if-eq v7, p0, :cond_b2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b2
    return-object v2
.end method

.method private b()[B
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/a/b;->b:[B

    return-object v0
.end method
