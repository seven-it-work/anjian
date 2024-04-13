.class public final Lcom/google/a/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/p;


# static fields
.field private static final a:[Lcom/google/a/t;

.field private static final b:I = 0x1e

.field private static final c:I = 0x21


# instance fields
.field private final d:Lcom/google/a/e/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/t;

    sput-object v0, Lcom/google/a/e/a;->a:[Lcom/google/a/t;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/e/a/c;

    invoke-direct {v0}, Lcom/google/a/e/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/a/e/a;->d:Lcom/google/a/e/a/c;

    return-void
.end method

.method private static a(Lcom/google/a/c/b;)Lcom/google/a/c/b;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/c/b;->a:I

    iget v1, p0, Lcom/google/a/c/b;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v1

    const/4 v4, -0x1

    move v1, v0

    const/4 v0, 0x0

    :goto_a
    iget v6, p0, Lcom/google/a/c/b;->b:I

    if-ge v0, v6, :cond_54

    move v6, v4

    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    :goto_12
    iget v7, p0, Lcom/google/a/c/b;->c:I

    if-ge v1, v7, :cond_4e

    iget-object v7, p0, Lcom/google/a/c/b;->d:[I

    iget v8, p0, Lcom/google/a/c/b;->c:I

    mul-int v8, v8, v0

    add-int/2addr v8, v1

    aget v7, v7, v8

    if-eqz v7, :cond_4b

    if-ge v0, v5, :cond_24

    move v5, v0

    :cond_24
    if-le v0, v6, :cond_27

    move v6, v0

    :cond_27
    shl-int/lit8 v8, v1, 0x5

    const/16 v9, 0x1f

    if-ge v8, v2, :cond_3b

    const/4 v10, 0x0

    :goto_2e
    rsub-int/lit8 v11, v10, 0x1f

    shl-int v11, v7, v11

    if-nez v11, :cond_37

    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_37
    add-int/2addr v10, v8

    if-ge v10, v2, :cond_3b

    move v2, v10

    :cond_3b
    add-int/lit8 v10, v8, 0x1f

    if-le v10, v4, :cond_4b

    :goto_3f
    ushr-int v10, v7, v9

    if-nez v10, :cond_46

    add-int/lit8 v9, v9, -0x1

    goto :goto_3f

    :cond_46
    add-int v7, v8, v9

    if-le v7, v4, :cond_4b

    move v4, v7

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v4

    move v4, v6

    goto :goto_a

    :cond_54
    const/4 v0, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v2, v1, :cond_6c

    if-ge v4, v5, :cond_5c

    goto :goto_6c

    :cond_5c
    const/4 v8, 0x4

    new-array v8, v8, [I

    aput v1, v8, v3

    aput v5, v8, v7

    sub-int/2addr v2, v1

    add-int/2addr v2, v7

    aput v2, v8, v6

    sub-int/2addr v4, v5

    add-int/2addr v4, v7

    aput v4, v8, v0

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 v8, 0x0

    :goto_6d
    if-nez v8, :cond_74

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_74
    aget v1, v8, v3

    aget v2, v8, v7

    aget v4, v8, v6

    aget v0, v8, v0

    new-instance v5, Lcom/google/a/c/b;

    const/16 v7, 0x21

    const/16 v8, 0x1e

    invoke-direct {v5, v8, v7}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v9, 0x0

    :goto_86
    if-ge v9, v7, :cond_ae

    mul-int v10, v9, v0

    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v10, v2

    const/4 v11, 0x0

    :goto_90
    if-ge v11, v8, :cond_ab

    mul-int v12, v11, v4

    div-int/lit8 v13, v4, 0x2

    add-int/2addr v12, v13

    and-int/lit8 v13, v9, 0x1

    mul-int v13, v13, v4

    div-int/2addr v13, v6

    add-int/2addr v12, v13

    div-int/2addr v12, v8

    add-int/2addr v12, v1

    invoke-virtual {p0, v12, v10}, Lcom/google/a/c/b;->a(II)Z

    move-result v12

    if-eqz v12, :cond_a8

    invoke-virtual {v5, v11, v9}, Lcom/google/a/c/b;->b(II)V

    :cond_a8
    add-int/lit8 v11, v11, 0x1

    goto :goto_90

    :cond_ab
    add-int/lit8 v9, v9, 0x1

    goto :goto_86

    :cond_ae
    return-object v5
.end method


# virtual methods
.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e/a;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    if-eqz p2, :cond_d7

    sget-object v0, Lcom/google/a/e;->PURE_BARCODE:Lcom/google/a/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d7

    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    iget p2, p1, Lcom/google/a/c/b;->a:I

    iget v0, p1, Lcom/google/a/c/b;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v0

    const/4 v3, -0x1

    move v0, p2

    const/4 p2, 0x0

    :goto_18
    iget v5, p1, Lcom/google/a/c/b;->b:I

    if-ge p2, v5, :cond_60

    move v5, v4

    move v4, v0

    const/4 v0, 0x0

    :goto_1f
    iget v6, p1, Lcom/google/a/c/b;->c:I

    if-ge v0, v6, :cond_5b

    iget-object v6, p1, Lcom/google/a/c/b;->d:[I

    iget v7, p1, Lcom/google/a/c/b;->c:I

    mul-int v7, v7, p2

    add-int/2addr v7, v0

    aget v6, v6, v7

    if-eqz v6, :cond_58

    if-ge p2, v5, :cond_31

    move v5, p2

    :cond_31
    if-le p2, v3, :cond_34

    move v3, p2

    :cond_34
    shl-int/lit8 v7, v0, 0x5

    const/16 v8, 0x1f

    if-ge v7, v4, :cond_48

    const/4 v9, 0x0

    :goto_3b
    rsub-int/lit8 v10, v9, 0x1f

    shl-int v10, v6, v10

    if-nez v10, :cond_44

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :cond_44
    add-int/2addr v9, v7

    if-ge v9, v4, :cond_48

    move v4, v9

    :cond_48
    add-int/lit8 v9, v7, 0x1f

    if-le v9, v1, :cond_58

    :goto_4c
    ushr-int v9, v6, v8

    if-nez v9, :cond_53

    add-int/lit8 v8, v8, -0x1

    goto :goto_4c

    :cond_53
    add-int v6, v7, v8

    if-le v6, v1, :cond_58

    move v1, v6

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_5b
    add-int/lit8 p2, p2, 0x1

    move v0, v4

    move v4, v5

    goto :goto_18

    :cond_60
    const/4 p2, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v1, v0, :cond_78

    if-ge v3, v4, :cond_68

    goto :goto_78

    :cond_68
    const/4 v7, 0x4

    new-array v7, v7, [I

    aput v0, v7, v2

    aput v4, v7, v6

    sub-int/2addr v1, v0

    add-int/2addr v1, v6

    aput v1, v7, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v6

    aput v3, v7, p2

    goto :goto_79

    :cond_78
    :goto_78
    const/4 v7, 0x0

    :goto_79
    if-nez v7, :cond_80

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_80
    aget v0, v7, v2

    aget v1, v7, v6

    aget v3, v7, v5

    aget p2, v7, p2

    new-instance v4, Lcom/google/a/c/b;

    const/16 v6, 0x21

    const/16 v7, 0x1e

    invoke-direct {v4, v7, v6}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v8, 0x0

    :goto_92
    if-ge v8, v6, :cond_ba

    mul-int v9, v8, p2

    div-int/lit8 v10, p2, 0x2

    add-int/2addr v9, v10

    div-int/2addr v9, v6

    add-int/2addr v9, v1

    const/4 v10, 0x0

    :goto_9c
    if-ge v10, v7, :cond_b7

    mul-int v11, v10, v3

    div-int/lit8 v12, v3, 0x2

    add-int/2addr v11, v12

    and-int/lit8 v12, v8, 0x1

    mul-int v12, v12, v3

    div-int/2addr v12, v5

    add-int/2addr v11, v12

    div-int/2addr v11, v7

    add-int/2addr v11, v0

    invoke-virtual {p1, v11, v9}, Lcom/google/a/c/b;->a(II)Z

    move-result v11

    if-eqz v11, :cond_b4

    invoke-virtual {v4, v10, v8}, Lcom/google/a/c/b;->b(II)V

    :cond_b4
    add-int/lit8 v10, v10, 0x1

    goto :goto_9c

    :cond_b7
    add-int/lit8 v8, v8, 0x1

    goto :goto_92

    :cond_ba
    iget-object p1, p0, Lcom/google/a/e/a;->d:Lcom/google/a/e/a/c;

    invoke-virtual {p1, v4}, Lcom/google/a/e/a/c;->a(Lcom/google/a/c/b;)Lcom/google/a/c/e;

    move-result-object p1

    new-instance p2, Lcom/google/a/r;

    iget-object v0, p1, Lcom/google/a/c/e;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/a/c/e;->a:[B

    sget-object v2, Lcom/google/a/e/a;->a:[Lcom/google/a/t;

    sget-object v3, Lcom/google/a/a;->MAXICODE:Lcom/google/a/a;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    iget-object p1, p1, Lcom/google/a/c/e;->e:Ljava/lang/String;

    if-eqz p1, :cond_d6

    sget-object v0, Lcom/google/a/s;->ERROR_CORRECTION_LEVEL:Lcom/google/a/s;

    invoke-virtual {p2, v0, p1}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_d6
    return-object p2

    :cond_d7
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .registers 1

    return-void
.end method
