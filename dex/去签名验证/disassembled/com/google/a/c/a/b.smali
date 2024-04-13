.class public final Lcom/google/a/c/a/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:I = 0x20


# instance fields
.field private final b:Lcom/google/a/c/b;


# direct methods
.method private constructor <init>(Lcom/google/a/c/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    return-void
.end method

.method private a(IIIIIIIII)Lcom/google/a/t;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v2, p5

    const/4 v3, 0x0

    move v11, v0

    move v10, v2

    move-object v12, v3

    move/from16 v3, p8

    :goto_a
    if-ge v10, v3, :cond_9b

    move/from16 v13, p7

    if-lt v10, v13, :cond_9b

    move/from16 v14, p4

    if-ge v11, v14, :cond_9b

    move/from16 v9, p3

    if-lt v11, v9, :cond_9b

    if-nez p2, :cond_28

    const/4 v15, 0x1

    move-object/from16 v4, p0

    move v5, v10

    move/from16 v6, p9

    move v7, v9

    move v8, v14

    move v9, v15

    :goto_23
    invoke-direct/range {v4 .. v9}, Lcom/google/a/c/a/b;->a(IIIIZ)[I

    move-result-object v4

    goto :goto_31

    :cond_28
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move v5, v11

    move/from16 v6, p9

    move v7, v13

    move v8, v3

    goto :goto_23

    :goto_31
    if-nez v4, :cond_94

    if-nez v12, :cond_3a

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_3a
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_69

    sub-int v10, v10, p6

    aget v1, v12, v4

    if-ge v1, v0, :cond_5f

    aget v1, v12, v3

    if-le v1, v0, :cond_55

    new-instance v0, Lcom/google/a/t;

    if-lez p6, :cond_4d

    const/4 v3, 0x0

    :cond_4d
    aget v1, v12, v3

    int-to-float v1, v1

    int-to-float v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/a/t;-><init>(FF)V

    return-object v0

    :cond_55
    new-instance v0, Lcom/google/a/t;

    aget v1, v12, v4

    int-to-float v1, v1

    int-to-float v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/a/t;-><init>(FF)V

    return-object v0

    :cond_5f
    new-instance v0, Lcom/google/a/t;

    aget v1, v12, v3

    int-to-float v1, v1

    int-to-float v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/a/t;-><init>(FF)V

    return-object v0

    :cond_69
    sub-int v11, v11, p2

    aget v0, v12, v4

    if-ge v0, v2, :cond_8a

    aget v0, v12, v3

    if-le v0, v2, :cond_80

    new-instance v0, Lcom/google/a/t;

    int-to-float v2, v11

    if-gez p2, :cond_79

    const/4 v3, 0x0

    :cond_79
    aget v1, v12, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Lcom/google/a/t;-><init>(FF)V

    return-object v0

    :cond_80
    new-instance v0, Lcom/google/a/t;

    int-to-float v1, v11

    aget v2, v12, v4

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/t;-><init>(FF)V

    return-object v0

    :cond_8a
    new-instance v0, Lcom/google/a/t;

    int-to-float v1, v11

    aget v2, v12, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/t;-><init>(FF)V

    return-object v0

    :cond_94
    add-int v10, v10, p6

    add-int v11, v11, p2

    move-object v12, v4

    goto/16 :goto_a

    :cond_9b
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method

.method private a(IIIIZ)[I
    .registers 11

    add-int v0, p3, p4

    const/4 v1, 0x2

    div-int/2addr v0, v1

    move v2, v0

    :goto_5
    if-lt v2, p3, :cond_3e

    if-eqz p5, :cond_12

    iget-object v3, p0, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    invoke-virtual {v3, v2, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1a

    :cond_12
    iget-object v3, p0, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    invoke-virtual {v3, p1, v2}, Lcom/google/a/c/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_1d
    move v3, v2

    :cond_1e
    add-int/lit8 v3, v3, -0x1

    if-lt v3, p3, :cond_35

    if-eqz p5, :cond_2d

    iget-object v4, p0, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    invoke-virtual {v4, v3, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_35

    :cond_2d
    iget-object v4, p0, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    invoke-virtual {v4, p1, v3}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_35
    :goto_35
    sub-int v4, v2, v3

    if-lt v3, p3, :cond_3e

    if-le v4, p2, :cond_3c

    goto :goto_3e

    :cond_3c
    move v2, v3

    goto :goto_5

    :cond_3e
    :goto_3e
    const/4 p3, 0x1

    add-int/2addr v2, p3

    :goto_40
    if-ge v0, p4, :cond_78

    if-eqz p5, :cond_4d

    iget-object v3, p0, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    invoke-virtual {v3, v0, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_55

    :cond_4d
    iget-object v3, p0, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    invoke-virtual {v3, p1, v0}, Lcom/google/a/c/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_58

    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    move v3, v0

    :cond_59
    add-int/2addr v3, p3

    if-ge v3, p4, :cond_6f

    if-eqz p5, :cond_67

    iget-object v4, p0, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    invoke-virtual {v4, v3, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_6f

    :cond_67
    iget-object v4, p0, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    invoke-virtual {v4, p1, v3}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_59

    :cond_6f
    :goto_6f
    sub-int v4, v3, v0

    if-ge v3, p4, :cond_78

    if-le v4, p2, :cond_76

    goto :goto_78

    :cond_76
    move v0, v3

    goto :goto_40

    :cond_78
    :goto_78
    add-int/lit8 v0, v0, -0x1

    if-le v0, v2, :cond_84

    new-array p1, v1, [I

    const/4 p2, 0x0

    aput v2, p1, p2

    aput v0, p1, p3

    return-object p1

    :cond_84
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()[Lcom/google/a/t;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    iget v11, v0, Lcom/google/a/c/b;->b:I

    iget-object v0, v10, Lcom/google/a/c/a/b;->b:Lcom/google/a/c/b;

    iget v12, v0, Lcom/google/a/c/b;->a:I

    div-int/lit8 v13, v11, 0x2

    div-int/lit8 v14, v12, 0x2

    div-int/lit16 v0, v11, 0x100

    const/4 v15, 0x1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    div-int/lit16 v0, v12, 0x100

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v7, v9

    div-int/lit8 v16, v14, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object v0, v10

    move v1, v14

    move v4, v12

    move v5, v13

    move v6, v7

    move/from16 v18, v7

    move/from16 v7, v17

    move/from16 v19, v8

    move v8, v11

    move/from16 v17, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/google/a/c/a/b;->a(IIIIIIIII)Lcom/google/a/t;

    move-result-object v0

    iget v0, v0, Lcom/google/a/t;->b:F

    float-to-int v0, v0

    add-int/lit8 v20, v0, -0x1

    move/from16 v9, v19

    neg-int v2, v9

    div-int/lit8 v19, v13, 0x2

    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v7, v20

    move/from16 v21, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/google/a/c/a/b;->a(IIIIIIIII)Lcom/google/a/t;

    move-result-object v9

    iget v0, v9, Lcom/google/a/t;->a:F

    float-to-int v0, v0

    add-int/lit8 v22, v0, -0x1

    move-object v0, v10

    move/from16 v2, v21

    move/from16 v3, v22

    move-object v12, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/google/a/c/a/b;->a(IIIIIIIII)Lcom/google/a/t;

    move-result-object v9

    iget v0, v9, Lcom/google/a/t;->a:F

    float-to-int v0, v0

    add-int/lit8 v19, v0, 0x1

    const/4 v2, 0x0

    move-object v0, v10

    move/from16 v4, v19

    move/from16 v6, v17

    move-object v11, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/google/a/c/a/b;->a(IIIIIIIII)Lcom/google/a/t;

    move-result-object v9

    iget v0, v9, Lcom/google/a/t;->b:F

    float-to-int v0, v0

    add-int/lit8 v8, v0, 0x1

    div-int/lit8 v16, v14, 0x4

    move-object v0, v10

    move/from16 v6, v18

    move-object v13, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/google/a/c/a/b;->a(IIIIIIIII)Lcom/google/a/t;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/a/t;

    aput-object v0, v1, v2

    aput-object v12, v1, v15

    const/4 v0, 0x2

    aput-object v11, v1, v0

    const/4 v0, 0x3

    aput-object v13, v1, v0

    return-object v1
.end method
