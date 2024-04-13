.class public final Lcom/google/a/c/c;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field private final c:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/c/c;->c:[B

    return-void
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/c;->b:I

    return v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/c;->a:I

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v0, p0, Lcom/google/a/c/c;->c:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/a/c/c;->a:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/a/c/c;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(I)I
    .registers 10

    if-lez p1, :cond_6f

    const/16 v0, 0x20

    if-gt p1, v0, :cond_6f

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v0

    if-le p1, v0, :cond_d

    goto :goto_6f

    :cond_d
    iget v0, p0, Lcom/google/a/c/c;->b:I

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/16 v3, 0x8

    if-lez v0, :cond_41

    iget v0, p0, Lcom/google/a/c/c;->b:I

    rsub-int/lit8 v0, v0, 0x8

    if-ge p1, v0, :cond_1e

    move v4, p1

    goto :goto_1f

    :cond_1e
    move v4, v0

    :goto_1f
    sub-int/2addr v0, v4

    rsub-int/lit8 v5, v4, 0x8

    shr-int v5, v2, v5

    shl-int/2addr v5, v0

    iget-object v6, p0, Lcom/google/a/c/c;->c:[B

    iget v7, p0, Lcom/google/a/c/c;->a:I

    aget-byte v6, v6, v7

    and-int/2addr v5, v6

    shr-int v0, v5, v0

    sub-int/2addr p1, v4

    iget v5, p0, Lcom/google/a/c/c;->b:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/a/c/c;->b:I

    iget v4, p0, Lcom/google/a/c/c;->b:I

    if-ne v4, v3, :cond_42

    iput v1, p0, Lcom/google/a/c/c;->b:I

    iget v1, p0, Lcom/google/a/c/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/c/c;->a:I

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :cond_42
    :goto_42
    if-lez p1, :cond_6e

    :goto_44
    if-lt p1, v3, :cond_59

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/a/c/c;->c:[B

    iget v4, p0, Lcom/google/a/c/c;->a:I

    aget-byte v1, v1, v4

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcom/google/a/c/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/c/c;->a:I

    add-int/lit8 p1, p1, -0x8

    goto :goto_44

    :cond_59
    if-lez p1, :cond_6e

    sub-int/2addr v3, p1

    shr-int v1, v2, v3

    shl-int/2addr v1, v3

    shl-int/2addr v0, p1

    iget-object v2, p0, Lcom/google/a/c/c;->c:[B

    iget v4, p0, Lcom/google/a/c/c;->a:I

    aget-byte v2, v2, v4

    and-int/2addr v1, v2

    shr-int/2addr v1, v3

    or-int/2addr v0, v1

    iget v1, p0, Lcom/google/a/c/c;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/a/c/c;->b:I

    :cond_6e
    return v0

    :cond_6f
    :goto_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
