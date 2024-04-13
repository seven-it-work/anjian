.class public final Lcom/google/a/h/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/a/h/a/a/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/a/h/a/a/b;->a:Lcom/google/a/h/a/a/b;

    iput-object v0, p0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    return-void
.end method

.method private a([II[I)I
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lcom/google/a/h/a/a/c;

    iget-object v5, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v4, v5, v1}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    new-array v5, v2, [I

    const/4 v6, 0x0

    move v7, v2

    const/4 v8, 0x0

    :goto_14
    const/4 v9, 0x1

    if-lez v7, :cond_2b

    iget-object v10, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v10, v10, Lcom/google/a/h/a/a/b;->b:[I

    aget v10, v10, v7

    invoke-virtual {v4, v10}, Lcom/google/a/h/a/a/c;->b(I)I

    move-result v10

    sub-int v11, v2, v7

    aput v10, v5, v11

    if-eqz v10, :cond_28

    const/4 v8, 0x1

    :cond_28
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    :cond_2b
    if-nez v8, :cond_2e

    return v6

    :cond_2e
    iget-object v4, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v4, v4, Lcom/google/a/h/a/a/b;->e:Lcom/google/a/h/a/a/c;

    const/4 v7, 0x2

    if-eqz v3, :cond_5f

    array-length v8, v3

    move-object v10, v4

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v8, :cond_5f

    aget v11, v3, v4

    iget-object v12, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    array-length v13, v1

    sub-int/2addr v13, v9

    sub-int/2addr v13, v11

    iget-object v11, v12, Lcom/google/a/h/a/a/b;->b:[I

    aget v11, v11, v13

    new-instance v12, Lcom/google/a/h/a/a/c;

    iget-object v13, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    new-array v14, v7, [I

    iget-object v15, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v15, v6, v11}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v11

    aput v11, v14, v6

    aput v9, v14, v9

    invoke-direct {v12, v13, v14}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    invoke-virtual {v10, v12}, Lcom/google/a/h/a/a/c;->c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_5f
    new-instance v3, Lcom/google/a/h/a/a/c;

    iget-object v4, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v3, v4, v5}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    iget-object v4, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v4, v2, v9}, Lcom/google/a/h/a/a/b;->a(II)Lcom/google/a/h/a/a/c;

    move-result-object v4

    iget-object v5, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v5, v5

    sub-int/2addr v5, v9

    iget-object v8, v3, Lcom/google/a/h/a/a/c;->b:[I

    array-length v8, v8

    sub-int/2addr v8, v9

    if-ge v5, v8, :cond_77

    goto :goto_7c

    :cond_77
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    :goto_7c
    iget-object v5, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v5, v5, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v8, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v8, v8, Lcom/google/a/h/a/a/b;->e:Lcom/google/a/h/a/a/c;

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    :goto_89
    iget-object v10, v3, Lcom/google/a/h/a/a/c;->b:[I

    array-length v10, v10

    sub-int/2addr v10, v9

    div-int/lit8 v11, v2, 0x2

    if-lt v10, v11, :cond_131

    invoke-virtual {v3}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v10

    if-eqz v10, :cond_9c

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v1

    throw v1

    :cond_9c
    iget-object v10, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v10, v10, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v11, v3, Lcom/google/a/h/a/a/c;->b:[I

    array-length v11, v11

    sub-int/2addr v11, v9

    invoke-virtual {v3, v11}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v11

    iget-object v12, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v12, v11}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v11

    :goto_ae
    iget-object v12, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v9

    iget-object v13, v3, Lcom/google/a/h/a/a/c;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v9

    if-lt v12, v13, :cond_117

    invoke-virtual {v4}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v12

    if-nez v12, :cond_117

    iget-object v12, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v9

    iget-object v13, v3, Lcom/google/a/h/a/a/c;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v9

    sub-int/2addr v12, v13

    iget-object v13, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v14, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v14, v14

    sub-int/2addr v14, v9

    invoke-virtual {v4, v14}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v14

    invoke-virtual {v13, v14, v11}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v13

    iget-object v14, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v14, v12, v13}, Lcom/google/a/h/a/a/b;->a(II)Lcom/google/a/h/a/a/c;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/google/a/h/a/a/c;->a(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v10

    if-gez v12, :cond_e7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_e7
    if-nez v13, :cond_ee

    iget-object v12, v3, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v12, v12, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    goto :goto_110

    :cond_ee
    iget-object v14, v3, Lcom/google/a/h/a/a/c;->b:[I

    array-length v14, v14

    add-int/2addr v12, v14

    new-array v12, v12, [I

    const/4 v15, 0x0

    :goto_f5
    if-ge v15, v14, :cond_108

    iget-object v9, v3, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v7, v3, Lcom/google/a/h/a/a/c;->b:[I

    aget v7, v7, v15

    invoke-virtual {v9, v7, v13}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v7

    aput v7, v12, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x1

    goto :goto_f5

    :cond_108
    new-instance v7, Lcom/google/a/h/a/a/c;

    iget-object v9, v3, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v7, v9, v12}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    move-object v12, v7

    :goto_110
    invoke-virtual {v4, v12}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v9, 0x1

    goto :goto_ae

    :cond_117
    invoke-virtual {v10, v8}, Lcom/google/a/h/a/a/c;->c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/h/a/a/c;->b()Lcom/google/a/h/a/a/c;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v9, 0x1

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    move-object/from16 v17, v8

    move-object v8, v5

    move-object/from16 v5, v17

    goto/16 :goto_89

    :cond_131
    invoke-virtual {v8, v6}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v2

    if-nez v2, :cond_13c

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v1

    throw v1

    :cond_13c
    iget-object v4, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v4, v2}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v4

    invoke-virtual {v3, v2}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/a/h/a/a/c;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v2, v3, v4

    aget-object v2, v3, v6

    aget-object v3, v3, v4

    invoke-virtual {v0, v2}, Lcom/google/a/h/a/a/a;->a(Lcom/google/a/h/a/a/c;)[I

    move-result-object v5

    invoke-virtual {v0, v3, v2, v5}, Lcom/google/a/h/a/a/a;->a(Lcom/google/a/h/a/a/c;Lcom/google/a/h/a/a/c;[I)[I

    move-result-object v2

    :goto_15e
    array-length v3, v5

    if-ge v6, v3, :cond_18a

    array-length v3, v1

    sub-int/2addr v3, v4

    iget-object v7, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    aget v8, v5, v6

    if-nez v8, :cond_16f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_16f
    iget-object v7, v7, Lcom/google/a/h/a/a/b;->c:[I

    aget v7, v7, v8

    sub-int/2addr v3, v7

    if-gez v3, :cond_17b

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v1

    throw v1

    :cond_17b
    iget-object v7, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    aget v8, v1, v3

    aget v9, v2, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v7

    aput v7, v1, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_15e

    :cond_18a
    array-length v1, v5

    return v1
.end method

.method private a(Lcom/google/a/h/a/a/c;Lcom/google/a/h/a/a/c;I)[Lcom/google/a/h/a/a/c;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move-object/from16 v4, p2

    iget-object v5, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_14

    move-object v15, v4

    move-object v4, v1

    move-object v1, v15

    :cond_14
    iget-object v2, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v2, v2, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v5, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v5, v5, Lcom/google/a/h/a/a/b;->e:Lcom/google/a/h/a/a/c;

    move-object v15, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v15

    :goto_20
    iget-object v6, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    const/4 v7, 0x2

    div-int/lit8 v8, p3, 0x2

    const/4 v9, 0x0

    if-lt v6, v8, :cond_c2

    invoke-virtual {v1}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v1

    throw v1

    :cond_35
    iget-object v6, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v6, v6, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v7, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v7, v7

    sub-int/2addr v7, v3

    invoke-virtual {v1, v7}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v7

    iget-object v8, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v8, v7}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v7

    :goto_47
    iget-object v8, v2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v8, v8

    sub-int/2addr v8, v3

    iget-object v10, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v10, v10

    sub-int/2addr v10, v3

    if-lt v8, v10, :cond_ac

    invoke-virtual {v2}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v8

    if-nez v8, :cond_ac

    iget-object v8, v2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v8, v8

    sub-int/2addr v8, v3

    iget-object v10, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v10, v10

    sub-int/2addr v10, v3

    sub-int/2addr v8, v10

    iget-object v10, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v11, v2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v11, v11

    sub-int/2addr v11, v3

    invoke-virtual {v2, v11}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v11

    invoke-virtual {v10, v11, v7}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v10

    iget-object v11, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v11, v8, v10}, Lcom/google/a/h/a/a/b;->a(II)Lcom/google/a/h/a/a/c;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/google/a/h/a/a/c;->a(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v6

    if-gez v8, :cond_80

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_80
    if-nez v10, :cond_88

    iget-object v8, v1, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v8, v8, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    move-object v10, v8

    goto :goto_a7

    :cond_88
    iget-object v11, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v11, v11

    add-int/2addr v8, v11

    new-array v8, v8, [I

    const/4 v12, 0x0

    :goto_8f
    if-ge v12, v11, :cond_a0

    iget-object v13, v1, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v14, v1, Lcom/google/a/h/a/a/c;->b:[I

    aget v14, v14, v12

    invoke-virtual {v13, v14, v10}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v13

    aput v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8f

    :cond_a0
    new-instance v10, Lcom/google/a/h/a/a/c;

    iget-object v11, v1, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v10, v11, v8}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    :goto_a7
    invoke-virtual {v2, v10}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v2

    goto :goto_47

    :cond_ac
    invoke-virtual {v6, v5}, Lcom/google/a/h/a/a/c;->c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/h/a/a/c;->b()Lcom/google/a/h/a/a/c;

    move-result-object v4

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_20

    :cond_c2
    invoke-virtual {v5, v9}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v2

    if-nez v2, :cond_cd

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v1

    throw v1

    :cond_cd
    iget-object v4, v0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v4, v2}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v1

    new-array v2, v7, [Lcom/google/a/h/a/a/c;

    aput-object v4, v2, v9

    aput-object v1, v2, v3

    return-object v2
.end method


# virtual methods
.method public final a(Lcom/google/a/h/a/a/c;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_8
    iget-object v4, p0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget v4, v4, Lcom/google/a/h/a/a/b;->f:I

    if-ge v1, v4, :cond_23

    if-ge v3, v0, :cond_23

    invoke-virtual {p1, v1}, Lcom/google/a/h/a/a/c;->b(I)I

    move-result v4

    if-nez v4, :cond_20

    iget-object v4, p0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v4, v1}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    if-eq v3, v0, :cond_2a

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object p1

    throw p1

    :cond_2a
    return-object v2
.end method

.method public final a(Lcom/google/a/h/a/a/c;Lcom/google/a/h/a/a/c;[I)[I
    .registers 11

    iget-object v0, p2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v2, v0, [I

    :goto_7
    if-gt v1, v0, :cond_1a

    sub-int v3, v0, v1

    iget-object v4, p0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {p2, v1}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    new-instance p2, Lcom/google/a/h/a/a/c;

    iget-object v0, p0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {p2, v0, v2}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    array-length v0, p3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_4f

    iget-object v4, p0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {p1, v4}, Lcom/google/a/h/a/a/c;->b(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v5

    iget-object v6, p0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {p2, v4}, Lcom/google/a/h/a/a/c;->b(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v4

    iget-object v6, p0, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v6, v5, v4}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_4f
    return-object v1
.end method
