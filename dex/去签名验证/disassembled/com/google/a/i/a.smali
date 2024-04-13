.class public Lcom/google/a/i/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/p;


# static fields
.field private static final b:[Lcom/google/a/t;


# instance fields
.field protected final a:Lcom/google/a/i/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/t;

    sput-object v0, Lcom/google/a/i/a;->b:[Lcom/google/a/t;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/i/a/e;

    invoke-direct {v0}, Lcom/google/a/i/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    return-void
.end method

.method private static a([ILcom/google/a/c/b;)F
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget v0, p1, Lcom/google/a/c/b;->b:I

    iget v1, p1, Lcom/google/a/c/b;->a:I

    const/4 v2, 0x0

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    const/4 v6, 0x0

    :goto_b
    if-ge v3, v1, :cond_21

    if-ge v5, v0, :cond_21

    invoke-virtual {p1, v3, v5}, Lcom/google/a/c/b;->a(II)Z

    move-result v7

    if-eq v4, v7, :cond_1c

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_21

    xor-int/lit8 v4, v4, 0x1

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_21
    if-eq v3, v1, :cond_2e

    if-ne v5, v0, :cond_26

    goto :goto_2e

    :cond_26
    aget p0, p0, v2

    sub-int/2addr v3, p0

    int-to-float p0, v3

    const/high16 p1, 0x40e00000    # 7.0f

    div-float/2addr p0, p1

    return p0

    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/google/a/c/b;)Lcom/google/a/c/b;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/c/b;->b()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/c/b;->c()[I

    move-result-object v1

    if-eqz v0, :cond_d7

    if-nez v1, :cond_e

    goto/16 :goto_d7

    :cond_e
    iget v2, p0, Lcom/google/a/c/b;->b:I

    iget v3, p0, Lcom/google/a/c/b;->a:I

    const/4 v4, 0x0

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v7, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_1a
    if-ge v5, v3, :cond_30

    if-ge v7, v2, :cond_30

    invoke-virtual {p0, v5, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eq v8, v10, :cond_2b

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_30

    xor-int/lit8 v8, v8, 0x1

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_30
    if-eq v5, v3, :cond_d2

    if-ne v7, v2, :cond_36

    goto/16 :goto_d2

    :cond_36
    aget v2, v0, v4

    sub-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v2, v3

    aget v3, v0, v6

    aget v5, v1, v6

    aget v0, v0, v4

    aget v1, v1, v4

    if-ge v0, v1, :cond_cd

    if-lt v3, v5, :cond_4b

    goto/16 :goto_cd

    :cond_4b
    sub-int v7, v5, v3

    sub-int v8, v1, v0

    if-eq v7, v8, :cond_5c

    add-int v1, v0, v7

    iget v8, p0, Lcom/google/a/c/b;->a:I

    if-lt v1, v8, :cond_5c

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_5c
    sub-int v8, v1, v0

    add-int/2addr v8, v6

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-lez v8, :cond_c8

    if-gtz v6, :cond_71

    goto :goto_c8

    :cond_71
    if-eq v6, v8, :cond_78

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_78
    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v2, v7

    float-to-int v7, v7

    add-int/2addr v3, v7

    add-int/2addr v0, v7

    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    mul-float v9, v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v0

    sub-int/2addr v9, v1

    if-lez v9, :cond_91

    if-le v9, v7, :cond_90

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_90
    sub-int/2addr v0, v9

    :cond_91
    add-int/lit8 v1, v6, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v3

    sub-int/2addr v1, v5

    if-lez v1, :cond_a3

    if-le v1, v7, :cond_a2

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_a2
    sub-int/2addr v3, v1

    :cond_a3
    new-instance v1, Lcom/google/a/c/b;

    invoke-direct {v1, v8, v6}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v5, 0x0

    :goto_a9
    if-ge v5, v6, :cond_c7

    int-to-float v7, v5

    mul-float v7, v7, v2

    float-to-int v7, v7

    add-int/2addr v7, v3

    const/4 v9, 0x0

    :goto_b1
    if-ge v9, v8, :cond_c4

    int-to-float v10, v9

    mul-float v10, v10, v2

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {p0, v10, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eqz v10, :cond_c1

    invoke-virtual {v1, v9, v5}, Lcom/google/a/c/b;->b(II)V

    :cond_c1
    add-int/lit8 v9, v9, 0x1

    goto :goto_b1

    :cond_c4
    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    :cond_c7
    return-object v1

    :cond_c8
    :goto_c8
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_cd
    :goto_cd
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_d2
    :goto_d2
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_d7
    :goto_d7
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private b()Lcom/google/a/i/a/e;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    return-object v0
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

    invoke-virtual {p0, p1, v0}, Lcom/google/a/i/a;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .registers 15
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

    if-eqz p2, :cond_f2

    sget-object v0, Lcom/google/a/e;->PURE_BARCODE:Lcom/google/a/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/a/c/b;->b()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/a/c/b;->c()[I

    move-result-object v1

    if-eqz v0, :cond_ed

    if-nez v1, :cond_1c

    goto/16 :goto_ed

    :cond_1c
    iget v2, p1, Lcom/google/a/c/b;->b:I

    iget v3, p1, Lcom/google/a/c/b;->a:I

    const/4 v4, 0x0

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v7, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_28
    if-ge v5, v3, :cond_3e

    if-ge v7, v2, :cond_3e

    invoke-virtual {p1, v5, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eq v8, v10, :cond_39

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3e

    xor-int/lit8 v8, v8, 0x1

    :cond_39
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_3e
    if-eq v5, v3, :cond_e8

    if-ne v7, v2, :cond_44

    goto/16 :goto_e8

    :cond_44
    aget v2, v0, v4

    sub-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v2, v3

    aget v3, v0, v6

    aget v5, v1, v6

    aget v0, v0, v4

    aget v1, v1, v4

    if-ge v0, v1, :cond_e3

    if-lt v3, v5, :cond_59

    goto/16 :goto_e3

    :cond_59
    sub-int v7, v5, v3

    sub-int v8, v1, v0

    if-eq v7, v8, :cond_6a

    add-int v1, v0, v7

    iget v8, p1, Lcom/google/a/c/b;->a:I

    if-lt v1, v8, :cond_6a

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_6a
    sub-int v8, v1, v0

    add-int/2addr v8, v6

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-lez v8, :cond_de

    if-gtz v6, :cond_7f

    goto :goto_de

    :cond_7f
    if-eq v6, v8, :cond_86

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_86
    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v2, v7

    float-to-int v7, v7

    add-int/2addr v3, v7

    add-int/2addr v0, v7

    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    mul-float v9, v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v0

    sub-int/2addr v9, v1

    if-lez v9, :cond_9f

    if-le v9, v7, :cond_9e

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_9e
    sub-int/2addr v0, v9

    :cond_9f
    add-int/lit8 v1, v6, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v3

    sub-int/2addr v1, v5

    if-lez v1, :cond_b1

    if-le v1, v7, :cond_b0

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_b0
    sub-int/2addr v3, v1

    :cond_b1
    new-instance v1, Lcom/google/a/c/b;

    invoke-direct {v1, v8, v6}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v5, 0x0

    :goto_b7
    if-ge v5, v6, :cond_d5

    int-to-float v7, v5

    mul-float v7, v7, v2

    float-to-int v7, v7

    add-int/2addr v7, v3

    const/4 v9, 0x0

    :goto_bf
    if-ge v9, v8, :cond_d2

    int-to-float v10, v9

    mul-float v10, v10, v2

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {p1, v10, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eqz v10, :cond_cf

    invoke-virtual {v1, v9, v5}, Lcom/google/a/c/b;->b(II)V

    :cond_cf
    add-int/lit8 v9, v9, 0x1

    goto :goto_bf

    :cond_d2
    add-int/lit8 v5, v5, 0x1

    goto :goto_b7

    :cond_d5
    iget-object p1, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    invoke-virtual {p1, v1, p2}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p1

    sget-object p2, Lcom/google/a/i/a;->b:[Lcom/google/a/t;

    goto :goto_10c

    :cond_de
    :goto_de
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_e3
    :goto_e3
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_e8
    :goto_e8
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_ed
    :goto_ed
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_f2
    new-instance v0, Lcom/google/a/i/b/c;

    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/a/i/b/c;-><init>(Lcom/google/a/c/b;)V

    invoke-virtual {v0, p2}, Lcom/google/a/i/b/c;->a(Ljava/util/Map;)Lcom/google/a/c/g;

    move-result-object p1

    iget-object v0, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    iget-object v1, p1, Lcom/google/a/c/g;->d:Lcom/google/a/c/b;

    invoke-virtual {v0, v1, p2}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p2

    iget-object p1, p1, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    :goto_10c
    iget-object v0, p1, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/a/i/a/i;

    if-eqz v0, :cond_119

    iget-object v0, p1, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/a/i/a/i;

    invoke-virtual {v0, p2}, Lcom/google/a/i/a/i;->a([Lcom/google/a/t;)V

    :cond_119
    new-instance v0, Lcom/google/a/r;

    iget-object v1, p1, Lcom/google/a/c/e;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/c/e;->a:[B

    sget-object v3, Lcom/google/a/a;->QR_CODE:Lcom/google/a/a;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    iget-object p2, p1, Lcom/google/a/c/e;->d:Ljava/util/List;

    if-eqz p2, :cond_12d

    sget-object v1, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    invoke-virtual {v0, v1, p2}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_12d
    iget-object p2, p1, Lcom/google/a/c/e;->e:Ljava/lang/String;

    if-eqz p2, :cond_136

    sget-object v1, Lcom/google/a/s;->ERROR_CORRECTION_LEVEL:Lcom/google/a/s;

    invoke-virtual {v0, v1, p2}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_136
    invoke-virtual {p1}, Lcom/google/a/c/e;->a()Z

    move-result p2

    if-eqz p2, :cond_152

    sget-object p2, Lcom/google/a/s;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/a/s;

    iget v1, p1, Lcom/google/a/c/e;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    sget-object p2, Lcom/google/a/s;->STRUCTURED_APPEND_PARITY:Lcom/google/a/s;

    iget p1, p1, Lcom/google/a/c/e;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_152
    return-object v0
.end method

.method public final a()V
    .registers 1

    return-void
.end method
