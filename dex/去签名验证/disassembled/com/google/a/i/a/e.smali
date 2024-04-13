.class public final Lcom/google/a/i/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/a/c/b/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/c/b/c;

    sget-object v1, Lcom/google/a/c/b/a;->e:Lcom/google/a/c/b/a;

    invoke-direct {v0, v1}, Lcom/google/a/c/b/c;-><init>(Lcom/google/a/c/b/a;)V

    iput-object v0, p0, Lcom/google/a/i/a/e;->a:Lcom/google/a/c/b/c;

    return-void
.end method

.method private a(Lcom/google/a/c/b;)Lcom/google/a/c/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/a/i/a/a;Ljava/util/Map;)Lcom/google/a/c/e;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/i/a/a;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/a/i/a/a;->b()Lcom/google/a/i/a/j;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/a/i/a/a;->a()Lcom/google/a/i/a/g;

    move-result-object v2

    iget-object v2, v2, Lcom/google/a/i/a/g;->a:Lcom/google/a/i/a/f;

    invoke-virtual/range {p1 .. p1}, Lcom/google/a/i/a/a;->a()Lcom/google/a/i/a/g;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/a/i/a/a;->b()Lcom/google/a/i/a/j;

    move-result-object v4

    invoke-static {}, Lcom/google/a/i/a/c;->values()[Lcom/google/a/i/a/c;

    move-result-object v5

    iget-byte v3, v3, Lcom/google/a/i/a/g;->b:B

    aget-object v3, v5, v3

    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v5, v5, Lcom/google/a/c/b;->b:I

    iget-object v6, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v3, v6, v5}, Lcom/google/a/i/a/c;->unmaskBitMatrix(Lcom/google/a/c/b;I)V

    invoke-virtual {v4}, Lcom/google/a/i/a/j;->a()I

    move-result v3

    new-instance v6, Lcom/google/a/c/b;

    invoke-direct {v6, v3}, Lcom/google/a/c/b;-><init>(I)V

    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v7, v7}, Lcom/google/a/c/b;->a(IIII)V

    add-int/lit8 v9, v3, -0x8

    const/16 v10, 0x8

    invoke-virtual {v6, v9, v8, v10, v7}, Lcom/google/a/c/b;->a(IIII)V

    invoke-virtual {v6, v8, v9, v7, v10}, Lcom/google/a/c/b;->a(IIII)V

    iget-object v9, v4, Lcom/google/a/i/a/j;->b:[I

    array-length v9, v9

    const/4 v11, 0x0

    :goto_42
    const/4 v12, 0x2

    if-ge v11, v9, :cond_6e

    iget-object v13, v4, Lcom/google/a/i/a/j;->b:[I

    aget v13, v13, v11

    sub-int/2addr v13, v12

    const/4 v14, 0x0

    :goto_4b
    if-ge v14, v9, :cond_69

    if-nez v11, :cond_55

    if-eqz v14, :cond_64

    add-int/lit8 v15, v9, -0x1

    if-eq v14, v15, :cond_64

    :cond_55
    add-int/lit8 v15, v9, -0x1

    if-ne v11, v15, :cond_5b

    if-eqz v14, :cond_64

    :cond_5b
    iget-object v15, v4, Lcom/google/a/i/a/j;->b:[I

    aget v15, v15, v14

    sub-int/2addr v15, v12

    const/4 v10, 0x5

    invoke-virtual {v6, v15, v13, v10, v10}, Lcom/google/a/c/b;->a(IIII)V

    :cond_64
    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0x8

    goto :goto_4b

    :cond_69
    add-int/lit8 v11, v11, 0x1

    const/16 v10, 0x8

    goto :goto_42

    :cond_6e
    add-int/lit8 v9, v3, -0x11

    const/4 v10, 0x6

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v7, v11, v9}, Lcom/google/a/c/b;->a(IIII)V

    invoke-virtual {v6, v7, v10, v9, v11}, Lcom/google/a/c/b;->a(IIII)V

    iget v7, v4, Lcom/google/a/i/a/j;->a:I

    if-le v7, v10, :cond_85

    add-int/lit8 v3, v3, -0xb

    const/4 v7, 0x3

    invoke-virtual {v6, v3, v8, v7, v10}, Lcom/google/a/c/b;->a(IIII)V

    invoke-virtual {v6, v8, v3, v10, v7}, Lcom/google/a/c/b;->a(IIII)V

    :cond_85
    iget v3, v4, Lcom/google/a/i/a/j;->c:I

    new-array v3, v3, [B

    add-int/lit8 v7, v5, -0x1

    move v9, v7

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_91
    if-lez v9, :cond_101

    if-ne v9, v10, :cond_97

    add-int/lit8 v9, v9, -0x1

    :cond_97
    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v13

    const/4 v13, 0x0

    :goto_9d
    if-ge v13, v5, :cond_f1

    if-eqz v14, :cond_a6

    sub-int v18, v7, v13

    move/from16 v10, v18

    goto :goto_a7

    :cond_a6
    move v10, v13

    :goto_a7
    move/from16 v18, v16

    move/from16 v16, v15

    const/4 v15, 0x0

    :goto_ac
    if-ge v15, v12, :cond_e4

    sub-int v12, v9, v15

    invoke-virtual {v6, v12, v10}, Lcom/google/a/c/b;->a(II)Z

    move-result v19

    if-nez v19, :cond_dc

    add-int/lit8 v11, v17, 0x1

    shl-int/lit8 v17, v18, 0x1

    iget-object v8, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v8, v12, v10}, Lcom/google/a/c/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_c5

    or-int/lit8 v8, v17, 0x1

    goto :goto_c7

    :cond_c5
    move/from16 v8, v17

    :goto_c7
    const/16 v12, 0x8

    if-ne v11, v12, :cond_d7

    add-int/lit8 v11, v16, 0x1

    int-to-byte v8, v8

    aput-byte v8, v3, v16

    move/from16 v16, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_de

    :cond_d7
    move/from16 v18, v8

    move/from16 v17, v11

    goto :goto_de

    :cond_dc
    const/16 v12, 0x8

    :goto_de
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_ac

    :cond_e4
    const/16 v12, 0x8

    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v16

    move/from16 v16, v18

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_9d

    :cond_f1
    const/16 v12, 0x8

    xor-int/lit8 v14, v14, 0x1

    add-int/lit8 v9, v9, -0x2

    move v13, v15

    move/from16 v15, v16

    move/from16 v16, v17

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_91

    :cond_101
    iget v0, v4, Lcom/google/a/i/a/j;->c:I

    if-eq v13, v0, :cond_10a

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :cond_10a
    array-length v0, v3

    iget v4, v1, Lcom/google/a/i/a/j;->c:I

    if-eq v0, v4, :cond_115

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_115
    invoke-virtual {v1, v2}, Lcom/google/a/i/a/j;->a(Lcom/google/a/i/a/f;)Lcom/google/a/i/a/j$b;

    move-result-object v0

    iget-object v4, v0, Lcom/google/a/i/a/j$b;->b:[Lcom/google/a/i/a/j$a;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_11e
    if-ge v6, v5, :cond_128

    aget-object v8, v4, v6

    iget v8, v8, Lcom/google/a/i/a/j$a;->a:I

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_11e

    :cond_128
    new-array v5, v7, [Lcom/google/a/i/a/b;

    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12d
    if-ge v7, v6, :cond_14f

    aget-object v9, v4, v7

    move v10, v8

    const/4 v8, 0x0

    :goto_133
    iget v11, v9, Lcom/google/a/i/a/j$a;->a:I

    if-ge v8, v11, :cond_14b

    iget v11, v9, Lcom/google/a/i/a/j$a;->b:I

    iget v12, v0, Lcom/google/a/i/a/j$b;->a:I

    add-int/2addr v12, v11

    add-int/lit8 v13, v10, 0x1

    new-instance v14, Lcom/google/a/i/a/b;

    new-array v12, v12, [B

    invoke-direct {v14, v11, v12}, Lcom/google/a/i/a/b;-><init>(I[B)V

    aput-object v14, v5, v10

    add-int/lit8 v8, v8, 0x1

    move v10, v13

    goto :goto_133

    :cond_14b
    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_12d

    :cond_14f
    const/4 v7, 0x0

    aget-object v4, v5, v7

    iget-object v4, v4, Lcom/google/a/i/a/b;->b:[B

    array-length v4, v4

    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_158
    if-ltz v6, :cond_164

    aget-object v7, v5, v6

    iget-object v7, v7, Lcom/google/a/i/a/b;->b:[B

    array-length v7, v7

    if-eq v7, v4, :cond_164

    add-int/lit8 v6, v6, -0x1

    goto :goto_158

    :cond_164
    const/4 v7, 0x1

    add-int/2addr v6, v7

    iget v0, v0, Lcom/google/a/i/a/j$b;->a:I

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_16b
    if-ge v0, v4, :cond_183

    move v9, v7

    const/4 v7, 0x0

    :goto_16f
    if-ge v7, v8, :cond_17f

    aget-object v10, v5, v7

    iget-object v10, v10, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, v3, v9

    aput-byte v9, v10, v0

    add-int/lit8 v7, v7, 0x1

    move v9, v11

    goto :goto_16f

    :cond_17f
    add-int/lit8 v0, v0, 0x1

    move v7, v9

    goto :goto_16b

    :cond_183
    move v0, v6

    :goto_184
    if-ge v0, v8, :cond_194

    aget-object v9, v5, v0

    iget-object v9, v9, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, v3, v7

    aput-byte v7, v9, v4

    add-int/lit8 v0, v0, 0x1

    move v7, v10

    goto :goto_184

    :cond_194
    const/4 v0, 0x0

    aget-object v9, v5, v0

    iget-object v9, v9, Lcom/google/a/i/a/b;->b:[B

    array-length v9, v9

    :goto_19a
    if-ge v4, v9, :cond_1b8

    move v10, v7

    const/4 v7, 0x0

    :goto_19e
    if-ge v7, v8, :cond_1b4

    if-ge v7, v6, :cond_1a4

    move v11, v4

    goto :goto_1a6

    :cond_1a4
    add-int/lit8 v11, v4, 0x1

    :goto_1a6
    aget-object v12, v5, v7

    iget-object v12, v12, Lcom/google/a/i/a/b;->b:[B

    add-int/lit8 v13, v10, 0x1

    aget-byte v10, v3, v10

    aput-byte v10, v12, v11

    add-int/lit8 v7, v7, 0x1

    move v10, v13

    goto :goto_19e

    :cond_1b4
    add-int/lit8 v4, v4, 0x1

    move v7, v10

    goto :goto_19a

    :cond_1b8
    array-length v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1bb
    if-ge v4, v3, :cond_1c5

    aget-object v7, v5, v4

    iget v7, v7, Lcom/google/a/i/a/b;->a:I

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1bb

    :cond_1c5
    new-array v3, v6, [B

    array-length v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1ca
    if-ge v6, v4, :cond_1e9

    aget-object v8, v5, v6

    iget-object v9, v8, Lcom/google/a/i/a/b;->b:[B

    iget v8, v8, Lcom/google/a/i/a/b;->a:I

    move-object/from16 v10, p0

    invoke-direct {v10, v9, v8}, Lcom/google/a/i/a/e;->a([BI)V

    move v11, v7

    const/4 v7, 0x0

    :goto_1d9
    if-ge v7, v8, :cond_1e5

    add-int/lit8 v12, v11, 0x1

    aget-byte v13, v9, v7

    aput-byte v13, v3, v11

    add-int/lit8 v7, v7, 0x1

    move v11, v12

    goto :goto_1d9

    :cond_1e5
    add-int/lit8 v6, v6, 0x1

    move v7, v11

    goto :goto_1ca

    :cond_1e9
    move-object/from16 v10, p0

    move-object/from16 v6, p2

    invoke-static {v3, v1, v2, v6}, Lcom/google/a/i/a/d;->a([BLcom/google/a/i/a/j;Lcom/google/a/i/a/f;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method private a([[Z)Lcom/google/a/c/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/a/c/b;->a([[Z)Lcom/google/a/c/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p1

    return-object p1
.end method

.method private a([BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_10

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/a/i/a/e;->a:Lcom/google/a/c/b/c;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/a/c/b/c;->a([II)V
    :try_end_17
    .catch Lcom/google/a/c/b/e; {:try_start_10 .. :try_end_17} :catch_22

    :goto_17
    if-ge v2, p2, :cond_21

    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_21
    return-void

    :catch_22
    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object p1

    throw p1
.end method

.method private b([[Z)Lcom/google/a/c/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z)",
            "Lcom/google/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/a/c/b;->a([[Z)Lcom/google/a/c/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/b;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    new-instance v0, Lcom/google/a/i/a/a;

    invoke-direct {v0, p1}, Lcom/google/a/i/a/a;-><init>(Lcom/google/a/c/b;)V

    const/4 p1, 0x0

    :try_start_6
    invoke-direct {p0, v0, p2}, Lcom/google/a/i/a/e;->a(Lcom/google/a/i/a/a;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object v1
    :try_end_a
    .catch Lcom/google/a/h; {:try_start_6 .. :try_end_a} :catch_f
    .catch Lcom/google/a/d; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    :catch_b
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    goto :goto_11

    :catch_f
    move-exception v1

    move-object v2, p1

    :goto_11
    :try_start_11
    iget-object v3, v0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    if-eqz v3, :cond_28

    invoke-static {}, Lcom/google/a/i/a/c;->values()[Lcom/google/a/i/a/c;

    move-result-object v3

    iget-object v4, v0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    iget-byte v4, v4, Lcom/google/a/i/a/g;->b:B

    aget-object v3, v3, v4

    iget-object v4, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v4, v4, Lcom/google/a/c/b;->b:I

    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v3, v5, v4}, Lcom/google/a/i/a/c;->unmaskBitMatrix(Lcom/google/a/c/b;I)V

    :cond_28
    iput-object p1, v0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/j;

    iput-object p1, v0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/a/i/a/a;->d:Z

    invoke-virtual {v0}, Lcom/google/a/i/a/a;->b()Lcom/google/a/i/a/j;

    invoke-virtual {v0}, Lcom/google/a/i/a/a;->a()Lcom/google/a/i/a/g;

    const/4 p1, 0x0

    :goto_36
    iget-object v3, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v3, v3, Lcom/google/a/c/b;->a:I

    if-ge p1, v3, :cond_62

    add-int/lit8 v3, p1, 0x1

    move v4, v3

    :goto_3f
    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v5, v5, Lcom/google/a/c/b;->b:I

    if-ge v4, v5, :cond_60

    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v5, p1, v4}, Lcom/google/a/c/b;->a(II)Z

    move-result v5

    iget-object v6, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v6, v4, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v6

    if-eq v5, v6, :cond_5d

    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v5, v4, p1}, Lcom/google/a/c/b;->c(II)V

    iget-object v5, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v5, p1, v4}, Lcom/google/a/c/b;->c(II)V

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_60
    move p1, v3

    goto :goto_36

    :cond_62
    invoke-direct {p0, v0, p2}, Lcom/google/a/i/a/e;->a(Lcom/google/a/i/a/a;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object p1

    new-instance p2, Lcom/google/a/i/a/i;

    invoke-direct {p2}, Lcom/google/a/i/a/i;-><init>()V

    iput-object p2, p1, Lcom/google/a/c/e;->h:Ljava/lang/Object;
    :try_end_6d
    .catch Lcom/google/a/h; {:try_start_11 .. :try_end_6d} :catch_6e
    .catch Lcom/google/a/d; {:try_start_11 .. :try_end_6d} :catch_6e

    return-object p1

    :catch_6e
    if-eqz v1, :cond_71

    throw v1

    :cond_71
    throw v2
.end method
