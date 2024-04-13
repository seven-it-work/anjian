.class public final Lcom/bumptech/glide/load/a/g;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final a:I = 0x2

.field private static final b:[B

.field private static final c:I = 0x1d

.field private static final d:I = 0x1f


# instance fields
.field private final e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/bumptech/glide/load/a/g;->b:[B

    return-void

    :array_a
    .array-data 1
        -0x1t
        -0x1ft
        0x0t
        0x1ct
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
        0x4dt
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x1t
        0x1t
        0x12t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    if-lt p2, p1, :cond_f

    const/16 p1, 0x8

    if-le p2, p1, :cond_b

    goto :goto_f

    :cond_b
    int-to-byte p1, p2

    iput-byte p1, p0, Lcom/bumptech/glide/load/a/g;->e:B

    return-void

    :cond_f
    :goto_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot add invalid orientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final mark(I)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/load/a/g;->f:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1f

    iget v0, p0, Lcom/bumptech/glide/load/a/g;->f:I

    sget v2, Lcom/bumptech/glide/load/a/g;->d:I

    if-le v0, v2, :cond_c

    goto :goto_1f

    :cond_c
    iget v0, p0, Lcom/bumptech/glide/load/a/g;->f:I

    sget v2, Lcom/bumptech/glide/load/a/g;->d:I

    if-ne v0, v2, :cond_15

    iget-byte v0, p0, Lcom/bumptech/glide/load/a/g;->e:B

    goto :goto_23

    :cond_15
    sget-object v0, Lcom/bumptech/glide/load/a/g;->b:[B

    iget v2, p0, Lcom/bumptech/glide/load/a/g;->f:I

    sub-int/2addr v2, v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_23

    :cond_1f
    :goto_1f
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    :goto_23
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    iget v1, p0, Lcom/bumptech/glide/load/a/g;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/a/g;->f:I

    :cond_2c
    return v0
.end method

.method public final read([BII)I
    .registers 7
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/load/a/g;->f:I

    sget v1, Lcom/bumptech/glide/load/a/g;->d:I

    if-le v0, v1, :cond_b

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    goto :goto_36

    :cond_b
    iget v0, p0, Lcom/bumptech/glide/load/a/g;->f:I

    sget v1, Lcom/bumptech/glide/load/a/g;->d:I

    if-ne v0, v1, :cond_17

    iget-byte p3, p0, Lcom/bumptech/glide/load/a/g;->e:B

    aput-byte p3, p1, p2

    const/4 p1, 0x1

    goto :goto_36

    :cond_17
    iget v0, p0, Lcom/bumptech/glide/load/a/g;->f:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_24

    iget p3, p0, Lcom/bumptech/glide/load/a/g;->f:I

    sub-int/2addr v1, p3

    invoke-super {p0, p1, p2, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    goto :goto_36

    :cond_24
    sget v0, Lcom/bumptech/glide/load/a/g;->d:I

    iget v2, p0, Lcom/bumptech/glide/load/a/g;->f:I

    sub-int/2addr v0, v2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    sget-object v0, Lcom/bumptech/glide/load/a/g;->b:[B

    iget v2, p0, Lcom/bumptech/glide/load/a/g;->f:I

    sub-int/2addr v2, v1

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, p3

    :goto_36
    if-lez p1, :cond_3d

    iget p2, p0, Lcom/bumptech/glide/load/a/g;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/bumptech/glide/load/a/g;->f:I

    :cond_3d
    return p1
.end method

.method public final reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    iget v0, p0, Lcom/bumptech/glide/load/a/g;->f:I

    int-to-long v0, v0

    add-long v2, v0, p1

    long-to-int v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/a/g;->f:I

    :cond_12
    return-wide p1
.end method
