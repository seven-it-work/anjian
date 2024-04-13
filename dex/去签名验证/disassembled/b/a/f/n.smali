.class public final Lb/a/f/n;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0xffff

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x4

.field static final e:I = 0x5

.field static final f:I = 0x6

.field static final g:I = 0x7

.field static final h:I = 0xa


# instance fields
.field i:I

.field final j:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lb/a/f/n;->j:[I

    return-void
.end method

.method private a(Z)Z
    .registers 5

    iget v0, p0, Lb/a/f/n;->i:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget-object p1, p0, Lb/a/f/n;->j:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    goto :goto_13

    :cond_e
    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-ne p1, v2, :cond_16

    return v2

    :cond_16
    return v1
.end method

.method private b(I)I
    .registers 3

    iget-object v0, p0, Lb/a/f/n;->j:[I

    aget p1, v0, p1

    return p1
.end method

.method private c(I)I
    .registers 3

    iget v0, p0, Lb/a/f/n;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    iget-object p1, p0, Lb/a/f/n;->j:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_b
    return p1
.end method

.method private c()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lb/a/f/n;->i:I

    iget-object v1, p0, Lb/a/f/n;->j:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lb/a/f/n;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method private d(I)I
    .registers 3

    iget v0, p0, Lb/a/f/n;->i:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    iget-object p1, p0, Lb/a/f/n;->j:[I

    const/4 v0, 0x6

    aget p1, p1, v0

    :cond_b
    return p1
.end method

.method private e()I
    .registers 3

    iget v0, p0, Lb/a/f/n;->i:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    iget-object v0, p0, Lb/a/f/n;->j:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0

    :cond_c
    const v0, 0x7fffffff

    return v0
.end method


# virtual methods
.method final a()I
    .registers 3

    iget v0, p0, Lb/a/f/n;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget-object v0, p0, Lb/a/f/n;->j:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method final a(II)Lb/a/f/n;
    .registers 5

    iget-object v0, p0, Lb/a/f/n;->j:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    return-object p0

    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lb/a/f/n;->i:I

    or-int/2addr v0, v1

    iput v0, p0, Lb/a/f/n;->i:I

    iget-object v0, p0, Lb/a/f/n;->j:[I

    aput p2, v0, p1

    return-object p0
.end method

.method final a(Lb/a/f/n;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    invoke-virtual {p1, v0}, Lb/a/f/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p1, Lb/a/f/n;->j:[I

    aget v1, v1, v0

    invoke-virtual {p0, v0, v1}, Lb/a/f/n;->a(II)Lb/a/f/n;

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method final a(I)Z
    .registers 4

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lb/a/f/n;->i:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    return v0

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .registers 3

    iget v0, p0, Lb/a/f/n;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    iget-object v0, p0, Lb/a/f/n;->j:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0

    :cond_c
    const v0, 0xffff

    return v0
.end method
