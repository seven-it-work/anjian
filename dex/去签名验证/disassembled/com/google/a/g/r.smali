.class public abstract Lcom/google/a/g/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([I[IF)F
    .registers 12

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    if-ge v2, v0, :cond_10

    aget v5, p0, v2

    add-int/2addr v3, v5

    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v3, v4, :cond_15

    return v2

    :cond_15
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v4, v3, v4

    mul-float p2, p2, v4

    const/4 v5, 0x0

    :goto_1c
    if-ge v1, v0, :cond_37

    aget v6, p0, v1

    aget v7, p1, v1

    int-to-float v7, v7

    mul-float v7, v7, v4

    int-to-float v6, v6

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2c

    sub-float/2addr v6, v7

    goto :goto_2e

    :cond_2c
    sub-float v6, v7, v6

    :goto_2e
    cmpl-float v7, v6, p2

    if-lez v7, :cond_33

    return v2

    :cond_33
    add-float/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_37
    div-float/2addr v5, v3

    return v5
.end method

.method protected static a(Lcom/google/a/c/a;I[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget v2, p0, Lcom/google/a/c/a;->b:I

    if-lt p1, v2, :cond_e

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_15
    if-ge p1, v2, :cond_31

    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v6

    if-eq v6, v3, :cond_23

    aget v6, p2, v5

    add-int/2addr v6, v4

    aput v6, p2, v5

    goto :goto_2e

    :cond_23
    add-int/lit8 v5, v5, 0x1

    if-eq v5, v0, :cond_31

    aput v4, p2, v5

    if-nez v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    :cond_31
    if-eq v5, v0, :cond_3d

    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_38

    if-eq p1, v2, :cond_3d

    :cond_38
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_3d
    return-void
.end method

.method private b(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .registers 22
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
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/a/c;->a()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/a/c;->b()I

    move-result v2

    new-instance v3, Lcom/google/a/c/a;

    invoke-direct {v3, v1}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1d

    sget-object v6, Lcom/google/a/e;->TRY_HARDER:Lcom/google/a/e;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    :goto_1e
    if-eqz v6, :cond_23

    const/16 v7, 0x8

    goto :goto_24

    :cond_23
    const/4 v7, 0x5

    :goto_24
    shr-int v7, v2, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eqz v6, :cond_2e

    move v6, v2

    goto :goto_30

    :cond_2e
    const/16 v6, 0xf

    :goto_30
    div-int/lit8 v8, v2, 0x2

    move-object v9, v0

    const/4 v0, 0x0

    :goto_34
    if-ge v0, v6, :cond_e3

    add-int/lit8 v10, v0, 0x1

    div-int/lit8 v11, v10, 0x2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    if-eqz v0, :cond_44

    goto :goto_45

    :cond_44
    neg-int v11, v11

    :goto_45
    mul-int v11, v11, v7

    add-int/2addr v11, v8

    if-ltz v11, :cond_e3

    if-ge v11, v2, :cond_e3

    move-object/from16 v0, p1

    :try_start_4e
    iget-object v12, v0, Lcom/google/a/c;->a:Lcom/google/a/b;

    invoke-virtual {v12, v11, v3}, Lcom/google/a/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v12
    :try_end_54
    .catch Lcom/google/a/m; {:try_start_4e .. :try_end_54} :catch_d4

    const/4 v3, 0x0

    :goto_55
    const/4 v13, 0x2

    if-ge v3, v13, :cond_cb

    if-ne v3, v5, :cond_77

    invoke-virtual {v12}, Lcom/google/a/c/a;->c()V

    if-eqz v9, :cond_77

    sget-object v13, Lcom/google/a/e;->NEED_RESULT_POINT_CALLBACK:Lcom/google/a/e;

    invoke-interface {v9, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_77

    new-instance v13, Ljava/util/EnumMap;

    const-class v14, Lcom/google/a/e;

    invoke-direct {v13, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {v13, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v9, Lcom/google/a/e;->NEED_RESULT_POINT_CALLBACK:Lcom/google/a/e;

    invoke-interface {v13, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v13

    :cond_77
    move-object/from16 v13, p0

    :try_start_79
    invoke-virtual {v13, v11, v12, v9}, Lcom/google/a/g/r;->a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v14

    if-ne v3, v5, :cond_bb

    sget-object v15, Lcom/google/a/s;->ORIENTATION:Lcom/google/a/s;

    const/16 v5, 0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v15, v5}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    iget-object v5, v14, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-eqz v5, :cond_bb

    new-instance v15, Lcom/google/a/t;
    :try_end_90
    .catch Lcom/google/a/q; {:try_start_79 .. :try_end_90} :catch_bc

    int-to-float v0, v1

    move/from16 v16, v1

    :try_start_93
    aget-object v1, v5, v4

    iget v1, v1, Lcom/google/a/t;->a:F
    :try_end_97
    .catch Lcom/google/a/q; {:try_start_93 .. :try_end_97} :catch_be

    sub-float v1, v0, v1

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v1, v1, v17

    move/from16 v18, v2

    :try_start_9f
    aget-object v2, v5, v4

    iget v2, v2, Lcom/google/a/t;->b:F

    invoke-direct {v15, v1, v2}, Lcom/google/a/t;-><init>(FF)V

    aput-object v15, v5, v4

    new-instance v1, Lcom/google/a/t;
    :try_end_aa
    .catch Lcom/google/a/q; {:try_start_9f .. :try_end_aa} :catch_c0

    const/4 v2, 0x1

    :try_start_ab
    aget-object v15, v5, v2

    iget v15, v15, Lcom/google/a/t;->a:F

    sub-float/2addr v0, v15

    sub-float v0, v0, v17

    aget-object v15, v5, v2

    iget v15, v15, Lcom/google/a/t;->b:F

    invoke-direct {v1, v0, v15}, Lcom/google/a/t;-><init>(FF)V

    aput-object v1, v5, v2
    :try_end_bb
    .catch Lcom/google/a/q; {:try_start_ab .. :try_end_bb} :catch_c1

    :cond_bb
    return-object v14

    :catch_bc
    move/from16 v16, v1

    :catch_be
    move/from16 v18, v2

    :catch_c0
    const/4 v2, 0x1

    :catch_c1
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v16

    move/from16 v2, v18

    move-object/from16 v0, p1

    const/4 v5, 0x1

    goto :goto_55

    :cond_cb
    move-object/from16 v13, p0

    move/from16 v16, v1

    move/from16 v18, v2

    const/4 v2, 0x1

    move-object v3, v12

    goto :goto_db

    :catch_d4
    move-object/from16 v13, p0

    move/from16 v16, v1

    move/from16 v18, v2

    const/4 v2, 0x1

    :goto_db
    move v0, v10

    move/from16 v1, v16

    move/from16 v2, v18

    const/4 v5, 0x1

    goto/16 :goto_34

    :cond_e3
    move-object/from16 v13, p0

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method

.method protected static b(Lcom/google/a/c/a;I[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    array-length v0, p2

    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    :cond_5
    :goto_5
    const/4 v2, 0x1

    if-lez p1, :cond_1a

    if-ltz v0, :cond_1a

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v3

    if-eq v3, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_5

    :cond_18
    const/4 v1, 0x0

    goto :goto_5

    :cond_1a
    if-ltz v0, :cond_21

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_21
    add-int/2addr p1, v2

    invoke-static {p0, p1, p2}, Lcom/google/a/g/r;->a(Lcom/google/a/c/a;I[I)V

    return-void
.end method


# virtual methods
.method public abstract a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
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
            Lcom/google/a/m;,
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation
.end method

.method public a(Lcom/google/a/c;)Lcom/google/a/r;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/g/r;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .registers 8
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
            Lcom/google/a/h;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/a/g/r;->b(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v0
    :try_end_4
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    if-eqz p2, :cond_13

    sget-object v2, Lcom/google/a/e;->TRY_HARDER:Lcom/google/a/e;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_80

    iget-object v2, p1, Lcom/google/a/c;->a:Lcom/google/a/b;

    iget-object v2, v2, Lcom/google/a/b;->a:Lcom/google/a/j;

    invoke-virtual {v2}, Lcom/google/a/j;->c()Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v0, p1, Lcom/google/a/c;->a:Lcom/google/a/b;

    iget-object v0, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->e()Lcom/google/a/j;

    move-result-object v0

    new-instance v2, Lcom/google/a/c;

    iget-object p1, p1, Lcom/google/a/c;->a:Lcom/google/a/b;

    invoke-virtual {p1, v0}, Lcom/google/a/b;->a(Lcom/google/a/j;)Lcom/google/a/b;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/a/c;-><init>(Lcom/google/a/b;)V

    invoke-direct {p0, v2, p2}, Lcom/google/a/g/r;->b(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    iget-object p2, p1, Lcom/google/a/r;->f:Ljava/util/Map;

    const/16 v0, 0x10e

    if-eqz p2, :cond_54

    sget-object v3, Lcom/google/a/s;->ORIENTATION:Lcom/google/a/s;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    sget-object v3, Lcom/google/a/s;->ORIENTATION:Lcom/google/a/s;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v0

    rem-int/lit16 v0, p2, 0x168

    :cond_54
    sget-object p2, Lcom/google/a/s;->ORIENTATION:Lcom/google/a/s;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-eqz p2, :cond_7f

    invoke-virtual {v2}, Lcom/google/a/c;->b()I

    move-result v0

    :goto_65
    array-length v2, p2

    if-ge v1, v2, :cond_7f

    new-instance v2, Lcom/google/a/t;

    int-to-float v3, v0

    aget-object v4, p2, v1

    iget v4, v4, Lcom/google/a/t;->b:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aget-object v4, p2, v1

    iget v4, v4, Lcom/google/a/t;->a:F

    invoke-direct {v2, v3, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_7f
    return-object p1

    :cond_80
    throw v0
.end method

.method public a()V
    .registers 1

    return-void
.end method
