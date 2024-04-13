.class public final Lcom/google/a/g/a/e;
.super Lcom/google/a/g/a/a;


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[[I


# instance fields
.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/a/g/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/a/g/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_7a

    sput-object v1, Lcom/google/a/g/a/e;->g:[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_88

    sput-object v2, Lcom/google/a/g/a/e;->h:[I

    new-array v2, v0, [I

    fill-array-data v2, :array_94

    sput-object v2, Lcom/google/a/g/a/e;->i:[I

    new-array v2, v1, [I

    fill-array-data v2, :array_a2

    sput-object v2, Lcom/google/a/g/a/e;->j:[I

    new-array v2, v0, [I

    fill-array-data v2, :array_ae

    sput-object v2, Lcom/google/a/g/a/e;->k:[I

    new-array v2, v1, [I

    fill-array-data v2, :array_bc

    sput-object v2, Lcom/google/a/g/a/e;->l:[I

    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_c8

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_d4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_e0

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_ec

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_f8

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_104

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_110

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_11c

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_128

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/a/g/a/e;->m:[[I

    return-void

    :array_7a
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_88
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_94
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_ae
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_bc
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_c8
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_d4
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_e0
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_ec
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_f8
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_104
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_110
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_11c
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_128
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/a/g/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/a/e;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/a/e;->o:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/a/c/a;Lcom/google/a/g/a/c;Z)Lcom/google/a/g/a/b;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/google/a/g/a/a;->b:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_c
    array-length v7, v4

    if-ge v6, v7, :cond_14

    aput v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_14
    const/4 v6, 0x1

    if-eqz v3, :cond_1f

    iget-object v2, v2, Lcom/google/a/g/a/c;->b:[I

    aget v2, v2, v5

    invoke-static {v1, v2, v4}, Lcom/google/a/g/a/e;->b(Lcom/google/a/c/a;I[I)V

    goto :goto_3a

    :cond_1f
    iget-object v2, v2, Lcom/google/a/g/a/c;->b:[I

    aget v2, v2, v6

    add-int/2addr v2, v6

    invoke-static {v1, v2, v4}, Lcom/google/a/g/a/e;->a(Lcom/google/a/c/a;I[I)V

    array-length v1, v4

    sub-int/2addr v1, v6

    move v2, v1

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v2, :cond_3a

    aget v7, v4, v1

    aget v8, v4, v2

    aput v8, v4, v1

    aput v7, v4, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    :cond_3a
    :goto_3a
    if-eqz v3, :cond_3f

    const/16 v1, 0x10

    goto :goto_41

    :cond_3f
    const/16 v1, 0xf

    :goto_41
    invoke-static {v4}, Lcom/google/a/c/a/a;->a([I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v7, v1

    div-float/2addr v2, v7

    iget-object v7, v0, Lcom/google/a/g/a/a;->e:[I

    iget-object v8, v0, Lcom/google/a/g/a/a;->f:[I

    iget-object v9, v0, Lcom/google/a/g/a/a;->c:[F

    iget-object v10, v0, Lcom/google/a/g/a/a;->d:[F

    const/4 v11, 0x0

    :goto_51
    array-length v12, v4

    if-ge v11, v12, :cond_7c

    aget v12, v4, v11

    int-to-float v12, v12

    div-float/2addr v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v12

    float-to-int v13, v13

    const/16 v14, 0x8

    if-gtz v13, :cond_62

    const/4 v13, 0x1

    goto :goto_66

    :cond_62
    if-le v13, v14, :cond_66

    const/16 v13, 0x8

    :cond_66
    :goto_66
    div-int/lit8 v14, v11, 0x2

    and-int/lit8 v15, v11, 0x1

    if-nez v15, :cond_73

    aput v13, v7, v14

    int-to-float v13, v13

    sub-float/2addr v12, v13

    aput v12, v9, v14

    goto :goto_79

    :cond_73
    aput v13, v8, v14

    int-to-float v13, v13

    sub-float/2addr v12, v13

    aput v12, v10, v14

    :goto_79
    add-int/lit8 v11, v11, 0x1

    goto :goto_51

    :cond_7c
    iget-object v2, v0, Lcom/google/a/g/a/a;->e:[I

    invoke-static {v2}, Lcom/google/a/c/a/a;->a([I)I

    move-result v2

    iget-object v4, v0, Lcom/google/a/g/a/a;->f:[I

    invoke-static {v4}, Lcom/google/a/c/a/a;->a([I)I

    move-result v4

    const/16 v9, 0xa

    const/16 v10, 0xc

    const/4 v11, 0x4

    if-eqz v3, :cond_a6

    if-le v2, v10, :cond_94

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_9a

    :cond_94
    if-ge v2, v11, :cond_98

    const/4 v12, 0x1

    goto :goto_99

    :cond_98
    const/4 v12, 0x0

    :goto_99
    const/4 v13, 0x0

    :goto_9a
    if-le v4, v10, :cond_9f

    :goto_9c
    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_ba

    :cond_9f
    if-ge v4, v11, :cond_a3

    :goto_a1
    const/4 v14, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v14, 0x0

    :goto_a4
    const/4 v15, 0x0

    goto :goto_ba

    :cond_a6
    const/16 v12, 0xb

    if-le v2, v12, :cond_ad

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_b4

    :cond_ad
    const/4 v12, 0x5

    if-ge v2, v12, :cond_b2

    const/4 v12, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v12, 0x0

    :goto_b3
    const/4 v13, 0x0

    :goto_b4
    if-le v4, v9, :cond_b7

    goto :goto_9c

    :cond_b7
    if-ge v4, v11, :cond_a3

    goto :goto_a1

    :goto_ba
    add-int v16, v2, v4

    sub-int v1, v16, v1

    and-int/lit8 v9, v2, 0x1

    if-ne v9, v3, :cond_c4

    const/4 v9, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v9, 0x0

    :goto_c5
    and-int/lit8 v5, v4, 0x1

    if-ne v5, v6, :cond_cb

    const/4 v5, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v5, 0x0

    :goto_cc
    if-ne v1, v6, :cond_e2

    if-eqz v9, :cond_d9

    if-eqz v5, :cond_d7

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_d7
    const/4 v13, 0x1

    goto :goto_111

    :cond_d9
    if-nez v5, :cond_e0

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_e0
    :goto_e0
    const/4 v15, 0x1

    goto :goto_111

    :cond_e2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_f9

    if-eqz v9, :cond_f0

    if-eqz v5, :cond_ee

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_ee
    const/4 v12, 0x1

    goto :goto_111

    :cond_f0
    if-nez v5, :cond_f7

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_f7
    :goto_f7
    const/4 v14, 0x1

    goto :goto_111

    :cond_f9
    if-nez v1, :cond_1d3

    if-eqz v9, :cond_10a

    if-nez v5, :cond_104

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_104
    if-ge v2, v4, :cond_108

    const/4 v12, 0x1

    goto :goto_e0

    :cond_108
    const/4 v13, 0x1

    goto :goto_f7

    :cond_10a
    if-eqz v5, :cond_111

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_111
    :goto_111
    if-eqz v12, :cond_121

    if-eqz v13, :cond_11a

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_11a
    iget-object v1, v0, Lcom/google/a/g/a/a;->e:[I

    iget-object v2, v0, Lcom/google/a/g/a/a;->c:[F

    invoke-static {v1, v2}, Lcom/google/a/g/a/e;->a([I[F)V

    :cond_121
    if-eqz v13, :cond_12a

    iget-object v1, v0, Lcom/google/a/g/a/a;->e:[I

    iget-object v2, v0, Lcom/google/a/g/a/a;->c:[F

    invoke-static {v1, v2}, Lcom/google/a/g/a/e;->b([I[F)V

    :cond_12a
    if-eqz v14, :cond_13a

    if-eqz v15, :cond_133

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_133
    iget-object v1, v0, Lcom/google/a/g/a/a;->f:[I

    iget-object v2, v0, Lcom/google/a/g/a/a;->c:[F

    invoke-static {v1, v2}, Lcom/google/a/g/a/e;->a([I[F)V

    :cond_13a
    if-eqz v15, :cond_143

    iget-object v1, v0, Lcom/google/a/g/a/a;->f:[I

    iget-object v2, v0, Lcom/google/a/g/a/a;->d:[F

    invoke-static {v1, v2}, Lcom/google/a/g/a/e;->b([I[F)V

    :cond_143
    array-length v1, v7

    sub-int/2addr v1, v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_147
    if-ltz v1, :cond_154

    mul-int/lit8 v2, v2, 0x9

    aget v5, v7, v1

    add-int/2addr v2, v5

    aget v5, v7, v1

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_147

    :cond_154
    array-length v1, v8

    sub-int/2addr v1, v6

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_158
    if-ltz v1, :cond_165

    mul-int/lit8 v5, v5, 0x9

    aget v11, v8, v1

    add-int/2addr v5, v11

    aget v11, v8, v1

    add-int/2addr v9, v11

    add-int/lit8 v1, v1, -0x1

    goto :goto_158

    :cond_165
    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v2, v5

    if-eqz v3, :cond_19d

    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_198

    if-gt v4, v10, :cond_198

    const/4 v1, 0x4

    if-ge v4, v1, :cond_174

    goto :goto_198

    :cond_174
    sub-int/2addr v10, v4

    div-int/lit8 v10, v10, 0x2

    sget-object v1, Lcom/google/a/g/a/e;->k:[I

    aget v1, v1, v10

    rsub-int/lit8 v3, v1, 0x9

    const/4 v4, 0x0

    invoke-static {v7, v1, v4}, Lcom/google/a/g/a/f;->a([IIZ)I

    move-result v1

    invoke-static {v8, v3, v6}, Lcom/google/a/g/a/f;->a([IIZ)I

    move-result v3

    sget-object v4, Lcom/google/a/g/a/e;->g:[I

    aget v4, v4, v10

    sget-object v5, Lcom/google/a/g/a/e;->i:[I

    aget v5, v5, v10

    new-instance v6, Lcom/google/a/g/a/b;

    mul-int v1, v1, v4

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    invoke-direct {v6, v1, v2}, Lcom/google/a/g/a/b;-><init>(II)V

    return-object v6

    :cond_198
    :goto_198
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_19d
    and-int/lit8 v1, v9, 0x1

    if-nez v1, :cond_1ce

    const/16 v1, 0xa

    if-gt v9, v1, :cond_1ce

    const/4 v3, 0x4

    if-ge v9, v3, :cond_1a9

    goto :goto_1ce

    :cond_1a9
    rsub-int/lit8 v9, v9, 0xa

    div-int/lit8 v9, v9, 0x2

    sget-object v1, Lcom/google/a/g/a/e;->l:[I

    aget v1, v1, v9

    rsub-int/lit8 v3, v1, 0x9

    invoke-static {v7, v1, v6}, Lcom/google/a/g/a/f;->a([IIZ)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v8, v3, v4}, Lcom/google/a/g/a/f;->a([IIZ)I

    move-result v3

    sget-object v4, Lcom/google/a/g/a/e;->h:[I

    aget v4, v4, v9

    sget-object v5, Lcom/google/a/g/a/e;->j:[I

    aget v5, v5, v9

    new-instance v6, Lcom/google/a/g/a/b;

    mul-int v3, v3, v4

    add-int/2addr v3, v1

    add-int/2addr v3, v5

    invoke-direct {v6, v3, v2}, Lcom/google/a/g/a/b;-><init>(II)V

    return-object v6

    :cond_1ce
    :goto_1ce
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_1d3
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1
.end method

.method private a(Lcom/google/a/c/a;IZ[I)Lcom/google/a/g/a/c;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p4, v0

    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    aget v2, p4, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_16

    invoke-virtual {p1, v2}, Lcom/google/a/c/a;->a(I)Z

    move-result v4

    if-eq v1, v4, :cond_16

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_16
    add-int/2addr v2, v3

    aget v1, p4, v0

    sub-int/2addr v1, v2

    iget-object v4, p0, Lcom/google/a/g/a/a;->a:[I

    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v1, v4, v0

    sget-object v1, Lcom/google/a/g/a/e;->m:[[I

    invoke-static {v4, v1}, Lcom/google/a/g/a/e;->a([I[[I)I

    move-result v6

    aget v1, p4, v3

    if-eqz p3, :cond_38

    iget p3, p1, Lcom/google/a/c/a;->b:I

    sub-int/2addr p3, v3

    sub-int/2addr p3, v2

    iget p1, p1, Lcom/google/a/c/a;->b:I

    sub-int/2addr p1, v3

    sub-int/2addr p1, v1

    move v9, p1

    move v8, p3

    goto :goto_3a

    :cond_38
    move v9, v1

    move v8, v2

    :goto_3a
    new-instance p1, Lcom/google/a/g/a/c;

    const/4 p3, 0x2

    new-array v7, p3, [I

    aput v2, v7, v0

    aget p3, p4, v3

    aput p3, v7, v3

    move-object v5, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/a/g/a/c;-><init>(I[IIII)V

    return-object p1
.end method

.method private a(Lcom/google/a/c/a;ZILjava/util/Map;)Lcom/google/a/g/a/d;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/a;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/g/a/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    :try_start_9
    iget-object v5, v0, Lcom/google/a/g/a/a;->a:[I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/4 v7, 0x1

    aput v6, v5, v7

    const/4 v8, 0x2

    aput v6, v5, v8

    const/4 v9, 0x3

    aput v6, v5, v9

    iget v10, v1, Lcom/google/a/c/a;->b:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1b
    if-ge v11, v10, :cond_27

    invoke-virtual {v1, v11}, Lcom/google/a/c/a;->a(I)Z

    move-result v12

    xor-int/2addr v12, v7

    if-eq v2, v12, :cond_27

    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    :cond_27
    move v14, v11

    const/4 v13, 0x0

    :goto_29
    if-ge v11, v10, :cond_fd

    invoke-virtual {v1, v11}, Lcom/google/a/c/a;->a(I)Z

    move-result v15

    if-eq v15, v12, :cond_3a

    aget v15, v5, v13

    add-int/2addr v15, v7

    aput v15, v5, v13

    move/from16 v15, p3

    goto/16 :goto_f9

    :cond_3a
    if-ne v13, v9, :cond_ee

    invoke-static {v5}, Lcom/google/a/g/a/e;->a([I)Z

    move-result v15

    if-eqz v15, :cond_d5

    new-array v5, v8, [I

    aput v14, v5, v6

    aput v11, v5, v7

    aget v9, v5, v6

    invoke-virtual {v1, v9}, Lcom/google/a/c/a;->a(I)Z

    move-result v9

    aget v10, v5, v6

    sub-int/2addr v10, v7

    :goto_51
    if-ltz v10, :cond_5c

    invoke-virtual {v1, v10}, Lcom/google/a/c/a;->a(I)Z

    move-result v11

    if-eq v9, v11, :cond_5c

    add-int/lit8 v10, v10, -0x1

    goto :goto_51

    :cond_5c
    add-int/2addr v10, v7

    aget v9, v5, v6

    sub-int/2addr v9, v10

    iget-object v11, v0, Lcom/google/a/g/a/a;->a:[I

    array-length v12, v11

    sub-int/2addr v12, v7

    invoke-static {v11, v6, v11, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v9, v11, v6

    sget-object v9, Lcom/google/a/g/a/e;->m:[[I

    invoke-static {v11, v9}, Lcom/google/a/g/a/e;->a([I[[I)I

    move-result v13

    aget v9, v5, v7

    if-eqz v2, :cond_7f

    iget v11, v1, Lcom/google/a/c/a;->b:I

    sub-int/2addr v11, v7

    sub-int/2addr v11, v10

    iget v12, v1, Lcom/google/a/c/a;->b:I

    sub-int/2addr v12, v7

    sub-int/2addr v12, v9

    move v15, v11

    move/from16 v16, v12

    goto :goto_82

    :cond_7f
    move/from16 v16, v9

    move v15, v10

    :goto_82
    new-instance v9, Lcom/google/a/g/a/c;

    new-array v14, v8, [I

    aput v10, v14, v6

    aget v8, v5, v7

    aput v8, v14, v7

    move-object v12, v9

    move/from16 v17, p3

    invoke-direct/range {v12 .. v17}, Lcom/google/a/g/a/c;-><init>(I[IIII)V

    if-nez v3, :cond_96

    move-object v3, v4

    goto :goto_9e

    :cond_96
    sget-object v8, Lcom/google/a/e;->NEED_RESULT_POINT_CALLBACK:Lcom/google/a/e;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/u;

    :goto_9e
    if-eqz v3, :cond_b9

    aget v3, v5, v6

    aget v5, v5, v7

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    if-eqz v2, :cond_b1

    iget v2, v1, Lcom/google/a/c/a;->b:I

    sub-int/2addr v2, v7

    int-to-float v2, v2

    sub-float v3, v2, v3

    :cond_b1
    new-instance v2, Lcom/google/a/t;

    move/from16 v15, p3

    int-to-float v5, v15

    invoke-direct {v2, v3, v5}, Lcom/google/a/t;-><init>(FF)V

    :cond_b9
    invoke-direct {v0, v1, v9, v7}, Lcom/google/a/g/a/e;->a(Lcom/google/a/c/a;Lcom/google/a/g/a/c;Z)Lcom/google/a/g/a/b;

    move-result-object v2

    invoke-direct {v0, v1, v9, v6}, Lcom/google/a/g/a/e;->a(Lcom/google/a/c/a;Lcom/google/a/g/a/c;Z)Lcom/google/a/g/a/b;

    move-result-object v1

    new-instance v3, Lcom/google/a/g/a/d;

    iget v5, v2, Lcom/google/a/g/a/b;->a:I

    mul-int/lit16 v5, v5, 0x63d

    iget v6, v1, Lcom/google/a/g/a/b;->a:I

    add-int/2addr v5, v6

    iget v2, v2, Lcom/google/a/g/a/b;->b:I

    iget v1, v1, Lcom/google/a/g/a/b;->b:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v2, v1

    invoke-direct {v3, v5, v2, v9}, Lcom/google/a/g/a/d;-><init>(IILcom/google/a/g/a/c;)V

    return-object v3

    :cond_d5
    move/from16 v15, p3

    aget v16, v5, v6

    aget v17, v5, v7

    add-int v16, v16, v17

    add-int v14, v14, v16

    aget v16, v5, v8

    aput v16, v5, v6

    aget v16, v5, v9

    aput v16, v5, v7

    aput v6, v5, v8

    aput v6, v5, v9

    add-int/lit8 v13, v13, -0x1

    goto :goto_f2

    :cond_ee
    move/from16 v15, p3

    add-int/lit8 v13, v13, 0x1

    :goto_f2
    aput v7, v5, v13

    if-nez v12, :cond_f8

    const/4 v12, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v12, 0x0

    :goto_f9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_29

    :cond_fd
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1
    :try_end_102
    .catch Lcom/google/a/m; {:try_start_9 .. :try_end_102} :catch_102

    :catch_102
    return-object v4
.end method

.method private static a(Lcom/google/a/g/a/d;Lcom/google/a/g/a/d;)Lcom/google/a/r;
    .registers 10

    iget v0, p0, Lcom/google/a/g/a/b;->a:I

    int-to-long v0, v0

    const-wide/32 v2, 0x453af5

    mul-long v0, v0, v2

    iget v2, p1, Lcom/google/a/g/a/b;->a:I

    int-to-long v2, v2

    add-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    rsub-int/lit8 v2, v2, 0xd

    :goto_20
    const/16 v4, 0x30

    if-lez v2, :cond_2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    :cond_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_30
    if-ge v2, v3, :cond_41

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v4

    and-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_3d

    mul-int/lit8 v6, v6, 0x3

    :cond_3d
    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_41
    const/16 v2, 0xa

    rem-int/2addr v5, v2

    rsub-int/lit8 v3, v5, 0xa

    if-ne v3, v2, :cond_49

    const/4 v3, 0x0

    :cond_49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    iget-object p0, p0, Lcom/google/a/g/a/c;->c:[Lcom/google/a/t;

    iget-object p1, p1, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    iget-object p1, p1, Lcom/google/a/g/a/c;->c:[Lcom/google/a/t;

    new-instance v2, Lcom/google/a/r;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/a/t;

    aget-object v5, p0, v0

    aput-object v5, v4, v0

    const/4 v5, 0x1

    aget-object p0, p0, v5

    aput-object p0, v4, v5

    const/4 p0, 0x2

    aget-object v0, p1, v0

    aput-object v0, v4, p0

    aget-object p0, p1, v5

    const/4 p1, 0x3

    aput-object p0, v4, p1

    sget-object p0, Lcom/google/a/a;->RSS_14:Lcom/google/a/a;

    invoke-direct {v2, v1, v3, v4, p0}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    return-object v2
.end method

.method private static a(Ljava/util/Collection;Lcom/google/a/g/a/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/a/g/a/d;",
            ">;",
            "Lcom/google/a/g/a/d;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/g/a/d;

    iget v4, v2, Lcom/google/a/g/a/b;->a:I

    iget v5, p1, Lcom/google/a/g/a/b;->a:I

    if-ne v4, v5, :cond_8

    iget v0, v2, Lcom/google/a/g/a/d;->d:I

    add-int/2addr v0, v3

    iput v0, v2, Lcom/google/a/g/a/d;->d:I

    const/4 v0, 0x1

    :cond_21
    if-nez v0, :cond_26

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_26
    return-void
.end method

.method private a(ZI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/a/a;->e:[I

    invoke-static {v0}, Lcom/google/a/c/a/a;->a([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/a/g/a/a;->f:[I

    invoke-static {v1}, Lcom/google/a/c/a/a;->a([I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_31

    const/16 v5, 0xc

    if-le v0, v5, :cond_18

    const/4 v6, 0x1

    :goto_16
    const/4 v7, 0x0

    goto :goto_1f

    :cond_18
    if-ge v0, v2, :cond_1d

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_1f

    :cond_1d
    const/4 v6, 0x0

    goto :goto_16

    :goto_1f
    if-le v1, v5, :cond_26

    move v5, v6

    move v6, v7

    :goto_23
    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_48

    :cond_26
    if-ge v1, v2, :cond_2c

    move v5, v6

    move v6, v7

    :goto_2a
    const/4 v2, 0x1

    goto :goto_2f

    :cond_2c
    move v5, v6

    move v6, v7

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    const/4 v7, 0x0

    goto :goto_48

    :cond_31
    const/16 v5, 0xb

    if-le v0, v5, :cond_38

    const/4 v5, 0x1

    :goto_36
    const/4 v6, 0x0

    goto :goto_40

    :cond_38
    const/4 v5, 0x5

    if-ge v0, v5, :cond_3e

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_40

    :cond_3e
    const/4 v5, 0x0

    goto :goto_36

    :goto_40
    const/16 v7, 0xa

    if-le v1, v7, :cond_45

    goto :goto_23

    :cond_45
    if-ge v1, v2, :cond_2e

    goto :goto_2a

    :goto_48
    add-int v8, v0, v1

    sub-int/2addr v8, p2

    and-int/lit8 p2, v0, 0x1

    if-ne p2, p1, :cond_51

    const/4 p1, 0x1

    goto :goto_52

    :cond_51
    const/4 p1, 0x0

    :goto_52
    and-int/lit8 p2, v1, 0x1

    if-ne p2, v4, :cond_57

    const/4 v3, 0x1

    :cond_57
    if-ne v8, v4, :cond_6d

    if-eqz p1, :cond_64

    if-eqz v3, :cond_62

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_62
    :goto_62
    const/4 v5, 0x1

    goto :goto_9c

    :cond_64
    if-nez v3, :cond_6b

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_6b
    :goto_6b
    const/4 v7, 0x1

    goto :goto_9c

    :cond_6d
    const/4 p2, -0x1

    if-ne v8, p2, :cond_84

    if-eqz p1, :cond_7b

    if-eqz v3, :cond_79

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_79
    const/4 v6, 0x1

    goto :goto_9c

    :cond_7b
    if-nez v3, :cond_82

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_82
    const/4 v2, 0x1

    goto :goto_9c

    :cond_84
    if-nez v8, :cond_cf

    if-eqz p1, :cond_95

    if-nez v3, :cond_8f

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_8f
    if-ge v0, v1, :cond_93

    const/4 v6, 0x1

    goto :goto_6b

    :cond_93
    const/4 v2, 0x1

    goto :goto_62

    :cond_95
    if-eqz v3, :cond_9c

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_9c
    :goto_9c
    if-eqz v6, :cond_ac

    if-eqz v5, :cond_a5

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_a5
    iget-object p1, p0, Lcom/google/a/g/a/a;->e:[I

    iget-object p2, p0, Lcom/google/a/g/a/a;->c:[F

    invoke-static {p1, p2}, Lcom/google/a/g/a/e;->a([I[F)V

    :cond_ac
    if-eqz v5, :cond_b5

    iget-object p1, p0, Lcom/google/a/g/a/a;->e:[I

    iget-object p2, p0, Lcom/google/a/g/a/a;->c:[F

    invoke-static {p1, p2}, Lcom/google/a/g/a/e;->b([I[F)V

    :cond_b5
    if-eqz v2, :cond_c5

    if-eqz v7, :cond_be

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_be
    iget-object p1, p0, Lcom/google/a/g/a/a;->f:[I

    iget-object p2, p0, Lcom/google/a/g/a/a;->c:[F

    invoke-static {p1, p2}, Lcom/google/a/g/a/e;->a([I[F)V

    :cond_c5
    if-eqz v7, :cond_ce

    iget-object p1, p0, Lcom/google/a/g/a/a;->f:[I

    iget-object p2, p0, Lcom/google/a/g/a/a;->d:[F

    invoke-static {p1, p2}, Lcom/google/a/g/a/e;->b([I[F)V

    :cond_ce
    return-void

    :cond_cf
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private a(Lcom/google/a/c/a;Z)[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/a/a;->a:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    iget v5, p1, Lcom/google/a/c/a;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_12
    if-ge v6, v5, :cond_1e

    invoke-virtual {p1, v6}, Lcom/google/a/c/a;->a(I)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eq p2, v7, :cond_1e

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1e
    move v8, v6

    const/4 p2, 0x0

    :goto_20
    if-ge v6, v5, :cond_5e

    invoke-virtual {p1, v6}, Lcom/google/a/c/a;->a(I)Z

    move-result v9

    if-eq v9, v7, :cond_2e

    aget v9, v0, p2

    add-int/2addr v9, v2

    aput v9, v0, p2

    goto :goto_5b

    :cond_2e
    if-ne p2, v4, :cond_52

    invoke-static {v0}, Lcom/google/a/g/a/e;->a([I)Z

    move-result v9

    if-eqz v9, :cond_3d

    new-array p1, v3, [I

    aput v8, p1, v1

    aput v6, p1, v2

    return-object p1

    :cond_3d
    aget v9, v0, v1

    aget v10, v0, v2

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    aget v9, v0, v3

    aput v9, v0, v1

    aget v9, v0, v4

    aput v9, v0, v2

    aput v1, v0, v3

    aput v1, v0, v4

    add-int/lit8 p2, p2, -0x1

    goto :goto_54

    :cond_52
    add-int/lit8 p2, p2, 0x1

    :goto_54
    aput v2, v0, p2

    if-nez v7, :cond_5a

    const/4 v7, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v7, 0x0

    :goto_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_5e
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private static b(Lcom/google/a/g/a/d;Lcom/google/a/g/a/d;)Z
    .registers 4

    iget v0, p0, Lcom/google/a/g/a/b;->b:I

    iget v1, p1, Lcom/google/a/g/a/b;->b:I

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4f

    iget-object p0, p0, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    iget p0, p0, Lcom/google/a/g/a/c;->a:I

    mul-int/lit8 p0, p0, 0x9

    iget-object p1, p1, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    iget p1, p1, Lcom/google/a/g/a/c;->a:I

    add-int/2addr p0, p1

    const/16 p1, 0x48

    if-le p0, p1, :cond_1a

    add-int/lit8 p0, p0, -0x1

    :cond_1a
    const/16 p1, 0x8

    if-le p0, p1, :cond_20

    add-int/lit8 p0, p0, -0x1

    :cond_20
    if-ne v0, p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/a/c/a;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/a/g/a/e;->a(Lcom/google/a/c/a;ZILjava/util/Map;)Lcom/google/a/g/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/g/a/e;->n:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/a/g/a/e;->a(Ljava/util/Collection;Lcom/google/a/g/a/d;)V

    invoke-virtual {p2}, Lcom/google/a/c/a;->c()V

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, p1, p3}, Lcom/google/a/g/a/e;->a(Lcom/google/a/c/a;ZILjava/util/Map;)Lcom/google/a/g/a/d;

    move-result-object p1

    iget-object p3, p0, Lcom/google/a/g/a/e;->o:Ljava/util/List;

    invoke-static {p3, p1}, Lcom/google/a/g/a/e;->a(Ljava/util/Collection;Lcom/google/a/g/a/d;)V

    invoke-virtual {p2}, Lcom/google/a/c/a;->c()V

    iget-object p1, p0, Lcom/google/a/g/a/e;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/a/g/a/d;

    iget p3, p2, Lcom/google/a/g/a/d;->d:I

    if-le p3, v1, :cond_20

    iget-object p3, p0, Lcom/google/a/g/a/e;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_36
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/g/a/d;

    iget v3, v2, Lcom/google/a/g/a/d;->d:I

    if-le v3, v1, :cond_36

    iget v3, p2, Lcom/google/a/g/a/b;->b:I

    iget v4, v2, Lcom/google/a/g/a/b;->b:I

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x4f

    iget-object v4, p2, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    iget v4, v4, Lcom/google/a/g/a/c;->a:I

    mul-int/lit8 v4, v4, 0x9

    iget-object v5, v2, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    iget v5, v5, Lcom/google/a/g/a/c;->a:I

    add-int/2addr v4, v5

    const/16 v5, 0x48

    if-le v4, v5, :cond_60

    add-int/lit8 v4, v4, -0x1

    :cond_60
    const/16 v5, 0x8

    if-le v4, v5, :cond_66

    add-int/lit8 v4, v4, -0x1

    :cond_66
    if-ne v3, v4, :cond_6a

    const/4 v3, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v3, 0x0

    :goto_6b
    if-eqz v3, :cond_36

    const-wide/32 v3, 0x453af5

    iget p1, p2, Lcom/google/a/g/a/b;->a:I

    int-to-long v5, p1

    mul-long v5, v5, v3

    iget p1, v2, Lcom/google/a/g/a/b;->a:I

    int-to-long v3, p1

    add-long v7, v5, v3

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xd

    rsub-int/lit8 v3, v3, 0xd

    :goto_8d
    const/16 v5, 0x30

    if-lez v3, :cond_97

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_8d

    :cond_97
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_9c
    if-ge p1, v4, :cond_ad

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v5

    and-int/lit8 v7, p1, 0x1

    if-nez v7, :cond_a9

    mul-int/lit8 v6, v6, 0x3

    :cond_a9
    add-int/2addr v3, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_9c

    :cond_ad
    const/16 p1, 0xa

    rem-int/2addr v3, p1

    rsub-int/lit8 v3, v3, 0xa

    if-ne v3, p1, :cond_b5

    const/4 v3, 0x0

    :cond_b5
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    iget-object p1, p1, Lcom/google/a/g/a/c;->c:[Lcom/google/a/t;

    iget-object p2, v2, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    iget-object p2, p2, Lcom/google/a/g/a/c;->c:[Lcom/google/a/t;

    new-instance v2, Lcom/google/a/r;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/a/t;

    aget-object v5, p1, v0

    aput-object v5, v4, v0

    aget-object p1, p1, v1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aget-object v0, p2, v0

    aput-object v0, v4, p1

    aget-object p1, p2, v1

    const/4 p2, 0x3

    aput-object p1, v4, p2

    sget-object p1, Lcom/google/a/a;->RSS_14:Lcom/google/a/a;

    invoke-direct {v2, p3, v3, v4, p1}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    return-object v2

    :cond_e2
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/a/g/a/e;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
