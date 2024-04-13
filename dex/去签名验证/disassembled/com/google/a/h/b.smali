.class public final Lcom/google/a/h/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/f/c;
.implements Lcom/google/a/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/t;Lcom/google/a/t;)I
    .registers 2

    if-eqz p0, :cond_10

    if-nez p1, :cond_5

    goto :goto_10

    :cond_5
    iget p0, p0, Lcom/google/a/t;->a:F

    iget p1, p1, Lcom/google/a/t;->a:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method private static a([Lcom/google/a/t;)I
    .registers 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {v2, p0}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x11

    div-int/lit8 p0, p0, 0x12

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/a/c;Z)[Lcom/google/a/r;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Z)[",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p1}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c;Z)Lcom/google/a/h/b/b;

    move-result-object v1

    iget-object v2, v1, Lcom/google/a/h/b/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/a/t;

    iget-object v4, v1, Lcom/google/a/h/b/b;->a:Lcom/google/a/c/b;

    const/4 v5, 0x4

    aget-object v6, v3, v5

    const/4 v7, 0x5

    aget-object v8, v3, v7

    const/4 v9, 0x6

    aget-object v10, v3, v9

    const/4 v11, 0x7

    aget-object v12, v3, v11

    const/4 v13, 0x0

    aget-object v14, v3, v13

    aget-object v15, v3, v5

    invoke-static {v14, v15}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v14

    aget-object v15, v3, v9

    const/16 v16, 0x2

    aget-object v9, v3, v16

    invoke-static {v15, v9}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x11

    div-int/lit8 v9, v9, 0x12

    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v14, 0x1

    aget-object v15, v3, v14

    aget-object v14, v3, v7

    invoke-static {v15, v14}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v14

    aget-object v15, v3, v11

    const/16 v17, 0x3

    aget-object v11, v3, v17

    invoke-static {v15, v11}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x11

    div-int/lit8 v11, v11, 0x12

    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    aget-object v11, v3, v13

    aget-object v5, v3, v5

    invoke-static {v11, v5}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v5

    const/4 v11, 0x6

    aget-object v11, v3, v11

    aget-object v13, v3, v16

    invoke-static {v11, v13}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x11

    div-int/lit8 v11, v11, 0x12

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v11, 0x1

    aget-object v11, v3, v11

    aget-object v7, v3, v7

    invoke-static {v11, v7}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v7

    const/4 v11, 0x7

    aget-object v11, v3, v11

    aget-object v13, v3, v17

    invoke-static {v11, v13}, Lcom/google/a/h/b;->a(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x11

    div-int/lit8 v11, v11, 0x12

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object v5, v6

    move-object v6, v8

    move-object v7, v10

    move-object v8, v12

    move v10, v11

    invoke-static/range {v4 .. v10}, Lcom/google/a/h/a/j;->a(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;II)Lcom/google/a/c/e;

    move-result-object v4

    new-instance v5, Lcom/google/a/r;

    iget-object v6, v4, Lcom/google/a/c/e;->c:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/a/c/e;->a:[B

    sget-object v8, Lcom/google/a/a;->PDF_417:Lcom/google/a/a;

    invoke-direct {v5, v6, v7, v3, v8}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    sget-object v3, Lcom/google/a/s;->ERROR_CORRECTION_LEVEL:Lcom/google/a/s;

    iget-object v6, v4, Lcom/google/a/c/e;->e:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    iget-object v3, v4, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    check-cast v3, Lcom/google/a/h/c;

    if-eqz v3, :cond_c0

    sget-object v4, Lcom/google/a/s;->PDF417_EXTRA_METADATA:Lcom/google/a/s;

    invoke-virtual {v5, v4, v3}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_c0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_c5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/a/r;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/r;

    return-object v0
.end method

.method private static b(Lcom/google/a/t;Lcom/google/a/t;)I
    .registers 2

    if-eqz p0, :cond_10

    if-nez p1, :cond_5

    goto :goto_10

    :cond_5
    iget p0, p0, Lcom/google/a/t;->a:F

    iget p1, p1, Lcom/google/a/t;->a:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_10
    :goto_10
    const p0, 0x7fffffff

    return p0
.end method

.method private static b([Lcom/google/a/t;)I
    .registers 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {v2, p0}, Lcom/google/a/h/b;->b(Lcom/google/a/t;Lcom/google/a/t;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x11

    div-int/lit8 p0, p0, 0x12

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/h/b;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .registers 4
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
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/a/h/b;->a(Lcom/google/a/c;Z)[Lcom/google/a/r;

    move-result-object p1

    if-eqz p1, :cond_12

    array-length v0, p1

    if-eqz v0, :cond_12

    aget-object v0, p1, p2

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    aget-object p1, p1, p2

    return-object p1

    :cond_12
    :goto_12
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .registers 1

    return-void
.end method

.method public final a_(Lcom/google/a/c;)[Lcom/google/a/r;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/a/h/b;->b(Lcom/google/a/c;)[Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/a/c;)[Lcom/google/a/r;
    .registers 3
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

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/google/a/h/b;->a(Lcom/google/a/c;Z)[Lcom/google/a/r;

    move-result-object p1
    :try_end_5
    .catch Lcom/google/a/h; {:try_start_1 .. :try_end_5} :catch_6
    .catch Lcom/google/a/d; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method
