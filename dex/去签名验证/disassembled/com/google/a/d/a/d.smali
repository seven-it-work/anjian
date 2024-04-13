.class public final Lcom/google/a/d/a/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/a/c/b/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/c/b/c;

    sget-object v1, Lcom/google/a/c/b/a;->f:Lcom/google/a/c/b/a;

    invoke-direct {v0, v1}, Lcom/google/a/c/b/c;-><init>(Lcom/google/a/c/b/a;)V

    iput-object v0, p0, Lcom/google/a/d/a/d;->a:Lcom/google/a/c/b/c;

    return-void
.end method

.method private a([[Z)Lcom/google/a/c/e;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/a/c/b;->a([[Z)Lcom/google/a/c/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/a/d/a/d;->a(Lcom/google/a/c/b;)Lcom/google/a/c/e;

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
    iget-object v0, p0, Lcom/google/a/d/a/d;->a:Lcom/google/a/c/b/c;

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


# virtual methods
.method public final a(Lcom/google/a/c/b;)Lcom/google/a/c/e;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    new-instance v0, Lcom/google/a/d/a/a;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/a/d/a/a;-><init>(Lcom/google/a/c/b;)V

    iget-object v1, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    iget-object v2, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    iget v2, v2, Lcom/google/a/d/a/e;->g:I

    new-array v2, v2, [B

    iget-object v3, v0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    iget v3, v3, Lcom/google/a/c/b;->b:I

    iget-object v4, v0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    iget v4, v4, Lcom/google/a/c/b;->a:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1f
    const/4 v15, 0x2

    const/4 v5, 0x1

    if-ne v7, v3, :cond_86

    if-nez v8, :cond_86

    if-nez v9, :cond_86

    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v14, v3, -0x1

    invoke-virtual {v0, v14, v6, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v18

    shl-int/lit8 v18, v18, 0x1

    invoke-virtual {v0, v14, v5, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v19

    if-eqz v19, :cond_39

    or-int/lit8 v18, v18, 0x1

    :cond_39
    shl-int/lit8 v18, v18, 0x1

    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_43

    or-int/lit8 v18, v18, 0x1

    :cond_43
    shl-int/lit8 v14, v18, 0x1

    add-int/lit8 v15, v4, -0x2

    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v15

    if-eqz v15, :cond_4f

    or-int/lit8 v14, v14, 0x1

    :cond_4f
    shl-int/2addr v14, v5

    add-int/lit8 v15, v4, -0x1

    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_5a

    or-int/lit8 v14, v14, 0x1

    :cond_5a
    shl-int/2addr v14, v5

    invoke-virtual {v0, v5, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_63

    or-int/lit8 v14, v14, 0x1

    :cond_63
    shl-int/2addr v14, v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_6d

    or-int/lit8 v14, v14, 0x1

    :cond_6d
    shl-int/lit8 v6, v14, 0x1

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_78

    or-int/lit8 v6, v6, 0x1

    :cond_78
    int-to-byte v6, v6

    aput-byte v6, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move v10, v9

    const/4 v9, 0x4

    const/4 v15, 0x1

    const/16 v21, 0x1

    goto/16 :goto_216

    :cond_86
    add-int/lit8 v6, v3, -0x2

    if-ne v7, v6, :cond_f4

    if-nez v8, :cond_f4

    and-int/lit8 v14, v4, 0x3

    if-eqz v14, :cond_f4

    if-nez v11, :cond_f4

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v14, v3, -0x3

    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    shl-int/2addr v14, v5

    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_a4

    or-int/lit8 v14, v14, 0x1

    :cond_a4
    shl-int/lit8 v6, v14, 0x1

    add-int/lit8 v14, v3, -0x1

    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_b0

    or-int/lit8 v6, v6, 0x1

    :cond_b0
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x4

    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_bb

    or-int/lit8 v6, v6, 0x1

    :cond_bb
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x3

    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_c6

    or-int/lit8 v6, v6, 0x1

    :cond_c6
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x2

    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_d1

    or-int/lit8 v6, v6, 0x1

    :cond_d1
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_dc

    or-int/lit8 v6, v6, 0x1

    :cond_dc
    shl-int/2addr v6, v5

    invoke-virtual {v0, v5, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_e5

    or-int/lit8 v6, v6, 0x1

    :cond_e5
    int-to-byte v6, v6

    aput-byte v6, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move/from16 v21, v9

    move v10, v11

    const/4 v9, 0x4

    const/4 v11, 0x1

    :goto_f1
    const/4 v15, 0x1

    goto/16 :goto_216

    :cond_f4
    add-int/lit8 v14, v3, 0x4

    if-ne v7, v14, :cond_167

    const/4 v14, 0x2

    if-ne v8, v14, :cond_167

    and-int/lit8 v14, v4, 0x7

    if-nez v14, :cond_167

    if-nez v12, :cond_167

    add-int/lit8 v6, v10, 0x1

    add-int/lit8 v12, v3, -0x1

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v15

    shl-int/lit8 v14, v15, 0x1

    add-int/lit8 v15, v4, -0x1

    invoke-virtual {v0, v12, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_116

    or-int/lit8 v14, v14, 0x1

    :cond_116
    shl-int/lit8 v12, v14, 0x1

    add-int/lit8 v14, v4, -0x3

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_123

    or-int/lit8 v12, v12, 0x1

    :cond_123
    const/4 v5, 0x1

    shl-int/2addr v12, v5

    add-int/lit8 v5, v4, -0x2

    move/from16 v20, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_132

    or-int/lit8 v12, v12, 0x1

    :cond_132
    move/from16 v21, v9

    const/4 v9, 0x1

    shl-int/2addr v12, v9

    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_13e

    or-int/lit8 v12, v12, 0x1

    :cond_13e
    shl-int/lit8 v6, v12, 0x1

    invoke-virtual {v0, v9, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_148

    or-int/lit8 v6, v6, 0x1

    :cond_148
    shl-int/2addr v6, v9

    invoke-virtual {v0, v9, v5, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v5

    if-eqz v5, :cond_151

    or-int/lit8 v6, v6, 0x1

    :cond_151
    shl-int/lit8 v5, v6, 0x1

    invoke-virtual {v0, v9, v15, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_15b

    or-int/lit8 v5, v5, 0x1

    :cond_15b
    int-to-byte v5, v5

    aput-byte v5, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move/from16 v10, v20

    const/4 v9, 0x4

    const/4 v12, 0x1

    goto :goto_f1

    :cond_167
    move/from16 v21, v9

    if-ne v7, v6, :cond_1d0

    if-nez v8, :cond_1d0

    and-int/lit8 v5, v4, 0x7

    const/4 v9, 0x4

    if-ne v5, v9, :cond_1d1

    if-nez v13, :cond_1d1

    add-int/lit8 v5, v10, 0x1

    add-int/lit8 v13, v3, -0x3

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    invoke-virtual {v0, v6, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_187

    or-int/lit8 v13, v13, 0x1

    :cond_187
    shl-int/lit8 v6, v13, 0x1

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v0, v13, v14, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_193

    or-int/lit8 v6, v6, 0x1

    :cond_193
    shl-int/2addr v6, v15

    add-int/lit8 v13, v4, -0x2

    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_19e

    or-int/lit8 v6, v6, 0x1

    :cond_19e
    shl-int/2addr v6, v15

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v16

    if-eqz v16, :cond_1a9

    or-int/lit8 v6, v6, 0x1

    :cond_1a9
    shl-int/2addr v6, v15

    invoke-virtual {v0, v15, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_1b2

    or-int/lit8 v6, v6, 0x1

    :cond_1b2
    shl-int/2addr v6, v15

    const/4 v14, 0x2

    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_1bc

    or-int/lit8 v6, v6, 0x1

    :cond_1bc
    shl-int/2addr v6, v15

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_1c6

    or-int/lit8 v6, v6, 0x1

    :cond_1c6
    int-to-byte v6, v6

    aput-byte v6, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move v10, v5

    const/4 v13, 0x1

    goto :goto_216

    :cond_1d0
    const/4 v9, 0x4

    :cond_1d1
    const/4 v15, 0x1

    :cond_1d2
    if-ge v7, v3, :cond_1e8

    if-ltz v8, :cond_1e8

    iget-object v5, v0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v5, v8, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v5

    if-nez v5, :cond_1e8

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/google/a/d/a/a;->b(IIII)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v10

    move v10, v5

    :cond_1e8
    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    if-ltz v7, :cond_1f0

    if-lt v8, v4, :cond_1d2

    :cond_1f0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    :cond_1f4
    if-ltz v7, :cond_20a

    if-ge v8, v4, :cond_20a

    iget-object v5, v0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v5, v8, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v5

    if-nez v5, :cond_20a

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/google/a/d/a/a;->b(IIII)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v10

    move v10, v5

    :cond_20a
    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ge v7, v3, :cond_212

    if-gez v8, :cond_1f4

    :cond_212
    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v8, v8, 0x1

    :goto_216
    if-lt v7, v3, :cond_30b

    if-lt v8, v4, :cond_30b

    iget-object v0, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    iget v0, v0, Lcom/google/a/d/a/e;->g:I

    if-eq v10, v0, :cond_225

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :cond_225
    iget-object v0, v1, Lcom/google/a/d/a/e;->f:Lcom/google/a/d/a/e$b;

    iget-object v3, v0, Lcom/google/a/d/a/e$b;->b:[Lcom/google/a/d/a/e$a;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_22c
    if-ge v5, v4, :cond_236

    aget-object v7, v3, v5

    iget v7, v7, Lcom/google/a/d/a/e$a;->a:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_22c

    :cond_236
    new-array v4, v6, [Lcom/google/a/d/a/b;

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_23b
    if-ge v6, v5, :cond_25d

    aget-object v8, v3, v6

    move v9, v7

    const/4 v7, 0x0

    :goto_241
    iget v10, v8, Lcom/google/a/d/a/e$a;->a:I

    if-ge v7, v10, :cond_259

    iget v10, v8, Lcom/google/a/d/a/e$a;->b:I

    iget v11, v0, Lcom/google/a/d/a/e$b;->a:I

    add-int/2addr v11, v10

    add-int/lit8 v12, v9, 0x1

    new-instance v13, Lcom/google/a/d/a/b;

    new-array v11, v11, [B

    invoke-direct {v13, v10, v11}, Lcom/google/a/d/a/b;-><init>(I[B)V

    aput-object v13, v4, v9

    add-int/lit8 v7, v7, 0x1

    move v9, v12

    goto :goto_241

    :cond_259
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_23b

    :cond_25d
    const/4 v6, 0x0

    aget-object v3, v4, v6

    iget-object v3, v3, Lcom/google/a/d/a/b;->b:[B

    array-length v3, v3

    iget v0, v0, Lcom/google/a/d/a/e$b;->a:I

    sub-int/2addr v3, v0

    add-int/lit8 v0, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_26a
    if-ge v5, v0, :cond_282

    move v8, v6

    const/4 v6, 0x0

    :goto_26e
    if-ge v6, v7, :cond_27e

    aget-object v9, v4, v6

    iget-object v9, v9, Lcom/google/a/d/a/b;->b:[B

    add-int/lit8 v10, v8, 0x1

    aget-byte v8, v2, v8

    aput-byte v8, v9, v5

    add-int/lit8 v6, v6, 0x1

    move v8, v10

    goto :goto_26e

    :cond_27e
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_26a

    :cond_282
    iget v1, v1, Lcom/google/a/d/a/e;->a:I

    const/16 v5, 0x18

    if-ne v1, v5, :cond_289

    goto :goto_28a

    :cond_289
    const/4 v15, 0x0

    :goto_28a
    if-eqz v15, :cond_28f

    const/16 v1, 0x8

    goto :goto_290

    :cond_28f
    move v1, v7

    :goto_290
    const/4 v5, 0x0

    :goto_291
    if-ge v5, v1, :cond_2a1

    aget-object v8, v4, v5

    iget-object v8, v8, Lcom/google/a/d/a/b;->b:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v2, v6

    aput-byte v6, v8, v0

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_291

    :cond_2a1
    const/4 v5, 0x0

    aget-object v0, v4, v5

    iget-object v0, v0, Lcom/google/a/d/a/b;->b:[B

    array-length v0, v0

    :goto_2a7
    if-ge v3, v0, :cond_2cd

    const/4 v1, 0x0

    :goto_2aa
    if-ge v1, v7, :cond_2ca

    if-eqz v15, :cond_2b2

    add-int/lit8 v8, v1, 0x8

    rem-int/2addr v8, v7

    goto :goto_2b3

    :cond_2b2
    move v8, v1

    :goto_2b3
    if-eqz v15, :cond_2bb

    const/4 v9, 0x7

    if-le v8, v9, :cond_2bb

    add-int/lit8 v9, v3, -0x1

    goto :goto_2bc

    :cond_2bb
    move v9, v3

    :goto_2bc
    aget-object v8, v4, v8

    iget-object v8, v8, Lcom/google/a/d/a/b;->b:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v6, v2, v6

    aput-byte v6, v8, v9

    add-int/lit8 v1, v1, 0x1

    move v6, v10

    goto :goto_2aa

    :cond_2ca
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a7

    :cond_2cd
    array-length v0, v2

    if-eq v6, v0, :cond_2d6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2d6
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2d9
    if-ge v1, v0, :cond_2e3

    aget-object v3, v4, v1

    iget v3, v3, Lcom/google/a/d/a/b;->a:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d9

    :cond_2e3
    new-array v0, v2, [B

    array-length v1, v4

    const/4 v2, 0x0

    :goto_2e7
    if-ge v2, v1, :cond_304

    aget-object v3, v4, v2

    iget-object v6, v3, Lcom/google/a/d/a/b;->b:[B

    iget v3, v3, Lcom/google/a/d/a/b;->a:I

    move-object/from16 v14, p0

    invoke-direct {v14, v6, v3}, Lcom/google/a/d/a/d;->a([BI)V

    const/4 v7, 0x0

    :goto_2f5
    if-ge v7, v3, :cond_301

    mul-int v8, v7, v1

    add-int/2addr v8, v2

    aget-byte v9, v6, v7

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f5

    :cond_301
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e7

    :cond_304
    move-object/from16 v14, p0

    invoke-static {v0}, Lcom/google/a/d/a/c;->a([B)Lcom/google/a/c/e;

    move-result-object v0

    return-object v0

    :cond_30b
    move-object/from16 v14, p0

    const/4 v5, 0x0

    move/from16 v9, v21

    const/4 v6, 0x0

    goto/16 :goto_1f
.end method
