.class final Lcom/google/a/i/a/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/a/c/b;

.field b:Lcom/google/a/i/a/j;

.field c:Lcom/google/a/i/a/g;

.field d:Z


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

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    goto :goto_12

    :cond_f
    iput-object p1, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    return-void

    :cond_12
    :goto_12
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p1

    throw p1
.end method

.method private a(III)I
    .registers 5

    iget-boolean v0, p0, Lcom/google/a/i/a/a;->d:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v0, p2, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result p1

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result p1

    :goto_11
    if-eqz p1, :cond_18

    shl-int/lit8 p1, p3, 0x1

    or-int/lit8 p1, p1, 0x1

    return p1

    :cond_18
    shl-int/lit8 p1, p3, 0x1

    return p1
.end method

.method private c()[B
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/a/i/a/a;->a()Lcom/google/a/i/a/g;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/a/i/a/a;->b()Lcom/google/a/i/a/j;

    move-result-object v2

    invoke-static {}, Lcom/google/a/i/a/c;->values()[Lcom/google/a/i/a/c;

    move-result-object v3

    iget-byte v1, v1, Lcom/google/a/i/a/g;->b:B

    aget-object v1, v3, v1

    iget-object v3, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v3, v3, Lcom/google/a/c/b;->b:I

    iget-object v4, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v1, v4, v3}, Lcom/google/a/i/a/c;->unmaskBitMatrix(Lcom/google/a/c/b;I)V

    invoke-virtual {v2}, Lcom/google/a/i/a/j;->a()I

    move-result v1

    new-instance v4, Lcom/google/a/c/b;

    invoke-direct {v4, v1}, Lcom/google/a/c/b;-><init>(I)V

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v5, v5}, Lcom/google/a/c/b;->a(IIII)V

    add-int/lit8 v7, v1, -0x8

    const/16 v8, 0x8

    invoke-virtual {v4, v7, v6, v8, v5}, Lcom/google/a/c/b;->a(IIII)V

    invoke-virtual {v4, v6, v7, v5, v8}, Lcom/google/a/c/b;->a(IIII)V

    iget-object v7, v2, Lcom/google/a/i/a/j;->b:[I

    array-length v7, v7

    const/4 v9, 0x0

    :goto_38
    const/4 v10, 0x2

    if-ge v9, v7, :cond_60

    iget-object v11, v2, Lcom/google/a/i/a/j;->b:[I

    aget v11, v11, v9

    sub-int/2addr v11, v10

    const/4 v12, 0x0

    :goto_41
    if-ge v12, v7, :cond_5d

    if-nez v9, :cond_4b

    if-eqz v12, :cond_5a

    add-int/lit8 v13, v7, -0x1

    if-eq v12, v13, :cond_5a

    :cond_4b
    add-int/lit8 v13, v7, -0x1

    if-ne v9, v13, :cond_51

    if-eqz v12, :cond_5a

    :cond_51
    iget-object v13, v2, Lcom/google/a/i/a/j;->b:[I

    aget v13, v13, v12

    sub-int/2addr v13, v10

    const/4 v14, 0x5

    invoke-virtual {v4, v13, v11, v14, v14}, Lcom/google/a/c/b;->a(IIII)V

    :cond_5a
    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    :cond_5d
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    :cond_60
    add-int/lit8 v7, v1, -0x11

    const/4 v9, 0x6

    const/4 v11, 0x1

    invoke-virtual {v4, v9, v5, v11, v7}, Lcom/google/a/c/b;->a(IIII)V

    invoke-virtual {v4, v5, v9, v7, v11}, Lcom/google/a/c/b;->a(IIII)V

    iget v5, v2, Lcom/google/a/i/a/j;->a:I

    if-le v5, v9, :cond_77

    add-int/lit8 v1, v1, -0xb

    const/4 v5, 0x3

    invoke-virtual {v4, v1, v6, v5, v9}, Lcom/google/a/c/b;->a(IIII)V

    invoke-virtual {v4, v6, v1, v9, v5}, Lcom/google/a/c/b;->a(IIII)V

    :cond_77
    iget v1, v2, Lcom/google/a/i/a/j;->c:I

    new-array v1, v1, [B

    add-int/lit8 v5, v3, -0x1

    move v7, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_82
    if-lez v7, :cond_dc

    if-ne v7, v9, :cond_88

    add-int/lit8 v7, v7, -0x1

    :cond_88
    move v15, v14

    move v14, v13

    move v13, v11

    const/4 v11, 0x0

    :goto_8c
    if-ge v11, v3, :cond_d1

    if-eqz v12, :cond_95

    sub-int v16, v5, v11

    move/from16 v6, v16

    goto :goto_96

    :cond_95
    move v6, v11

    :goto_96
    move/from16 v16, v14

    move v14, v13

    const/4 v13, 0x0

    :goto_9a
    if-ge v13, v10, :cond_c8

    sub-int v9, v7, v13

    invoke-virtual {v4, v9, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v17

    if-nez v17, :cond_c3

    add-int/lit8 v15, v15, 0x1

    shl-int/lit8 v16, v16, 0x1

    iget-object v10, v0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v10, v9, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_b3

    or-int/lit8 v9, v16, 0x1

    goto :goto_b5

    :cond_b3
    move/from16 v9, v16

    :goto_b5
    if-ne v15, v8, :cond_c1

    add-int/lit8 v10, v14, 0x1

    int-to-byte v9, v9

    aput-byte v9, v1, v14

    move v14, v10

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_c3

    :cond_c1
    move/from16 v16, v9

    :cond_c3
    :goto_c3
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x6

    const/4 v10, 0x2

    goto :goto_9a

    :cond_c8
    add-int/lit8 v11, v11, 0x1

    move v13, v14

    move/from16 v14, v16

    const/4 v6, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x2

    goto :goto_8c

    :cond_d1
    xor-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, -0x2

    move v11, v13

    move v13, v14

    move v14, v15

    const/4 v6, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x2

    goto :goto_82

    :cond_dc
    iget v2, v2, Lcom/google/a/i/a/j;->c:I

    if-eq v11, v2, :cond_e5

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :cond_e5
    return-object v1
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/a/i/a/c;->values()[Lcom/google/a/i/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    iget-byte v1, v1, Lcom/google/a/i/a/g;->b:B

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v1, v1, Lcom/google/a/c/b;->b:I

    iget-object v2, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v0, v2, v1}, Lcom/google/a/i/a/c;->unmaskBitMatrix(Lcom/google/a/c/b;I)V

    return-void
.end method

.method private e()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/j;

    iput-object v0, p0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/i/a/a;->d:Z

    return-void
.end method

.method private f()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v1, v1, Lcom/google/a/c/b;->a:I

    if-ge v0, v1, :cond_2d

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_a
    iget-object v3, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v3, v3, Lcom/google/a/c/b;->b:I

    if-ge v2, v3, :cond_2b

    iget-object v3, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v3, v0, v2}, Lcom/google/a/c/b;->a(II)Z

    move-result v3

    iget-object v4, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v4, v2, v0}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eq v3, v4, :cond_28

    iget-object v3, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v3, v2, v0}, Lcom/google/a/c/b;->c(II)V

    iget-object v3, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    invoke-virtual {v3, v0, v2}, Lcom/google/a/c/b;->c(II)V

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2b
    move v0, v1

    goto :goto_1

    :cond_2d
    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/i/a/g;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x6

    const/16 v4, 0x8

    if-ge v1, v3, :cond_16

    invoke-direct {p0, v1, v4, v2}, Lcom/google/a/i/a/a;->a(III)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    const/4 v1, 0x7

    invoke-direct {p0, v1, v4, v2}, Lcom/google/a/i/a/a;->a(III)I

    move-result v2

    invoke-direct {p0, v4, v4, v2}, Lcom/google/a/i/a/a;->a(III)I

    move-result v2

    invoke-direct {p0, v4, v1, v2}, Lcom/google/a/i/a/a;->a(III)I

    move-result v1

    const/4 v2, 0x5

    :goto_24
    if-ltz v2, :cond_2d

    invoke-direct {p0, v4, v2, v1}, Lcom/google/a/i/a/a;->a(III)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    :cond_2d
    iget-object v2, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v2, v2, Lcom/google/a/c/b;->b:I

    add-int/lit8 v3, v2, -0x7

    add-int/lit8 v5, v2, -0x1

    :goto_35
    if-lt v5, v3, :cond_3e

    invoke-direct {p0, v4, v5, v0}, Lcom/google/a/i/a/a;->a(III)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_35

    :cond_3e
    add-int/lit8 v3, v2, -0x8

    :goto_40
    if-ge v3, v2, :cond_49

    invoke-direct {p0, v3, v4, v0}, Lcom/google/a/i/a/a;->a(III)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_49
    invoke-static {v1, v0}, Lcom/google/a/i/a/g;->b(II)Lcom/google/a/i/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    iget-object v0, p0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/google/a/i/a/a;->c:Lcom/google/a/i/a/g;

    return-object v0

    :cond_56
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0
.end method

.method final b()Lcom/google/a/i/a/j;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/j;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/j;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/a/i/a/a;->a:Lcom/google/a/c/b;

    iget v0, v0, Lcom/google/a/c/b;->b:I

    add-int/lit8 v1, v0, -0x11

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x6

    if-gt v1, v2, :cond_17

    invoke-static {v1}, Lcom/google/a/i/a/j;->b(I)Lcom/google/a/i/a/j;

    move-result-object v0

    return-object v0

    :cond_17
    add-int/lit8 v1, v0, -0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    :goto_1d
    if-ltz v4, :cond_2d

    add-int/lit8 v6, v0, -0x9

    :goto_21
    if-lt v6, v1, :cond_2a

    invoke-direct {p0, v6, v4, v5}, Lcom/google/a/i/a/a;->a(III)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_21

    :cond_2a
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    :cond_2d
    invoke-static {v5}, Lcom/google/a/i/a/j;->c(I)Lcom/google/a/i/a/j;

    move-result-object v4

    if-eqz v4, :cond_3c

    invoke-virtual {v4}, Lcom/google/a/i/a/j;->a()I

    move-result v5

    if-ne v5, v0, :cond_3c

    iput-object v4, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/j;

    return-object v4

    :cond_3c
    :goto_3c
    if-ltz v2, :cond_4c

    add-int/lit8 v4, v0, -0x9

    :goto_40
    if-lt v4, v1, :cond_49

    invoke-direct {p0, v2, v4, v3}, Lcom/google/a/i/a/a;->a(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_40

    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    :cond_4c
    invoke-static {v3}, Lcom/google/a/i/a/j;->c(I)Lcom/google/a/i/a/j;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lcom/google/a/i/a/j;->a()I

    move-result v2

    if-ne v2, v0, :cond_5b

    iput-object v1, p0, Lcom/google/a/i/a/a;->b:Lcom/google/a/i/a/j;

    return-object v1

    :cond_5b
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0
.end method
