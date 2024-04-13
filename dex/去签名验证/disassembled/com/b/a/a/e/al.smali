.class public final Lcom/b/a/a/e/al;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/b/a/a/e/al;->b:[I

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lcom/b/a/a/e/al;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method final a(II)Lcom/b/a/a/e/al;
    .registers 5

    iget-object v0, p0, Lcom/b/a/a/e/al;->b:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    return-object p0

    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lcom/b/a/a/e/al;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/a/e/al;->a:I

    iget-object v0, p0, Lcom/b/a/a/e/al;->b:[I

    aput p2, v0, p1

    return-object p0
.end method

.method final a(I)Z
    .registers 4

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lcom/b/a/a/e/al;->a:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    return v0

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method final b()I
    .registers 3

    iget v0, p0, Lcom/b/a/a/e/al;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/b/a/a/e/al;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method final b(I)I
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/e/al;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method final c()I
    .registers 3

    iget v0, p0, Lcom/b/a/a/e/al;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/b/a/a/e/al;->b:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0

    :cond_c
    const v0, 0x7fffffff

    return v0
.end method

.method final c(I)I
    .registers 3

    iget v0, p0, Lcom/b/a/a/e/al;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/b/a/a/e/al;->b:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_b
    return p1
.end method

.method final d()I
    .registers 3

    iget v0, p0, Lcom/b/a/a/e/al;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/b/a/a/e/al;->b:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0

    :cond_c
    const v0, 0xffff

    return v0
.end method
