.class public Lcom/umeng/commonsdk/proguard/x;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(BIZ)B
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/x;->a(IIZ)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static final a(IIZ)I
    .registers 3

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    shl-int p1, p2, p1

    or-int/2addr p0, p1

    return p0

    :cond_7
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/x;->b(II)I

    move-result p0

    return p0
.end method

.method public static final a([B)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/x;->a([BI)I

    move-result p0

    return p0
.end method

.method public static final a([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static final a(JIZ)J
    .registers 6

    if-eqz p3, :cond_9

    const-wide/16 v0, 0x1

    shl-long p2, v0, p2

    or-long v0, p0, p2

    return-wide v0

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/x;->b(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final a(SIZ)S
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/x;->a(IIZ)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static final a(I[B)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/x;->a(I[BI)V

    return-void
.end method

.method public static final a(I[BI)V
    .registers 5

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static final a(BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/x;->a(II)Z

    move-result p0

    return p0
.end method

.method public static final a(II)Z
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(JI)Z
    .registers 7

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    and-long v2, p0, v0

    const-wide/16 p0, 0x0

    cmp-long p2, v2, p0

    if-eqz p2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(SI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/x;->a(II)Z

    move-result p0

    return p0
.end method

.method public static final b(BI)B
    .registers 2

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/x;->b(II)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static final b(II)I
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method public static final b(JI)J
    .registers 9

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    const-wide/16 v2, -0x1

    xor-long v4, v0, v2

    and-long v0, p0, v4

    return-wide v0
.end method

.method public static final b(SI)S
    .registers 2

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/x;->b(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method
