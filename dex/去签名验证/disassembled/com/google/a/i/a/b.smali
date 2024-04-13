.class final Lcom/google/a/i/a/b;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:[B


# direct methods
.method constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/i/a/b;->a:I

    iput-object p2, p0, Lcom/google/a/i/a/b;->b:[B

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/i/a/b;->a:I

    return v0
.end method

.method private static a([BLcom/google/a/i/a/j;Lcom/google/a/i/a/f;)[Lcom/google/a/i/a/b;
    .registers 14

    array-length v0, p0

    iget v1, p1, Lcom/google/a/i/a/j;->c:I

    if-eq v0, v1, :cond_b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b
    invoke-virtual {p1, p2}, Lcom/google/a/i/a/j;->a(Lcom/google/a/i/a/f;)Lcom/google/a/i/a/j$b;

    move-result-object p1

    iget-object p2, p1, Lcom/google/a/i/a/j$b;->b:[Lcom/google/a/i/a/j$a;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v2, v0, :cond_1f

    aget-object v4, p2, v2

    iget v4, v4, Lcom/google/a/i/a/j$a;->a:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    new-array v0, v3, [Lcom/google/a/i/a/b;

    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_24
    if-ge v3, v2, :cond_46

    aget-object v5, p2, v3

    move v6, v4

    const/4 v4, 0x0

    :goto_2a
    iget v7, v5, Lcom/google/a/i/a/j$a;->a:I

    if-ge v4, v7, :cond_42

    iget v7, v5, Lcom/google/a/i/a/j$a;->b:I

    iget v8, p1, Lcom/google/a/i/a/j$b;->a:I

    add-int/2addr v8, v7

    add-int/lit8 v9, v6, 0x1

    new-instance v10, Lcom/google/a/i/a/b;

    new-array v8, v8, [B

    invoke-direct {v10, v7, v8}, Lcom/google/a/i/a/b;-><init>(I[B)V

    aput-object v10, v0, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v9

    goto :goto_2a

    :cond_42
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_24

    :cond_46
    aget-object p2, v0, v1

    iget-object p2, p2, Lcom/google/a/i/a/b;->b:[B

    array-length p2, p2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_4e
    if-ltz v2, :cond_5a

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/google/a/i/a/b;->b:[B

    array-length v3, v3

    if-eq v3, p2, :cond_5a

    add-int/lit8 v2, v2, -0x1

    goto :goto_4e

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    iget p1, p1, Lcom/google/a/i/a/j$b;->a:I

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_61
    if-ge p1, p2, :cond_79

    move v5, v3

    const/4 v3, 0x0

    :goto_65
    if-ge v3, v4, :cond_75

    aget-object v6, v0, v3

    iget-object v6, v6, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v6, p1

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_65

    :cond_75
    add-int/lit8 p1, p1, 0x1

    move v3, v5

    goto :goto_61

    :cond_79
    move p1, v2

    :goto_7a
    if-ge p1, v4, :cond_8a

    aget-object v5, v0, p1

    iget-object v5, v5, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v5, p2

    add-int/lit8 p1, p1, 0x1

    move v3, v6

    goto :goto_7a

    :cond_8a
    aget-object p1, v0, v1

    iget-object p1, p1, Lcom/google/a/i/a/b;->b:[B

    array-length p1, p1

    :goto_8f
    if-ge p2, p1, :cond_ad

    move v5, v3

    const/4 v3, 0x0

    :goto_93
    if-ge v3, v4, :cond_a9

    if-ge v3, v2, :cond_99

    move v6, p2

    goto :goto_9b

    :cond_99
    add-int/lit8 v6, p2, 0x1

    :goto_9b
    aget-object v7, v0, v3

    iget-object v7, v7, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v7, v6

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_93

    :cond_a9
    add-int/lit8 p2, p2, 0x1

    move v3, v5

    goto :goto_8f

    :cond_ad
    return-object v0
.end method

.method private b()[B
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/a/b;->b:[B

    return-object v0
.end method
