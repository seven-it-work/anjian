.class public Landroid/support/v4/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mType:C
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(C[F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-object p2, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-char v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iget-object v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object p1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length p1, p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 32

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    const/4 v14, 0x0

    aget v0, p1, v14

    const/4 v15, 0x1

    aget v1, p1, v15

    const/16 v16, 0x2

    aget v2, p1, v16

    const/16 v17, 0x3

    aget v3, p1, v17

    const/16 v18, 0x4

    aget v4, p1, v18

    const/16 v19, 0x5

    aget v5, p1, v19

    sparse-switch p3, :sswitch_data_2ea

    :goto_1d
    :sswitch_1d
    const/16 v20, 0x2

    goto :goto_38

    :sswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v4

    move v2, v0

    move v1, v5

    move v3, v1

    goto :goto_1d

    :sswitch_2b
    const/16 v20, 0x4

    goto :goto_38

    :sswitch_2e
    const/16 v20, 0x1

    goto :goto_38

    :sswitch_31
    const/4 v6, 0x6

    const/16 v20, 0x6

    goto :goto_38

    :sswitch_35
    const/4 v6, 0x7

    const/16 v20, 0x7

    :goto_38
    move v8, v0

    move v7, v1

    move/from16 v21, v4

    move/from16 v22, v5

    const/4 v9, 0x0

    move/from16 v0, p2

    :goto_41
    array-length v1, v13

    if-ge v9, v1, :cond_2da

    const/16 v4, 0x63

    const/16 v5, 0x54

    const/16 v6, 0x51

    const/16 v15, 0x74

    const/16 v14, 0x71

    const/high16 v23, 0x40000000    # 2.0f

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_33c

    move v12, v7

    move v11, v8

    :goto_56
    move/from16 v26, v9

    goto/16 :goto_2d2

    :sswitch_5a
    add-int/lit8 v0, v9, 0x0

    aget v4, v13, v0

    invoke-virtual {v10, v1, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v0, v13, v0

    goto/16 :goto_113

    :sswitch_65
    if-eq v0, v14, :cond_70

    if-eq v0, v15, :cond_70

    if-eq v0, v6, :cond_70

    if-ne v0, v5, :cond_6e

    goto :goto_70

    :cond_6e
    const/4 v0, 0x0

    goto :goto_74

    :cond_70
    :goto_70
    sub-float v1, v8, v2

    sub-float v0, v7, v3

    :goto_74
    add-int/lit8 v2, v9, 0x0

    aget v3, v13, v2

    add-int/lit8 v4, v9, 0x1

    aget v5, v13, v4

    invoke-virtual {v10, v1, v0, v3, v5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v1, v8

    add-float/2addr v0, v7

    aget v2, v13, v2

    add-float/2addr v8, v2

    aget v2, v13, v4

    add-float/2addr v7, v2

    move v3, v0

    move v2, v1

    goto :goto_56

    :sswitch_8a
    if-eq v0, v4, :cond_9b

    const/16 v4, 0x73

    if-eq v0, v4, :cond_9b

    const/16 v4, 0x43

    if-eq v0, v4, :cond_9b

    const/16 v4, 0x53

    if-ne v0, v4, :cond_99

    goto :goto_9b

    :cond_99
    const/4 v2, 0x0

    goto :goto_a1

    :cond_9b
    :goto_9b
    sub-float v0, v8, v2

    sub-float v1, v7, v3

    move v2, v1

    move v1, v0

    :goto_a1
    add-int/lit8 v14, v9, 0x0

    aget v3, v13, v14

    add-int/lit8 v15, v9, 0x1

    aget v4, v13, v15

    add-int/lit8 v23, v9, 0x2

    aget v5, v13, v23

    add-int/lit8 v24, v9, 0x3

    aget v6, v13, v24

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v0, v13, v14

    add-float/2addr v0, v8

    aget v1, v13, v15

    add-float/2addr v1, v7

    aget v2, v13, v23

    add-float/2addr v8, v2

    aget v2, v13, v24

    goto/16 :goto_149

    :sswitch_c2
    add-int/lit8 v0, v9, 0x0

    aget v1, v13, v0

    add-int/lit8 v2, v9, 0x1

    aget v3, v13, v2

    add-int/lit8 v4, v9, 0x2

    aget v5, v13, v4

    add-int/lit8 v6, v9, 0x3

    aget v14, v13, v6

    invoke-virtual {v10, v1, v3, v5, v14}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    aget v0, v13, v0

    add-float/2addr v0, v8

    aget v1, v13, v2

    add-float/2addr v1, v7

    aget v2, v13, v4

    add-float/2addr v8, v2

    aget v2, v13, v6

    goto :goto_149

    :sswitch_e1
    add-int/lit8 v0, v9, 0x0

    aget v1, v13, v0

    add-float/2addr v8, v1

    add-int/lit8 v1, v9, 0x1

    aget v4, v13, v1

    add-float/2addr v7, v4

    if-lez v9, :cond_f6

    aget v0, v13, v0

    aget v1, v13, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_56

    :cond_f6
    aget v0, v13, v0

    aget v1, v13, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    move/from16 v22, v7

    move/from16 v21, v8

    goto/16 :goto_56

    :sswitch_103
    add-int/lit8 v0, v9, 0x0

    aget v1, v13, v0

    add-int/lit8 v4, v9, 0x1

    aget v5, v13, v4

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v0, v13, v0

    add-float/2addr v8, v0

    aget v0, v13, v4

    :goto_113
    add-float/2addr v7, v0

    goto/16 :goto_56

    :sswitch_116
    add-int/lit8 v0, v9, 0x0

    aget v4, v13, v0

    invoke-virtual {v10, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v0, v13, v0

    add-float/2addr v8, v0

    goto/16 :goto_56

    :sswitch_122
    add-int/lit8 v0, v9, 0x0

    aget v1, v13, v0

    add-int/lit8 v0, v9, 0x1

    aget v2, v13, v0

    add-int/lit8 v14, v9, 0x2

    aget v3, v13, v14

    add-int/lit8 v15, v9, 0x3

    aget v4, v13, v15

    add-int/lit8 v23, v9, 0x4

    aget v5, v13, v23

    add-int/lit8 v24, v9, 0x5

    aget v6, v13, v24

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v0, v13, v14

    add-float/2addr v0, v8

    aget v1, v13, v15

    add-float/2addr v1, v7

    aget v2, v13, v23

    add-float/2addr v8, v2

    aget v2, v13, v24

    :goto_149
    add-float/2addr v7, v2

    move v2, v0

    move v3, v1

    goto/16 :goto_56

    :sswitch_14e
    add-int/lit8 v14, v9, 0x5

    aget v0, v13, v14

    add-float v3, v0, v8

    add-int/lit8 v15, v9, 0x6

    aget v0, v13, v15

    add-float v4, v0, v7

    add-int/lit8 v0, v9, 0x0

    aget v5, v13, v0

    add-int/lit8 v0, v9, 0x1

    aget v6, v13, v0

    add-int/lit8 v0, v9, 0x2

    aget v23, v13, v0

    add-int/lit8 v0, v9, 0x3

    aget v0, v13, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_171

    const/16 v24, 0x1

    goto :goto_173

    :cond_171
    const/16 v24, 0x0

    :goto_173
    add-int/lit8 v0, v9, 0x4

    aget v0, v13, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17e

    const/16 v25, 0x1

    goto :goto_180

    :cond_17e
    const/16 v25, 0x0

    :goto_180
    move-object v0, v10

    move v1, v8

    move v2, v7

    move v12, v7

    move/from16 v7, v23

    move v11, v8

    move/from16 v8, v24

    move/from16 v26, v9

    move/from16 v9, v25

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v0, v13, v14

    add-float v8, v11, v0

    aget v0, v13, v15

    add-float v7, v12, v0

    goto/16 :goto_2d0

    :sswitch_19a
    move v11, v8

    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    aget v0, v13, v9

    invoke-virtual {v10, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    aget v7, v13, v9

    goto/16 :goto_2d2

    :sswitch_1a8
    move v12, v7

    move v11, v8

    move/from16 v26, v9

    if-eq v0, v14, :cond_1b4

    if-eq v0, v15, :cond_1b4

    if-eq v0, v6, :cond_1b4

    if-ne v0, v5, :cond_1bc

    :cond_1b4
    mul-float v8, v11, v23

    sub-float/2addr v8, v2

    mul-float v7, v12, v23

    sub-float/2addr v7, v3

    move v12, v7

    move v11, v8

    :cond_1bc
    add-int/lit8 v9, v26, 0x0

    aget v0, v13, v9

    add-int/lit8 v1, v26, 0x1

    aget v2, v13, v1

    invoke-virtual {v10, v11, v12, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v8, v13, v9

    aget v7, v13, v1

    move v2, v11

    move v3, v12

    goto/16 :goto_2d2

    :sswitch_1cf
    move v12, v7

    move v11, v8

    move/from16 v26, v9

    if-eq v0, v4, :cond_1e5

    const/16 v1, 0x73

    if-eq v0, v1, :cond_1e5

    const/16 v1, 0x43

    if-eq v0, v1, :cond_1e5

    const/16 v1, 0x53

    if-ne v0, v1, :cond_1e2

    goto :goto_1e5

    :cond_1e2
    move v1, v11

    move v2, v12

    goto :goto_1ed

    :cond_1e5
    :goto_1e5
    mul-float v8, v11, v23

    sub-float/2addr v8, v2

    mul-float v7, v12, v23

    sub-float/2addr v7, v3

    move v2, v7

    move v1, v8

    :goto_1ed
    add-int/lit8 v9, v26, 0x0

    aget v3, v13, v9

    add-int/lit8 v7, v26, 0x1

    aget v4, v13, v7

    add-int/lit8 v8, v26, 0x2

    aget v5, v13, v8

    add-int/lit8 v11, v26, 0x3

    aget v6, v13, v11

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v0, v13, v9

    aget v1, v13, v7

    aget v8, v13, v8

    aget v7, v13, v11

    goto :goto_227

    :sswitch_20a
    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    aget v0, v13, v9

    add-int/lit8 v1, v26, 0x1

    aget v2, v13, v1

    add-int/lit8 v3, v26, 0x2

    aget v4, v13, v3

    add-int/lit8 v5, v26, 0x3

    aget v6, v13, v5

    invoke-virtual {v10, v0, v2, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v0, v13, v9

    aget v1, v13, v1

    aget v8, v13, v3

    aget v7, v13, v5

    :goto_227
    move v2, v0

    move v3, v1

    goto/16 :goto_2d2

    :sswitch_22b
    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    aget v8, v13, v9

    add-int/lit8 v0, v26, 0x1

    aget v7, v13, v0

    if-lez v26, :cond_240

    aget v1, v13, v9

    aget v0, v13, v0

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2d2

    :cond_240
    aget v1, v13, v9

    aget v0, v13, v0

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v22, v7

    move/from16 v21, v8

    goto/16 :goto_2d2

    :sswitch_24d
    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    aget v0, v13, v9

    add-int/lit8 v1, v26, 0x1

    aget v4, v13, v1

    invoke-virtual {v10, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    aget v8, v13, v9

    aget v7, v13, v1

    goto/16 :goto_2d2

    :sswitch_260
    move v12, v7

    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    aget v0, v13, v9

    invoke-virtual {v10, v0, v12}, Landroid/graphics/Path;->lineTo(FF)V

    aget v8, v13, v9

    goto/16 :goto_2d2

    :sswitch_26e
    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    aget v1, v13, v9

    add-int/lit8 v9, v26, 0x1

    aget v2, v13, v9

    add-int/lit8 v9, v26, 0x2

    aget v3, v13, v9

    add-int/lit8 v7, v26, 0x3

    aget v4, v13, v7

    add-int/lit8 v8, v26, 0x4

    aget v5, v13, v8

    add-int/lit8 v11, v26, 0x5

    aget v6, v13, v11

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v8, v13, v8

    aget v0, v13, v11

    aget v1, v13, v9

    aget v2, v13, v7

    move v7, v0

    move v3, v2

    move v2, v1

    goto :goto_2d2

    :sswitch_298
    move v12, v7

    move v11, v8

    move/from16 v26, v9

    add-int/lit8 v14, v26, 0x5

    aget v3, v13, v14

    add-int/lit8 v15, v26, 0x6

    aget v4, v13, v15

    add-int/lit8 v9, v26, 0x0

    aget v5, v13, v9

    add-int/lit8 v9, v26, 0x1

    aget v6, v13, v9

    add-int/lit8 v9, v26, 0x2

    aget v7, v13, v9

    add-int/lit8 v9, v26, 0x3

    aget v0, v13, v9

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2ba

    const/4 v8, 0x1

    goto :goto_2bb

    :cond_2ba
    const/4 v8, 0x0

    :goto_2bb
    add-int/lit8 v9, v26, 0x4

    aget v0, v13, v9

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c5

    const/4 v9, 0x1

    goto :goto_2c6

    :cond_2c5
    const/4 v9, 0x0

    :goto_2c6
    move-object v0, v10

    move v1, v11

    move v2, v12

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v8, v13, v14

    aget v7, v13, v15

    :goto_2d0
    move v3, v7

    move v2, v8

    :goto_2d2
    add-int v9, v26, v20

    move/from16 v0, p3

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_41

    :cond_2da
    move v12, v7

    const/4 v1, 0x0

    aput v8, p1, v1

    const/4 v1, 0x1

    aput v12, p1, v1

    aput v2, p1, v16

    aput v3, p1, v17

    aput v21, p1, v18

    aput v22, p1, v19

    return-void

    :sswitch_data_2ea
    .sparse-switch
        0x41 -> :sswitch_35
        0x43 -> :sswitch_31
        0x48 -> :sswitch_2e
        0x4c -> :sswitch_1d
        0x4d -> :sswitch_1d
        0x51 -> :sswitch_2b
        0x53 -> :sswitch_2b
        0x54 -> :sswitch_1d
        0x56 -> :sswitch_2e
        0x5a -> :sswitch_20
        0x61 -> :sswitch_35
        0x63 -> :sswitch_31
        0x68 -> :sswitch_2e
        0x6c -> :sswitch_1d
        0x6d -> :sswitch_1d
        0x71 -> :sswitch_2b
        0x73 -> :sswitch_2b
        0x74 -> :sswitch_1d
        0x76 -> :sswitch_2e
        0x7a -> :sswitch_20
    .end sparse-switch

    :sswitch_data_33c
    .sparse-switch
        0x41 -> :sswitch_298
        0x43 -> :sswitch_26e
        0x48 -> :sswitch_260
        0x4c -> :sswitch_24d
        0x4d -> :sswitch_22b
        0x51 -> :sswitch_20a
        0x53 -> :sswitch_1cf
        0x54 -> :sswitch_1a8
        0x56 -> :sswitch_19a
        0x61 -> :sswitch_14e
        0x63 -> :sswitch_122
        0x68 -> :sswitch_116
        0x6c -> :sswitch_103
        0x6d -> :sswitch_e1
        0x71 -> :sswitch_c2
        0x73 -> :sswitch_8a
        0x74 -> :sswitch_65
        0x76 -> :sswitch_5a
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 79

    move-wide/from16 v0, p5

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v8, p17, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    neg-double v6, v0

    mul-double v18, v6, v9

    mul-double v20, v18, v15

    mul-double v22, p7, v11

    mul-double v24, v22, v13

    sub-double v20, v20, v24

    mul-double v6, v6, v11

    mul-double v15, v15, v6

    mul-double v2, p7, v9

    mul-double v13, v13, v2

    add-double/2addr v15, v13

    int-to-double v13, v8

    div-double v4, p17, v13

    const/4 v13, 0x0

    move-wide/from16 v26, p11

    move-wide/from16 v28, v15

    move-wide/from16 v24, v20

    move-wide/from16 v20, p9

    move-wide/from16 v14, p15

    :goto_47
    if-ge v13, v8, :cond_ee

    move-wide/from16 v30, v6

    add-double v6, v14, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v36, v0, v9

    mul-double v36, v36, v34

    add-double v36, p1, v36

    mul-double v38, v22, v32

    move-wide/from16 v40, v4

    sub-double v4, v36, v38

    mul-double v36, v0, v11

    mul-double v36, v36, v34

    add-double v36, p3, v36

    mul-double v42, v2, v32

    add-double v0, v36, v42

    mul-double v36, v18, v32

    mul-double v42, v22, v34

    sub-double v36, v36, v42

    mul-double v32, v32, v30

    mul-double v34, v34, v2

    add-double v32, v32, v34

    sub-double v14, v6, v14

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    move-wide/from16 v44, v2

    div-double v2, v14, v34

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    mul-double v42, v2, v34

    mul-double v42, v42, v2

    move-wide/from16 v46, v6

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    add-double v6, v42, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v16

    mul-double v14, v14, v6

    div-double v14, v14, v34

    mul-double v24, v24, v14

    add-double v6, v20, v24

    mul-double v28, v28, v14

    add-double v2, v26, v28

    mul-double v16, v14, v36

    move/from16 v48, v8

    move-wide/from16 v49, v9

    sub-double v8, v4, v16

    mul-double v14, v14, v32

    sub-double v14, v0, v14

    const/4 v10, 0x0

    move-wide/from16 v58, v11

    move-object/from16 v11, p0

    invoke-virtual {v11, v10, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v6, v6

    double-to-float v2, v2

    double-to-float v3, v8

    double-to-float v7, v14

    double-to-float v8, v4

    double-to-float v9, v0

    move-object/from16 v51, v11

    move/from16 v52, v6

    move/from16 v53, v2

    move/from16 v54, v3

    move/from16 v55, v7

    move/from16 v56, v8

    move/from16 v57, v9

    invoke-virtual/range {v51 .. v57}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v26, v0

    move-wide/from16 v20, v4

    move-wide/from16 v6, v30

    move-wide/from16 v28, v32

    move-wide/from16 v24, v36

    move-wide/from16 v4, v40

    move-wide/from16 v2, v44

    move-wide/from16 v14, v46

    move/from16 v8, v48

    move-wide/from16 v9, v49

    move-wide/from16 v11, v58

    move-wide/from16 v0, p5

    goto/16 :goto_47

    :cond_ee
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 53

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p9

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v3, p7

    :goto_c
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    float-to-double v13, v0

    mul-double v15, v13, v8

    move/from16 v12, p2

    move-wide/from16 v27, v6

    float-to-double v6, v12

    mul-double v17, v6, v10

    add-double v15, v15, v17

    move-wide/from16 v29, v13

    float-to-double v13, v4

    div-double/2addr v15, v13

    neg-float v3, v0

    float-to-double v2, v3

    mul-double v2, v2, v10

    mul-double v17, v6, v8

    add-double v2, v2, v17

    move-wide/from16 v31, v6

    float-to-double v6, v5

    div-double/2addr v2, v6

    move/from16 v33, v4

    move/from16 v34, v5

    float-to-double v4, v1

    mul-double v4, v4, v8

    move/from16 v0, p4

    move-wide/from16 v35, v2

    float-to-double v2, v0

    mul-double v17, v2, v10

    add-double v4, v4, v17

    div-double/2addr v4, v13

    neg-float v0, v1

    float-to-double v0, v0

    mul-double v0, v0, v10

    mul-double v2, v2, v8

    add-double/2addr v0, v2

    div-double/2addr v0, v6

    sub-double v2, v15, v4

    sub-double v17, v35, v0

    add-double v19, v15, v4

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v19, v19, v21

    add-double v23, v35, v0

    div-double v23, v23, v21

    mul-double v21, v2, v2

    mul-double v25, v17, v17

    move-wide/from16 v37, v10

    add-double v10, v21, v25

    const-wide/16 v21, 0x0

    cmpl-double v25, v10, v21

    if-nez v25, :cond_72

    const-string v0, "PathParser"

    const-string v1, " Points are coincident"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_72
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    div-double v25, v25, v10

    const-wide/high16 v39, 0x3fd0000000000000L    # 0.25

    move-wide/from16 v41, v8

    sub-double v8, v25, v39

    cmpg-double v25, v8, v21

    if-gez v25, :cond_ac

    const-string v0, "PathParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Points are too far apart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v0, v0

    mul-float v4, v33, v0

    mul-float v5, v34, v0

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p9

    move/from16 v3, p7

    goto/16 :goto_c

    :cond_ac
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v2, v2, v8

    mul-double v8, v8, v17

    move/from16 v10, p8

    move/from16 v11, p9

    if-ne v10, v11, :cond_bf

    sub-double v19, v19, v8

    add-double v23, v23, v2

    goto :goto_c4

    :cond_bf
    const/4 v10, 0x0

    add-double v19, v19, v8

    sub-double v23, v23, v2

    :goto_c4
    const/4 v2, 0x0

    sub-double v2, v35, v23

    sub-double v8, v15, v19

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double v0, v0, v23

    sub-double v4, v4, v19

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr v0, v2

    cmpl-double v4, v0, v21

    if-ltz v4, :cond_dc

    const/4 v4, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v4, 0x0

    :goto_dd
    if-eq v11, v4, :cond_ec

    cmpl-double v4, v0, v21

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v4, :cond_ea

    sub-double/2addr v0, v8

    goto :goto_ec

    :cond_ea
    const/4 v4, 0x0

    add-double/2addr v0, v8

    :cond_ec
    :goto_ec
    move-wide/from16 v25, v0

    mul-double v19, v19, v13

    mul-double v23, v23, v6

    mul-double v8, v19, v41

    mul-double v10, v23, v37

    const/4 v0, 0x0

    sub-double v9, v8, v10

    mul-double v19, v19, v37

    mul-double v23, v23, v41

    add-double v11, v19, v23

    move-object/from16 v8, p0

    move-wide/from16 v0, v29

    move-wide v15, v6

    move-wide/from16 v17, v0

    move-wide/from16 v19, v31

    move-wide/from16 v21, v27

    move-wide/from16 v23, v2

    invoke-static/range {v8 .. v26}, Landroid/support/v4/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/16 v1, 0x6d

    const/4 v2, 0x0

    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    aget-object v3, p0, v2

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v2

    iget-object v4, v4, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v1, v3, v4}, Landroid/support/v4/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    aget-object v1, p0, v2

    iget-char v1, v1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/support/v4/graphics/PathParser$PathDataNode;F)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v2, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float v2, v2, v3

    iget-object v3, p2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float v3, v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method
