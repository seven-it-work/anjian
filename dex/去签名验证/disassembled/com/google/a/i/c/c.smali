.class public final Lcom/google/a/i/c/c;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "ISO-8859-1"

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/a/i/c/c;->b:[I

    return-void

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .registers 2

    sget-object v0, Lcom/google/a/i/c/c;->b:[I

    array-length v0, v0

    if-ge p0, v0, :cond_a

    sget-object v0, Lcom/google/a/i/c/c;->b:[I

    aget p0, v0, p0

    return p0

    :cond_a
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/google/a/c/a;Lcom/google/a/i/a/f;Lcom/google/a/i/a/j;Lcom/google/a/i/c/b;)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v2, 0x0

    const v4, 0x7fffffff

    :goto_b
    const/16 v5, 0x8

    if-ge v2, v5, :cond_148

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static {v5, v6, v7, v2, v0}, Lcom/google/a/i/c/e;->a(Lcom/google/a/c/a;Lcom/google/a/i/a/f;Lcom/google/a/i/a/j;ILcom/google/a/i/c/b;)V

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result v9

    invoke-static {v0, v1}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/google/a/i/c/b;->a:[[B

    iget v11, v0, Lcom/google/a/i/c/b;->b:I

    iget v12, v0, Lcom/google/a/i/c/b;->c:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2a
    add-int/lit8 v15, v12, -0x1

    if-ge v13, v15, :cond_5a

    aget-object v15, v10, v13

    move/from16 v16, v14

    const/4 v14, 0x0

    :goto_33
    add-int/lit8 v1, v11, -0x1

    if-ge v14, v1, :cond_53

    aget-byte v1, v15, v14

    add-int/lit8 v17, v14, 0x1

    aget-byte v8, v15, v17

    if-ne v1, v8, :cond_4f

    add-int/lit8 v8, v13, 0x1

    aget-object v18, v10, v8

    aget-byte v14, v18, v14

    if-ne v1, v14, :cond_4f

    aget-object v8, v10, v8

    aget-byte v8, v8, v17

    if-ne v1, v8, :cond_4f

    add-int/lit8 v16, v16, 0x1

    :cond_4f
    move/from16 v14, v17

    const/4 v8, 0x1

    goto :goto_33

    :cond_53
    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v16

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto :goto_2a

    :cond_5a
    mul-int/lit8 v14, v14, 0x3

    add-int/2addr v9, v14

    iget-object v1, v0, Lcom/google/a/i/c/b;->a:[[B

    iget v8, v0, Lcom/google/a/i/c/b;->b:I

    iget v10, v0, Lcom/google/a/i/c/b;->c:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_65
    if-ge v11, v10, :cond_10a

    move v13, v12

    const/4 v12, 0x0

    :goto_69
    if-ge v12, v8, :cond_101

    aget-object v14, v1, v11

    add-int/lit8 v15, v12, 0x6

    if-ge v15, v8, :cond_ac

    aget-byte v5, v14, v12

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ac

    add-int/lit8 v5, v12, 0x1

    aget-byte v5, v14, v5

    if-nez v5, :cond_ac

    add-int/lit8 v5, v12, 0x2

    aget-byte v5, v14, v5

    if-ne v5, v6, :cond_ac

    add-int/lit8 v5, v12, 0x3

    aget-byte v5, v14, v5

    if-ne v5, v6, :cond_ac

    add-int/lit8 v5, v12, 0x4

    aget-byte v5, v14, v5

    if-ne v5, v6, :cond_ac

    add-int/lit8 v5, v12, 0x5

    aget-byte v5, v14, v5

    if-nez v5, :cond_ac

    aget-byte v5, v14, v15

    if-ne v5, v6, :cond_ac

    add-int/lit8 v5, v12, -0x4

    invoke-static {v14, v5, v12}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v5

    if-nez v5, :cond_aa

    add-int/lit8 v5, v12, 0x7

    add-int/lit8 v6, v12, 0xb

    invoke-static {v14, v5, v6}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_ac

    :cond_aa
    add-int/lit8 v13, v13, 0x1

    :cond_ac
    add-int/lit8 v5, v11, 0x6

    if-ge v5, v10, :cond_f9

    aget-object v6, v1, v11

    aget-byte v6, v6, v12

    const/4 v14, 0x1

    if-ne v6, v14, :cond_f9

    add-int/lit8 v6, v11, 0x1

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_f9

    add-int/lit8 v6, v11, 0x2

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-ne v6, v14, :cond_f9

    add-int/lit8 v6, v11, 0x3

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-ne v6, v14, :cond_f9

    add-int/lit8 v6, v11, 0x4

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-ne v6, v14, :cond_f9

    add-int/lit8 v6, v11, 0x5

    aget-object v6, v1, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_f9

    aget-object v5, v1, v5

    aget-byte v5, v5, v12

    if-ne v5, v14, :cond_f9

    add-int/lit8 v5, v11, -0x4

    invoke-static {v1, v12, v5, v11}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v5

    if-nez v5, :cond_f7

    add-int/lit8 v5, v11, 0x7

    add-int/lit8 v6, v11, 0xb

    invoke-static {v1, v12, v5, v6}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v5

    if-eqz v5, :cond_f9

    :cond_f7
    add-int/lit8 v13, v13, 0x1

    :cond_f9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    goto/16 :goto_69

    :cond_101
    add-int/lit8 v11, v11, 0x1

    move v12, v13

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    goto/16 :goto_65

    :cond_10a
    mul-int/lit8 v12, v12, 0x28

    add-int/2addr v9, v12

    iget-object v1, v0, Lcom/google/a/i/c/b;->a:[[B

    iget v5, v0, Lcom/google/a/i/c/b;->b:I

    iget v6, v0, Lcom/google/a/i/c/b;->c:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_115
    if-ge v8, v6, :cond_12c

    aget-object v11, v1, v8

    move v12, v10

    const/4 v10, 0x0

    :goto_11b
    if-ge v10, v5, :cond_127

    aget-byte v13, v11, v10

    const/4 v14, 0x1

    if-ne v13, v14, :cond_124

    add-int/lit8 v12, v12, 0x1

    :cond_124
    add-int/lit8 v10, v10, 0x1

    goto :goto_11b

    :cond_127
    const/4 v14, 0x1

    add-int/lit8 v8, v8, 0x1

    move v10, v12

    goto :goto_115

    :cond_12c
    iget v1, v0, Lcom/google/a/i/c/b;->c:I

    iget v5, v0, Lcom/google/a/i/c/b;->b:I

    mul-int v1, v1, v5

    shl-int/lit8 v5, v10, 0x1

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    div-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v9, v5

    if-ge v9, v4, :cond_143

    move v3, v2

    move v4, v9

    :cond_143
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_148
    return v3
.end method

.method private static a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I
    .registers 4

    iget p1, p1, Lcom/google/a/c/a;->b:I

    invoke-virtual {p0, p3}, Lcom/google/a/i/a/h;->getCharacterCountBits(Lcom/google/a/i/a/j;)I

    move-result p0

    add-int/2addr p1, p0

    iget p0, p2, Lcom/google/a/c/a;->b:I

    add-int/2addr p1, p0

    return p1
.end method

.method private static a(Lcom/google/a/i/c/b;)I
    .registers 15

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/a/i/c/d;->a(Lcom/google/a/i/c/b;Z)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/a/i/c/b;->a:[[B

    iget v4, p0, Lcom/google/a/i/c/b;->b:I

    iget v5, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_13
    add-int/lit8 v8, v5, -0x1

    if-ge v6, v8, :cond_3d

    aget-object v8, v3, v6

    move v9, v7

    const/4 v7, 0x0

    :goto_1b
    add-int/lit8 v10, v4, -0x1

    if-ge v7, v10, :cond_39

    aget-byte v10, v8, v7

    add-int/lit8 v11, v7, 0x1

    aget-byte v12, v8, v11

    if-ne v10, v12, :cond_37

    add-int/lit8 v12, v6, 0x1

    aget-object v13, v3, v12

    aget-byte v7, v13, v7

    if-ne v10, v7, :cond_37

    aget-object v7, v3, v12

    aget-byte v7, v7, v11

    if-ne v10, v7, :cond_37

    add-int/lit8 v9, v9, 0x1

    :cond_37
    move v7, v11

    goto :goto_1b

    :cond_39
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_13

    :cond_3d
    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v1, v7

    iget-object v3, p0, Lcom/google/a/i/c/b;->a:[[B

    iget v4, p0, Lcom/google/a/i/c/b;->b:I

    iget v5, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_48
    if-ge v6, v5, :cond_e3

    move v8, v7

    const/4 v7, 0x0

    :goto_4c
    if-ge v7, v4, :cond_de

    aget-object v9, v3, v6

    add-int/lit8 v10, v7, 0x6

    if-ge v10, v4, :cond_8e

    aget-byte v11, v9, v7

    if-ne v11, v0, :cond_8e

    add-int/lit8 v11, v7, 0x1

    aget-byte v11, v9, v11

    if-nez v11, :cond_8e

    add-int/lit8 v11, v7, 0x2

    aget-byte v11, v9, v11

    if-ne v11, v0, :cond_8e

    add-int/lit8 v11, v7, 0x3

    aget-byte v11, v9, v11

    if-ne v11, v0, :cond_8e

    add-int/lit8 v11, v7, 0x4

    aget-byte v11, v9, v11

    if-ne v11, v0, :cond_8e

    add-int/lit8 v11, v7, 0x5

    aget-byte v11, v9, v11

    if-nez v11, :cond_8e

    aget-byte v10, v9, v10

    if-ne v10, v0, :cond_8e

    add-int/lit8 v10, v7, -0x4

    invoke-static {v9, v10, v7}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v10

    if-nez v10, :cond_8c

    add-int/lit8 v10, v7, 0x7

    add-int/lit8 v11, v7, 0xb

    invoke-static {v9, v10, v11}, Lcom/google/a/i/c/d;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_8e

    :cond_8c
    add-int/lit8 v8, v8, 0x1

    :cond_8e
    add-int/lit8 v9, v6, 0x6

    if-ge v9, v5, :cond_da

    aget-object v10, v3, v6

    aget-byte v10, v10, v7

    if-ne v10, v0, :cond_da

    add-int/lit8 v10, v6, 0x1

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-nez v10, :cond_da

    add-int/lit8 v10, v6, 0x2

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-ne v10, v0, :cond_da

    add-int/lit8 v10, v6, 0x3

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-ne v10, v0, :cond_da

    add-int/lit8 v10, v6, 0x4

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-ne v10, v0, :cond_da

    add-int/lit8 v10, v6, 0x5

    aget-object v10, v3, v10

    aget-byte v10, v10, v7

    if-nez v10, :cond_da

    aget-object v9, v3, v9

    aget-byte v9, v9, v7

    if-ne v9, v0, :cond_da

    add-int/lit8 v9, v6, -0x4

    invoke-static {v3, v7, v9, v6}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v9

    if-nez v9, :cond_d8

    add-int/lit8 v9, v6, 0x7

    add-int/lit8 v10, v6, 0xb

    invoke-static {v3, v7, v9, v10}, Lcom/google/a/i/c/d;->a([[BIII)Z

    move-result v9

    if-eqz v9, :cond_da

    :cond_d8
    add-int/lit8 v8, v8, 0x1

    :cond_da
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4c

    :cond_de
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto/16 :goto_48

    :cond_e3
    mul-int/lit8 v7, v7, 0x28

    add-int/2addr v1, v7

    iget-object v3, p0, Lcom/google/a/i/c/b;->a:[[B

    iget v4, p0, Lcom/google/a/i/c/b;->b:I

    iget v5, p0, Lcom/google/a/i/c/b;->c:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_ee
    if-ge v6, v5, :cond_103

    aget-object v8, v3, v6

    move v9, v7

    const/4 v7, 0x0

    :goto_f4
    if-ge v7, v4, :cond_ff

    aget-byte v10, v8, v7

    if-ne v10, v0, :cond_fc

    add-int/lit8 v9, v9, 0x1

    :cond_fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_f4

    :cond_ff
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_ee

    :cond_103
    iget v2, p0, Lcom/google/a/i/c/b;->c:I

    iget p0, p0, Lcom/google/a/i/c/b;->b:I

    mul-int v2, v2, p0

    shl-int/lit8 p0, v7, 0x1

    sub-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    div-int/2addr p0, v2

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v1, p0

    return v1
.end method

.method private static a(Lcom/google/a/c/a;III)Lcom/google/a/c/a;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/a/c/a;->a()I

    move-result v3

    if-eq v3, v1, :cond_14

    new-instance v0, Lcom/google/a/w;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1d
    if-ge v5, v2, :cond_9c

    const/4 v9, 0x1

    new-array v10, v9, [I

    new-array v9, v9, [I

    if-lt v5, v2, :cond_2e

    new-instance v0, Lcom/google/a/w;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    rem-int v11, v0, v2

    sub-int v12, v2, v11

    div-int v13, v0, v2

    add-int/lit8 v14, v13, 0x1

    div-int v15, v1, v2

    add-int/lit8 v16, v15, 0x1

    sub-int/2addr v13, v15

    sub-int v14, v14, v16

    if-eq v13, v14, :cond_47

    new-instance v0, Lcom/google/a/w;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    add-int v4, v12, v11

    if-eq v2, v4, :cond_53

    new-instance v0, Lcom/google/a/w;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    add-int v4, v15, v13

    mul-int v4, v4, v12

    add-int v17, v16, v14

    mul-int v17, v17, v11

    add-int v4, v4, v17

    if-eq v0, v4, :cond_67

    new-instance v0, Lcom/google/a/w;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    if-ge v5, v12, :cond_6f

    const/4 v4, 0x0

    aput v15, v10, v4

    aput v13, v9, v4

    goto :goto_74

    :cond_6f
    const/4 v4, 0x0

    aput v16, v10, v4

    aput v14, v9, v4

    :goto_74
    aget v11, v10, v4

    new-array v12, v11, [B

    shl-int/lit8 v13, v6, 0x3

    move-object/from16 v14, p0

    invoke-virtual {v14, v13, v12, v11}, Lcom/google/a/c/a;->a(I[BI)V

    aget v9, v9, v4

    invoke-static {v12, v9}, Lcom/google/a/i/c/c;->a([BI)[B

    move-result-object v9

    new-instance v13, Lcom/google/a/i/c/a;

    invoke-direct {v13, v12, v9}, Lcom/google/a/i/c/a;-><init>([B[B)V

    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aget v9, v10, v4

    add-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_9c
    const/4 v4, 0x0

    if-eq v1, v6, :cond_a7

    new-instance v0, Lcom/google/a/w;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    new-instance v1, Lcom/google/a/c/a;

    invoke-direct {v1}, Lcom/google/a/c/a;-><init>()V

    const/4 v2, 0x0

    :goto_ad
    const/16 v5, 0x8

    if-ge v2, v7, :cond_cf

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b5
    :goto_b5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/a/i/c/a;

    iget-object v9, v9, Lcom/google/a/i/c/a;->a:[B

    array-length v10, v9

    if-ge v2, v10, :cond_b5

    aget-byte v9, v9, v2

    invoke-virtual {v1, v9, v5}, Lcom/google/a/c/a;->b(II)V

    goto :goto_b5

    :cond_cc
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    :cond_cf
    :goto_cf
    if-ge v4, v8, :cond_ef

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d5
    :goto_d5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ec

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/a/i/c/a;

    iget-object v6, v6, Lcom/google/a/i/c/a;->b:[B

    array-length v7, v6

    if-ge v4, v7, :cond_d5

    aget-byte v6, v6, v4

    invoke-virtual {v1, v6, v5}, Lcom/google/a/c/a;->b(II)V

    goto :goto_d5

    :cond_ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    :cond_ef
    invoke-virtual {v1}, Lcom/google/a/c/a;->a()I

    move-result v2

    if-eq v0, v2, :cond_11a

    new-instance v2, Lcom/google/a/w;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interleaving error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/a/c/a;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11a
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Lcom/google/a/i/a/h;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/i/a/h;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/i/a/h;
    .registers 7

    const-string v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {p0}, Lcom/google/a/i/c/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p0, Lcom/google/a/i/a/h;->KANJI:Lcom/google/a/i/a/h;

    return-object p0

    :cond_11
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_37

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_29

    const/16 v3, 0x39

    if-gt v2, v3, :cond_29

    const/4 v1, 0x1

    goto :goto_31

    :cond_29
    invoke-static {v2}, Lcom/google/a/i/c/c;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_34

    const/4 v0, 0x1

    :goto_31
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_34
    sget-object p0, Lcom/google/a/i/a/h;->BYTE:Lcom/google/a/i/a/h;

    return-object p0

    :cond_37
    if-eqz v0, :cond_3c

    sget-object p0, Lcom/google/a/i/a/h;->ALPHANUMERIC:Lcom/google/a/i/a/h;

    return-object p0

    :cond_3c
    if-eqz v1, :cond_41

    sget-object p0, Lcom/google/a/i/a/h;->NUMERIC:Lcom/google/a/i/a/h;

    return-object p0

    :cond_41
    sget-object p0, Lcom/google/a/i/a/h;->BYTE:Lcom/google/a/i/a/h;

    return-object p0
.end method

.method private static a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x28

    if-gt v0, v1, :cond_13

    invoke-static {v0}, Lcom/google/a/i/a/j;->b(I)Lcom/google/a/i/a/j;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/j;Lcom/google/a/i/a/f;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    new-instance p0, Lcom/google/a/w;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/a/i/a/f;Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;)Lcom/google/a/i/a/j;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/a/i/a/j;->b(I)Lcom/google/a/i/a/j;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result p1

    invoke-static {p1, p0}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/google/a/i/a/f;)Lcom/google/a/i/c/f;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/a/i/c/c;->a(Ljava/lang/String;Lcom/google/a/i/a/f;Ljava/util/Map;)Lcom/google/a/i/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/google/a/i/a/f;Ljava/util/Map;)Lcom/google/a/i/c/f;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/i/a/f;",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/i/c/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_10

    sget-object v3, Lcom/google/a/g;->CHARACTER_SET:Lcom/google/a/g;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_1d

    sget-object v0, Lcom/google/a/g;->CHARACTER_SET:Lcom/google/a/g;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    invoke-static {p0, v0}, Lcom/google/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/i/a/h;

    move-result-object v4

    new-instance v5, Lcom/google/a/c/a;

    invoke-direct {v5}, Lcom/google/a/c/a;-><init>()V

    sget-object v6, Lcom/google/a/i/a/h;->BYTE:Lcom/google/a/i/a/h;

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-ne v4, v6, :cond_45

    if-eqz v3, :cond_45

    invoke-static {v0}, Lcom/google/a/c/d;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/a/c/d;

    move-result-object v3

    if-eqz v3, :cond_45

    sget-object v6, Lcom/google/a/i/a/h;->ECI:Lcom/google/a/i/a/h;

    invoke-virtual {v6}, Lcom/google/a/i/a/h;->getBits()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Lcom/google/a/c/a;->b(II)V

    invoke-virtual {v3}, Lcom/google/a/c/d;->getValue()I

    move-result v3

    invoke-virtual {v5, v3, v8}, Lcom/google/a/c/a;->b(II)V

    :cond_45
    if-eqz p2, :cond_51

    sget-object v3, Lcom/google/a/g;->GS1_FORMAT:Lcom/google/a/g;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x1

    goto :goto_52

    :cond_51
    const/4 v3, 0x0

    :goto_52
    if-eqz v3, :cond_6d

    sget-object v3, Lcom/google/a/g;->GS1_FORMAT:Lcom/google/a/g;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6d

    sget-object v3, Lcom/google/a/i/a/h;->FNC1_FIRST_POSITION:Lcom/google/a/i/a/h;

    invoke-static {v3, v5}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;)V

    :cond_6d
    invoke-static {v4, v5}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;)V

    new-instance v3, Lcom/google/a/c/a;

    invoke-direct {v3}, Lcom/google/a/c/a;-><init>()V

    sget-object v6, Lcom/google/a/i/c/c$1;->a:[I

    invoke-virtual {v4}, Lcom/google/a/i/a/h;->ordinal()I

    move-result v9

    aget v6, v6, v9

    const/4 v9, -0x1

    packed-switch v6, :pswitch_data_22e

    new-instance p0, Lcom/google/a/w;

    const-string p1, "Invalid mode: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_91
    :try_start_91
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_97
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_91 .. :try_end_97} :catch_da

    array-length v6, v0

    :goto_98
    if-ge v1, v6, :cond_175

    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v1, 0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v7, v8

    or-int/2addr v7, v10

    const v10, 0x8140

    if-lt v7, v10, :cond_b2

    const v11, 0x9ffc

    if-gt v7, v11, :cond_b2

    :goto_b0
    sub-int/2addr v7, v10

    goto :goto_c1

    :cond_b2
    const v10, 0xe040

    if-lt v7, v10, :cond_c0

    const v10, 0xebbf

    if-gt v7, v10, :cond_c0

    const v10, 0xc140

    goto :goto_b0

    :cond_c0
    const/4 v7, -0x1

    :goto_c1
    if-ne v7, v9, :cond_cb

    new-instance p0, Lcom/google/a/w;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cb
    shr-int/lit8 v10, v7, 0x8

    mul-int/lit16 v10, v10, 0xc0

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v10, v7

    const/16 v7, 0xd

    invoke-virtual {v3, v10, v7}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_98

    :catch_da
    move-exception p0

    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_e1
    :try_start_e1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_e5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e1 .. :try_end_e5} :catch_f0

    array-length v6, v0

    :goto_e6
    if-ge v1, v6, :cond_175

    aget-byte v7, v0, v1

    invoke-virtual {v3, v7, v8}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e6

    :catch_f0
    move-exception p0

    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_f7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_fb
    if-ge v1, v0, :cond_175

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/a/i/c/c;->a(I)I

    move-result v6

    if-ne v6, v9, :cond_10d

    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_10d
    add-int/lit8 v7, v1, 0x1

    if-ge v7, v0, :cond_12c

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/a/i/c/c;->a(I)I

    move-result v7

    if-ne v7, v9, :cond_121

    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_121
    mul-int/lit8 v6, v6, 0x2d

    add-int/2addr v6, v7

    const/16 v7, 0xb

    invoke-virtual {v3, v6, v7}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_fb

    :cond_12c
    const/4 v1, 0x6

    invoke-virtual {v3, v6, v1}, Lcom/google/a/c/a;->b(II)V

    move v1, v7

    goto :goto_fb

    :pswitch_132
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_136
    if-ge v1, v0, :cond_175

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    add-int/lit8 v8, v1, 0x2

    if-ge v8, v0, :cond_15e

    add-int/lit8 v9, v1, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/lit8 v6, v6, 0x64

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    invoke-virtual {v3, v6, v10}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_136

    :cond_15e
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_171

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v1

    const/4 v1, 0x7

    invoke-virtual {v3, v6, v1}, Lcom/google/a/c/a;->b(II)V

    move v1, v8

    goto :goto_136

    :cond_171
    invoke-virtual {v3, v6, v7}, Lcom/google/a/c/a;->b(II)V

    goto :goto_136

    :cond_175
    if-eqz p2, :cond_1a3

    sget-object v0, Lcom/google/a/g;->QR_VERSION:Lcom/google/a/g;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    sget-object v0, Lcom/google/a/g;->QR_VERSION:Lcom/google/a/g;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/google/a/i/a/j;->b(I)Lcom/google/a/i/a/j;

    move-result-object p2

    invoke-static {v4, v5, v3, p2}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result v0

    invoke-static {v0, p2, p1}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/j;Lcom/google/a/i/a/f;)Z

    move-result v0

    if-nez v0, :cond_1b7

    new-instance p0, Lcom/google/a/w;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a3
    invoke-static {v2}, Lcom/google/a/i/a/j;->b(I)Lcom/google/a/i/a/j;

    move-result-object p2

    invoke-static {v4, v5, v3, p2}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result p2

    invoke-static {p2, p1}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;

    move-result-object p2

    invoke-static {v4, v5, v3, p2}, Lcom/google/a/i/c/c;->a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;Lcom/google/a/c/a;Lcom/google/a/i/a/j;)I

    move-result p2

    invoke-static {p2, p1}, Lcom/google/a/i/c/c;->a(ILcom/google/a/i/a/f;)Lcom/google/a/i/a/j;

    move-result-object p2

    :cond_1b7
    new-instance v0, Lcom/google/a/c/a;

    invoke-direct {v0}, Lcom/google/a/c/a;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/a/c/a;->a(Lcom/google/a/c/a;)V

    sget-object v1, Lcom/google/a/i/a/h;->BYTE:Lcom/google/a/i/a/h;

    if-ne v4, v1, :cond_1c8

    invoke-virtual {v3}, Lcom/google/a/c/a;->a()I

    move-result p0

    goto :goto_1cc

    :cond_1c8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_1cc
    invoke-virtual {v4, p2}, Lcom/google/a/i/a/h;->getCharacterCountBits(Lcom/google/a/i/a/j;)I

    move-result v1

    shl-int v5, v2, v1

    if-lt p0, v5, :cond_1ef

    new-instance p1, Lcom/google/a/w;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v5, v2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1ef
    invoke-virtual {v0, p0, v1}, Lcom/google/a/c/a;->b(II)V

    invoke-virtual {v0, v3}, Lcom/google/a/c/a;->a(Lcom/google/a/c/a;)V

    invoke-virtual {p2, p1}, Lcom/google/a/i/a/j;->a(Lcom/google/a/i/a/f;)Lcom/google/a/i/a/j$b;

    move-result-object p0

    iget v1, p2, Lcom/google/a/i/a/j;->c:I

    invoke-virtual {p0}, Lcom/google/a/i/a/j$b;->b()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Lcom/google/a/i/c/c;->a(ILcom/google/a/c/a;)V

    iget v2, p2, Lcom/google/a/i/a/j;->c:I

    invoke-virtual {p0}, Lcom/google/a/i/a/j$b;->a()I

    move-result p0

    invoke-static {v0, v2, v1, p0}, Lcom/google/a/i/c/c;->a(Lcom/google/a/c/a;III)Lcom/google/a/c/a;

    move-result-object p0

    new-instance v0, Lcom/google/a/i/c/f;

    invoke-direct {v0}, Lcom/google/a/i/c/f;-><init>()V

    iput-object p1, v0, Lcom/google/a/i/c/f;->c:Lcom/google/a/i/a/f;

    iput-object v4, v0, Lcom/google/a/i/c/f;->b:Lcom/google/a/i/a/h;

    iput-object p2, v0, Lcom/google/a/i/c/f;->d:Lcom/google/a/i/a/j;

    invoke-virtual {p2}, Lcom/google/a/i/a/j;->a()I

    move-result v1

    new-instance v2, Lcom/google/a/i/c/b;

    invoke-direct {v2, v1, v1}, Lcom/google/a/i/c/b;-><init>(II)V

    invoke-static {p0, p1, p2, v2}, Lcom/google/a/i/c/c;->a(Lcom/google/a/c/a;Lcom/google/a/i/a/f;Lcom/google/a/i/a/j;Lcom/google/a/i/c/b;)I

    move-result v1

    iput v1, v0, Lcom/google/a/i/c/f;->e:I

    invoke-static {p0, p1, p2, v1, v2}, Lcom/google/a/i/c/e;->a(Lcom/google/a/c/a;Lcom/google/a/i/a/f;Lcom/google/a/i/a/j;ILcom/google/a/i/c/b;)V

    iput-object v2, v0, Lcom/google/a/i/c/f;->f:Lcom/google/a/i/c/b;

    return-object v0

    nop

    :pswitch_data_22e
    .packed-switch 0x1
        :pswitch_132
        :pswitch_f7
        :pswitch_e1
        :pswitch_91
    .end packed-switch
.end method

.method private static a(IIII[I[I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    if-lt p3, p2, :cond_a

    new-instance p0, Lcom/google/a/w;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_21

    new-instance p0, Lcom/google/a/w;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    add-int v5, v1, v0

    if-eq p2, v5, :cond_2d

    new-instance p0, Lcom/google/a/w;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    add-int p2, p1, v2

    mul-int p2, p2, v1

    add-int v5, v4, v3

    mul-int v5, v5, v0

    add-int/2addr p2, v5

    if-eq p0, p2, :cond_40

    new-instance p0, Lcom/google/a/w;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    const/4 p0, 0x0

    if-ge p3, v1, :cond_48

    aput p1, p4, p0

    aput v2, p5, p0

    return-void

    :cond_48
    aput v4, p4, p0

    aput v3, p5, p0

    return-void
.end method

.method private static a(ILcom/google/a/c/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    shl-int/lit8 v0, p0, 0x3

    iget v1, p1, Lcom/google/a/c/a;->b:I

    if-le v1, v0, :cond_24

    new-instance p0, Lcom/google/a/w;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/google/a/c/a;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_26
    const/4 v3, 0x4

    if-ge v2, v3, :cond_33

    iget v3, p1, Lcom/google/a/c/a;->b:I

    if-ge v3, v0, :cond_33

    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_33
    iget v2, p1, Lcom/google/a/c/a;->b:I

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_43

    :goto_3b
    if-ge v2, v3, :cond_43

    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_43
    invoke-virtual {p1}, Lcom/google/a/c/a;->a()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_48
    if-ge v1, p0, :cond_59

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_51

    const/16 v2, 0xec

    goto :goto_53

    :cond_51
    const/16 v2, 0x11

    :goto_53
    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_59
    iget p0, p1, Lcom/google/a/c/a;->b:I

    if-eq p0, v0, :cond_65

    new-instance p0, Lcom/google/a/w;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    return-void
.end method

.method private static a(ILcom/google/a/i/a/j;Lcom/google/a/i/a/h;Lcom/google/a/c/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/google/a/i/a/h;->getCharacterCountBits(Lcom/google/a/i/a/j;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-lt p0, v0, :cond_24

    new-instance p1, Lcom/google/a/w;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    invoke-virtual {p3, p0, p1}, Lcom/google/a/c/a;->b(II)V

    return-void
.end method

.method private static a(Lcom/google/a/c/d;Lcom/google/a/c/a;)V
    .registers 4

    sget-object v0, Lcom/google/a/i/a/h;->ECI:Lcom/google/a/i/a/h;

    invoke-virtual {v0}, Lcom/google/a/i/a/h;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/a/c/a;->b(II)V

    invoke-virtual {p0}, Lcom/google/a/c/d;->getValue()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcom/google/a/c/a;->b(II)V

    return-void
.end method

.method private static a(Lcom/google/a/i/a/h;Lcom/google/a/c/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/a/i/a/h;->getBits()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/google/a/c/a;->b(II)V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Lcom/google/a/c/a;)V
    .registers 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_45

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_2d

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-virtual {p1, v2, v5}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_5

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_40

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/google/a/c/a;->b(II)V

    move v1, v3

    goto :goto_5

    :cond_40
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/a;->b(II)V

    goto :goto_5

    :cond_45
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/a/c/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_4d

    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_4c

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_24

    const v5, 0x9ffc

    if-gt v2, v5, :cond_24

    :goto_22
    sub-int/2addr v2, v3

    goto :goto_33

    :cond_24
    const v3, 0xe040

    if-lt v2, v3, :cond_32

    const v3, 0xebbf

    if-gt v2, v3, :cond_32

    const v3, 0xc140

    goto :goto_22

    :cond_32
    const/4 v2, -0x1

    :goto_33
    if-ne v2, v4, :cond_3d

    new-instance p0, Lcom/google/a/w;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    invoke-virtual {p1, v3, v2}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    :cond_4c
    return-void

    :catch_4d
    move-exception p0

    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;Lcom/google/a/c/a;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4} :catch_13

    array-length p2, p0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_12

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-void

    :catch_13
    move-exception p0

    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;Lcom/google/a/i/a/h;Lcom/google/a/c/a;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    sget-object v0, Lcom/google/a/i/c/c$1;->a:[I

    invoke-virtual {p1}, Lcom/google/a/i/a/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_108

    new-instance p0, Lcom/google/a/w;

    const-string p2, "Invalid mode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1f
    :try_start_1f
    const-string p1, "Shift_JIS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_25} :catch_69

    array-length p1, p0

    :goto_26
    if-ge v3, p1, :cond_68

    aget-byte p3, p0, v3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, v3, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr p3, v1

    or-int/2addr p3, v0

    const v0, 0x8140

    if-lt p3, v0, :cond_40

    const v4, 0x9ffc

    if-gt p3, v4, :cond_40

    :goto_3e
    sub-int/2addr p3, v0

    goto :goto_4f

    :cond_40
    const v0, 0xe040

    if-lt p3, v0, :cond_4e

    const v0, 0xebbf

    if-gt p3, v0, :cond_4e

    const v0, 0xc140

    goto :goto_3e

    :cond_4e
    const/4 p3, -0x1

    :goto_4f
    if-ne p3, v2, :cond_59

    new-instance p0, Lcom/google/a/w;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    shr-int/lit8 v0, p3, 0x8

    mul-int/lit16 v0, v0, 0xc0

    and-int/lit16 p3, p3, 0xff

    add-int/2addr v0, p3

    const/16 p3, 0xd

    invoke-virtual {p2, v0, p3}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_26

    :cond_68
    return-void

    :catch_69
    move-exception p0

    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_70
    :try_start_70
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_74
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_70 .. :try_end_74} :catch_80

    array-length p1, p0

    :goto_75
    if-ge v3, p1, :cond_7f

    aget-byte p3, p0, v3

    invoke-virtual {p2, p3, v1}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_7f
    return-void

    :catch_80
    move-exception p0

    new-instance p1, Lcom/google/a/w;

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_87
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_8b
    if-ge v3, p1, :cond_c2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Lcom/google/a/i/c/c;->a(I)I

    move-result p3

    if-ne p3, v2, :cond_9d

    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_9d
    add-int/lit8 v0, v3, 0x1

    if-ge v0, p1, :cond_bc

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/a/i/c/c;->a(I)I

    move-result v0

    if-ne v0, v2, :cond_b1

    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_b1
    mul-int/lit8 p3, p3, 0x2d

    add-int/2addr p3, v0

    const/16 v0, 0xb

    invoke-virtual {p2, p3, v0}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_8b

    :cond_bc
    const/4 v1, 0x6

    invoke-virtual {p2, p3, v1}, Lcom/google/a/c/a;->b(II)V

    move v3, v0

    goto :goto_8b

    :cond_c2
    return-void

    :pswitch_c3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_c7
    if-ge v3, p1, :cond_107

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    add-int/lit8 p3, p3, -0x30

    add-int/lit8 v0, v3, 0x2

    if-ge v0, p1, :cond_ef

    add-int/lit8 v1, v3, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 p3, p3, 0x64

    const/16 v2, 0xa

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p2, p3, v2}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_c7

    :cond_ef
    add-int/lit8 v3, v3, 0x1

    if-ge v3, p1, :cond_102

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p3, v1

    const/4 v1, 0x7

    invoke-virtual {p2, p3, v1}, Lcom/google/a/c/a;->b(II)V

    move v3, v0

    goto :goto_c7

    :cond_102
    const/4 v0, 0x4

    invoke-virtual {p2, p3, v0}, Lcom/google/a/c/a;->b(II)V

    goto :goto_c7

    :cond_107
    return-void

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_87
        :pswitch_70
        :pswitch_1f
    .end packed-switch
.end method

.method private static a(ILcom/google/a/i/a/j;Lcom/google/a/i/a/f;)Z
    .registers 4

    iget v0, p1, Lcom/google/a/i/a/j;->c:I

    invoke-virtual {p1, p2}, Lcom/google/a/i/a/j;->a(Lcom/google/a/i/a/f;)Lcom/google/a/i/a/j$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/a/i/a/j$b;->b()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method private static a([BI)[B
    .registers 7

    array-length v0, p0

    add-int v1, v0, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_12

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    new-instance p0, Lcom/google/a/c/b/d;

    sget-object v3, Lcom/google/a/c/b/a;->e:Lcom/google/a/c/b/a;

    invoke-direct {p0, v3}, Lcom/google/a/c/b/d;-><init>(Lcom/google/a/c/b/a;)V

    invoke-virtual {p0, v1, p1}, Lcom/google/a/c/b/d;->a([II)V

    new-array p0, p1, [B

    :goto_1e
    if-ge v2, p1, :cond_2a

    add-int v3, v0, v2

    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2a
    return-object p0
.end method

.method private static b(Ljava/lang/CharSequence;Lcom/google/a/c/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_3d

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/a/i/c/c;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_18
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_37

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/a/i/c/c;->a(I)I

    move-result v4

    if-ne v4, v3, :cond_2c

    new-instance p0, Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    throw p0

    :cond_2c
    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_37
    const/4 v1, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/a/c/a;->b(II)V

    move v1, v4

    goto :goto_5

    :cond_3d
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_2b

    array-length v1, p0

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_d

    return v0

    :cond_d
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_29

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1c

    const/16 v4, 0x9f

    if-le v3, v4, :cond_25

    :cond_1c
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_28

    const/16 v4, 0xeb

    if-le v3, v4, :cond_25

    return v0

    :cond_25
    add-int/lit8 v2, v2, 0x2

    goto :goto_e

    :cond_28
    return v0

    :cond_29
    const/4 p0, 0x1

    return p0

    :catch_2b
    return v0
.end method
