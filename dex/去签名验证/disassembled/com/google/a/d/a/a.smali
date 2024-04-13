.class final Lcom/google/a/d/a/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/a/c/b;

.field final b:Lcom/google/a/c/b;

.field final c:Lcom/google/a/d/a/e;


# direct methods
.method constructor <init>(Lcom/google/a/c/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/a/c/b;->b:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_32

    const/16 v1, 0x90

    if-gt v0, v1, :cond_32

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    goto :goto_32

    :cond_12
    iget v0, p1, Lcom/google/a/c/b;->b:I

    iget v1, p1, Lcom/google/a/c/b;->a:I

    invoke-static {v0, v1}, Lcom/google/a/d/a/e;->a(II)Lcom/google/a/d/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    invoke-direct {p0, p1}, Lcom/google/a/d/a/a;->b(Lcom/google/a/c/b;)Lcom/google/a/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    new-instance p1, Lcom/google/a/c/b;

    iget-object v0, p0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    iget v0, v0, Lcom/google/a/c/b;->a:I

    iget-object v1, p0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    iget v1, v1, Lcom/google/a/c/b;->b:I

    invoke-direct {p1, v0, v1}, Lcom/google/a/c/b;-><init>(II)V

    iput-object p1, p0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    return-void

    :cond_32
    :goto_32
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p1

    throw p1
.end method

.method private a(II)I
    .registers 8

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_11

    or-int/lit8 v2, v2, 0x1

    :cond_11
    shl-int/2addr v2, v3

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    or-int/lit8 v2, v2, 0x1

    :cond_1b
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_27

    or-int/lit8 v0, v0, 0x1

    :cond_27
    shl-int/2addr v0, v3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_32

    or-int/lit8 v0, v0, 0x1

    :cond_32
    shl-int/2addr v0, v3

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3b

    or-int/lit8 v0, v0, 0x1

    :cond_3b
    shl-int/2addr v0, v3

    invoke-virtual {p0, v4, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_44

    or-int/lit8 v0, v0, 0x1

    :cond_44
    shl-int/2addr v0, v3

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_4e

    or-int/lit8 v0, v0, 0x1

    :cond_4e
    return v0
.end method

.method private a()Lcom/google/a/d/a/e;
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    return-object v0
.end method

.method private static a(Lcom/google/a/c/b;)Lcom/google/a/d/a/e;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/c/b;->b:I

    iget p0, p0, Lcom/google/a/c/b;->a:I

    invoke-static {v0, p0}, Lcom/google/a/d/a/e;->a(II)Lcom/google/a/d/a/e;

    move-result-object p0

    return-object p0
.end method

.method private b(II)I
    .registers 7

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit8 v0, v0, 0x1

    :cond_13
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1e

    or-int/lit8 v0, v0, 0x1

    :cond_1e
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x4

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_29

    or-int/lit8 v0, v0, 0x1

    :cond_29
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_34

    or-int/lit8 v0, v0, 0x1

    :cond_34
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_3f

    or-int/lit8 v0, v0, 0x1

    :cond_3f
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4a

    or-int/lit8 v0, v0, 0x1

    :cond_4a
    shl-int/2addr v0, v2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_53

    or-int/lit8 v0, v0, 0x1

    :cond_53
    return v0
.end method

.method private b(Lcom/google/a/c/b;)Lcom/google/a/c/b;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    iget v2, v2, Lcom/google/a/d/a/e;->b:I

    iget-object v3, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    iget v3, v3, Lcom/google/a/d/a/e;->c:I

    iget v4, v1, Lcom/google/a/c/b;->b:I

    if-eq v4, v2, :cond_18

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dimension of bitMatrix must match the version size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    iget-object v4, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    iget v4, v4, Lcom/google/a/d/a/e;->d:I

    iget-object v5, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    iget v5, v5, Lcom/google/a/d/a/e;->e:I

    div-int/2addr v2, v4

    div-int/2addr v3, v5

    mul-int v6, v2, v4

    mul-int v7, v3, v5

    new-instance v8, Lcom/google/a/c/b;

    invoke-direct {v8, v7, v6}, Lcom/google/a/c/b;-><init>(II)V

    const/4 v7, 0x0

    :goto_2c
    if-ge v7, v2, :cond_63

    mul-int v9, v7, v4

    const/4 v10, 0x0

    :goto_31
    if-ge v10, v3, :cond_60

    mul-int v11, v10, v5

    const/4 v12, 0x0

    :goto_36
    if-ge v12, v4, :cond_5d

    add-int/lit8 v13, v4, 0x2

    mul-int v13, v13, v7

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v12

    add-int v14, v9, v12

    const/4 v15, 0x0

    :goto_42
    if-ge v15, v5, :cond_5a

    add-int/lit8 v16, v5, 0x2

    mul-int v16, v16, v10

    add-int/lit8 v16, v16, 0x1

    add-int v6, v16, v15

    invoke-virtual {v1, v6, v13}, Lcom/google/a/c/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_57

    add-int v6, v11, v15

    invoke-virtual {v8, v6, v14}, Lcom/google/a/c/b;->b(II)V

    :cond_57
    add-int/lit8 v15, v15, 0x1

    goto :goto_42

    :cond_5a
    add-int/lit8 v12, v12, 0x1

    goto :goto_36

    :cond_5d
    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    :cond_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_63
    return-object v8
.end method

.method private b()[B
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    iget v1, v1, Lcom/google/a/d/a/e;->g:I

    new-array v1, v1, [B

    iget-object v2, v0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    iget v2, v2, Lcom/google/a/c/b;->b:I

    iget-object v3, v0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    iget v3, v3, Lcom/google/a/c/b;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_18
    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ne v6, v2, :cond_7a

    if-nez v7, :cond_7a

    if-nez v8, :cond_7a

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    shl-int/lit8 v17, v17, 0x1

    invoke-virtual {v0, v4, v15, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_32

    or-int/lit8 v17, v17, 0x1

    :cond_32
    shl-int/lit8 v17, v17, 0x1

    invoke-virtual {v0, v4, v14, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_3c

    or-int/lit8 v17, v17, 0x1

    :cond_3c
    shl-int/lit8 v4, v17, 0x1

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_48

    or-int/lit8 v4, v4, 0x1

    :cond_48
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_53

    or-int/lit8 v4, v4, 0x1

    :cond_53
    shl-int/2addr v4, v15

    invoke-virtual {v0, v15, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_5c

    or-int/lit8 v4, v4, 0x1

    :cond_5c
    shl-int/2addr v4, v15

    invoke-virtual {v0, v14, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_65

    or-int/lit8 v4, v4, 0x1

    :cond_65
    shl-int/2addr v4, v15

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_6f

    or-int/lit8 v4, v4, 0x1

    :cond_6f
    int-to-byte v4, v4

    aput-byte v4, v1, v9

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    move v9, v8

    const/4 v8, 0x1

    goto/16 :goto_1f5

    :cond_7a
    add-int/lit8 v4, v2, -0x2

    if-ne v6, v4, :cond_e3

    if-nez v7, :cond_e3

    and-int/lit8 v13, v3, 0x3

    if-eqz v13, :cond_e3

    if-nez v10, :cond_e3

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v13, v2, -0x3

    invoke-virtual {v0, v13, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    shl-int/2addr v13, v15

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_97

    or-int/lit8 v13, v13, 0x1

    :cond_97
    shl-int/lit8 v4, v13, 0x1

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v0, v13, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_a3

    or-int/lit8 v4, v4, 0x1

    :cond_a3
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x4

    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_ae

    or-int/lit8 v4, v4, 0x1

    :cond_ae
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x3

    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_b9

    or-int/lit8 v4, v4, 0x1

    :cond_b9
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_c4

    or-int/lit8 v4, v4, 0x1

    :cond_c4
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_cf

    or-int/lit8 v4, v4, 0x1

    :cond_cf
    shl-int/2addr v4, v15

    invoke-virtual {v0, v15, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_d8

    or-int/lit8 v4, v4, 0x1

    :cond_d8
    int-to-byte v4, v4

    aput-byte v4, v1, v9

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    move v9, v10

    const/4 v10, 0x1

    goto/16 :goto_1f5

    :cond_e3
    add-int/lit8 v13, v2, 0x4

    if-ne v6, v13, :cond_14c

    if-ne v7, v14, :cond_14c

    and-int/lit8 v13, v3, 0x7

    if-nez v13, :cond_14c

    if-nez v11, :cond_14c

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v0, v11, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    shl-int/2addr v13, v15

    add-int/lit8 v14, v3, -0x1

    invoke-virtual {v0, v11, v14, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v11

    if-eqz v11, :cond_102

    or-int/lit8 v13, v13, 0x1

    :cond_102
    shl-int/lit8 v11, v13, 0x1

    add-int/lit8 v13, v3, -0x3

    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_10e

    or-int/lit8 v11, v11, 0x1

    :cond_10e
    shl-int/2addr v11, v15

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v0, v5, v15, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_119

    or-int/lit8 v11, v11, 0x1

    :cond_119
    move/from16 v19, v4

    const/4 v4, 0x1

    shl-int/2addr v11, v4

    invoke-virtual {v0, v5, v14, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_125

    or-int/lit8 v11, v11, 0x1

    :cond_125
    shl-int/2addr v11, v4

    invoke-virtual {v0, v4, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_12e

    or-int/lit8 v11, v11, 0x1

    :cond_12e
    shl-int/2addr v11, v4

    invoke-virtual {v0, v4, v15, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_137

    or-int/lit8 v11, v11, 0x1

    :cond_137
    shl-int/2addr v11, v4

    invoke-virtual {v0, v4, v14, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_140

    or-int/lit8 v11, v11, 0x1

    :cond_140
    int-to-byte v4, v11

    aput-byte v4, v1, v9

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    move/from16 v9, v19

    const/4 v11, 0x1

    goto/16 :goto_1f5

    :cond_14c
    if-ne v6, v4, :cond_1b1

    if-nez v7, :cond_1b1

    and-int/lit8 v13, v3, 0x7

    const/4 v15, 0x4

    if-ne v13, v15, :cond_1b1

    if-nez v12, :cond_1b1

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v2, -0x3

    invoke-virtual {v0, v13, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_169

    or-int/lit8 v13, v13, 0x1

    :cond_169
    shl-int/lit8 v4, v13, 0x1

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v0, v13, v5, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_175

    or-int/lit8 v4, v4, 0x1

    :cond_175
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_180

    or-int/lit8 v4, v4, 0x1

    :cond_180
    shl-int/2addr v4, v15

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v0, v5, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v16

    if-eqz v16, :cond_18b

    or-int/lit8 v4, v4, 0x1

    :cond_18b
    shl-int/2addr v4, v15

    invoke-virtual {v0, v15, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v16

    if-eqz v16, :cond_194

    or-int/lit8 v4, v4, 0x1

    :cond_194
    shl-int/2addr v4, v15

    invoke-virtual {v0, v14, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_19d

    or-int/lit8 v4, v4, 0x1

    :cond_19d
    shl-int/2addr v4, v15

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v13, v2, v3}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_1a7

    or-int/lit8 v4, v4, 0x1

    :cond_1a7
    int-to-byte v4, v4

    aput-byte v4, v1, v9

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    move v9, v12

    const/4 v12, 0x1

    goto :goto_1f5

    :cond_1b1
    if-ge v6, v2, :cond_1c7

    if-ltz v7, :cond_1c7

    iget-object v4, v0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v4, v7, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-nez v4, :cond_1c7

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/google/a/d/a/a;->b(IIII)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v1, v9

    move v9, v4

    :cond_1c7
    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v7, 0x2

    if-ltz v6, :cond_1cf

    if-lt v7, v3, :cond_1b1

    :cond_1cf
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x3

    :cond_1d3
    if-ltz v6, :cond_1e9

    if-ge v7, v3, :cond_1e9

    iget-object v4, v0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v4, v7, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-nez v4, :cond_1e9

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/google/a/d/a/a;->b(IIII)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v1, v9

    move v9, v4

    :cond_1e9
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, -0x2

    if-ge v6, v2, :cond_1f1

    if-gez v7, :cond_1d3

    :cond_1f1
    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    :goto_1f5
    if-lt v6, v2, :cond_18

    if-lt v7, v3, :cond_18

    iget-object v2, v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/e;

    iget v2, v2, Lcom/google/a/d/a/e;->g:I

    if-eq v9, v2, :cond_204

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :cond_204
    return-object v1
.end method

.method private c(II)I
    .registers 10

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_13

    or-int/lit8 v2, v2, 0x1

    :cond_13
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v5

    if-eqz v5, :cond_1f

    or-int/lit8 v0, v0, 0x1

    :cond_1f
    shl-int/2addr v0, v3

    add-int/lit8 v5, p2, -0x2

    invoke-virtual {p0, v1, v5, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_2a

    or-int/lit8 v0, v0, 0x1

    :cond_2a
    shl-int/2addr v0, v3

    invoke-virtual {p0, v1, v4, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_33

    or-int/lit8 v0, v0, 0x1

    :cond_33
    shl-int/2addr v0, v3

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3c

    or-int/lit8 v0, v0, 0x1

    :cond_3c
    shl-int/2addr v0, v3

    invoke-virtual {p0, v3, v5, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_45

    or-int/lit8 v0, v0, 0x1

    :cond_45
    shl-int/2addr v0, v3

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_4e

    or-int/lit8 v0, v0, 0x1

    :cond_4e
    return v0
.end method

.method private d(II)I
    .registers 7

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit8 v0, v0, 0x1

    :cond_13
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1e

    or-int/lit8 v0, v0, 0x1

    :cond_1e
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_29

    or-int/lit8 v0, v0, 0x1

    :cond_29
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_34

    or-int/lit8 v0, v0, 0x1

    :cond_34
    shl-int/2addr v0, v2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3d

    or-int/lit8 v0, v0, 0x1

    :cond_3d
    shl-int/2addr v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_47

    or-int/lit8 v0, v0, 0x1

    :cond_47
    shl-int/2addr v0, v2

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_51

    or-int/lit8 v0, v0, 0x1

    :cond_51
    return v0
.end method


# virtual methods
.method final a(IIII)Z
    .registers 5

    if-gez p1, :cond_a

    add-int/2addr p1, p3

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    :cond_a
    if-gez p2, :cond_14

    add-int/2addr p2, p4

    add-int/lit8 p4, p4, 0x4

    and-int/lit8 p3, p4, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p1, p3

    :cond_14
    iget-object p3, p0, Lcom/google/a/d/a/a;->b:Lcom/google/a/c/b;

    invoke-virtual {p3, p2, p1}, Lcom/google/a/c/b;->b(II)V

    iget-object p3, p0, Lcom/google/a/d/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {p3, p2, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result p1

    return p1
.end method

.method final b(IIII)I
    .registers 10

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_14

    or-int/lit8 v2, v2, 0x1

    :cond_14
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2, v1, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_20

    or-int/lit8 v0, v0, 0x1

    :cond_20
    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_2a

    or-int/lit8 v0, v0, 0x1

    :cond_2a
    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_34

    or-int/lit8 v0, v0, 0x1

    :cond_34
    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3e

    or-int/lit8 v0, v0, 0x1

    :cond_3e
    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_48

    or-int/lit8 v0, v0, 0x1

    :cond_48
    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/a/d/a/a;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_52

    or-int/lit8 v0, v0, 0x1

    :cond_52
    return v0
.end method
