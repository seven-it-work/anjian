.class public final Lcom/google/a/c/f;
.super Lcom/google/a/c/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/c/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/c/b;IIFFFFFFFFFFFFFFFF)Lcom/google/a/c/b;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-static/range {p4 .. p19}, Lcom/google/a/c/k;->a(FFFFFFFFFFFFFFFF)Lcom/google/a/c/k;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/a/c/f;->a(Lcom/google/a/c/b;IILcom/google/a/c/k;)Lcom/google/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/a/c/b;IILcom/google/a/c/k;)Lcom/google/a/c/b;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    if-lez v1, :cond_117

    if-gtz v2, :cond_e

    goto/16 :goto_117

    :cond_e
    new-instance v4, Lcom/google/a/c/b;

    invoke-direct {v4, v1, v2}, Lcom/google/a/c/b;-><init>(II)V

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v2, :cond_116

    array-length v7, v1

    int-to-float v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    const/4 v10, 0x0

    :goto_20
    if-ge v10, v7, :cond_2f

    div-int/lit8 v11, v10, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v9

    aput v11, v1, v10

    add-int/lit8 v11, v10, 0x1

    aput v8, v1, v11

    add-int/lit8 v10, v10, 0x2

    goto :goto_20

    :cond_2f
    array-length v8, v1

    iget v9, v3, Lcom/google/a/c/k;->a:F

    iget v10, v3, Lcom/google/a/c/k;->b:F

    iget v11, v3, Lcom/google/a/c/k;->c:F

    iget v12, v3, Lcom/google/a/c/k;->d:F

    iget v13, v3, Lcom/google/a/c/k;->e:F

    iget v14, v3, Lcom/google/a/c/k;->f:F

    iget v15, v3, Lcom/google/a/c/k;->g:F

    iget v5, v3, Lcom/google/a/c/k;->h:F

    iget v2, v3, Lcom/google/a/c/k;->i:F

    const/4 v3, 0x0

    :goto_43
    if-ge v3, v8, :cond_6e

    aget v16, v1, v3

    add-int/lit8 v17, v3, 0x1

    aget v18, v1, v17

    mul-float v19, v11, v16

    mul-float v20, v14, v18

    add-float v19, v19, v20

    add-float v19, v19, v2

    mul-float v20, v9, v16

    mul-float v21, v12, v18

    add-float v20, v20, v21

    add-float v20, v20, v15

    div-float v20, v20, v19

    aput v20, v1, v3

    mul-float v16, v16, v10

    mul-float v18, v18, v13

    add-float v16, v16, v18

    add-float v16, v16, v5

    div-float v16, v16, v19

    aput v16, v1, v17

    add-int/lit8 v3, v3, 0x2

    goto :goto_43

    :cond_6e
    iget v2, v0, Lcom/google/a/c/b;->a:I

    iget v3, v0, Lcom/google/a/c/b;->b:I

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_75
    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-ge v8, v10, :cond_b2

    if-eqz v9, :cond_b2

    aget v9, v1, v8

    float-to-int v9, v9

    add-int/lit8 v10, v8, 0x1

    aget v13, v1, v10

    float-to-int v13, v13

    if-lt v9, v12, :cond_ad

    if-gt v9, v2, :cond_ad

    if-lt v13, v12, :cond_ad

    if-le v13, v3, :cond_8d

    goto :goto_ad

    :cond_8d
    if-ne v9, v12, :cond_93

    aput v11, v1, v8

    :goto_91
    const/4 v9, 0x1

    goto :goto_9c

    :cond_93
    if-ne v9, v2, :cond_9b

    add-int/lit8 v9, v2, -0x1

    int-to-float v9, v9

    aput v9, v1, v8

    goto :goto_91

    :cond_9b
    const/4 v9, 0x0

    :goto_9c
    if-ne v13, v12, :cond_a2

    aput v11, v1, v10

    :goto_a0
    const/4 v9, 0x1

    goto :goto_aa

    :cond_a2
    if-ne v13, v3, :cond_aa

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    aput v9, v1, v10

    goto :goto_a0

    :cond_aa
    :goto_aa
    add-int/lit8 v8, v8, 0x2

    goto :goto_75

    :cond_ad
    :goto_ad
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_b2
    array-length v8, v1

    add-int/lit8 v8, v8, -0x2

    const/4 v9, 0x1

    :goto_b6
    if-ltz v8, :cond_f0

    if-eqz v9, :cond_f0

    aget v9, v1, v8

    float-to-int v9, v9

    add-int/lit8 v10, v8, 0x1

    aget v13, v1, v10

    float-to-int v13, v13

    if-lt v9, v12, :cond_eb

    if-gt v9, v2, :cond_eb

    if-lt v13, v12, :cond_eb

    if-le v13, v3, :cond_cb

    goto :goto_eb

    :cond_cb
    if-ne v9, v12, :cond_d1

    aput v11, v1, v8

    :goto_cf
    const/4 v9, 0x1

    goto :goto_da

    :cond_d1
    if-ne v9, v2, :cond_d9

    add-int/lit8 v9, v2, -0x1

    int-to-float v9, v9

    aput v9, v1, v8

    goto :goto_cf

    :cond_d9
    const/4 v9, 0x0

    :goto_da
    if-ne v13, v12, :cond_e0

    aput v11, v1, v10

    :goto_de
    const/4 v9, 0x1

    goto :goto_e8

    :cond_e0
    if-ne v13, v3, :cond_e8

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    aput v9, v1, v10

    goto :goto_de

    :cond_e8
    :goto_e8
    add-int/lit8 v8, v8, -0x2

    goto :goto_b6

    :cond_eb
    :goto_eb
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_f0
    const/4 v2, 0x0

    :goto_f1
    if-ge v2, v7, :cond_10e

    :try_start_f3
    aget v3, v1, v2

    float-to-int v3, v3

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    float-to-int v5, v5

    invoke-virtual {v0, v3, v5}, Lcom/google/a/c/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_106

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v4, v3, v6}, Lcom/google/a/c/b;->b(II)V
    :try_end_106
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f3 .. :try_end_106} :catch_109

    :cond_106
    add-int/lit8 v2, v2, 0x2

    goto :goto_f1

    :catch_109
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_10e
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_18

    :cond_116
    return-object v4

    :cond_117
    :goto_117
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method
