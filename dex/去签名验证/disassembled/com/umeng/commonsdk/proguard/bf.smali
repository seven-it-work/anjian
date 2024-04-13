.class public final Lcom/umeng/commonsdk/proguard/bf;
.super Lcom/umeng/commonsdk/proguard/at;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/bf$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/proguard/bn;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/at;-><init>(Lcom/umeng/commonsdk/proguard/bn;)V

    return-void
.end method

.method public static a([B)Ljava/util/BitSet;
    .registers 6

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_1f

    array-length v2, p0

    div-int/lit8 v3, v1, 0x8

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    rem-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-lez v2, :cond_1c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1f
    return-object v0
.end method

.method public static b(Ljava/util/BitSet;I)[B
    .registers 7

    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-array p1, p1, [B

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_2a

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_27

    array-length v1, p1

    div-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v3, p1, v1

    rem-int/lit8 v4, v0, 0x8

    shl-int/2addr v2, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2a
    return-object p1
.end method


# virtual methods
.method public final D()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/bh;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/umeng/commonsdk/proguard/bk;

    return-object v0
.end method

.method public final a(Ljava/util/BitSet;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/proguard/bf;->b(Ljava/util/BitSet;I)[B

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_10

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/bf;->a(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public final b(I)Ljava/util/BitSet;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p1, :cond_17

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/bf;->u()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/bf;->a([B)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method
