.class public final Lcom/google/a/c/j;
.super Lcom/google/a/c/h;


# static fields
.field private static final b:I = 0x3

.field private static final c:I = 0x8

.field private static final d:I = 0x7

.field private static final e:I = 0x28

.field private static final f:I = 0x18


# instance fields
.field private g:Lcom/google/a/c/b;


# direct methods
.method public constructor <init>(Lcom/google/a/j;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/a/c/h;-><init>(Lcom/google/a/j;)V

    return-void
.end method

.method private static a(II)I
    .registers 3

    const/4 v0, 0x2

    if-ge p0, v0, :cond_4

    return v0

    :cond_4
    if-le p0, p1, :cond_7

    return p1

    :cond_7
    return p0
.end method

.method private static a([BIIIILcom/google/a/c/b;)V
    .registers 13

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_6
    const/16 v3, 0x8

    if-ge v0, v3, :cond_23

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_1f

    add-int v5, v2, v4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v5, p3, :cond_1c

    add-int v5, p1, v4

    add-int v6, p2, v0

    invoke-virtual {p5, v5, v6}, Lcom/google/a/c/b;->b(II)V

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, p4

    goto :goto_6

    :cond_23
    return-void
.end method

.method private static a([BIIII[[ILcom/google/a/c/b;)V
    .registers 26

    move/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x8

    add-int/lit8 v3, p4, -0x8

    add-int/lit8 v4, p3, -0x8

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v1, :cond_92

    shl-int/lit8 v7, v6, 0x3

    if-le v7, v3, :cond_12

    move v7, v3

    :cond_12
    add-int/lit8 v8, v1, -0x3

    invoke-static {v6, v8}, Lcom/google/a/c/j;->a(II)I

    move-result v8

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v0, :cond_88

    shl-int/lit8 v10, v9, 0x3

    if-le v10, v4, :cond_20

    move v10, v4

    :cond_20
    add-int/lit8 v11, v0, -0x3

    invoke-static {v9, v11}, Lcom/google/a/c/j;->a(II)I

    move-result v11

    const/4 v12, -0x2

    const/4 v13, 0x0

    :goto_28
    const/4 v14, 0x2

    if-gt v12, v14, :cond_4d

    add-int v15, v8, v12

    aget-object v15, p5, v15

    add-int/lit8 v16, v11, -0x2

    aget v16, v15, v16

    add-int/lit8 v17, v11, -0x1

    aget v17, v15, v17

    add-int v16, v16, v17

    aget v17, v15, v11

    add-int v16, v16, v17

    add-int/lit8 v17, v11, 0x1

    aget v17, v15, v17

    add-int v16, v16, v17

    add-int/2addr v14, v11

    aget v14, v15, v14

    add-int v16, v16, v14

    add-int v13, v13, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_28

    :cond_4d
    div-int/lit8 v13, v13, 0x19

    mul-int v11, v7, p3

    add-int/2addr v11, v10

    move v12, v11

    const/4 v11, 0x0

    :goto_54
    if-ge v11, v2, :cond_7f

    const/4 v14, 0x0

    :goto_57
    if-ge v14, v2, :cond_74

    add-int v15, v12, v14

    aget-byte v2, p0, v15

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v13, :cond_6b

    add-int v2, v10, v14

    add-int v5, v7, v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v5}, Lcom/google/a/c/b;->b(II)V

    goto :goto_6d

    :cond_6b
    move-object/from16 v0, p6

    :goto_6d
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto :goto_57

    :cond_74
    move-object/from16 v0, p6

    add-int/lit8 v11, v11, 0x1

    add-int v12, v12, p3

    move/from16 v0, p1

    const/16 v2, 0x8

    goto :goto_54

    :cond_7f
    move-object/from16 v0, p6

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto :goto_19

    :cond_88
    move-object/from16 v0, p6

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto/16 :goto_b

    :cond_92
    return-void
.end method

.method private static a([BIIII)[[I
    .registers 22

    move/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x8

    add-int/lit8 v3, p4, -0x8

    add-int/lit8 v4, p3, -0x8

    filled-new-array {v1, v0}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v1, :cond_b3

    shl-int/lit8 v8, v7, 0x3

    if-le v8, v3, :cond_1e

    move v8, v3

    :cond_1e
    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v0, :cond_ab

    shl-int/lit8 v10, v9, 0x3

    if-le v10, v4, :cond_26

    move v10, v4

    :cond_26
    mul-int v11, v8, p3

    add-int/2addr v11, v10

    move v14, v11

    const/16 v6, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2f
    if-ge v11, v2, :cond_79

    move v10, v13

    move v13, v6

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v2, :cond_4b

    add-int v15, v14, v6

    aget-byte v2, p0, v15

    const/16 v0, 0xff

    and-int/2addr v2, v0

    add-int/2addr v12, v2

    if-ge v2, v13, :cond_41

    move v13, v2

    :cond_41
    if-le v2, v10, :cond_44

    move v10, v2

    :cond_44
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto :goto_34

    :cond_4b
    sub-int v0, v10, v13

    const/16 v2, 0x18

    if-le v0, v2, :cond_6c

    :goto_51
    add-int/lit8 v11, v11, 0x1

    add-int v14, v14, p3

    const/16 v0, 0x8

    if-ge v11, v0, :cond_6c

    const/4 v2, 0x0

    :goto_5a
    if-ge v2, v0, :cond_69

    add-int v6, v14, v2

    aget-byte v6, p0, v6

    const/16 v0, 0xff

    and-int/2addr v6, v0

    add-int/2addr v12, v6

    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x8

    goto :goto_5a

    :cond_69
    const/16 v0, 0xff

    goto :goto_51

    :cond_6c
    const/16 v0, 0xff

    add-int/lit8 v11, v11, 0x1

    add-int v14, v14, p3

    move v6, v13

    move/from16 v0, p1

    const/16 v2, 0x8

    move v13, v10

    goto :goto_2f

    :cond_79
    shr-int/lit8 v0, v12, 0x6

    sub-int/2addr v13, v6

    const/16 v2, 0x18

    if-gt v13, v2, :cond_9f

    div-int/lit8 v0, v6, 0x2

    if-lez v7, :cond_9f

    if-lez v9, :cond_9f

    add-int/lit8 v2, v7, -0x1

    aget-object v10, v5, v2

    aget v10, v10, v9

    aget-object v11, v5, v7

    add-int/lit8 v12, v9, -0x1

    aget v11, v11, v12

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    aget-object v2, v5, v2

    aget v2, v2, v12

    add-int/2addr v10, v2

    div-int/lit8 v2, v10, 0x4

    if-ge v6, v2, :cond_9f

    move v0, v2

    :cond_9f
    aget-object v2, v5, v7

    aput v0, v2, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto/16 :goto_1f

    :cond_ab
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    const/16 v2, 0x8

    goto/16 :goto_17

    :cond_b3
    return-object v5
.end method


# virtual methods
.method public final a(Lcom/google/a/j;)Lcom/google/a/b;
    .registers 3

    new-instance v0, Lcom/google/a/c/j;

    invoke-direct {v0, p1}, Lcom/google/a/c/j;-><init>(Lcom/google/a/j;)V

    return-object v0
.end method

.method public final a()Lcom/google/a/c/b;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/c/j;->g:Lcom/google/a/c/b;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/a/c/j;->g:Lcom/google/a/c/b;

    return-object v1

    :cond_9
    iget-object v1, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    iget v2, v1, Lcom/google/a/j;->a:I

    iget v3, v1, Lcom/google/a/j;->b:I

    const/16 v4, 0x28

    if-lt v2, v4, :cond_17d

    if-lt v3, v4, :cond_17d

    invoke-virtual {v1}, Lcom/google/a/j;->a()[B

    move-result-object v1

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v5, v2, 0x7

    if-eqz v5, :cond_21

    add-int/lit8 v4, v4, 0x1

    :cond_21
    shr-int/lit8 v5, v3, 0x3

    and-int/lit8 v6, v3, 0x7

    if-eqz v6, :cond_29

    add-int/lit8 v5, v5, 0x1

    :cond_29
    add-int/lit8 v6, v3, -0x8

    add-int/lit8 v7, v2, -0x8

    filled-new-array {v5, v4}, [I

    move-result-object v8

    const-class v9, I

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    const/4 v10, 0x0

    :goto_3a
    const/16 v13, 0x8

    if-ge v10, v5, :cond_e4

    shl-int/lit8 v14, v10, 0x3

    if-le v14, v6, :cond_43

    move v14, v6

    :cond_43
    const/4 v15, 0x0

    :goto_44
    if-ge v15, v4, :cond_de

    shl-int/lit8 v9, v15, 0x3

    if-le v9, v7, :cond_4b

    move v9, v7

    :cond_4b
    mul-int v16, v14, v2

    add-int v16, v16, v9

    move/from16 v19, v16

    const/4 v9, 0x0

    const/16 v12, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_58
    if-ge v9, v13, :cond_a5

    move v11, v12

    move/from16 v20, v14

    move/from16 v14, v17

    const/4 v12, 0x0

    :goto_60
    if-ge v12, v13, :cond_78

    add-int v17, v19, v12

    aget-byte v13, v1, v17

    const/16 v0, 0xff

    and-int/2addr v13, v0

    add-int v16, v16, v13

    if-ge v13, v11, :cond_6e

    move v11, v13

    :cond_6e
    if-le v13, v14, :cond_71

    move v14, v13

    :cond_71
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    const/16 v13, 0x8

    goto :goto_60

    :cond_78
    sub-int v0, v14, v11

    const/16 v12, 0x18

    if-le v0, v12, :cond_97

    :cond_7e
    add-int/lit8 v9, v9, 0x1

    add-int v19, v19, v2

    const/16 v0, 0x8

    if-ge v9, v0, :cond_97

    const/4 v12, 0x0

    :goto_87
    if-ge v12, v0, :cond_7e

    add-int v0, v19, v12

    aget-byte v0, v1, v0

    const/16 v13, 0xff

    and-int/2addr v0, v13

    add-int v16, v16, v0

    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x8

    goto :goto_87

    :cond_97
    add-int/lit8 v9, v9, 0x1

    add-int v19, v19, v2

    move v12, v11

    move/from16 v17, v14

    move/from16 v14, v20

    move-object/from16 v0, p0

    const/16 v13, 0x8

    goto :goto_58

    :cond_a5
    move/from16 v20, v14

    shr-int/lit8 v0, v16, 0x6

    sub-int v9, v17, v12

    const/16 v11, 0x18

    if-gt v9, v11, :cond_d0

    div-int/lit8 v0, v12, 0x2

    if-lez v10, :cond_d0

    if-lez v15, :cond_d0

    add-int/lit8 v9, v10, -0x1

    aget-object v11, v8, v9

    aget v11, v11, v15

    aget-object v13, v8, v10

    add-int/lit8 v14, v15, -0x1

    aget v13, v13, v14

    const/16 v16, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    aget-object v9, v8, v9

    aget v9, v9, v14

    add-int/2addr v11, v9

    div-int/lit8 v9, v11, 0x4

    if-ge v12, v9, :cond_d0

    move v0, v9

    :cond_d0
    aget-object v9, v8, v10

    aput v0, v9, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v20

    move-object/from16 v0, p0

    const/16 v13, 0x8

    goto/16 :goto_44

    :cond_de
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_3a

    :cond_e4
    new-instance v0, Lcom/google/a/c/b;

    invoke-direct {v0, v2, v3}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v3, 0x0

    :goto_ea
    if-ge v3, v5, :cond_17a

    shl-int/lit8 v9, v3, 0x3

    if-le v9, v6, :cond_f1

    move v9, v6

    :cond_f1
    add-int/lit8 v10, v5, -0x3

    invoke-static {v3, v10}, Lcom/google/a/c/j;->a(II)I

    move-result v10

    const/4 v11, 0x0

    :goto_f8
    if-ge v11, v4, :cond_16e

    shl-int/lit8 v12, v11, 0x3

    if-le v12, v7, :cond_ff

    move v12, v7

    :cond_ff
    add-int/lit8 v13, v4, -0x3

    invoke-static {v11, v13}, Lcom/google/a/c/j;->a(II)I

    move-result v13

    const/4 v14, -0x2

    move/from16 v21, v4

    const/4 v4, 0x2

    const/4 v15, 0x0

    :goto_10a
    if-gt v14, v4, :cond_132

    add-int v4, v10, v14

    aget-object v4, v8, v4

    add-int/lit8 v16, v13, -0x2

    aget v16, v4, v16

    add-int/lit8 v17, v13, -0x1

    aget v17, v4, v17

    add-int v16, v16, v17

    aget v17, v4, v13

    add-int v16, v16, v17

    add-int/lit8 v17, v13, 0x1

    aget v17, v4, v17

    add-int v16, v16, v17

    const/16 v17, 0x2

    add-int/lit8 v18, v13, 0x2

    aget v4, v4, v18

    add-int v16, v16, v4

    add-int v15, v15, v16

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x2

    goto :goto_10a

    :cond_132
    const/16 v17, 0x2

    div-int/lit8 v15, v15, 0x19

    mul-int v4, v9, v2

    add-int/2addr v4, v12

    move v13, v4

    const/4 v4, 0x0

    :goto_13b
    const/16 v14, 0x8

    if-ge v4, v14, :cond_165

    move/from16 v22, v5

    const/4 v5, 0x0

    :goto_142
    if-ge v5, v14, :cond_15d

    add-int v16, v13, v5

    aget-byte v14, v1, v16

    move-object/from16 v23, v1

    const/16 v1, 0xff

    and-int/2addr v14, v1

    if-gt v14, v15, :cond_156

    add-int v14, v12, v5

    add-int v1, v9, v4

    invoke-virtual {v0, v14, v1}, Lcom/google/a/c/b;->b(II)V

    :cond_156
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v23

    const/16 v14, 0x8

    goto :goto_142

    :cond_15d
    move-object/from16 v23, v1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v13, v2

    move/from16 v5, v22

    goto :goto_13b

    :cond_165
    move-object/from16 v23, v1

    move/from16 v22, v5

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v21

    goto :goto_f8

    :cond_16e
    move-object/from16 v23, v1

    move/from16 v21, v4

    move/from16 v22, v5

    const/16 v17, 0x2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_ea

    :cond_17a
    move-object/from16 v1, p0

    goto :goto_182

    :cond_17d
    move-object v1, v0

    invoke-super/range {p0 .. p0}, Lcom/google/a/c/h;->a()Lcom/google/a/c/b;

    move-result-object v0

    :goto_182
    iput-object v0, v1, Lcom/google/a/c/j;->g:Lcom/google/a/c/b;

    iget-object v0, v1, Lcom/google/a/c/j;->g:Lcom/google/a/c/b;

    return-object v0
.end method
