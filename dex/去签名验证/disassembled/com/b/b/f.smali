.class public final Lcom/b/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/b/g;
.implements Lcom/b/b/h;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:Lcom/b/b/t;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/b/b/f;->c:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    if-nez p3, :cond_12

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_2d

    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2d
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_36

    const-string p1, ""

    return-object p1

    :cond_36
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v1, v0, Lcom/b/b/t;->b:I

    int-to-long v1, v1

    add-long v3, v1, p1

    iget v1, v0, Lcom/b/b/t;->c:I

    int-to-long v1, v1

    cmp-long v5, v3, v1

    if-lez v5, :cond_4e

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/b/b/f;->e(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_4e
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/b/b/t;->a:[B

    iget v3, v0, Lcom/b/b/t;->b:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lcom/b/b/t;->b:I

    int-to-long v2, p3

    add-long v4, v2, p1

    long-to-int p3, v4

    iput p3, v0, Lcom/b/b/t;->b:I

    iget-wide v2, p0, Lcom/b/b/f;->b:J

    sub-long v4, v2, p1

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    iget p1, v0, Lcom/b/b/t;->b:I

    iget p2, v0, Lcom/b/b/t;->c:I

    if-ne p1, p2, :cond_75

    invoke-virtual {v0}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object p1

    iput-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-static {v0}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    :cond_75
    return-object v1
.end method

.method private c([B)V
    .registers 12

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_49

    array-length v1, p1

    sub-int/2addr v1, v0

    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, v0

    int-to-long v7, v1

    invoke-static/range {v3 .. v8}, Lcom/b/b/aa;->a(JJJ)V

    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    const/4 v3, -0x1

    if-nez v2, :cond_14

    const/4 v1, -0x1

    goto :goto_3f

    :cond_14
    iget v4, v2, Lcom/b/b/t;->c:I

    iget v5, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, v2, Lcom/b/b/t;->a:[B

    iget v5, v2, Lcom/b/b/t;->b:I

    invoke-static {v4, v5, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v2, Lcom/b/b/t;->b:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/b/b/t;->b:I

    iget-wide v4, p0, Lcom/b/b/f;->b:J

    int-to-long v6, v1

    sub-long v8, v4, v6

    iput-wide v8, p0, Lcom/b/b/f;->b:J

    iget v4, v2, Lcom/b/b/t;->b:I

    iget v5, v2, Lcom/b/b/t;->c:I

    if-ne v4, v5, :cond_3f

    invoke-virtual {v2}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v4

    iput-object v4, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-static {v2}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    :cond_3f
    :goto_3f
    if-ne v1, v3, :cond_47

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_47
    add-int/2addr v0, v1

    goto :goto_1

    :cond_49
    return-void
.end method

.method private k(J)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/b/b/aa;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lcom/b/b/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(B)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/b/b/f;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(BJ)J
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_e

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_15

    return-wide v3

    :cond_15
    iget-wide v5, p0, Lcom/b/b/f;->b:J

    sub-long v7, v5, p2

    cmp-long v5, v7, p2

    if-gez v5, :cond_2f

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    :goto_1f
    cmp-long v5, v0, p2

    if-lez v5, :cond_3f

    iget-object v2, v2, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget v5, v2, Lcom/b/b/t;->c:I

    iget v6, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long v7, v0, v5

    move-wide v0, v7

    goto :goto_1f

    :cond_2f
    :goto_2f
    iget v5, v2, Lcom/b/b/t;->c:I

    iget v6, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long v7, v0, v5

    cmp-long v5, v7, p2

    if-gez v5, :cond_3f

    iget-object v2, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide v0, v7

    goto :goto_2f

    :cond_3f
    :goto_3f
    iget-wide v5, p0, Lcom/b/b/f;->b:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_6e

    iget-object v5, v2, Lcom/b/b/t;->a:[B

    iget v6, v2, Lcom/b/b/t;->b:I

    int-to-long v6, v6

    add-long v8, v6, p2

    sub-long p2, v8, v0

    long-to-int p2, p2

    iget p3, v2, Lcom/b/b/t;->c:I

    :goto_51
    if-ge p2, p3, :cond_61

    aget-byte v6, v5, p2

    if-ne v6, p1, :cond_5e

    iget p1, v2, Lcom/b/b/t;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v2, p1, v0

    return-wide v2

    :cond_5e
    add-int/lit8 p2, p2, 0x1

    goto :goto_51

    :cond_61
    iget p2, v2, Lcom/b/b/t;->c:I

    iget p3, v2, Lcom/b/b/t;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long v5, v0, p2

    iget-object v2, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide p2, v5

    move-wide v0, p2

    goto :goto_3f

    :cond_6e
    return-wide v3
.end method

.method public final a(Lcom/b/b/f;J)J
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_24

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-wide v2, p0, Lcom/b/b/f;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_2d

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_2d
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_35

    iget-wide p2, p0, Lcom/b/b/f;->b:J

    :cond_35
    invoke-virtual {p1, p0, p2, p3}, Lcom/b/b/f;->a_(Lcom/b/b/f;J)V

    return-wide p2
.end method

.method public final a(Lcom/b/b/x;)J
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1c

    add-long v4, v0, v2

    move-wide v0, v4

    goto :goto_c

    :cond_1c
    return-wide v0
.end method

.method public final a(I)Lcom/b/b/f;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    :goto_4
    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    return-object p0

    :cond_8
    const/16 v1, 0x800

    if-ge p1, v1, :cond_17

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    :goto_10
    invoke-virtual {p0, v1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    goto :goto_4

    :cond_17
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_4a

    const v1, 0xd800

    if-lt p1, v1, :cond_3d

    const v1, 0xdfff

    if-gt p1, v1, :cond_3d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    :goto_41
    invoke-virtual {p0, v1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    goto :goto_10

    :cond_4a
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5d

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    goto :goto_41

    return-object p0

    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/b/b/f;JJ)Lcom/b/b/f;
    .registers 14

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_18

    return-object p0

    :cond_18
    iget-wide v2, p1, Lcom/b/b/f;->b:J

    add-long v4, v2, p4

    iput-wide v4, p1, Lcom/b/b/f;->b:J

    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    :goto_20
    iget v3, v2, Lcom/b/b/t;->c:I

    iget v4, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_36

    iget v3, v2, Lcom/b/b/t;->c:I

    iget v4, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, p2, v3

    iget-object v2, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide p2, v5

    goto :goto_20

    :cond_36
    :goto_36
    cmp-long v3, p4, v0

    if-lez v3, :cond_72

    new-instance v3, Lcom/b/b/t;

    invoke-direct {v3, v2}, Lcom/b/b/t;-><init>(Lcom/b/b/t;)V

    iget v4, v3, Lcom/b/b/t;->b:I

    int-to-long v4, v4

    add-long v6, v4, p2

    long-to-int p2, v6

    iput p2, v3, Lcom/b/b/t;->b:I

    iget p2, v3, Lcom/b/b/t;->b:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Lcom/b/b/t;->c:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lcom/b/b/t;->c:I

    iget-object p2, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez p2, :cond_5e

    iput-object v3, v3, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v3, v3, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object v3, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    goto :goto_65

    :cond_5e
    iget-object p2, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object p2, p2, Lcom/b/b/t;->g:Lcom/b/b/t;

    invoke-virtual {p2, v3}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    :goto_65
    iget p2, v3, Lcom/b/b/t;->c:I

    iget p3, v3, Lcom/b/b/t;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long v3, p4, p2

    iget-object v2, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide p2, v0

    move-wide p4, v3

    goto :goto_36

    :cond_72
    return-object p0
.end method

.method public final a(Lcom/b/b/i;)Lcom/b/b/f;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1, p0}, Lcom/b/b/i;->a(Lcom/b/b/f;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/b/b/f;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/b/b/f;->a(Ljava/lang/String;II)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;II)Lcom/b/b/f;
    .registers 11

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-gez p2, :cond_20

    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "beginIndex < 0: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    if-ge p3, p2, :cond_3e

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex < beginIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_64

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex > string.length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_64
    :goto_64
    if-ge p2, p3, :cond_11b

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_a5

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v2

    iget-object v3, v2, Lcom/b/b/t;->a:[B

    iget v4, v2, Lcom/b/b/t;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    :goto_84
    move p2, v6

    if-ge p2, v5, :cond_94

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v1, :cond_94

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    goto :goto_84

    :cond_94
    add-int/2addr v4, p2

    iget v0, v2, Lcom/b/b/t;->c:I

    sub-int/2addr v4, v0

    iget v0, v2, Lcom/b/b/t;->c:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/b/b/t;->c:I

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    int-to-long v2, v4

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    goto :goto_64

    :cond_a5
    const/16 v2, 0x800

    if-ge v0, v2, :cond_b9

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    :goto_ad
    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    add-int/lit8 p2, p2, 0x1

    goto :goto_64

    :cond_b9
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_10f

    const v2, 0xdfff

    if-le v0, v2, :cond_c6

    goto :goto_10f

    :cond_c6
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_cf

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_d0

    :cond_cf
    const/4 v5, 0x0

    :goto_d0
    const v6, 0xdbff

    if-gt v0, v6, :cond_109

    const v6, 0xdc00

    if-lt v5, v6, :cond_109

    if-le v5, v2, :cond_dd

    goto :goto_109

    :cond_dd
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_64

    :cond_109
    :goto_109
    invoke-virtual {p0, v3}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move p2, v4

    goto/16 :goto_64

    :cond_10f
    :goto_10f
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    goto :goto_ad

    :cond_11b
    return-object p0
.end method

.method public final a([B)Lcom/b/b/f;
    .registers 4

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/b/b/f;->a([BII)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final a([BII)Lcom/b/b/f;
    .registers 13

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/b/b/aa;->a(JJJ)V

    add-int/2addr p3, p2

    :goto_13
    if-ge p2, p3, :cond_32

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lcom/b/b/t;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/b/b/t;->a:[B

    iget v3, v0, Lcom/b/b/t;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, v0, Lcom/b/b/t;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/b/b/t;->c:I

    goto :goto_13

    :cond_32
    iget-wide p1, p0, Lcom/b/b/f;->b:J

    add-long v0, p1, v7

    iput-wide v0, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final a()Lcom/b/b/y;
    .registers 2

    sget-object v0, Lcom/b/b/y;->b:Lcom/b/b/y;

    return-object v0
.end method

.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/b/b/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(J)V
    .registers 6

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_c

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_c
    return-void
.end method

.method public final a_(Lcom/b/b/f;J)V
    .registers 12

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-ne p1, p0, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    iget-wide v0, p1, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    :goto_1c
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_112

    iget-object v0, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v0, v0, Lcom/b/b/t;->c:I

    iget-object v1, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v1, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    const/4 v0, 0x0

    if-gez v2, :cond_a6

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v1, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_6a

    iget-boolean v2, v1, Lcom/b/b/t;->e:Z

    if-eqz v2, :cond_6a

    iget v2, v1, Lcom/b/b/t;->c:I

    int-to-long v2, v2

    add-long v4, p2, v2

    iget-boolean v2, v1, Lcom/b/b/t;->d:Z

    if-eqz v2, :cond_4c

    const/4 v2, 0x0

    goto :goto_4e

    :cond_4c
    iget v2, v1, Lcom/b/b/t;->b:I

    :goto_4e
    int-to-long v2, v2

    sub-long v6, v4, v2

    const-wide/16 v2, 0x2000

    cmp-long v4, v6, v2

    if-gtz v4, :cond_6a

    iget-object v0, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/b/b/t;->a(Lcom/b/b/t;I)V

    iget-wide v0, p1, Lcom/b/b/f;->b:J

    sub-long v2, v0, p2

    iput-wide v2, p1, Lcom/b/b/f;->b:J

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    add-long v2, v0, p2

    iput-wide v2, p0, Lcom/b/b/f;->b:J

    return-void

    :cond_6a
    iget-object v1, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    long-to-int v2, p2

    if-lez v2, :cond_a0

    iget v3, v1, Lcom/b/b/t;->c:I

    iget v4, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_77

    goto :goto_a0

    :cond_77
    const/16 v3, 0x400

    if-lt v2, v3, :cond_81

    new-instance v3, Lcom/b/b/t;

    invoke-direct {v3, v1}, Lcom/b/b/t;-><init>(Lcom/b/b/t;)V

    goto :goto_8e

    :cond_81
    invoke-static {}, Lcom/b/b/u;->a()Lcom/b/b/t;

    move-result-object v3

    iget-object v4, v1, Lcom/b/b/t;->a:[B

    iget v5, v1, Lcom/b/b/t;->b:I

    iget-object v6, v3, Lcom/b/b/t;->a:[B

    invoke-static {v4, v5, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8e
    iget v4, v3, Lcom/b/b/t;->b:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/b/b/t;->c:I

    iget v4, v1, Lcom/b/b/t;->b:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/b/b/t;->b:I

    iget-object v1, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    invoke-virtual {v1, v3}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    iput-object v3, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    goto :goto_a6

    :cond_a0
    :goto_a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_a6
    :goto_a6
    iget-object v1, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v2, v1, Lcom/b/b/t;->c:I

    iget v3, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v4

    iput-object v4, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v4, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v4, :cond_c5

    iput-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v4, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iput-object v4, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v4, v0, Lcom/b/b/t;->f:Lcom/b/b/t;

    goto :goto_101

    :cond_c5
    iget-object v4, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v4, v4, Lcom/b/b/t;->g:Lcom/b/b/t;

    invoke-virtual {v4, v1}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    move-result-object v1

    iget-object v4, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    if-ne v4, v1, :cond_d7

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_d7
    iget-object v4, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget-boolean v4, v4, Lcom/b/b/t;->e:Z

    if-eqz v4, :cond_101

    iget v4, v1, Lcom/b/b/t;->c:I

    iget v5, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v4, v5

    iget-object v5, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget v5, v5, Lcom/b/b/t;->c:I

    rsub-int v5, v5, 0x2000

    iget-object v6, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget-boolean v6, v6, Lcom/b/b/t;->d:Z

    if-eqz v6, :cond_ef

    goto :goto_f3

    :cond_ef
    iget-object v0, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget v0, v0, Lcom/b/b/t;->b:I

    :goto_f3
    add-int/2addr v5, v0

    if-gt v4, v5, :cond_101

    iget-object v0, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    invoke-virtual {v1, v0, v4}, Lcom/b/b/t;->a(Lcom/b/b/t;I)V

    invoke-virtual {v1}, Lcom/b/b/t;->a()Lcom/b/b/t;

    invoke-static {v1}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    :cond_101
    :goto_101
    iget-wide v0, p1, Lcom/b/b/f;->b:J

    sub-long v4, v0, v2

    iput-wide v4, p1, Lcom/b/b/f;->b:J

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    sub-long v0, p2, v2

    move-wide p2, v0

    goto/16 :goto_1c

    :cond_112
    return-void
.end method

.method public final b(J)B
    .registers 9

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    :goto_a
    iget v1, v0, Lcom/b/b/t;->c:I

    iget v2, v0, Lcom/b/b/t;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_1d

    iget-object v1, v0, Lcom/b/b/t;->a:[B

    iget v0, v0, Lcom/b/b/t;->b:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    return p1

    :cond_1d
    const/4 v3, 0x0

    sub-long v3, p1, v1

    iget-object v0, v0, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide p1, v3

    goto :goto_a
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    return-wide v0
.end method

.method public final b(I)Lcom/b/b/f;
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    iget-object v1, v0, Lcom/b/b/t;->a:[B

    iget v2, v0, Lcom/b/b/t;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/b/b/t;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/b/b/g;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b([B)Lcom/b/b/g;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/b/b/f;->a([B)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b([BII)Lcom/b/b/g;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/b/b/f;->a([BII)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/b/b/i;)Z
    .registers 12

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_32

    iget-wide v2, p0, Lcom/b/b/f;->b:J

    const-wide/16 v4, 0x0

    sub-long v6, v2, v4

    int-to-long v2, v0

    cmp-long v8, v6, v2

    if-ltz v8, :cond_32

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1a

    return v1

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_30

    int-to-long v6, v2

    add-long v8, v6, v4

    invoke-virtual {p0, v8, v9}, Lcom/b/b/f;->b(J)B

    move-result v3

    add-int/lit8 v6, v2, 0x0

    invoke-virtual {p1, v6}, Lcom/b/b/i;->a(I)B

    move-result v6

    if-eq v3, v6, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_30
    const/4 p1, 0x1

    return p1

    :cond_32
    return v1
.end method

.method public final c()Lcom/b/b/f;
    .registers 1

    return-object p0
.end method

.method public final c(I)Lcom/b/b/f;
    .registers 8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    iget-object v1, v0, Lcom/b/b/t;->a:[B

    iget v2, v0, Lcom/b/b/t;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Lcom/b/b/t;->c:I

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final c(J)Lcom/b/b/i;
    .registers 4

    new-instance v0, Lcom/b/b/i;

    invoke-virtual {p0, p1, p2}, Lcom/b/b/f;->e(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/b/b/i;-><init>([B)V

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 7

    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    iget-wide v1, p0, Lcom/b/b/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    :cond_e
    new-instance v1, Lcom/b/b/t;

    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-direct {v1, v2}, Lcom/b/b/t;-><init>(Lcom/b/b/t;)V

    iput-object v1, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v1, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v2, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v3, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iput-object v3, v2, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v3, v1, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    :goto_23
    iget-object v1, v1, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-eq v1, v2, :cond_36

    iget-object v2, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v2, v2, Lcom/b/b/t;->g:Lcom/b/b/t;

    new-instance v3, Lcom/b/b/t;

    invoke-direct {v3, v1}, Lcom/b/b/t;-><init>(Lcom/b/b/t;)V

    invoke-virtual {v2, v3}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    goto :goto_23

    :cond_36
    iget-wide v1, p0, Lcom/b/b/f;->b:J

    iput-wide v1, v0, Lcom/b/b/f;->b:J

    return-object v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final d(I)Lcom/b/b/f;
    .registers 8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    iget-object v1, v0, Lcom/b/b/t;->a:[B

    iget v2, v0, Lcom/b/b/t;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Lcom/b/b/t;->c:I

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x4

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method final d(J)Ljava/lang/String;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 v0, 0x1

    if-lez v2, :cond_1c

    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/b/b/f;->b(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1c

    invoke-direct {p0, v2, v3}, Lcom/b/b/f;->k(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    :goto_18
    invoke-virtual {p0, v0, v1}, Lcom/b/b/f;->f(J)V

    return-object p1

    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/b/b/f;->k(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_18
.end method

.method public final d()Z
    .registers 6

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final e()B
    .registers 12

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v1, v0, Lcom/b/b/t;->b:I

    iget v2, v0, Lcom/b/b/t;->c:I

    iget-object v3, v0, Lcom/b/b/t;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v5, p0, Lcom/b/b/f;->b:J

    const-wide/16 v7, 0x1

    sub-long v9, v5, v7

    iput-wide v9, p0, Lcom/b/b/f;->b:J

    if-ne v4, v2, :cond_30

    invoke-virtual {v0}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v2

    iput-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-static {v0}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    return v1

    :cond_30
    iput v4, v0, Lcom/b/b/t;->b:I

    return v1
.end method

.method final e(I)Lcom/b/b/t;
    .registers 5

    if-lez p1, :cond_32

    const/16 v0, 0x2000

    if-le p1, v0, :cond_7

    goto :goto_32

    :cond_7
    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v1, :cond_1c

    invoke-static {}, Lcom/b/b/u;->a()Lcom/b/b/t;

    move-result-object p1

    iput-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iput-object v1, v0, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v1, p1, Lcom/b/b/t;->f:Lcom/b/b/t;

    return-object v1

    :cond_1c
    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v1, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget v2, v1, Lcom/b/b/t;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_29

    iget-boolean p1, v1, Lcom/b/b/t;->e:Z

    if-nez p1, :cond_31

    :cond_29
    invoke-static {}, Lcom/b/b/u;->a()Lcom/b/b/t;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    move-result-object v1

    :cond_31
    return-object v1

    :cond_32
    :goto_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final e(J)[B
    .registers 9

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    long-to-int p1, p1

    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lcom/b/b/f;->c([B)V

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/b/b/f;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/b/b/f;

    iget-wide v3, p0, Lcom/b/b/f;->b:J

    iget-wide v5, p1, Lcom/b/b/f;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/b/b/f;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1e

    return v0

    :cond_1e
    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object p1, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v3, v1, Lcom/b/b/t;->b:I

    iget v4, p1, Lcom/b/b/t;->b:I

    :goto_26
    iget-wide v7, p0, Lcom/b/b/f;->b:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_6c

    iget v7, v1, Lcom/b/b/t;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/b/b/t;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_3a
    int-to-long v10, v3

    cmp-long v12, v10, v7

    if-gez v12, :cond_53

    iget-object v10, v1, Lcom/b/b/t;->a:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Lcom/b/b/t;->a:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4e

    return v2

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_3a

    :cond_53
    iget v3, v1, Lcom/b/b/t;->c:I

    if-ne v4, v3, :cond_5c

    iget-object v1, v1, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget v3, v1, Lcom/b/b/t;->b:I

    goto :goto_5d

    :cond_5c
    move v3, v4

    :goto_5d
    iget v4, p1, Lcom/b/b/t;->c:I

    if-ne v9, v4, :cond_66

    iget-object p1, p1, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget v4, p1, Lcom/b/b/t;->b:I

    goto :goto_67

    :cond_66
    move v4, v9

    :goto_67
    const/4 v9, 0x0

    add-long v9, v5, v7

    move-wide v5, v9

    goto :goto_26

    :cond_6c
    return v0
.end method

.method public final synthetic f(I)Lcom/b/b/g;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/b/b/f;->d(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final f()S
    .registers 11

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/b/b/f;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v1, v0, Lcom/b/b/t;->b:I

    iget v4, v0, Lcom/b/b/t;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3a

    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_3a
    iget-object v5, v0, Lcom/b/b/t;->a:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    iget-wide v5, p0, Lcom/b/b/f;->b:J

    sub-long v8, v5, v2

    iput-wide v8, p0, Lcom/b/b/f;->b:J

    if-ne v7, v4, :cond_5d

    invoke-virtual {v0}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v2

    iput-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-static {v0}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    goto :goto_5f

    :cond_5d
    iput v7, v0, Lcom/b/b/t;->b:I

    :goto_5f
    int-to-short v0, v1

    return v0
.end method

.method public final f(J)V
    .registers 10

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_46

    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v0, :cond_10

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_10
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v0, v0, Lcom/b/b/t;->c:I

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v1, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/b/b/f;->b:J

    int-to-long v3, v0

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/b/b/f;->b:J

    sub-long v1, p1, v3

    iget-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget p2, p1, Lcom/b/b/t;->b:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/b/b/t;->b:I

    iget-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget p1, p1, Lcom/b/b/t;->b:I

    iget-object p2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget p2, p2, Lcom/b/b/t;->c:I

    if-ne p1, p2, :cond_44

    iget-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-virtual {p1}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object p2

    iput-object p2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-static {p1}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    :cond_44
    move-wide p1, v1

    goto :goto_0

    :cond_46
    return-void
.end method

.method public final flush()V
    .registers 1

    return-void
.end method

.method public final g()I
    .registers 11

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/b/b/f;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v1, v0, Lcom/b/b/t;->b:I

    iget v4, v0, Lcom/b/b/t;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_4b

    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_4b
    iget-object v5, v0, Lcom/b/b/t;->a:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    iget-wide v5, p0, Lcom/b/b/f;->b:J

    sub-long v8, v5, v2

    iput-wide v8, p0, Lcom/b/b/f;->b:J

    if-ne v7, v4, :cond_80

    invoke-virtual {v0}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v2

    iput-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-static {v0}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    return v1

    :cond_80
    iput v7, v0, Lcom/b/b/t;->b:I

    return v1
.end method

.method public final g(J)Lcom/b/b/f;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v2, 0x0

    cmp-long v3, p1, v0

    const/4 v4, 0x1

    if-gez v3, :cond_20

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1f

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    move-result-object p1

    return-object p1

    :cond_1f
    const/4 v2, 0x1

    :cond_20
    const-wide/32 v5, 0x5f5e100

    cmp-long v3, p1, v5

    const-wide/16 v5, 0xa

    if-gez v3, :cond_6c

    const-wide/16 v7, 0x2710

    cmp-long v3, p1, v7

    if-gez v3, :cond_4a

    const-wide/16 v7, 0x64

    cmp-long v3, p1, v7

    if-gez v3, :cond_3e

    cmp-long v3, p1, v5

    if-gez v3, :cond_3b

    goto/16 :goto_e4

    :cond_3b
    const/4 v4, 0x2

    goto/16 :goto_e4

    :cond_3e
    const-wide/16 v3, 0x3e8

    cmp-long v7, p1, v3

    if-gez v7, :cond_47

    const/4 v4, 0x3

    goto/16 :goto_e4

    :cond_47
    const/4 v4, 0x4

    goto/16 :goto_e4

    :cond_4a
    const-wide/32 v3, 0xf4240

    cmp-long v7, p1, v3

    if-gez v7, :cond_5e

    const-wide/32 v3, 0x186a0

    cmp-long v7, p1, v3

    if-gez v7, :cond_5b

    const/4 v4, 0x5

    goto/16 :goto_e4

    :cond_5b
    const/4 v4, 0x6

    goto/16 :goto_e4

    :cond_5e
    const-wide/32 v3, 0x989680

    cmp-long v7, p1, v3

    if-gez v7, :cond_68

    const/4 v4, 0x7

    goto/16 :goto_e4

    :cond_68
    const/16 v4, 0x8

    goto/16 :goto_e4

    :cond_6c
    const-wide v3, 0xe8d4a51000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_9a

    const-wide v3, 0x2540be400L

    cmp-long v7, p1, v3

    if-gez v7, :cond_8b

    const-wide/32 v3, 0x3b9aca00

    cmp-long v7, p1, v3

    if-gez v7, :cond_88

    const/16 v4, 0x9

    goto :goto_e4

    :cond_88
    const/16 v4, 0xa

    goto :goto_e4

    :cond_8b
    const-wide v3, 0x174876e800L

    cmp-long v7, p1, v3

    if-gez v7, :cond_97

    const/16 v4, 0xb

    goto :goto_e4

    :cond_97
    const/16 v4, 0xc

    goto :goto_e4

    :cond_9a
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_be

    const-wide v3, 0x9184e72a000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_af

    const/16 v4, 0xd

    goto :goto_e4

    :cond_af
    const-wide v3, 0x5af3107a4000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_bb

    const/16 v4, 0xe

    goto :goto_e4

    :cond_bb
    const/16 v4, 0xf

    goto :goto_e4

    :cond_be
    const-wide v3, 0x16345785d8a0000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_d6

    const-wide v3, 0x2386f26fc10000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_d3

    const/16 v4, 0x10

    goto :goto_e4

    :cond_d3
    const/16 v4, 0x11

    goto :goto_e4

    :cond_d6
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_e2

    const/16 v4, 0x12

    goto :goto_e4

    :cond_e2
    const/16 v4, 0x13

    :goto_e4
    if-eqz v2, :cond_e8

    add-int/lit8 v4, v4, 0x1

    :cond_e8
    invoke-virtual {p0, v4}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v3

    iget-object v7, v3, Lcom/b/b/t;->a:[B

    iget v8, v3, Lcom/b/b/t;->c:I

    add-int/2addr v8, v4

    :goto_f1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_102

    rem-long v9, p1, v5

    long-to-int v9, v9

    add-int/lit8 v8, v8, -0x1

    sget-object v10, Lcom/b/b/f;->c:[B

    aget-byte v9, v10, v9

    aput-byte v9, v7, v8

    div-long/2addr p1, v5

    goto :goto_f1

    :cond_102
    if-eqz v2, :cond_10a

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    aput-byte p1, v7, v8

    :cond_10a
    iget p1, v3, Lcom/b/b/t;->c:I

    add-int/2addr p1, v4

    iput p1, v3, Lcom/b/b/t;->c:I

    iget-wide p1, p0, Lcom/b/b/f;->b:J

    int-to-long v0, v4

    add-long v2, p1, v0

    iput-wide v2, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final synthetic g(I)Lcom/b/b/g;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/b/b/f;->c(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final h(J)Lcom/b/b/f;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v2

    iget-object v3, v2, Lcom/b/b/t;->a:[B

    iget v4, v2, Lcom/b/b/t;->c:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Lcom/b/b/t;->c:I

    :goto_26
    if-lt v4, v5, :cond_37

    sget-object v6, Lcom/b/b/f;->c:[B

    const-wide/16 v7, 0xf

    and-long v9, p1, v7

    long-to-int v7, v9

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    ushr-long/2addr p1, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    :cond_37
    iget p1, v2, Lcom/b/b/t;->c:I

    add-int/2addr p1, v0

    iput p1, v2, Lcom/b/b/t;->c:I

    iget-wide p1, p0, Lcom/b/b/f;->b:J

    int-to-long v0, v0

    add-long v2, p1, v0

    iput-wide v2, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final synthetic h(I)Lcom/b/b/g;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final h()S
    .registers 2

    invoke-virtual {p0}, Lcom/b/b/f;->f()S

    move-result v0

    invoke-static {v0}, Lcom/b/b/aa;->a(S)S

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget v2, v0, Lcom/b/b/t;->b:I

    iget v3, v0, Lcom/b/b/t;->c:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/b/b/t;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    iget-object v0, v0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public final i()I
    .registers 2

    invoke-virtual {p0}, Lcom/b/b/f;->g()I

    move-result v0

    invoke-static {v0}, Lcom/b/b/aa;->a(I)I

    move-result v0

    return v0
.end method

.method public final synthetic i(J)Lcom/b/b/g;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/b/b/f;->h(J)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final j()J
    .registers 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/b/b/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_12

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    const/4 v1, 0x0

    move-wide v5, v3

    const/4 v2, 0x0

    :cond_15
    iget-object v7, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v8, v7, Lcom/b/b/t;->a:[B

    iget v9, v7, Lcom/b/b/t;->b:I

    iget v10, v7, Lcom/b/b/t;->c:I

    :goto_1d
    if-ge v9, v10, :cond_97

    aget-byte v11, v8, v9

    const/16 v12, 0x30

    if-lt v11, v12, :cond_2c

    const/16 v12, 0x39

    if-gt v11, v12, :cond_2c

    add-int/lit8 v12, v11, -0x30

    goto :goto_44

    :cond_2c
    const/16 v12, 0x61

    if-lt v11, v12, :cond_39

    const/16 v12, 0x66

    if-gt v11, v12, :cond_39

    add-int/lit8 v12, v11, -0x61

    :goto_36
    add-int/lit8 v12, v12, 0xa

    goto :goto_44

    :cond_39
    const/16 v12, 0x41

    if-lt v11, v12, :cond_7c

    const/16 v12, 0x46

    if-gt v11, v12, :cond_7c

    add-int/lit8 v12, v11, -0x41

    goto :goto_36

    :goto_44
    const-wide/high16 v13, -0x1000000000000000L    # -3.105036184601418E231

    and-long v15, v5, v13

    cmp-long v13, v15, v3

    if-eqz v13, :cond_71

    new-instance v1, Lcom/b/b/f;

    invoke-direct {v1}, Lcom/b/b/f;-><init>()V

    invoke-virtual {v1, v5, v6}, Lcom/b/b/f;->h(J)Lcom/b/b/f;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move-result-object v1

    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number too large: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/b/b/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_71
    const/4 v11, 0x4

    shl-long/2addr v5, v11

    int-to-long v11, v12

    or-long v13, v5, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v1, v1, 0x1

    move-wide v5, v13

    goto :goto_1d

    :cond_7c
    if-nez v1, :cond_96

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_96
    const/4 v2, 0x1

    :cond_97
    if-ne v9, v10, :cond_a3

    invoke-virtual {v7}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v8

    iput-object v8, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-static {v7}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    goto :goto_a5

    :cond_a3
    iput v9, v7, Lcom/b/b/t;->b:I

    :goto_a5
    if-nez v2, :cond_ab

    iget-object v7, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v7, :cond_15

    :cond_ab
    iget-wide v2, v0, Lcom/b/b/f;->b:J

    int-to-long v7, v1

    sub-long v9, v2, v7

    iput-wide v9, v0, Lcom/b/b/f;->b:J

    return-wide v5
.end method

.method public final synthetic j(J)Lcom/b/b/g;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/b/b/f;->g(J)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final k()Lcom/b/b/i;
    .registers 3

    new-instance v0, Lcom/b/b/i;

    invoke-virtual {p0}, Lcom/b/b/f;->n()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/b/i;-><init>([B)V

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    sget-object v2, Lcom/b/b/aa;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2}, Lcom/b/b/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final m()Ljava/lang/String;
    .registers 12

    const/16 v0, 0xa

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/b/f;->a(BJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_4d

    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x20

    iget-wide v3, p0, Lcom/b/b/f;->b:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-object v5, p0

    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/b/b/f;->a(Lcom/b/b/f;JJ)Lcom/b/b/f;

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/b/b/f;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/b/b/f;->k()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d
    invoke-virtual {p0, v0, v1}, Lcom/b/b/f;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()[B
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/b/b/f;->e(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final o()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/b/b/f;->f(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic p()Lcom/b/b/g;
    .registers 1

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/b/b/f;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    long-to-int v0, v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/b/b/i;->b:Lcom/b/b/i;

    goto :goto_2d

    :cond_27
    new-instance v1, Lcom/b/b/v;

    invoke-direct {v1, p0, v0}, Lcom/b/b/v;-><init>(Lcom/b/b/f;I)V

    move-object v0, v1

    :goto_2d
    invoke-virtual {v0}, Lcom/b/b/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
