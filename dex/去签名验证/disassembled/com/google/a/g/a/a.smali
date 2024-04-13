.class public abstract Lcom/google/a/g/a/a;
.super Lcom/google/a/g/r;


# static fields
.field private static final g:F = 0.2f

.field private static final h:F = 0.45f

.field private static final i:F = 0.7916667f

.field private static final j:F = 0.89285713f


# instance fields
.field protected final a:[I

.field protected final b:[I

.field protected final c:[F

.field protected final d:[F

.field protected final e:[I

.field protected final f:[I


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/a/g/r;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/a/g/a/a;->a:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/a/g/a/a;->b:[I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/a/g/a/a;->c:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/a/g/a/a;->d:[F

    iget-object v0, p0, Lcom/google/a/g/a/a;->b:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/a/a;->e:[I

    iget-object v0, p0, Lcom/google/a/g/a/a;->b:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/a/a;->f:[I

    return-void
.end method

.method protected static a([I[[I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    aget-object v1, p1, v0

    const v2, 0x3ee66666    # 0.45f

    invoke-static {p0, v1, v2}, Lcom/google/a/g/a/a;->a([I[IF)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    return v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method protected static a([I[F)V
    .registers 7

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    :goto_6
    array-length v4, p0

    if-ge v0, v4, :cond_15

    aget v4, p1, v0

    cmpl-float v4, v4, v1

    if-lez v4, :cond_12

    aget v1, p1, v0

    move v3, v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    aget p1, p0, v3

    add-int/2addr p1, v2

    aput p1, p0, v3

    return-void
.end method

.method protected static a([I)Z
    .registers 8

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v3, p0, v3

    add-int/2addr v3, v1

    const/4 v4, 0x3

    aget v4, p0, v4

    add-int/2addr v3, v4

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    const v3, 0x3f4aaaab

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_3c

    const v3, 0x3f649249

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3c

    const v1, 0x7fffffff

    const/high16 v3, -0x80000000

    array-length v4, p0

    const/4 v1, 0x0

    const v5, 0x7fffffff

    :goto_2a
    if-ge v1, v4, :cond_37

    aget v6, p0, v1

    if-le v6, v3, :cond_31

    move v3, v6

    :cond_31
    if-ge v6, v5, :cond_34

    move v5, v6

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_37
    mul-int/lit8 v5, v5, 0xa

    if-ge v3, v5, :cond_3c

    return v2

    :cond_3c
    return v0
.end method

.method private static b([I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/a/c/a/a;->a([I)I

    move-result p0

    return p0
.end method

.method protected static b([I[F)V
    .registers 7

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    :goto_6
    array-length v4, p0

    if-ge v0, v4, :cond_15

    aget v4, p1, v0

    cmpg-float v4, v4, v1

    if-gez v4, :cond_12

    aget v1, p1, v0

    move v3, v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    aget p1, p0, v3

    sub-int/2addr p1, v2

    aput p1, p0, v3

    return-void
.end method

.method private b()[I
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/a;->a:[I

    return-object v0
.end method

.method private c()[I
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/a;->b:[I

    return-object v0
.end method

.method private d()[F
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/a;->c:[F

    return-object v0
.end method

.method private e()[F
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/a;->d:[F

    return-object v0
.end method

.method private f()[I
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/a;->e:[I

    return-object v0
.end method

.method private g()[I
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/a;->f:[I

    return-object v0
.end method
