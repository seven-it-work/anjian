.class public final Lcom/google/a/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/f/c;


# static fields
.field private static final a:I = 0x64

.field private static final b:I = 0x4


# instance fields
.field private final c:Lcom/google/a/p;


# direct methods
.method private constructor <init>(Lcom/google/a/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/f/b;->c:Lcom/google/a/p;

    return-void
.end method

.method private static a(Lcom/google/a/r;II)Lcom/google/a/r;
    .registers 13

    iget-object v0, p0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    array-length v1, v0

    new-array v6, v1, [Lcom/google/a/t;

    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_22

    aget-object v2, v0, v1

    if-eqz v2, :cond_1f

    new-instance v3, Lcom/google/a/t;

    iget v4, v2, Lcom/google/a/t;->a:F

    int-to-float v5, p1

    add-float/2addr v4, v5

    iget v2, v2, Lcom/google/a/t;->b:F

    int-to-float v5, p2

    add-float/2addr v2, v5

    invoke-direct {v3, v4, v2}, Lcom/google/a/t;-><init>(FF)V

    aput-object v3, v6, v1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_22
    new-instance p1, Lcom/google/a/r;

    iget-object v3, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/a/r;->b:[B

    iget v5, p0, Lcom/google/a/r;->c:I

    iget-object v7, p0, Lcom/google/a/r;->e:Lcom/google/a/a;

    iget-wide v8, p0, Lcom/google/a/r;->g:J

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/a/r;-><init>(Ljava/lang/String;[BI[Lcom/google/a/t;Lcom/google/a/a;J)V

    iget-object p0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    return-object p1
.end method

.method private a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/a/r;",
            ">;III)V"
        }
    .end annotation

    move/from16 v7, p4

    move-object/from16 v9, p1

    move/from16 v10, p5

    move/from16 v8, p6

    :goto_8
    const/4 v0, 0x4

    if-le v8, v0, :cond_c

    return-void

    :cond_c
    move-object/from16 v11, p0

    :try_start_e
    iget-object v0, v11, Lcom/google/a/f/b;->c:Lcom/google/a/p;

    move-object/from16 v12, p2

    invoke-interface {v0, v9, v12}, Lcom/google/a/p;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v0
    :try_end_16
    .catch Lcom/google/a/q; {:try_start_e .. :try_end_16} :catch_139

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/r;

    iget-object v2, v2, Lcom/google/a/r;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-nez v1, :cond_7f

    iget-object v1, v0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-nez v1, :cond_3d

    move-object/from16 v7, p3

    move-object v1, v0

    goto :goto_7b

    :cond_3d
    array-length v2, v1

    new-array v2, v2, [Lcom/google/a/t;

    const/4 v3, 0x0

    :goto_41
    array-length v4, v1

    if-ge v3, v4, :cond_5a

    aget-object v4, v1, v3

    if-eqz v4, :cond_57

    new-instance v5, Lcom/google/a/t;

    iget v6, v4, Lcom/google/a/t;->a:F

    int-to-float v14, v7

    add-float/2addr v6, v14

    iget v4, v4, Lcom/google/a/t;->b:F

    int-to-float v14, v10

    add-float/2addr v4, v14

    invoke-direct {v5, v6, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v5, v2, v3

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_5a
    new-instance v1, Lcom/google/a/r;

    iget-object v15, v0, Lcom/google/a/r;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/a/r;->b:[B

    iget v4, v0, Lcom/google/a/r;->c:I

    iget-object v5, v0, Lcom/google/a/r;->e:Lcom/google/a/a;

    iget-wide v6, v0, Lcom/google/a/r;->g:J

    move-object v14, v1

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-wide/from16 v20, v6

    invoke-direct/range {v14 .. v21}, Lcom/google/a/r;-><init>(Ljava/lang/String;[BI[Lcom/google/a/t;Lcom/google/a/a;J)V

    iget-object v2, v0, Lcom/google/a/r;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    move-object/from16 v7, p3

    :goto_7b
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_7f
    move-object/from16 v7, p3

    :goto_81
    iget-object v0, v0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-eqz v0, :cond_139

    array-length v1, v0

    if-nez v1, :cond_89

    return-void

    :cond_89
    invoke-virtual {v9}, Lcom/google/a/c;->a()I

    move-result v14

    invoke-virtual {v9}, Lcom/google/a/c;->b()I

    move-result v15

    int-to-float v1, v14

    int-to-float v2, v15

    array-length v3, v0

    const/4 v4, 0x0

    move v6, v2

    const/4 v5, 0x0

    move v2, v1

    const/4 v1, 0x0

    :goto_99
    if-ge v1, v3, :cond_c5

    aget-object v13, v0, v1

    if-eqz v13, :cond_be

    move-object/from16 v22, v0

    iget v0, v13, Lcom/google/a/t;->a:F

    iget v13, v13, Lcom/google/a/t;->b:F

    cmpg-float v16, v0, v2

    if-gez v16, :cond_aa

    move v2, v0

    :cond_aa
    cmpg-float v16, v13, v6

    if-gez v16, :cond_af

    move v6, v13

    :cond_af
    cmpl-float v16, v0, v5

    if-lez v16, :cond_b4

    goto :goto_b5

    :cond_b4
    move v0, v5

    :goto_b5
    cmpl-float v5, v13, v4

    if-lez v5, :cond_bc

    move v5, v0

    move v4, v13

    goto :goto_c0

    :cond_bc
    move v5, v0

    goto :goto_c0

    :cond_be
    move-object/from16 v22, v0

    :goto_c0
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v22

    goto :goto_99

    :cond_c5
    const/high16 v13, 0x42c80000    # 100.0f

    cmpl-float v0, v2, v13

    if-lez v0, :cond_e7

    float-to-int v0, v2

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v1, v0, v15}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v2

    add-int/lit8 v16, v8, 0x1

    move-object v0, v11

    move-object v1, v2

    move-object v2, v12

    move-object v3, v7

    move/from16 v23, v4

    move/from16 v17, p4

    move/from16 v4, v17

    move/from16 v24, v5

    move v5, v10

    move v13, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/google/a/f/b;->a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_ee

    :cond_e7
    move/from16 v23, v4

    move/from16 v24, v5

    move v13, v6

    move/from16 v17, p4

    :goto_ee
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v13, v0

    if-lez v0, :cond_106

    float-to-int v0, v13

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v1, v14, v0}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v2

    add-int/lit8 v6, v8, 0x1

    move-object v0, v11

    move-object v1, v2

    move-object v2, v12

    move-object v3, v7

    move/from16 v4, v17

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/a/f/b;->a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V

    :cond_106
    add-int/lit8 v0, v14, -0x64

    int-to-float v0, v0

    move/from16 v4, v24

    cmpg-float v0, v4, v0

    if-gez v0, :cond_122

    float-to-int v0, v4

    sub-int v1, v14, v0

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2, v1, v15}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v1

    add-int v4, v17, v0

    add-int/lit8 v6, v8, 0x1

    move-object v0, v11

    move-object v2, v12

    move-object v3, v7

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/a/f/b;->a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V

    :cond_122
    add-int/lit8 v0, v15, -0x64

    int-to-float v0, v0

    move/from16 v4, v23

    cmpg-float v0, v4, v0

    if-gez v0, :cond_139

    float-to-int v0, v4

    sub-int/2addr v15, v0

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v0, v14, v15}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v9

    add-int/2addr v10, v0

    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v17

    goto/16 :goto_8

    :catch_139
    :cond_139
    return-void
.end method


# virtual methods
.method public final a_(Lcom/google/a/c;)[Lcom/google/a/r;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/a/f/b;->b(Lcom/google/a/c;)[Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/a/c;)[Lcom/google/a/r;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            ")[",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/a/f/b;->a(Lcom/google/a/c;Ljava/util/Map;Ljava/util/List;III)V

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_1a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/a/r;

    invoke-interface {v7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/a/r;

    return-object p1
.end method
