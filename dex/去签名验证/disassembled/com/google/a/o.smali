.class public final Lcom/google/a/o;
.super Lcom/google/a/j;


# instance fields
.field private final c:[B

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(II[I)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/google/a/j;-><init>(II)V

    iput p1, p0, Lcom/google/a/o;->d:I

    iput p2, p0, Lcom/google/a/o;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/o;->f:I

    iput v0, p0, Lcom/google/a/o;->g:I

    mul-int p1, p1, p2

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/google/a/o;->c:[B

    :goto_12
    if-ge v0, p1, :cond_2c

    aget p2, p3, v0

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x7

    and-int/lit16 v2, v2, 0x1fe

    and-int/lit16 p2, p2, 0xff

    iget-object v3, p0, Lcom/google/a/o;->c:[B

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x4

    int-to-byte p2, v1

    aput-byte p2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2c
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .registers 8

    invoke-direct {p0, p6, p7}, Lcom/google/a/j;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_15

    add-int/2addr p7, p5

    if-le p7, p3, :cond_a

    goto :goto_15

    :cond_a
    iput-object p1, p0, Lcom/google/a/o;->c:[B

    iput p2, p0, Lcom/google/a/o;->d:I

    iput p3, p0, Lcom/google/a/o;->e:I

    iput p4, p0, Lcom/google/a/o;->f:I

    iput p5, p0, Lcom/google/a/o;->g:I

    return-void

    :cond_15
    :goto_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(IIII)Lcom/google/a/j;
    .registers 14

    new-instance v8, Lcom/google/a/o;

    iget-object v1, p0, Lcom/google/a/o;->c:[B

    iget v2, p0, Lcom/google/a/o;->d:I

    iget v3, p0, Lcom/google/a/o;->e:I

    iget v0, p0, Lcom/google/a/o;->f:I

    add-int v4, v0, p1

    iget p1, p0, Lcom/google/a/o;->g:I

    add-int v5, p1, p2

    move-object v0, v8

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/a/o;-><init>([BIIIIII)V

    return-object v8
.end method

.method public final a()[B
    .registers 8

    iget v0, p0, Lcom/google/a/j;->a:I

    iget v1, p0, Lcom/google/a/j;->b:I

    iget v2, p0, Lcom/google/a/o;->d:I

    if-ne v0, v2, :cond_f

    iget v2, p0, Lcom/google/a/o;->e:I

    if-ne v1, v2, :cond_f

    iget-object v0, p0, Lcom/google/a/o;->c:[B

    return-object v0

    :cond_f
    mul-int v2, v0, v1

    new-array v3, v2, [B

    iget v4, p0, Lcom/google/a/o;->g:I

    iget v5, p0, Lcom/google/a/o;->d:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/google/a/o;->f:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/google/a/o;->d:I

    const/4 v6, 0x0

    if-ne v0, v5, :cond_27

    iget-object v0, p0, Lcom/google/a/o;->c:[B

    invoke-static {v0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_27
    :goto_27
    if-ge v6, v1, :cond_36

    mul-int v2, v6, v0

    iget-object v5, p0, Lcom/google/a/o;->c:[B

    invoke-static {v5, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/a/o;->d:I

    add-int/2addr v4, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_36
    return-object v3
.end method

.method public final a(I[B)[B
    .registers 6

    if-ltz p1, :cond_21

    iget v0, p0, Lcom/google/a/j;->b:I

    if-lt p1, v0, :cond_7

    goto :goto_21

    :cond_7
    iget v0, p0, Lcom/google/a/j;->a:I

    if-eqz p2, :cond_e

    array-length v1, p2

    if-ge v1, v0, :cond_10

    :cond_e
    new-array p2, v0, [B

    :cond_10
    iget v1, p0, Lcom/google/a/o;->g:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/google/a/o;->d:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/google/a/o;->f:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/google/a/o;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_21
    :goto_21
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested row is outside the image: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
