.class public final Lcom/google/a/c/k;
.super Ljava/lang/Object;


# instance fields
.field final a:F

.field final b:F

.field final c:F

.field final d:F

.field final e:F

.field final f:F

.field final g:F

.field final h:F

.field final i:F


# direct methods
.method private constructor <init>(FFFFFFFFF)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/c/k;->a:F

    iput p4, p0, Lcom/google/a/c/k;->b:F

    iput p7, p0, Lcom/google/a/c/k;->c:F

    iput p2, p0, Lcom/google/a/c/k;->d:F

    iput p5, p0, Lcom/google/a/c/k;->e:F

    iput p8, p0, Lcom/google/a/c/k;->f:F

    iput p3, p0, Lcom/google/a/c/k;->g:F

    iput p6, p0, Lcom/google/a/c/k;->h:F

    iput p9, p0, Lcom/google/a/c/k;->i:F

    return-void
.end method

.method private a()Lcom/google/a/c/k;
    .registers 13

    new-instance v10, Lcom/google/a/c/k;

    iget v0, p0, Lcom/google/a/c/k;->e:F

    iget v1, p0, Lcom/google/a/c/k;->i:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/google/a/c/k;->f:F

    iget v2, p0, Lcom/google/a/c/k;->h:F

    mul-float v1, v1, v2

    sub-float v1, v0, v1

    iget v0, p0, Lcom/google/a/c/k;->f:F

    iget v2, p0, Lcom/google/a/c/k;->g:F

    mul-float v0, v0, v2

    iget v2, p0, Lcom/google/a/c/k;->d:F

    iget v3, p0, Lcom/google/a/c/k;->i:F

    mul-float v2, v2, v3

    sub-float v2, v0, v2

    iget v0, p0, Lcom/google/a/c/k;->d:F

    iget v3, p0, Lcom/google/a/c/k;->h:F

    mul-float v0, v0, v3

    iget v3, p0, Lcom/google/a/c/k;->e:F

    iget v4, p0, Lcom/google/a/c/k;->g:F

    mul-float v3, v3, v4

    sub-float v3, v0, v3

    iget v0, p0, Lcom/google/a/c/k;->c:F

    iget v4, p0, Lcom/google/a/c/k;->h:F

    mul-float v0, v0, v4

    iget v4, p0, Lcom/google/a/c/k;->b:F

    iget v5, p0, Lcom/google/a/c/k;->i:F

    mul-float v4, v4, v5

    sub-float v4, v0, v4

    iget v0, p0, Lcom/google/a/c/k;->a:F

    iget v5, p0, Lcom/google/a/c/k;->i:F

    mul-float v0, v0, v5

    iget v5, p0, Lcom/google/a/c/k;->c:F

    iget v6, p0, Lcom/google/a/c/k;->g:F

    mul-float v5, v5, v6

    sub-float v5, v0, v5

    iget v0, p0, Lcom/google/a/c/k;->b:F

    iget v6, p0, Lcom/google/a/c/k;->g:F

    mul-float v0, v0, v6

    iget v6, p0, Lcom/google/a/c/k;->a:F

    iget v7, p0, Lcom/google/a/c/k;->h:F

    mul-float v6, v6, v7

    sub-float v6, v0, v6

    iget v0, p0, Lcom/google/a/c/k;->b:F

    iget v7, p0, Lcom/google/a/c/k;->f:F

    mul-float v0, v0, v7

    iget v7, p0, Lcom/google/a/c/k;->c:F

    iget v8, p0, Lcom/google/a/c/k;->e:F

    mul-float v7, v7, v8

    sub-float v7, v0, v7

    iget v0, p0, Lcom/google/a/c/k;->c:F

    iget v8, p0, Lcom/google/a/c/k;->d:F

    mul-float v0, v0, v8

    iget v8, p0, Lcom/google/a/c/k;->a:F

    iget v9, p0, Lcom/google/a/c/k;->f:F

    mul-float v8, v8, v9

    sub-float v8, v0, v8

    iget v0, p0, Lcom/google/a/c/k;->a:F

    iget v9, p0, Lcom/google/a/c/k;->e:F

    mul-float v0, v0, v9

    iget v9, p0, Lcom/google/a/c/k;->b:F

    iget v11, p0, Lcom/google/a/c/k;->d:F

    mul-float v9, v9, v11

    sub-float v9, v0, v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/a/c/k;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method private static a(FFFFFFFF)Lcom/google/a/c/k;
    .registers 22

    sub-float v8, p0, p2

    add-float v8, v8, p4

    sub-float v8, v8, p6

    sub-float v9, p1, p3

    add-float v9, v9, p5

    sub-float v9, v9, p7

    const/4 v10, 0x0

    cmpl-float v11, v8, v10

    if-nez v11, :cond_30

    cmpl-float v10, v9, v10

    if-nez v10, :cond_30

    new-instance v10, Lcom/google/a/c/k;

    sub-float v5, p2, p0

    sub-float v2, p4, p2

    sub-float v7, p3, p1

    sub-float v8, p5, p3

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v0, v10

    move v1, v5

    move v3, p0

    move v4, v7

    move v5, v8

    move v6, p1

    move v7, v9

    move v8, v11

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/google/a/c/k;-><init>(FFFFFFFFF)V

    return-object v10

    :cond_30
    sub-float v10, p2, p4

    sub-float v2, p6, p4

    sub-float v11, p3, p5

    sub-float v4, p7, p5

    mul-float v12, v10, v4

    mul-float v13, v2, v11

    sub-float/2addr v12, v13

    mul-float v4, v4, v8

    mul-float v2, v2, v9

    sub-float/2addr v4, v2

    div-float v13, v4, v12

    mul-float v10, v10, v9

    mul-float v8, v8, v11

    sub-float/2addr v10, v8

    div-float v8, v10, v12

    new-instance v10, Lcom/google/a/c/k;

    sub-float v2, p2, p0

    mul-float v0, v13, p2

    add-float/2addr v2, v0

    sub-float v0, p6, p0

    mul-float v4, v8, p6

    add-float/2addr v4, v0

    sub-float v0, p3, p1

    mul-float v1, v13, p3

    add-float v5, v0, v1

    sub-float v0, p7, p1

    mul-float v1, v8, p7

    add-float v7, v0, v1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move v1, v2

    move v2, v4

    move v3, p0

    move v4, v5

    move v5, v7

    move v6, p1

    move v7, v13

    invoke-direct/range {v0 .. v9}, Lcom/google/a/c/k;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method public static a(FFFFFFFFFFFFFFFF)Lcom/google/a/c/k;
    .registers 30

    invoke-static/range {p0 .. p7}, Lcom/google/a/c/k;->a(FFFFFFFF)Lcom/google/a/c/k;

    move-result-object v0

    new-instance v11, Lcom/google/a/c/k;

    iget v1, v0, Lcom/google/a/c/k;->e:F

    iget v2, v0, Lcom/google/a/c/k;->i:F

    mul-float v1, v1, v2

    iget v2, v0, Lcom/google/a/c/k;->f:F

    iget v3, v0, Lcom/google/a/c/k;->h:F

    mul-float v2, v2, v3

    sub-float v2, v1, v2

    iget v1, v0, Lcom/google/a/c/k;->f:F

    iget v3, v0, Lcom/google/a/c/k;->g:F

    mul-float v1, v1, v3

    iget v3, v0, Lcom/google/a/c/k;->d:F

    iget v4, v0, Lcom/google/a/c/k;->i:F

    mul-float v3, v3, v4

    sub-float v3, v1, v3

    iget v1, v0, Lcom/google/a/c/k;->d:F

    iget v4, v0, Lcom/google/a/c/k;->h:F

    mul-float v1, v1, v4

    iget v4, v0, Lcom/google/a/c/k;->e:F

    iget v5, v0, Lcom/google/a/c/k;->g:F

    mul-float v4, v4, v5

    sub-float v4, v1, v4

    iget v1, v0, Lcom/google/a/c/k;->c:F

    iget v5, v0, Lcom/google/a/c/k;->h:F

    mul-float v1, v1, v5

    iget v5, v0, Lcom/google/a/c/k;->b:F

    iget v6, v0, Lcom/google/a/c/k;->i:F

    mul-float v5, v5, v6

    sub-float v5, v1, v5

    iget v1, v0, Lcom/google/a/c/k;->a:F

    iget v6, v0, Lcom/google/a/c/k;->i:F

    mul-float v1, v1, v6

    iget v6, v0, Lcom/google/a/c/k;->c:F

    iget v7, v0, Lcom/google/a/c/k;->g:F

    mul-float v6, v6, v7

    sub-float v6, v1, v6

    iget v1, v0, Lcom/google/a/c/k;->b:F

    iget v7, v0, Lcom/google/a/c/k;->g:F

    mul-float v1, v1, v7

    iget v7, v0, Lcom/google/a/c/k;->a:F

    iget v8, v0, Lcom/google/a/c/k;->h:F

    mul-float v7, v7, v8

    sub-float v7, v1, v7

    iget v1, v0, Lcom/google/a/c/k;->b:F

    iget v8, v0, Lcom/google/a/c/k;->f:F

    mul-float v1, v1, v8

    iget v8, v0, Lcom/google/a/c/k;->c:F

    iget v9, v0, Lcom/google/a/c/k;->e:F

    mul-float v8, v8, v9

    sub-float v8, v1, v8

    iget v1, v0, Lcom/google/a/c/k;->c:F

    iget v9, v0, Lcom/google/a/c/k;->d:F

    mul-float v1, v1, v9

    iget v9, v0, Lcom/google/a/c/k;->a:F

    iget v10, v0, Lcom/google/a/c/k;->f:F

    mul-float v9, v9, v10

    sub-float v9, v1, v9

    iget v1, v0, Lcom/google/a/c/k;->a:F

    iget v10, v0, Lcom/google/a/c/k;->e:F

    mul-float v1, v1, v10

    iget v10, v0, Lcom/google/a/c/k;->b:F

    iget v0, v0, Lcom/google/a/c/k;->d:F

    mul-float v10, v10, v0

    sub-float v10, v1, v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/a/c/k;-><init>(FFFFFFFFF)V

    invoke-static/range {p8 .. p15}, Lcom/google/a/c/k;->a(FFFFFFFF)Lcom/google/a/c/k;

    move-result-object v0

    new-instance v12, Lcom/google/a/c/k;

    iget v1, v0, Lcom/google/a/c/k;->a:F

    iget v2, v11, Lcom/google/a/c/k;->a:F

    mul-float v1, v1, v2

    iget v2, v0, Lcom/google/a/c/k;->d:F

    iget v3, v11, Lcom/google/a/c/k;->b:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/google/a/c/k;->g:F

    iget v3, v11, Lcom/google/a/c/k;->c:F

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    iget v1, v0, Lcom/google/a/c/k;->a:F

    iget v3, v11, Lcom/google/a/c/k;->d:F

    mul-float v1, v1, v3

    iget v3, v0, Lcom/google/a/c/k;->d:F

    iget v4, v11, Lcom/google/a/c/k;->e:F

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    iget v3, v0, Lcom/google/a/c/k;->g:F

    iget v4, v11, Lcom/google/a/c/k;->f:F

    mul-float v3, v3, v4

    add-float/2addr v3, v1

    iget v1, v0, Lcom/google/a/c/k;->a:F

    iget v4, v11, Lcom/google/a/c/k;->g:F

    mul-float v1, v1, v4

    iget v4, v0, Lcom/google/a/c/k;->d:F

    iget v5, v11, Lcom/google/a/c/k;->h:F

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    iget v4, v0, Lcom/google/a/c/k;->g:F

    iget v5, v11, Lcom/google/a/c/k;->i:F

    mul-float v4, v4, v5

    add-float/2addr v4, v1

    iget v1, v0, Lcom/google/a/c/k;->b:F

    iget v5, v11, Lcom/google/a/c/k;->a:F

    mul-float v1, v1, v5

    iget v5, v0, Lcom/google/a/c/k;->e:F

    iget v6, v11, Lcom/google/a/c/k;->b:F

    mul-float v5, v5, v6

    add-float/2addr v1, v5

    iget v5, v0, Lcom/google/a/c/k;->h:F

    iget v6, v11, Lcom/google/a/c/k;->c:F

    mul-float v5, v5, v6

    add-float/2addr v5, v1

    iget v1, v0, Lcom/google/a/c/k;->b:F

    iget v6, v11, Lcom/google/a/c/k;->d:F

    mul-float v1, v1, v6

    iget v6, v0, Lcom/google/a/c/k;->e:F

    iget v7, v11, Lcom/google/a/c/k;->e:F

    mul-float v6, v6, v7

    add-float/2addr v1, v6

    iget v6, v0, Lcom/google/a/c/k;->h:F

    iget v7, v11, Lcom/google/a/c/k;->f:F

    mul-float v6, v6, v7

    add-float/2addr v6, v1

    iget v1, v0, Lcom/google/a/c/k;->b:F

    iget v7, v11, Lcom/google/a/c/k;->g:F

    mul-float v1, v1, v7

    iget v7, v0, Lcom/google/a/c/k;->e:F

    iget v8, v11, Lcom/google/a/c/k;->h:F

    mul-float v7, v7, v8

    add-float/2addr v1, v7

    iget v7, v0, Lcom/google/a/c/k;->h:F

    iget v8, v11, Lcom/google/a/c/k;->i:F

    mul-float v7, v7, v8

    add-float/2addr v7, v1

    iget v1, v0, Lcom/google/a/c/k;->c:F

    iget v8, v11, Lcom/google/a/c/k;->a:F

    mul-float v1, v1, v8

    iget v8, v0, Lcom/google/a/c/k;->f:F

    iget v9, v11, Lcom/google/a/c/k;->b:F

    mul-float v8, v8, v9

    add-float/2addr v1, v8

    iget v8, v0, Lcom/google/a/c/k;->i:F

    iget v9, v11, Lcom/google/a/c/k;->c:F

    mul-float v8, v8, v9

    add-float/2addr v8, v1

    iget v1, v0, Lcom/google/a/c/k;->c:F

    iget v9, v11, Lcom/google/a/c/k;->d:F

    mul-float v1, v1, v9

    iget v9, v0, Lcom/google/a/c/k;->f:F

    iget v10, v11, Lcom/google/a/c/k;->e:F

    mul-float v9, v9, v10

    add-float/2addr v1, v9

    iget v9, v0, Lcom/google/a/c/k;->i:F

    iget v10, v11, Lcom/google/a/c/k;->f:F

    mul-float v9, v9, v10

    add-float/2addr v9, v1

    iget v1, v0, Lcom/google/a/c/k;->c:F

    iget v10, v11, Lcom/google/a/c/k;->g:F

    mul-float v1, v1, v10

    iget v10, v0, Lcom/google/a/c/k;->f:F

    iget v13, v11, Lcom/google/a/c/k;->h:F

    mul-float v10, v10, v13

    add-float/2addr v1, v10

    iget v0, v0, Lcom/google/a/c/k;->i:F

    iget v10, v11, Lcom/google/a/c/k;->i:F

    mul-float v0, v0, v10

    add-float v10, v1, v0

    move-object v1, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/a/c/k;-><init>(FFFFFFFFF)V

    return-object v12
.end method

.method private a(Lcom/google/a/c/k;)Lcom/google/a/c/k;
    .registers 14

    new-instance v10, Lcom/google/a/c/k;

    iget v0, p0, Lcom/google/a/c/k;->a:F

    iget v1, p1, Lcom/google/a/c/k;->a:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/google/a/c/k;->d:F

    iget v2, p1, Lcom/google/a/c/k;->b:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/a/c/k;->g:F

    iget v2, p1, Lcom/google/a/c/k;->c:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/google/a/c/k;->a:F

    iget v2, p1, Lcom/google/a/c/k;->d:F

    mul-float v0, v0, v2

    iget v2, p0, Lcom/google/a/c/k;->d:F

    iget v3, p1, Lcom/google/a/c/k;->e:F

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/google/a/c/k;->g:F

    iget v3, p1, Lcom/google/a/c/k;->f:F

    mul-float v2, v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lcom/google/a/c/k;->a:F

    iget v3, p1, Lcom/google/a/c/k;->g:F

    mul-float v0, v0, v3

    iget v3, p0, Lcom/google/a/c/k;->d:F

    iget v4, p1, Lcom/google/a/c/k;->h:F

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    iget v3, p0, Lcom/google/a/c/k;->g:F

    iget v4, p1, Lcom/google/a/c/k;->i:F

    mul-float v3, v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/google/a/c/k;->b:F

    iget v4, p1, Lcom/google/a/c/k;->a:F

    mul-float v0, v0, v4

    iget v4, p0, Lcom/google/a/c/k;->e:F

    iget v5, p1, Lcom/google/a/c/k;->b:F

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    iget v4, p0, Lcom/google/a/c/k;->h:F

    iget v5, p1, Lcom/google/a/c/k;->c:F

    mul-float v4, v4, v5

    add-float/2addr v4, v0

    iget v0, p0, Lcom/google/a/c/k;->b:F

    iget v5, p1, Lcom/google/a/c/k;->d:F

    mul-float v0, v0, v5

    iget v5, p0, Lcom/google/a/c/k;->e:F

    iget v6, p1, Lcom/google/a/c/k;->e:F

    mul-float v5, v5, v6

    add-float/2addr v0, v5

    iget v5, p0, Lcom/google/a/c/k;->h:F

    iget v6, p1, Lcom/google/a/c/k;->f:F

    mul-float v5, v5, v6

    add-float/2addr v5, v0

    iget v0, p0, Lcom/google/a/c/k;->b:F

    iget v6, p1, Lcom/google/a/c/k;->g:F

    mul-float v0, v0, v6

    iget v6, p0, Lcom/google/a/c/k;->e:F

    iget v7, p1, Lcom/google/a/c/k;->h:F

    mul-float v6, v6, v7

    add-float/2addr v0, v6

    iget v6, p0, Lcom/google/a/c/k;->h:F

    iget v7, p1, Lcom/google/a/c/k;->i:F

    mul-float v6, v6, v7

    add-float/2addr v6, v0

    iget v0, p0, Lcom/google/a/c/k;->c:F

    iget v7, p1, Lcom/google/a/c/k;->a:F

    mul-float v0, v0, v7

    iget v7, p0, Lcom/google/a/c/k;->f:F

    iget v8, p1, Lcom/google/a/c/k;->b:F

    mul-float v7, v7, v8

    add-float/2addr v0, v7

    iget v7, p0, Lcom/google/a/c/k;->i:F

    iget v8, p1, Lcom/google/a/c/k;->c:F

    mul-float v7, v7, v8

    add-float/2addr v7, v0

    iget v0, p0, Lcom/google/a/c/k;->c:F

    iget v8, p1, Lcom/google/a/c/k;->d:F

    mul-float v0, v0, v8

    iget v8, p0, Lcom/google/a/c/k;->f:F

    iget v9, p1, Lcom/google/a/c/k;->e:F

    mul-float v8, v8, v9

    add-float/2addr v0, v8

    iget v8, p0, Lcom/google/a/c/k;->i:F

    iget v9, p1, Lcom/google/a/c/k;->f:F

    mul-float v8, v8, v9

    add-float/2addr v8, v0

    iget v0, p0, Lcom/google/a/c/k;->c:F

    iget v9, p1, Lcom/google/a/c/k;->g:F

    mul-float v0, v0, v9

    iget v9, p0, Lcom/google/a/c/k;->f:F

    iget v11, p1, Lcom/google/a/c/k;->h:F

    mul-float v9, v9, v11

    add-float/2addr v0, v9

    iget v9, p0, Lcom/google/a/c/k;->i:F

    iget p1, p1, Lcom/google/a/c/k;->i:F

    mul-float v9, v9, p1

    add-float/2addr v9, v0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/a/c/k;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method private a([F)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lcom/google/a/c/k;->a:F

    iget v4, v0, Lcom/google/a/c/k;->b:F

    iget v5, v0, Lcom/google/a/c/k;->c:F

    iget v6, v0, Lcom/google/a/c/k;->d:F

    iget v7, v0, Lcom/google/a/c/k;->e:F

    iget v8, v0, Lcom/google/a/c/k;->f:F

    iget v9, v0, Lcom/google/a/c/k;->g:F

    iget v10, v0, Lcom/google/a/c/k;->h:F

    iget v11, v0, Lcom/google/a/c/k;->i:F

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v2, :cond_41

    aget v13, v1, v12

    add-int/lit8 v14, v12, 0x1

    aget v15, v1, v14

    mul-float v16, v5, v13

    mul-float v17, v8, v15

    add-float v16, v16, v17

    add-float v16, v16, v11

    mul-float v17, v3, v13

    mul-float v18, v6, v15

    add-float v17, v17, v18

    add-float v17, v17, v9

    div-float v17, v17, v16

    aput v17, v1, v12

    mul-float v13, v13, v4

    mul-float v15, v15, v7

    add-float/2addr v13, v15

    add-float/2addr v13, v10

    div-float v13, v13, v16

    aput v13, v1, v14

    add-int/lit8 v12, v12, 0x2

    goto :goto_18

    :cond_41
    return-void
.end method

.method private a([F[F)V
    .registers 10

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_35

    aget v2, p1, v1

    aget v3, p2, v1

    iget v4, p0, Lcom/google/a/c/k;->c:F

    mul-float v4, v4, v2

    iget v5, p0, Lcom/google/a/c/k;->f:F

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/a/c/k;->i:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/a/c/k;->a:F

    mul-float v5, v5, v2

    iget v6, p0, Lcom/google/a/c/k;->d:F

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/a/c/k;->g:F

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    aput v5, p1, v1

    iget v5, p0, Lcom/google/a/c/k;->b:F

    mul-float v5, v5, v2

    iget v2, p0, Lcom/google/a/c/k;->e:F

    mul-float v2, v2, v3

    add-float/2addr v5, v2

    iget v2, p0, Lcom/google/a/c/k;->h:F

    add-float/2addr v5, v2

    div-float/2addr v5, v4

    aput v5, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_35
    return-void
.end method

.method private static b(FFFFFFFF)Lcom/google/a/c/k;
    .registers 20

    invoke-static/range {p0 .. p7}, Lcom/google/a/c/k;->a(FFFFFFFF)Lcom/google/a/c/k;

    move-result-object v0

    new-instance v11, Lcom/google/a/c/k;

    iget v1, v0, Lcom/google/a/c/k;->e:F

    iget v2, v0, Lcom/google/a/c/k;->i:F

    mul-float v1, v1, v2

    iget v2, v0, Lcom/google/a/c/k;->f:F

    iget v3, v0, Lcom/google/a/c/k;->h:F

    mul-float v2, v2, v3

    sub-float v2, v1, v2

    iget v1, v0, Lcom/google/a/c/k;->f:F

    iget v3, v0, Lcom/google/a/c/k;->g:F

    mul-float v1, v1, v3

    iget v3, v0, Lcom/google/a/c/k;->d:F

    iget v4, v0, Lcom/google/a/c/k;->i:F

    mul-float v3, v3, v4

    sub-float v3, v1, v3

    iget v1, v0, Lcom/google/a/c/k;->d:F

    iget v4, v0, Lcom/google/a/c/k;->h:F

    mul-float v1, v1, v4

    iget v4, v0, Lcom/google/a/c/k;->e:F

    iget v5, v0, Lcom/google/a/c/k;->g:F

    mul-float v4, v4, v5

    sub-float v4, v1, v4

    iget v1, v0, Lcom/google/a/c/k;->c:F

    iget v5, v0, Lcom/google/a/c/k;->h:F

    mul-float v1, v1, v5

    iget v5, v0, Lcom/google/a/c/k;->b:F

    iget v6, v0, Lcom/google/a/c/k;->i:F

    mul-float v5, v5, v6

    sub-float v5, v1, v5

    iget v1, v0, Lcom/google/a/c/k;->a:F

    iget v6, v0, Lcom/google/a/c/k;->i:F

    mul-float v1, v1, v6

    iget v6, v0, Lcom/google/a/c/k;->c:F

    iget v7, v0, Lcom/google/a/c/k;->g:F

    mul-float v6, v6, v7

    sub-float v6, v1, v6

    iget v1, v0, Lcom/google/a/c/k;->b:F

    iget v7, v0, Lcom/google/a/c/k;->g:F

    mul-float v1, v1, v7

    iget v7, v0, Lcom/google/a/c/k;->a:F

    iget v8, v0, Lcom/google/a/c/k;->h:F

    mul-float v7, v7, v8

    sub-float v7, v1, v7

    iget v1, v0, Lcom/google/a/c/k;->b:F

    iget v8, v0, Lcom/google/a/c/k;->f:F

    mul-float v1, v1, v8

    iget v8, v0, Lcom/google/a/c/k;->c:F

    iget v9, v0, Lcom/google/a/c/k;->e:F

    mul-float v8, v8, v9

    sub-float v8, v1, v8

    iget v1, v0, Lcom/google/a/c/k;->c:F

    iget v9, v0, Lcom/google/a/c/k;->d:F

    mul-float v1, v1, v9

    iget v9, v0, Lcom/google/a/c/k;->a:F

    iget v10, v0, Lcom/google/a/c/k;->f:F

    mul-float v9, v9, v10

    sub-float v9, v1, v9

    iget v1, v0, Lcom/google/a/c/k;->a:F

    iget v10, v0, Lcom/google/a/c/k;->e:F

    mul-float v1, v1, v10

    iget v10, v0, Lcom/google/a/c/k;->b:F

    iget v0, v0, Lcom/google/a/c/k;->d:F

    mul-float v10, v10, v0

    sub-float v10, v1, v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/a/c/k;-><init>(FFFFFFFFF)V

    return-object v11
.end method
