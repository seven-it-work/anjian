.class public final Lcom/zbar/a/c/c;
.super Lcom/zbar/a/c/b;


# static fields
.field private static final g:I = 0x2


# instance fields
.field public final c:[B

.field public final d:I

.field public final e:I

.field public final f:I

.field private final h:I


# direct methods
.method public constructor <init>([BIIIIII)V
    .registers 8

    invoke-direct {p0, p6, p7}, Lcom/zbar/a/c/b;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_15

    add-int/2addr p7, p5

    if-le p7, p3, :cond_a

    goto :goto_15

    :cond_a
    iput-object p1, p0, Lcom/zbar/a/c/c;->c:[B

    iput p2, p0, Lcom/zbar/a/c/c;->d:I

    iput p3, p0, Lcom/zbar/a/c/c;->h:I

    iput p4, p0, Lcom/zbar/a/c/c;->e:I

    iput p5, p0, Lcom/zbar/a/c/c;->f:I

    return-void

    :cond_15
    :goto_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(II)V
    .registers 11

    iget-object v0, p0, Lcom/zbar/a/c/c;->c:[B

    iget v1, p0, Lcom/zbar/a/c/c;->f:I

    iget v2, p0, Lcom/zbar/a/c/c;->d:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/zbar/a/c/c;->e:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, p2, :cond_2c

    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    add-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    move v4, v1

    :goto_17
    if-ge v4, v3, :cond_26

    aget-byte v6, v0, v4

    aget-byte v7, v0, v5

    aput-byte v7, v0, v4

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_17

    :cond_26
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/zbar/a/c/c;->d:I

    add-int/2addr v1, v3

    goto :goto_c

    :cond_2c
    return-void
.end method

.method private g()[I
    .registers 14

    iget v0, p0, Lcom/zbar/a/c/b;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/zbar/a/c/b;->b:I

    div-int/lit8 v1, v1, 0x2

    mul-int v2, v0, v1

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/zbar/a/c/c;->c:[B

    iget v4, p0, Lcom/zbar/a/c/c;->f:I

    iget v5, p0, Lcom/zbar/a/c/c;->d:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/zbar/a/c/c;->e:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v4

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v1, :cond_3f

    mul-int v7, v4, v0

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v0, :cond_37

    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v6

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v7, v8

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int v9, v9, v12

    or-int/2addr v9, v11

    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_37
    iget v7, p0, Lcom/zbar/a/c/c;->d:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_3f
    return-object v2
.end method

.method private h()I
    .registers 2

    iget v0, p0, Lcom/zbar/a/c/b;->a:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private i()I
    .registers 2

    iget v0, p0, Lcom/zbar/a/c/b;->b:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public final a(IIII)Lcom/zbar/a/c/b;
    .registers 14

    new-instance v8, Lcom/zbar/a/c/c;

    iget-object v1, p0, Lcom/zbar/a/c/c;->c:[B

    iget v2, p0, Lcom/zbar/a/c/c;->d:I

    iget v3, p0, Lcom/zbar/a/c/c;->h:I

    iget v0, p0, Lcom/zbar/a/c/c;->e:I

    add-int v4, v0, p1

    iget p1, p0, Lcom/zbar/a/c/c;->f:I

    add-int v5, p1, p2

    move-object v0, v8

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/zbar/a/c/c;-><init>([BIIIIII)V

    return-object v8
.end method

.method public final a()[B
    .registers 8

    iget v0, p0, Lcom/zbar/a/c/b;->a:I

    iget v1, p0, Lcom/zbar/a/c/b;->b:I

    iget v2, p0, Lcom/zbar/a/c/c;->d:I

    if-ne v0, v2, :cond_f

    iget v2, p0, Lcom/zbar/a/c/c;->h:I

    if-ne v1, v2, :cond_f

    iget-object v0, p0, Lcom/zbar/a/c/c;->c:[B

    return-object v0

    :cond_f
    mul-int v2, v0, v1

    new-array v3, v2, [B

    iget v4, p0, Lcom/zbar/a/c/c;->f:I

    iget v5, p0, Lcom/zbar/a/c/c;->d:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/zbar/a/c/c;->e:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/zbar/a/c/c;->d:I

    const/4 v6, 0x0

    if-ne v0, v5, :cond_27

    iget-object v0, p0, Lcom/zbar/a/c/c;->c:[B

    invoke-static {v0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_27
    iget-object v2, p0, Lcom/zbar/a/c/c;->c:[B

    :goto_29
    if-ge v6, v1, :cond_36

    mul-int v5, v6, v0

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/zbar/a/c/c;->d:I

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_36
    return-object v3
.end method

.method public final a(I[B)[B
    .registers 6

    if-ltz p1, :cond_21

    iget v0, p0, Lcom/zbar/a/c/b;->b:I

    if-lt p1, v0, :cond_7

    goto :goto_21

    :cond_7
    iget v0, p0, Lcom/zbar/a/c/b;->a:I

    if-eqz p2, :cond_e

    array-length v1, p2

    if-ge v1, v0, :cond_10

    :cond_e
    new-array p2, v0, [B

    :cond_10
    iget v1, p0, Lcom/zbar/a/c/c;->f:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/zbar/a/c/c;->d:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/zbar/a/c/c;->e:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/zbar/a/c/c;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_21
    :goto_21
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested row is outside the image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
