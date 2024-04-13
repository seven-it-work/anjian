.class final Lcom/google/a/i/b/b;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/a/c/b;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/a/i/b/a;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field private final g:F

.field private final h:[I

.field private final i:Lcom/google/a/u;


# direct methods
.method constructor <init>(Lcom/google/a/c/b;IIIIFLcom/google/a/u;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    iput p2, p0, Lcom/google/a/i/b/b;->c:I

    iput p3, p0, Lcom/google/a/i/b/b;->d:I

    iput p4, p0, Lcom/google/a/i/b/b;->e:I

    iput p5, p0, Lcom/google/a/i/b/b;->f:I

    iput p6, p0, Lcom/google/a/i/b/b;->g:F

    const/4 p1, 0x3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/a/i/b/b;->h:[I

    iput-object p7, p0, Lcom/google/a/i/b/b;->i:Lcom/google/a/u;

    return-void
.end method

.method private a(IIII)F
    .registers 14

    iget-object v0, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    iget v1, v0, Lcom/google/a/c/b;->b:I

    iget-object v2, p0, Lcom/google/a/i/b/b;->h:[I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v5, 0x2

    aput v3, v2, v5

    move v6, p1

    :goto_10
    if-ltz v6, :cond_24

    invoke-virtual {v0, p2, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v7

    if-eqz v7, :cond_24

    aget v7, v2, v4

    if-gt v7, p3, :cond_24

    aget v7, v2, v4

    add-int/2addr v7, v4

    aput v7, v2, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_10

    :cond_24
    const/high16 v7, 0x7fc00000    # Float.NaN

    if-ltz v6, :cond_9a

    aget v8, v2, v4

    if-le v8, p3, :cond_2d

    return v7

    :cond_2d
    :goto_2d
    if-ltz v6, :cond_41

    invoke-virtual {v0, p2, v6}, Lcom/google/a/c/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_41

    aget v8, v2, v3

    if-gt v8, p3, :cond_41

    aget v8, v2, v3

    add-int/2addr v8, v4

    aput v8, v2, v3

    add-int/lit8 v6, v6, -0x1

    goto :goto_2d

    :cond_41
    aget v6, v2, v3

    if-le v6, p3, :cond_46

    return v7

    :cond_46
    add-int/2addr p1, v4

    :goto_47
    if-ge p1, v1, :cond_5b

    invoke-virtual {v0, p2, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_5b

    aget v6, v2, v4

    if-gt v6, p3, :cond_5b

    aget v6, v2, v4

    add-int/2addr v6, v4

    aput v6, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_47

    :cond_5b
    if-eq p1, v1, :cond_9a

    aget v6, v2, v4

    if-le v6, p3, :cond_62

    return v7

    :cond_62
    :goto_62
    if-ge p1, v1, :cond_76

    invoke-virtual {v0, p2, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v6

    if-nez v6, :cond_76

    aget v6, v2, v5

    if-gt v6, p3, :cond_76

    aget v6, v2, v5

    add-int/2addr v6, v4

    aput v6, v2, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_62

    :cond_76
    aget p2, v2, v5

    if-le p2, p3, :cond_7b

    return v7

    :cond_7b
    aget p2, v2, v3

    aget p3, v2, v4

    add-int/2addr p2, p3

    aget p3, v2, v5

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    mul-int/lit8 p4, p4, 0x2

    if-lt p2, p4, :cond_8f

    return v7

    :cond_8f
    invoke-virtual {p0, v2}, Lcom/google/a/i/b/b;->a([I)Z

    move-result p2

    if-eqz p2, :cond_9a

    invoke-static {v2, p1}, Lcom/google/a/i/b/b;->a([II)F

    move-result p1

    return p1

    :cond_9a
    return v7
.end method

.method private static a([II)F
    .registers 3

    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private a()Lcom/google/a/i/b/a;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/i/b/b;->c:I

    iget v1, p0, Lcom/google/a/i/b/b;->f:I

    iget v2, p0, Lcom/google/a/i/b/b;->e:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/google/a/i/b/b;->d:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v1, :cond_86

    and-int/lit8 v7, v6, 0x1

    const/4 v8, 0x2

    if-nez v7, :cond_1c

    add-int/lit8 v7, v6, 0x1

    div-int/2addr v7, v8

    goto :goto_20

    :cond_1c
    add-int/lit8 v7, v6, 0x1

    div-int/2addr v7, v8

    neg-int v7, v7

    :goto_20
    add-int/2addr v7, v3

    aput v5, v4, v5

    const/4 v9, 0x1

    aput v5, v4, v9

    aput v5, v4, v8

    move v10, v0

    :goto_29
    if-ge v10, v2, :cond_36

    iget-object v11, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    invoke-virtual {v11, v10, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v11

    if-nez v11, :cond_36

    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    :cond_36
    const/4 v11, 0x0

    :goto_37
    if-ge v10, v2, :cond_76

    iget-object v12, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    invoke-virtual {v12, v10, v7}, Lcom/google/a/c/b;->a(II)Z

    move-result v12

    if-eqz v12, :cond_6a

    if-ne v11, v9, :cond_49

    aget v12, v4, v9

    add-int/2addr v12, v9

    aput v12, v4, v9

    goto :goto_73

    :cond_49
    if-ne v11, v8, :cond_62

    invoke-virtual {p0, v4}, Lcom/google/a/i/b/b;->a([I)Z

    move-result v11

    if-eqz v11, :cond_58

    invoke-virtual {p0, v4, v7, v10}, Lcom/google/a/i/b/b;->a([III)Lcom/google/a/i/b/a;

    move-result-object v11

    if-eqz v11, :cond_58

    return-object v11

    :cond_58
    aget v11, v4, v8

    aput v11, v4, v5

    aput v9, v4, v9

    aput v5, v4, v8

    const/4 v11, 0x1

    goto :goto_73

    :cond_62
    add-int/lit8 v11, v11, 0x1

    aget v12, v4, v11

    add-int/2addr v12, v9

    aput v12, v4, v11

    goto :goto_73

    :cond_6a
    if-ne v11, v9, :cond_6e

    add-int/lit8 v11, v11, 0x1

    :cond_6e
    aget v12, v4, v11

    add-int/2addr v12, v9

    aput v12, v4, v11

    :goto_73
    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    :cond_76
    invoke-virtual {p0, v4}, Lcom/google/a/i/b/b;->a([I)Z

    move-result v8

    if-eqz v8, :cond_83

    invoke-virtual {p0, v4, v7, v2}, Lcom/google/a/i/b/b;->a([III)Lcom/google/a/i/b/a;

    move-result-object v7

    if-eqz v7, :cond_83

    return-object v7

    :cond_83
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_86
    iget-object v0, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/i/b/a;

    return-object v0

    :cond_97
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method final a([III)Lcom/google/a/i/b/a;
    .registers 16

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    invoke-static {p1, p3}, Lcom/google/a/i/b/b;->a([II)F

    move-result p3

    float-to-int v4, p3

    aget v5, p1, v2

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/google/a/i/b/b;->a:Lcom/google/a/c/b;

    iget v7, v6, Lcom/google/a/c/b;->b:I

    iget-object v8, p0, Lcom/google/a/i/b/b;->h:[I

    aput v0, v8, v0

    aput v0, v8, v2

    aput v0, v8, v3

    move v9, p2

    :goto_21
    if-ltz v9, :cond_35

    invoke-virtual {v6, v4, v9}, Lcom/google/a/c/b;->a(II)Z

    move-result v10

    if-eqz v10, :cond_35

    aget v10, v8, v2

    if-gt v10, v5, :cond_35

    aget v10, v8, v2

    add-int/2addr v10, v2

    aput v10, v8, v2

    add-int/lit8 v9, v9, -0x1

    goto :goto_21

    :cond_35
    const/high16 v10, 0x7fc00000    # Float.NaN

    if-ltz v9, :cond_ab

    aget v11, v8, v2

    if-le v11, v5, :cond_3f

    goto/16 :goto_ab

    :cond_3f
    :goto_3f
    if-ltz v9, :cond_53

    invoke-virtual {v6, v4, v9}, Lcom/google/a/c/b;->a(II)Z

    move-result v11

    if-nez v11, :cond_53

    aget v11, v8, v0

    if-gt v11, v5, :cond_53

    aget v11, v8, v0

    add-int/2addr v11, v2

    aput v11, v8, v0

    add-int/lit8 v9, v9, -0x1

    goto :goto_3f

    :cond_53
    aget v9, v8, v0

    if-le v9, v5, :cond_58

    goto :goto_ab

    :cond_58
    add-int/2addr p2, v2

    :goto_59
    if-ge p2, v7, :cond_6d

    invoke-virtual {v6, v4, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_6d

    aget v9, v8, v2

    if-gt v9, v5, :cond_6d

    aget v9, v8, v2

    add-int/2addr v9, v2

    aput v9, v8, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_59

    :cond_6d
    if-eq p2, v7, :cond_ab

    aget v9, v8, v2

    if-le v9, v5, :cond_74

    goto :goto_ab

    :cond_74
    :goto_74
    if-ge p2, v7, :cond_88

    invoke-virtual {v6, v4, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result v9

    if-nez v9, :cond_88

    aget v9, v8, v3

    if-gt v9, v5, :cond_88

    aget v9, v8, v3

    add-int/2addr v9, v2

    aput v9, v8, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_74

    :cond_88
    aget v4, v8, v3

    if-le v4, v5, :cond_8d

    goto :goto_ab

    :cond_8d
    aget v4, v8, v0

    aget v5, v8, v2

    add-int/2addr v4, v5

    aget v5, v8, v3

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    mul-int/lit8 v1, v1, 0x2

    if-lt v4, v1, :cond_a1

    goto :goto_ab

    :cond_a1
    invoke-virtual {p0, v8}, Lcom/google/a/i/b/b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-static {v8, p2}, Lcom/google/a/i/b/b;->a([II)F

    move-result v10

    :cond_ab
    :goto_ab
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_11e

    aget p2, p1, v0

    aget v1, p1, v2

    add-int/2addr p2, v1

    aget p1, p1, v3

    add-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_114

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/i/b/a;

    iget v3, v1, Lcom/google/a/t;->b:F

    sub-float v3, v10, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_fd

    iget v3, v1, Lcom/google/a/t;->a:F

    sub-float v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_fd

    iget v3, v1, Lcom/google/a/i/b/a;->c:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-lez v4, :cond_fb

    iget v4, v1, Lcom/google/a/i/b/a;->c:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_fd

    :cond_fb
    const/4 v3, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v3, 0x0

    :goto_fe
    if-eqz v3, :cond_c3

    iget p2, v1, Lcom/google/a/t;->a:F

    add-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iget v0, v1, Lcom/google/a/t;->b:F

    add-float/2addr v0, v10

    div-float/2addr v0, p3

    iget v1, v1, Lcom/google/a/i/b/a;->c:F

    add-float/2addr v1, p1

    div-float/2addr v1, p3

    new-instance p1, Lcom/google/a/i/b/a;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/a/i/b/a;-><init>(FFF)V

    return-object p1

    :cond_114
    new-instance p2, Lcom/google/a/i/b/a;

    invoke-direct {p2, p3, v10, p1}, Lcom/google/a/i/b/a;-><init>(FFF)V

    iget-object p1, p0, Lcom/google/a/i/b/b;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11e
    const/4 p1, 0x0

    return-object p1
.end method

.method final a([I)Z
    .registers 7

    iget v0, p0, Lcom/google/a/i/b/b;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1c

    aget v4, p1, v3

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_19

    return v2

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1c
    const/4 p1, 0x1

    return p1
.end method
