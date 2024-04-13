.class public Lcom/umeng/commonsdk/proguard/at;
.super Lcom/umeng/commonsdk/proguard/az;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/at$b;,
        Lcom/umeng/commonsdk/proguard/at$a;
    }
.end annotation


# static fields
.field private static final d:Lcom/umeng/commonsdk/proguard/be;

.field private static final e:Lcom/umeng/commonsdk/proguard/au;

.field private static final f:[B

.field private static final h:B = -0x7et

.field private static final i:B = 0x1t

.field private static final j:B = 0x1ft

.field private static final k:B = -0x20t

.field private static final l:I = 0x5


# instance fields
.field a:[B

.field b:[B

.field c:[B

.field private m:Lcom/umeng/commonsdk/proguard/y;

.field private n:S

.field private o:Lcom/umeng/commonsdk/proguard/au;

.field private p:Ljava/lang/Boolean;

.field private final q:J

.field private r:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/umeng/commonsdk/proguard/be;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/be;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/at;->d:Lcom/umeng/commonsdk/proguard/be;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/at;->e:Lcom/umeng/commonsdk/proguard/au;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    aput-byte v2, v0, v2

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/4 v1, 0x3

    aput-byte v1, v0, v1

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/4 v1, 0x4

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/16 v3, 0x8

    const/4 v4, 0x5

    aput-byte v4, v0, v3

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/16 v4, 0xa

    aput-byte v2, v0, v4

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/16 v2, 0xf

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/16 v2, 0xe

    aput-byte v4, v0, v2

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    const/16 v1, 0xc

    aput-byte v1, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/bn;)V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/commonsdk/proguard/at;-><init>(Lcom/umeng/commonsdk/proguard/bn;J)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/bn;J)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/az;-><init>(Lcom/umeng/commonsdk/proguard/bn;)V

    new-instance p1, Lcom/umeng/commonsdk/proguard/y;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/proguard/y;-><init>(I)V

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->m:Lcom/umeng/commonsdk/proguard/y;

    const/4 p1, 0x0

    iput-short p1, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->o:Lcom/umeng/commonsdk/proguard/au;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->p:Ljava/lang/Boolean;

    const/4 p1, 0x5

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->a:[B

    const/16 p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->b:[B

    const/4 p1, 0x1

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->r:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->c:[B

    iput-wide p2, p0, Lcom/umeng/commonsdk/proguard/at;->q:J

    return-void
.end method

.method private E()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x5

    if-lt v0, v3, :cond_33

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v0

    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1a
    add-int v6, v3, v1

    aget-byte v6, v0, v6

    and-int/lit8 v7, v6, 0x7f

    shl-int/2addr v7, v5

    or-int/2addr v4, v7

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_2a

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V

    move v1, v4

    return v1

    :cond_33
    const/4 v0, 0x0

    :goto_34
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->u()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v0

    or-int/2addr v1, v4

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_42

    add-int/lit8 v0, v0, 0x7

    goto :goto_34

    :cond_42
    return v1
.end method

.method private F()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    const-wide/16 v3, 0x0

    const/16 v5, 0xa

    if-lt v0, v5, :cond_39

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v0

    iget-object v5, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v5}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v5

    const/4 v6, 0x0

    :goto_1c
    add-int v7, v5, v1

    aget-byte v7, v0, v7

    and-int/lit8 v8, v7, 0x7f

    int-to-long v8, v8

    shl-long/2addr v8, v6

    or-long v10, v3, v8

    and-int/lit16 v3, v7, 0x80

    if-ne v3, v2, :cond_30

    add-int/lit8 v6, v6, 0x7

    add-int/lit8 v1, v1, 0x1

    move-wide v3, v10

    goto :goto_1c

    :cond_30
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V

    move-wide v7, v10

    return-wide v7

    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->u()B

    move-result v0

    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long v7, v3, v5

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4a

    add-int/lit8 v1, v1, 0x7

    move-wide v3, v7

    goto :goto_39

    :cond_4a
    return-wide v7
.end method

.method private a([B)J
    .registers 10

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long v4, v0, v2

    const/16 v0, 0x38

    shl-long v0, v4, v0

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long v6, v4, v2

    const/16 v4, 0x30

    shl-long v4, v6, v4

    or-long v6, v0, v4

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x28

    shl-long v0, v4, v0

    or-long v4, v6, v0

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x20

    shl-long v0, v6, v0

    or-long v6, v4, v0

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x18

    shl-long v0, v4, v0

    or-long v4, v6, v0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x10

    shl-long v0, v6, v0

    or-long v6, v4, v0

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x8

    shl-long v0, v4, v0

    or-long v4, v6, v0

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    int-to-long v0, p1

    and-long v6, v0, v2

    or-long v0, v4, v6

    return-wide v0
.end method

.method private a(J[BI)V
    .registers 12

    add-int/lit8 v0, p4, 0x0

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x1

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long v5, v3, v1

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x2

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long v5, v3, v1

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x3

    const/16 v3, 0x18

    shr-long v3, p1, v3

    and-long v5, v3, v1

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x4

    const/16 v3, 0x20

    shr-long v3, p1, v3

    and-long v5, v3, v1

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x5

    const/16 v3, 0x28

    shr-long v3, p1, v3

    and-long v5, v3, v1

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x6

    const/16 v3, 0x30

    shr-long v3, p1, v3

    and-long v5, v3, v1

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 p4, p4, 0x7

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    and-long v3, p1, v1

    long-to-int p1, v3

    int-to-byte p1, p1

    aput-byte p1, p3, p4

    return-void
.end method

.method private a(Lcom/umeng/commonsdk/proguard/au;B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    iget-byte p2, p1, Lcom/umeng/commonsdk/proguard/au;->b:B

    invoke-direct {p0, p2}, Lcom/umeng/commonsdk/proguard/at;->e(B)B

    move-result p2

    :cond_9
    iget-short v0, p1, Lcom/umeng/commonsdk/proguard/au;->c:S

    iget-short v1, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    if-le v0, v1, :cond_24

    iget-short v0, p1, Lcom/umeng/commonsdk/proguard/au;->c:S

    iget-short v1, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    sub-int/2addr v0, v1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_24

    iget-short v0, p1, Lcom/umeng/commonsdk/proguard/au;->c:S

    iget-short v1, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/umeng/commonsdk/proguard/at;->d(I)V

    goto :goto_2c

    :cond_24
    invoke-direct {p0, p2}, Lcom/umeng/commonsdk/proguard/at;->b(B)V

    iget-short p2, p1, Lcom/umeng/commonsdk/proguard/au;->c:S

    invoke-virtual {p0, p2}, Lcom/umeng/commonsdk/proguard/at;->a(S)V

    :goto_2c
    iget-short p1, p1, Lcom/umeng/commonsdk/proguard/au;->c:S

    iput-short p1, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    return-void
.end method

.method private a([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/umeng/commonsdk/proguard/at;->b(I)V

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V

    return-void
.end method

.method private b(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->r:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->r:[B

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bn;->b([B)V

    return-void
.end method

.method private b(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->a:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/at;->a:[B

    invoke-virtual {p1, v1, v0, v3}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V

    return-void

    :cond_15
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->a:[B

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    ushr-int/lit8 p1, p1, 0x7

    move v1, v3

    goto :goto_2
.end method

.method private b(J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const-wide/16 v2, -0x80

    and-long v4, p1, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_1c

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->b:[B

    add-int/lit8 v3, v1, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/at;->b:[B

    invoke-virtual {p1, p2, v0, v3}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V

    return-void

    :cond_1c
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->b:[B

    add-int/lit8 v3, v1, 0x1

    const-wide/16 v4, 0x7f

    and-long v6, p1, v4

    const-wide/16 v4, 0x80

    or-long v8, v6, v4

    long-to-int v4, v8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    move v1, v3

    goto :goto_2
.end method

.method private c(I)I
    .registers 3

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    return p1
.end method

.method private c(J)J
    .registers 7

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long v2, v0, p1

    return-wide v2
.end method

.method private c(B)Z
    .registers 4

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    return v0

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    return v0
.end method

.method private d(B)B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ba;
        }
    .end annotation

    const/16 v0, 0xf

    and-int/2addr p1, v0

    int-to-byte p1, p1

    packed-switch p1, :pswitch_data_38

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "don\'t know what type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    const/16 p1, 0xc

    return p1

    :pswitch_1e
    const/16 p1, 0xd

    return p1

    :pswitch_21
    const/16 p1, 0xe

    return p1

    :pswitch_24
    return v0

    :pswitch_25
    const/16 p1, 0xb

    return p1

    :pswitch_28
    const/4 p1, 0x4

    return p1

    :pswitch_2a
    const/16 p1, 0xa

    return p1

    :pswitch_2d
    const/16 p1, 0x8

    return p1

    :pswitch_30
    const/4 p1, 0x6

    return p1

    :pswitch_32
    const/4 p1, 0x3

    return p1

    :pswitch_34
    const/4 p1, 0x2

    return p1

    :pswitch_36
    const/4 p1, 0x0

    return p1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_36
        :pswitch_34
        :pswitch_34
        :pswitch_32
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_28
        :pswitch_25
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method private d(J)J
    .registers 9

    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long v4, p1, v2

    neg-long p1, v4

    xor-long v2, v0, p1

    return-wide v2
.end method

.method private d(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->b(B)V

    return-void
.end method

.method private e(B)B
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->f:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method private e(I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    new-array p1, v0, [B

    return-object p1

    :cond_6
    new-array v1, p1, [B

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2, v1, v0, p1}, Lcom/umeng/commonsdk/proguard/bn;->d([BII)I

    return-object v1
.end method

.method private f(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ba;
        }
    .end annotation

    if-gez p1, :cond_16

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-wide v0, p0, Lcom/umeng/commonsdk/proguard/at;->q:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_39

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/umeng/commonsdk/proguard/at;->q:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_39

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length exceeded max allowed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    return-void
.end method

.method private g(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public A()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->f(I)V

    const/4 v1, 0x0

    if-nez v0, :cond_11

    new-array v0, v1, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_11
    new-array v2, v0, [B

    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v3, v2, v1, v0}, Lcom/umeng/commonsdk/proguard/bn;->d([BII)I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public B()V
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->m:Lcom/umeng/commonsdk/proguard/y;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/y;->c()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    return-void
.end method

.method public a()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public a(B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->b(B)V

    return-void
.end method

.method protected a(BI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/16 v0, 0xe

    if-gt p2, v0, :cond_f

    shl-int/lit8 p2, p2, 0x4

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->e(B)B

    move-result p1

    or-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->d(I)V

    return-void

    :cond_f
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->e(B)B

    move-result p1

    or-int/lit16 p1, p1, 0xf0

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->d(I)V

    invoke-direct {p0, p2}, Lcom/umeng/commonsdk/proguard/at;->b(I)V

    return-void
.end method

.method public a(D)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/umeng/commonsdk/proguard/at;->a(J[BI)V

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bn;->b([B)V

    return-void

    nop

    :array_16
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public a(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->c(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->b(I)V

    return-void
.end method

.method public a(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/at;->c(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/at;->b(J)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/au;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->o:Lcom/umeng/commonsdk/proguard/au;

    return-void

    :cond_8
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(Lcom/umeng/commonsdk/proguard/au;B)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/av;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/av;->a:B

    iget p1, p1, Lcom/umeng/commonsdk/proguard/av;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/umeng/commonsdk/proguard/at;->a(BI)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/aw;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget v0, p1, Lcom/umeng/commonsdk/proguard/aw;->c:I

    if-nez v0, :cond_9

    const/4 p1, 0x0

    :goto_5
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->d(I)V

    return-void

    :cond_9
    iget v0, p1, Lcom/umeng/commonsdk/proguard/aw;->c:I

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->b(I)V

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/aw;->a:B

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->e(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    iget-byte p1, p1, Lcom/umeng/commonsdk/proguard/aw;->b:B

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->e(B)B

    move-result p1

    or-int/2addr p1, v0

    goto :goto_5
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ax;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/16 v0, -0x7e

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->b(B)V

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/ax;->b:B

    shl-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, -0x20

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->d(I)V

    iget v0, p1, Lcom/umeng/commonsdk/proguard/ax;->c:I

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->b(I)V

    iget-object p1, p1, Lcom/umeng/commonsdk/proguard/ax;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/bd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/bd;->a:B

    iget p1, p1, Lcom/umeng/commonsdk/proguard/bd;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/umeng/commonsdk/proguard/at;->a(BI)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/be;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->m:Lcom/umeng/commonsdk/proguard/y;

    iget-short v0, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/y;->a(S)V

    const/4 p1, 0x0

    iput-short p1, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/commonsdk/proguard/at;->a([BII)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    new-instance p1, Lcom/umeng/commonsdk/proguard/ag;

    const-string v0, "UTF-8 not supported!"

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr v2, p1

    invoke-direct {p0, v1, v2, v0}, Lcom/umeng/commonsdk/proguard/at;->a([BII)V

    return-void
.end method

.method public a(S)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->c(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;->b(I)V

    return-void
.end method

.method public a(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->o:Lcom/umeng/commonsdk/proguard/au;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->o:Lcom/umeng/commonsdk/proguard/au;

    if-eqz p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/proguard/at;->a(Lcom/umeng/commonsdk/proguard/au;B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/at;->o:Lcom/umeng/commonsdk/proguard/au;

    return-void

    :cond_12
    if-eqz p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    invoke-direct {p0, v1}, Lcom/umeng/commonsdk/proguard/at;->b(B)V

    return-void
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->m:Lcom/umeng/commonsdk/proguard/y;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/y;->a()S

    move-result v0

    iput-short v0, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    return-void
.end method

.method public c()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->b(B)V

    return-void
.end method

.method public e()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public f()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public g()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public h()Lcom/umeng/commonsdk/proguard/ax;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->u()B

    move-result v0

    const/16 v1, -0x7e

    if-eq v0, v1, :cond_2c

    new-instance v2, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected protocol id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but got "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->u()B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    int-to-byte v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4a

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected version 1 but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at;->E()I

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->z()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/commonsdk/proguard/ax;

    invoke-direct {v3, v2, v0, v1}, Lcom/umeng/commonsdk/proguard/ax;-><init>(Ljava/lang/String;BI)V

    return-object v3
.end method

.method public i()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public j()Lcom/umeng/commonsdk/proguard/be;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->m:Lcom/umeng/commonsdk/proguard/y;

    iget-short v1, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/y;->a(S)V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->d:Lcom/umeng/commonsdk/proguard/be;

    return-object v0
.end method

.method public k()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->m:Lcom/umeng/commonsdk/proguard/y;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/y;->a()S

    move-result v0

    iput-short v0, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    return-void
.end method

.method public l()Lcom/umeng/commonsdk/proguard/au;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->u()B

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/umeng/commonsdk/proguard/at;->e:Lcom/umeng/commonsdk/proguard/au;

    return-object v0

    :cond_9
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->v()S

    move-result v1

    goto :goto_19

    :cond_15
    iget-short v2, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    add-int/2addr v2, v1

    int-to-short v1, v2

    :goto_19
    new-instance v2, Lcom/umeng/commonsdk/proguard/au;

    const-string v3, ""

    and-int/lit8 v4, v0, 0xf

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/umeng/commonsdk/proguard/at;->d(B)B

    move-result v5

    invoke-direct {v2, v3, v5, v1}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->c(B)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    if-ne v4, v0, :cond_33

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_35

    :cond_33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_35
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->p:Ljava/lang/Boolean;

    :cond_37
    iget-short v0, v2, Lcom/umeng/commonsdk/proguard/au;->c:S

    iput-short v0, p0, Lcom/umeng/commonsdk/proguard/at;->n:S

    return-object v2
.end method

.method public m()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public n()Lcom/umeng/commonsdk/proguard/aw;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at;->E()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->u()B

    move-result v1

    :goto_c
    new-instance v2, Lcom/umeng/commonsdk/proguard/aw;

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/umeng/commonsdk/proguard/at;->d(B)B

    move-result v3

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/umeng/commonsdk/proguard/at;->d(B)B

    move-result v1

    invoke-direct {v2, v3, v1, v0}, Lcom/umeng/commonsdk/proguard/aw;-><init>(BBI)V

    return-object v2
.end method

.method public o()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public p()Lcom/umeng/commonsdk/proguard/av;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->u()B

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    const/16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at;->E()I

    move-result v1

    :cond_f
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->d(B)B

    move-result v0

    new-instance v2, Lcom/umeng/commonsdk/proguard/av;

    invoke-direct {v2, v0, v1}, Lcom/umeng/commonsdk/proguard/av;-><init>(BI)V

    return-object v2
.end method

.method public q()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public r()Lcom/umeng/commonsdk/proguard/bd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    new-instance v0, Lcom/umeng/commonsdk/proguard/bd;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->p()Lcom/umeng/commonsdk/proguard/av;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/bd;-><init>(Lcom/umeng/commonsdk/proguard/av;)V

    return-object v0
.end method

.method public s()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    return-void
.end method

.method public t()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/at;->p:Ljava/lang/Boolean;

    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/at;->u()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    return v1

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public u()B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v2

    aget-byte v0, v0, v2

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2, v1}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V

    return v0

    :cond_1d
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->c:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/umeng/commonsdk/proguard/bn;->d([BII)I

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/at;->c:[B

    aget-byte v0, v0, v3

    return v0
.end method

.method public v()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->g(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public w()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->g(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at;->F()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/proguard/at;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/umeng/commonsdk/proguard/bn;->d([BII)I

    invoke-direct {p0, v1}, Lcom/umeng/commonsdk/proguard/at;->a([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->f(I)V

    if-nez v0, :cond_c

    const-string v0, ""

    return-object v0

    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v1

    if-lt v1, v0, :cond_2d

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/at;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2, v0}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V

    return-object v1

    :cond_2d
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/at;->e(I)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_38
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_38} :catch_39

    return-object v1

    :catch_39
    new-instance v0, Lcom/umeng/commonsdk/proguard/ag;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    throw v0
.end method
