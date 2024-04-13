.class public final Lcom/google/a/c/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0xa

.field private static final b:I = 0x1


# instance fields
.field private final c:Lcom/google/a/c/b;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/google/a/c/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget v0, p1, Lcom/google/a/c/b;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/google/a/c/b;->b:I

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/a/c/a/c;-><init>(Lcom/google/a/c/b;III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/a/c/b;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/c/a/c;->c:Lcom/google/a/c/b;

    iget v0, p1, Lcom/google/a/c/b;->b:I

    iput v0, p0, Lcom/google/a/c/a/c;->d:I

    iget p1, p1, Lcom/google/a/c/b;->a:I

    iput p1, p0, Lcom/google/a/c/a/c;->e:I

    div-int/lit8 p2, p2, 0x2

    sub-int p1, p3, p2

    iput p1, p0, Lcom/google/a/c/a/c;->f:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/a/c/a/c;->g:I

    sub-int p1, p4, p2

    iput p1, p0, Lcom/google/a/c/a/c;->i:I

    add-int/2addr p4, p2

    iput p4, p0, Lcom/google/a/c/a/c;->h:I

    iget p1, p0, Lcom/google/a/c/a/c;->i:I

    if-ltz p1, :cond_33

    iget p1, p0, Lcom/google/a/c/a/c;->f:I

    if-ltz p1, :cond_33

    iget p1, p0, Lcom/google/a/c/a/c;->h:I

    iget p2, p0, Lcom/google/a/c/a/c;->d:I

    if-ge p1, p2, :cond_33

    iget p1, p0, Lcom/google/a/c/a/c;->g:I

    iget p2, p0, Lcom/google/a/c/a/c;->e:I

    if-lt p1, p2, :cond_32

    goto :goto_33

    :cond_32
    return-void

    :cond_33
    :goto_33
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private a(FFFF)Lcom/google/a/t;
    .registers 10

    invoke-static {p1, p2, p3, p4}, Lcom/google/a/c/a/a;->a(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/a/a;->a(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_32

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    invoke-static {v3}, Lcom/google/a/c/a/a;->a(F)I

    move-result v3

    mul-float v2, v2, p4

    add-float/2addr v2, p2

    invoke-static {v2}, Lcom/google/a/c/a/a;->a(F)I

    move-result v2

    iget-object v4, p0, Lcom/google/a/c/a/c;->c:Lcom/google/a/c/b;

    invoke-virtual {v4, v3, v2}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    new-instance p1, Lcom/google/a/t;

    int-to-float p2, v3

    int-to-float p3, v2

    invoke-direct {p1, p2, p3}, Lcom/google/a/t;-><init>(FF)V

    return-object p1

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(IIIZ)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p4, :cond_11

    :goto_3
    if-gt p1, p2, :cond_1f

    iget-object p4, p0, Lcom/google/a/c/a/c;->c:Lcom/google/a/c/b;

    invoke-virtual {p4, p1, p3}, Lcom/google/a/c/b;->a(II)Z

    move-result p4

    if-eqz p4, :cond_e

    return v0

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_11
    :goto_11
    if-gt p1, p2, :cond_1f

    iget-object p4, p0, Lcom/google/a/c/a/c;->c:Lcom/google/a/c/b;

    invoke-virtual {p4, p3, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result p4

    if-eqz p4, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)[Lcom/google/a/t;
    .registers 16

    iget v0, p1, Lcom/google/a/t;->a:F

    iget p1, p1, Lcom/google/a/t;->b:F

    iget v1, p2, Lcom/google/a/t;->a:F

    iget p2, p2, Lcom/google/a/t;->b:F

    iget v2, p3, Lcom/google/a/t;->a:F

    iget p3, p3, Lcom/google/a/t;->b:F

    iget v3, p4, Lcom/google/a/t;->a:F

    iget p4, p4, Lcom/google/a/t;->b:F

    iget v4, p0, Lcom/google/a/c/a/c;->e:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpg-float v4, v0, v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    if-gez v4, :cond_48

    new-array v4, v9, [Lcom/google/a/t;

    new-instance v9, Lcom/google/a/t;

    sub-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/google/a/t;

    add-float/2addr v1, v10

    add-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/a/t;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/google/a/t;

    sub-float/2addr v2, v10

    sub-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/a/t;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/google/a/t;

    add-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/a/t;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4

    :cond_48
    new-array v4, v9, [Lcom/google/a/t;

    new-instance v9, Lcom/google/a/t;

    add-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/google/a/t;

    add-float/2addr v1, v10

    sub-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/a/t;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/google/a/t;

    sub-float/2addr v2, v10

    add-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/a/t;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/google/a/t;

    sub-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/a/t;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4
.end method


# virtual methods
.method public final a()[Lcom/google/a/t;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/c/a/c;->f:I

    iget v1, p0, Lcom/google/a/c/a/c;->g:I

    iget v2, p0, Lcom/google/a/c/a/c;->i:I

    iget v3, p0, Lcom/google/a/c/a/c;->h:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v7, v0

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_11
    if-eqz v0, :cond_8b

    const/4 v0, 0x1

    const/4 v12, 0x0

    :cond_15
    :goto_15
    if-nez v0, :cond_19

    if-nez v6, :cond_2d

    :cond_19
    iget v0, p0, Lcom/google/a/c/a/c;->e:I

    if-ge v1, v0, :cond_2d

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/a/c/a/c;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_28

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x1

    const/4 v12, 0x1

    goto :goto_15

    :cond_28
    if-nez v6, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2d
    iget v0, p0, Lcom/google/a/c/a/c;->e:I

    if-lt v1, v0, :cond_34

    :goto_31
    const/4 v0, 0x1

    goto/16 :goto_8c

    :cond_34
    const/4 v0, 0x1

    :cond_35
    :goto_35
    if-nez v0, :cond_39

    if-nez v8, :cond_4d

    :cond_39
    iget v0, p0, Lcom/google/a/c/a/c;->d:I

    if-ge v3, v0, :cond_4d

    invoke-direct {p0, v7, v1, v3, v5}, Lcom/google/a/c/a/c;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_48

    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x1

    goto :goto_35

    :cond_48
    if-nez v8, :cond_35

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_4d
    iget v0, p0, Lcom/google/a/c/a/c;->d:I

    if-lt v3, v0, :cond_52

    goto :goto_31

    :cond_52
    const/4 v0, 0x1

    :cond_53
    :goto_53
    if-nez v0, :cond_57

    if-nez v9, :cond_69

    :cond_57
    if-ltz v7, :cond_69

    invoke-direct {p0, v2, v3, v7, v4}, Lcom/google/a/c/a/c;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_64

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    goto :goto_53

    :cond_64
    if-nez v9, :cond_53

    add-int/lit8 v7, v7, -0x1

    goto :goto_53

    :cond_69
    if-gez v7, :cond_6c

    goto :goto_31

    :cond_6c
    const/4 v0, 0x1

    :cond_6d
    :goto_6d
    if-nez v0, :cond_71

    if-nez v11, :cond_83

    :cond_71
    if-ltz v2, :cond_83

    invoke-direct {p0, v7, v1, v2, v5}, Lcom/google/a/c/a/c;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_7e

    add-int/lit8 v2, v2, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_6d

    :cond_7e
    if-nez v11, :cond_6d

    add-int/lit8 v2, v2, -0x1

    goto :goto_6d

    :cond_83
    if-gez v2, :cond_86

    goto :goto_31

    :cond_86
    if-eqz v12, :cond_89

    const/4 v10, 0x1

    :cond_89
    move v0, v12

    goto :goto_11

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    if-nez v0, :cond_16f

    if-eqz v10, :cond_16f

    sub-int v0, v1, v7

    const/4 v6, 0x0

    move-object v8, v6

    const/4 v9, 0x1

    :goto_95
    if-nez v8, :cond_a8

    if-ge v9, v0, :cond_a8

    int-to-float v8, v7

    sub-int v10, v3, v9

    int-to-float v10, v10

    add-int v11, v7, v9

    int-to-float v11, v11

    int-to-float v12, v3

    invoke-direct {p0, v8, v10, v11, v12}, Lcom/google/a/c/a/c;->a(FFFF)Lcom/google/a/t;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_95

    :cond_a8
    if-nez v8, :cond_af

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_af
    move-object v9, v6

    const/4 v10, 0x1

    :goto_b1
    if-nez v9, :cond_c4

    if-ge v10, v0, :cond_c4

    int-to-float v9, v7

    add-int v11, v2, v10

    int-to-float v11, v11

    add-int v12, v7, v10

    int-to-float v12, v12

    int-to-float v13, v2

    invoke-direct {p0, v9, v11, v12, v13}, Lcom/google/a/c/a/c;->a(FFFF)Lcom/google/a/t;

    move-result-object v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_b1

    :cond_c4
    if-nez v9, :cond_cb

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_cb
    move-object v7, v6

    const/4 v10, 0x1

    :goto_cd
    if-nez v7, :cond_e0

    if-ge v10, v0, :cond_e0

    int-to-float v7, v1

    add-int v11, v2, v10

    int-to-float v11, v11

    sub-int v12, v1, v10

    int-to-float v12, v12

    int-to-float v13, v2

    invoke-direct {p0, v7, v11, v12, v13}, Lcom/google/a/c/a/c;->a(FFFF)Lcom/google/a/t;

    move-result-object v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_cd

    :cond_e0
    if-nez v7, :cond_e7

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_e7
    const/4 v2, 0x1

    :goto_e8
    if-nez v6, :cond_fb

    if-ge v2, v0, :cond_fb

    int-to-float v6, v1

    sub-int v10, v3, v2

    int-to-float v10, v10

    sub-int v11, v1, v2

    int-to-float v11, v11

    int-to-float v12, v3

    invoke-direct {p0, v6, v10, v11, v12}, Lcom/google/a/c/a/c;->a(FFFF)Lcom/google/a/t;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    :cond_fb
    if-nez v6, :cond_102

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_102
    iget v0, v6, Lcom/google/a/t;->a:F

    iget v1, v6, Lcom/google/a/t;->b:F

    iget v2, v8, Lcom/google/a/t;->a:F

    iget v3, v8, Lcom/google/a/t;->b:F

    iget v6, v7, Lcom/google/a/t;->a:F

    iget v7, v7, Lcom/google/a/t;->b:F

    iget v8, v9, Lcom/google/a/t;->a:F

    iget v9, v9, Lcom/google/a/t;->b:F

    iget v10, p0, Lcom/google/a/c/a/c;->e:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    cmpg-float v10, v0, v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/high16 v14, 0x3f800000    # 1.0f

    if-gez v10, :cond_148

    new-array v10, v13, [Lcom/google/a/t;

    new-instance v13, Lcom/google/a/t;

    sub-float/2addr v8, v14

    add-float/2addr v9, v14

    invoke-direct {v13, v8, v9}, Lcom/google/a/t;-><init>(FF)V

    aput-object v13, v10, v4

    new-instance v4, Lcom/google/a/t;

    add-float/2addr v2, v14

    add-float/2addr v3, v14

    invoke-direct {v4, v2, v3}, Lcom/google/a/t;-><init>(FF)V

    aput-object v4, v10, v5

    new-instance v2, Lcom/google/a/t;

    sub-float/2addr v6, v14

    sub-float/2addr v7, v14

    invoke-direct {v2, v6, v7}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v10, v12

    new-instance v2, Lcom/google/a/t;

    add-float/2addr v0, v14

    sub-float/2addr v1, v14

    invoke-direct {v2, v0, v1}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v10, v11

    return-object v10

    :cond_148
    new-array v10, v13, [Lcom/google/a/t;

    new-instance v13, Lcom/google/a/t;

    add-float/2addr v8, v14

    add-float/2addr v9, v14

    invoke-direct {v13, v8, v9}, Lcom/google/a/t;-><init>(FF)V

    aput-object v13, v10, v4

    new-instance v4, Lcom/google/a/t;

    add-float/2addr v2, v14

    sub-float/2addr v3, v14

    invoke-direct {v4, v2, v3}, Lcom/google/a/t;-><init>(FF)V

    aput-object v4, v10, v5

    new-instance v2, Lcom/google/a/t;

    sub-float/2addr v6, v14

    add-float/2addr v7, v14

    invoke-direct {v2, v6, v7}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v10, v12

    new-instance v2, Lcom/google/a/t;

    sub-float/2addr v0, v14

    sub-float/2addr v1, v14

    invoke-direct {v2, v0, v1}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v10, v11

    return-object v10

    :cond_16f
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method
