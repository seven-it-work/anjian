.class public final Lcom/google/a/h/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:F = 0.42f

.field private static final d:F = 0.8f

.field private static final e:[I

.field private static final f:[I

.field private static final g:I = 0x3

.field private static final h:I = 0x5

.field private static final i:I = 0x19

.field private static final j:I = 0x5

.field private static final k:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_22

    sput-object v1, Lcom/google/a/h/b/a;->a:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/a/h/b/a;->b:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/a/h/b/a;->e:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/google/a/h/b/a;->f:[I

    return-void

    :array_22
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_4e
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([I[I)F
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

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v4

    const/4 v6, 0x0

    :goto_1f
    if-ge v1, v0, :cond_3a

    aget v7, p0, v1

    aget v8, p1, v1

    int-to-float v8, v8

    mul-float v8, v8, v4

    int-to-float v7, v7

    cmpl-float v9, v7, v8

    if-lez v9, :cond_2f

    sub-float/2addr v7, v8

    goto :goto_31

    :cond_2f
    sub-float v7, v8, v7

    :goto_31
    cmpl-float v8, v7, v5

    if-lez v8, :cond_36

    return v2

    :cond_36
    add-float/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_3a
    div-float/2addr v6, v3

    return v6
.end method

.method public static a(Lcom/google/a/c;Z)Lcom/google/a/h/b/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Z)",
            "Lcom/google/a/h/b/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/a/h/b/a;->a(ZLcom/google/a/c/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {p0}, Lcom/google/a/c/b;->d()Lcom/google/a/c/b;

    move-result-object p0

    iget v0, p0, Lcom/google/a/c/b;->a:I

    iget v1, p0, Lcom/google/a/c/b;->b:I

    new-instance v2, Lcom/google/a/c/a;

    invoke-direct {v2, v0}, Lcom/google/a/c/a;-><init>(I)V

    new-instance v3, Lcom/google/a/c/a;

    invoke-direct {v3, v0}, Lcom/google/a/c/a;-><init>(I)V

    const/4 v0, 0x0

    :goto_21
    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_41

    invoke-virtual {p0, v0, v2}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4, v3}, Lcom/google/a/c/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/a/c/a;->c()V

    invoke-virtual {v3}, Lcom/google/a/c/a;->c()V

    invoke-virtual {p0, v0, v3}, Lcom/google/a/c/b;->b(ILcom/google/a/c/a;)V

    invoke-virtual {p0, v4, v2}, Lcom/google/a/c/b;->b(ILcom/google/a/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_41
    invoke-static {p1, p0}, Lcom/google/a/h/b/a;->a(ZLcom/google/a/c/b;)Ljava/util/List;

    move-result-object v0

    :cond_45
    new-instance p1, Lcom/google/a/h/b/b;

    invoke-direct {p1, p0, v0}, Lcom/google/a/h/b/b;-><init>(Lcom/google/a/c/b;Ljava/util/List;)V

    return-object p1
.end method

.method private static a(ZLcom/google/a/c/b;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/a/c/b;",
            ")",
            "Ljava/util/List<",
            "[",
            "Lcom/google/a/t;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_c
    iget v0, v6, Lcom/google/a/c/b;->b:I

    if-ge v10, v0, :cond_a5

    iget v13, v6, Lcom/google/a/c/b;->b:I

    iget v14, v6, Lcom/google/a/c/b;->a:I

    const/16 v0, 0x8

    new-array v15, v0, [Lcom/google/a/t;

    sget-object v5, Lcom/google/a/h/b/a;->e:[I

    move-object v0, v6

    move v1, v13

    move v2, v14

    move v3, v10

    move v4, v11

    invoke-static/range {v0 .. v5}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;

    move-result-object v0

    sget-object v1, Lcom/google/a/h/b/a;->a:[I

    invoke-static {v15, v0, v1}, Lcom/google/a/h/b/a;->a([Lcom/google/a/t;[Lcom/google/a/t;[I)V

    const/16 v16, 0x4

    aget-object v0, v15, v16

    if-eqz v0, :cond_3b

    aget-object v0, v15, v16

    iget v0, v0, Lcom/google/a/t;->a:F

    float-to-int v0, v0

    aget-object v1, v15, v16

    iget v1, v1, Lcom/google/a/t;->b:F

    float-to-int v1, v1

    move v4, v0

    move v3, v1

    goto :goto_3d

    :cond_3b
    move v3, v10

    move v4, v11

    :goto_3d
    sget-object v5, Lcom/google/a/h/b/a;->f:[I

    move-object v0, v6

    move v1, v13

    move v2, v14

    invoke-static/range {v0 .. v5}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;

    move-result-object v0

    sget-object v1, Lcom/google/a/h/b/a;->b:[I

    invoke-static {v15, v0, v1}, Lcom/google/a/h/b/a;->a([Lcom/google/a/t;[Lcom/google/a/t;[I)V

    aget-object v0, v15, v9

    if-nez v0, :cond_86

    const/4 v0, 0x3

    aget-object v1, v15, v0

    if-nez v1, :cond_86

    if-eqz v12, :cond_a5

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5a
    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/a/t;

    aget-object v3, v2, v8

    if-eqz v3, :cond_74

    int-to-float v3, v10

    aget-object v4, v2, v8

    iget v4, v4, Lcom/google/a/t;->b:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v10, v3

    :cond_74
    aget-object v3, v2, v0

    if-eqz v3, :cond_5a

    aget-object v2, v2, v0

    iget v2, v2, Lcom/google/a/t;->b:F

    float-to-int v2, v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v10, v2

    goto :goto_5a

    :cond_83
    add-int/lit8 v10, v10, 0x5

    goto :goto_a

    :cond_86
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_a5

    const/4 v1, 0x2

    aget-object v2, v15, v1

    if-eqz v2, :cond_9d

    aget-object v2, v15, v1

    iget v2, v2, Lcom/google/a/t;->a:F

    float-to-int v11, v2

    aget-object v1, v15, v1

    :goto_97
    iget v1, v1, Lcom/google/a/t;->b:F

    float-to-int v10, v1

    const/4 v12, 0x1

    goto/16 :goto_c

    :cond_9d
    aget-object v1, v15, v16

    iget v1, v1, Lcom/google/a/t;->a:F

    float-to-int v11, v1

    aget-object v1, v15, v16

    goto :goto_97

    :cond_a5
    return-object v7
.end method

.method private static a([Lcom/google/a/t;[Lcom/google/a/t;[I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_d

    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method private static a(Lcom/google/a/c/b;IIIZ[I[I)[I
    .registers 15

    array-length v0, p6

    const/4 v1, 0x0

    invoke-static {p6, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_17

    if-lez p1, :cond_17

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_17

    add-int/lit8 p1, p1, -0x1

    move v0, v2

    goto :goto_6

    :cond_17
    array-length v0, p5

    move v3, p1

    const/4 v2, 0x0

    :goto_1a
    const v4, 0x3ed70a3d    # 0.42f

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge p1, p3, :cond_5e

    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/b;->a(II)Z

    move-result v7

    if-eq v7, p4, :cond_2d

    aget v4, p6, v2

    add-int/2addr v4, v6

    aput v4, p6, v2

    goto :goto_5b

    :cond_2d
    add-int/lit8 v7, v0, -0x1

    if-ne v2, v7, :cond_52

    invoke-static {p6, p5}, Lcom/google/a/h/b/a;->a([I[I)F

    move-result v7

    cmpg-float v4, v7, v4

    if-gez v4, :cond_40

    new-array p0, v5, [I

    aput v3, p0, v1

    aput p1, p0, v6

    return-object p0

    :cond_40
    aget v4, p6, v1

    aget v7, p6, v6

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, -0x1

    invoke-static {p6, v5, p6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v1, p6, v4

    aput v1, p6, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_54

    :cond_52
    add-int/lit8 v2, v2, 0x1

    :goto_54
    aput v6, p6, v2

    if-nez p4, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v6, 0x0

    :goto_5a
    move p4, v6

    :goto_5b
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_5e
    sub-int/2addr v0, v6

    if-ne v2, v0, :cond_71

    invoke-static {p6, p5}, Lcom/google/a/h/b/a;->a([I[I)F

    move-result p0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_71

    new-array p0, v5, [I

    aput v3, p0, v1

    sub-int/2addr p1, v6

    aput p1, p0, v6

    return-object p0

    :cond_71
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/a/c/b;II)[Lcom/google/a/t;
    .registers 12

    iget v6, p0, Lcom/google/a/c/b;->b:I

    iget v7, p0, Lcom/google/a/c/b;->a:I

    const/16 v0, 0x8

    new-array v8, v0, [Lcom/google/a/t;

    sget-object v5, Lcom/google/a/h/b/a;->e:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;

    move-result-object v0

    sget-object v1, Lcom/google/a/h/b/a;->a:[I

    invoke-static {v8, v0, v1}, Lcom/google/a/h/b/a;->a([Lcom/google/a/t;[Lcom/google/a/t;[I)V

    const/4 v0, 0x4

    aget-object v1, v8, v0

    if-eqz v1, :cond_27

    aget-object p1, v8, v0

    iget p1, p1, Lcom/google/a/t;->a:F

    float-to-int p2, p1

    aget-object p1, v8, v0

    iget p1, p1, Lcom/google/a/t;->b:F

    float-to-int p1, p1

    :cond_27
    move v3, p1

    move v4, p2

    sget-object v5, Lcom/google/a/h/b/a;->f:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;

    move-result-object p0

    sget-object p1, Lcom/google/a/h/b/a;->b:[I

    invoke-static {v8, p0, p1}, Lcom/google/a/h/b/a;->a([Lcom/google/a/t;[Lcom/google/a/t;[I)V

    return-object v8
.end method

.method private static a(Lcom/google/a/c/b;IIII[I)[Lcom/google/a/t;
    .registers 24

    move/from16 v0, p1

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/a/t;

    move-object/from16 v9, p5

    array-length v2, v9

    new-array v10, v2, [I

    move/from16 v11, p3

    :goto_c
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v11, v0, :cond_51

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v11

    move/from16 v5, p2

    move-object v7, v9

    move-object v8, v10

    invoke-static/range {v2 .. v8}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIIZ[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_4e

    :goto_20
    move-object v14, v2

    if-lez v11, :cond_37

    add-int/lit8 v11, v11, -0x1

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v11

    move/from16 v5, p2

    move-object v7, v9

    move-object v8, v10

    invoke-static/range {v2 .. v8}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIIZ[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_36

    goto :goto_20

    :cond_36
    add-int/2addr v11, v13

    :cond_37
    new-instance v2, Lcom/google/a/t;

    aget v3, v14, v12

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v2, v3, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/google/a/t;

    aget v3, v14, v13

    int-to-float v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v1, v13

    const/4 v2, 0x1

    goto :goto_52

    :cond_4e
    add-int/lit8 v11, v11, 0x5

    goto :goto_c

    :cond_51
    const/4 v2, 0x0

    :goto_52
    add-int/lit8 v3, v11, 0x1

    if-eqz v2, :cond_bf

    const/4 v14, 0x2

    new-array v2, v14, [I

    aget-object v4, v1, v12

    iget v4, v4, Lcom/google/a/t;->a:F

    float-to-int v4, v4

    aput v4, v2, v12

    aget-object v4, v1, v13

    iget v4, v4, Lcom/google/a/t;->a:F

    float-to-int v4, v4

    aput v4, v2, v13

    move-object/from16 v16, v2

    move v15, v3

    const/4 v8, 0x0

    :goto_6b
    if-ge v15, v0, :cond_a3

    aget v3, v16, v12

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move v4, v15

    move/from16 v5, p2

    move-object v7, v9

    move v14, v8

    move-object v8, v10

    invoke-static/range {v2 .. v8}, Lcom/google/a/h/b/a;->a(Lcom/google/a/c/b;IIIZ[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_99

    aget v3, v16, v12

    aget v4, v2, v12

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_99

    aget v3, v16, v13

    aget v5, v2, v13

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_99

    move-object/from16 v16, v2

    const/4 v8, 0x0

    goto :goto_9f

    :cond_99
    const/16 v2, 0x19

    if-gt v14, v2, :cond_a4

    add-int/lit8 v8, v14, 0x1

    :goto_9f
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x2

    goto :goto_6b

    :cond_a3
    move v14, v8

    :cond_a4
    add-int/lit8 v8, v14, 0x1

    sub-int v3, v15, v8

    new-instance v0, Lcom/google/a/t;

    aget v2, v16, v12

    int-to-float v2, v2

    int-to-float v4, v3

    invoke-direct {v0, v2, v4}, Lcom/google/a/t;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    new-instance v2, Lcom/google/a/t;

    aget v5, v16, v13

    int-to-float v5, v5

    invoke-direct {v2, v5, v4}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v1, v0

    :cond_bf
    sub-int/2addr v3, v11

    const/16 v0, 0xa

    if-ge v3, v0, :cond_c8

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c8
    return-object v1
.end method
