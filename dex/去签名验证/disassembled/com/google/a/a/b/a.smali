.class public final Lcom/google/a/a/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/b/a$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/a/c/b;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/a/a/b/a;->a:[I

    return-void

    nop

    :array_a
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/a/c/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    return-void
.end method

.method private static a(Lcom/google/a/t;Lcom/google/a/t;)F
    .registers 4

    iget v0, p0, Lcom/google/a/t;->a:F

    iget p0, p0, Lcom/google/a/t;->b:F

    iget v1, p1, Lcom/google/a/t;->a:F

    iget p1, p1, Lcom/google/a/t;->b:F

    invoke-static {v0, p0, v1, p1}, Lcom/google/a/c/a/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private static a(JZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p2, :cond_6

    const/4 p2, 0x7

    const/4 v1, 0x2

    goto :goto_9

    :cond_6
    const/16 p2, 0xa

    const/4 v1, 0x4

    :goto_9
    sub-int v2, p2, v1

    new-array v3, p2, [I

    add-int/lit8 p2, p2, -0x1

    :goto_f
    if-ltz p2, :cond_1a

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, p2

    shr-long/2addr p0, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    :cond_1a
    :try_start_1a
    new-instance p0, Lcom/google/a/c/b/c;

    sget-object p1, Lcom/google/a/c/b/a;->d:Lcom/google/a/c/b/a;

    invoke-direct {p0, p1}, Lcom/google/a/c/b/c;-><init>(Lcom/google/a/c/b/a;)V

    invoke-virtual {p0, v3, v2}, Lcom/google/a/c/b/c;->a([II)V
    :try_end_24
    .catch Lcom/google/a/c/b/e; {:try_start_1a .. :try_end_24} :catch_31

    const/4 p0, 0x0

    const/4 p1, 0x0

    :goto_26
    if-ge p0, v1, :cond_30

    shl-int/lit8 p1, p1, 0x4

    aget p2, v3, p0

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_26

    :cond_30
    return p1

    :catch_31
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I
    .registers 14

    invoke-static {p1, p2}, Lcom/google/a/a/b/a;->b(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)F

    move-result v0

    iget v1, p2, Lcom/google/a/a/b/a$a;->a:I

    iget v2, p1, Lcom/google/a/a/b/a$a;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget p2, p2, Lcom/google/a/a/b/a$a;->b:I

    iget v2, p1, Lcom/google/a/a/b/a$a;->b:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iget v2, p1, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v2, v2

    iget v3, p1, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    iget v5, p1, Lcom/google/a/a/b/a$a;->a:I

    iget p1, p1, Lcom/google/a/a/b/a$a;->b:I

    invoke-virtual {v4, v5, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    move v6, v3

    const/4 v7, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v4, :cond_46

    add-float/2addr v3, v1

    add-float/2addr v6, p2

    iget-object v8, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    invoke-static {v3}, Lcom/google/a/c/a/a;->a(F)I

    move-result v9

    invoke-static {v6}, Lcom/google/a/c/a/a;->a(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/a/c/b;->a(II)Z

    move-result v8

    if-eq v8, p1, :cond_43

    add-int/lit8 v7, v7, 0x1

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_46
    int-to-float p2, v7

    div-float/2addr p2, v0

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_57

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_57

    return v5

    :cond_57
    cmpg-float p2, p2, v0

    const/4 v0, 0x1

    if-gtz p2, :cond_5d

    const/4 v5, 0x1

    :cond_5d
    if-ne v5, p1, :cond_60

    return v0

    :cond_60
    const/4 p1, -0x1

    return p1
.end method

.method private a(Lcom/google/a/t;Lcom/google/a/t;I)I
    .registers 11

    iget v0, p1, Lcom/google/a/t;->a:F

    iget v1, p1, Lcom/google/a/t;->b:F

    iget v2, p2, Lcom/google/a/t;->a:F

    iget v3, p2, Lcom/google/a/t;->b:F

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/c/a/a;->a(FFFF)F

    move-result v0

    int-to-float v1, p3

    div-float v1, v0, v1

    iget v2, p1, Lcom/google/a/t;->a:F

    iget v3, p1, Lcom/google/a/t;->b:F

    iget v4, p2, Lcom/google/a/t;->a:F

    iget v5, p1, Lcom/google/a/t;->a:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v1

    div-float/2addr v4, v0

    iget p2, p2, Lcom/google/a/t;->b:F

    iget p1, p1, Lcom/google/a/t;->b:F

    sub-float/2addr p2, p1

    mul-float v1, v1, p2

    div-float/2addr v1, v0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_25
    if-ge p1, p3, :cond_48

    iget-object v0, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    int-to-float v5, p1

    mul-float v6, v5, v4

    add-float/2addr v6, v2

    invoke-static {v6}, Lcom/google/a/c/a/a;->a(F)I

    move-result v6

    mul-float v5, v5, v1

    add-float/2addr v5, v3

    invoke-static {v5}, Lcom/google/a/c/a/a;->a(F)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Lcom/google/a/c/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_45

    sub-int v0, p3, p1

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    shl-int v0, v5, v0

    or-int/2addr p2, v0

    :cond_45
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    :cond_48
    return p2
.end method

.method private static a([II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ge v1, v4, :cond_18

    aget v4, p0, v1

    add-int/lit8 v3, p1, -0x2

    shr-int v3, v4, v3

    shl-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    and-int/lit8 p0, v2, 0x1

    shl-int/lit8 p0, p0, 0xb

    shr-int/lit8 p1, v2, 0x1

    add-int/2addr p0, p1

    :goto_1f
    if-ge v0, v4, :cond_30

    sget-object p1, Lcom/google/a/a/b/a;->a:[I

    aget p1, p1, v0

    xor-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    if-gt p1, v3, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_30
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private a()Lcom/google/a/a/a;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/a/a/b/a;->a(Z)Lcom/google/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;
    .registers 7

    iget v0, p1, Lcom/google/a/a/b/a$a;->a:I

    add-int/2addr v0, p3

    iget p1, p1, Lcom/google/a/a/b/a$a;->b:I

    :goto_5
    add-int/2addr p1, p4

    invoke-direct {p0, v0, p1}, Lcom/google/a/a/b/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v1, v0, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v1

    if-ne v1, p2, :cond_16

    add-int/2addr v0, p3

    goto :goto_5

    :cond_16
    sub-int/2addr v0, p3

    sub-int/2addr p1, p4

    :goto_18
    invoke-direct {p0, v0, p1}, Lcom/google/a/a/b/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    invoke-virtual {v1, v0, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result v1

    if-ne v1, p2, :cond_28

    add-int/2addr v0, p3

    goto :goto_18

    :cond_28
    sub-int/2addr v0, p3

    :goto_29
    invoke-direct {p0, v0, p1}, Lcom/google/a/a/b/a;->a(II)Z

    move-result p3

    if-eqz p3, :cond_39

    iget-object p3, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    invoke-virtual {p3, v0, p1}, Lcom/google/a/c/b;->a(II)Z

    move-result p3

    if-ne p3, p2, :cond_39

    add-int/2addr p1, p4

    goto :goto_29

    :cond_39
    sub-int/2addr p1, p4

    new-instance p2, Lcom/google/a/a/b/a$a;

    invoke-direct {p2, v0, p1}, Lcom/google/a/a/b/a$a;-><init>(II)V

    return-object p2
.end method

.method private a(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)Lcom/google/a/c/b;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {}, Lcom/google/a/c/i;->a()Lcom/google/a/c/i;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/google/a/a/b/a;->c()I

    move-result v6

    int-to-float v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget v8, v0, Lcom/google/a/a/b/a;->f:I

    int-to-float v8, v8

    sub-float v11, v7, v8

    iget v8, v0, Lcom/google/a/a/b/a;->f:I

    int-to-float v8, v8

    add-float v12, v7, v8

    iget v13, v1, Lcom/google/a/t;->a:F

    iget v14, v1, Lcom/google/a/t;->b:F

    iget v15, v2, Lcom/google/a/t;->a:F

    iget v10, v2, Lcom/google/a/t;->b:F

    iget v9, v3, Lcom/google/a/t;->a:F

    iget v8, v3, Lcom/google/a/t;->b:F

    iget v7, v4, Lcom/google/a/t;->a:F

    iget v4, v4, Lcom/google/a/t;->b:F

    move-object v1, v5

    move-object/from16 v2, p1

    move v3, v6

    move/from16 v20, v4

    move v4, v6

    move v5, v11

    move v6, v11

    move/from16 v19, v7

    move v7, v12

    move/from16 v18, v8

    move v8, v11

    move/from16 v17, v9

    move v9, v12

    move/from16 v16, v10

    move v10, v12

    invoke-virtual/range {v1 .. v20}, Lcom/google/a/c/i;->a(Lcom/google/a/c/b;IIFFFFFFFFFFFFFFFF)Lcom/google/a/c/b;

    move-result-object v1

    return-object v1
.end method

.method private a([Lcom/google/a/t;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;)Z

    move-result v1

    if-eqz v1, :cond_cd

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const/4 v2, 0x2

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;)Z

    move-result v3

    if-eqz v3, :cond_cd

    const/4 v3, 0x3

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;)Z

    move-result v4

    if-nez v4, :cond_26

    goto/16 :goto_cd

    :cond_26
    iget v4, p0, Lcom/google/a/a/b/a;->f:I

    mul-int/lit8 v4, v4, 0x2

    const/4 v5, 0x4

    new-array v6, v5, [I

    aget-object v7, p1, v0

    aget-object v8, p1, v1

    invoke-direct {p0, v7, v8, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;I)I

    move-result v7

    aput v7, v6, v0

    aget-object v7, p1, v1

    aget-object v8, p1, v2

    invoke-direct {p0, v7, v8, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;I)I

    move-result v7

    aput v7, v6, v1

    aget-object v7, p1, v2

    aget-object v8, p1, v3

    invoke-direct {p0, v7, v8, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;I)I

    move-result v7

    aput v7, v6, v2

    aget-object v7, p1, v3

    aget-object p1, p1, v0

    invoke-direct {p0, v7, p1, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;I)I

    move-result p1

    aput p1, v6, v3

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_57
    if-ge p1, v5, :cond_68

    aget v7, v6, p1

    add-int/lit8 v8, v4, -0x2

    shr-int v8, v7, v8

    shl-int/2addr v8, v1

    and-int/2addr v7, v1

    add-int/2addr v8, v7

    shl-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    :cond_68
    and-int/lit8 p1, v3, 0x1

    shl-int/lit8 p1, p1, 0xb

    shr-int/2addr v3, v1

    add-int/2addr p1, v3

    const/4 v3, 0x0

    :goto_6f
    if-ge v3, v5, :cond_c8

    sget-object v4, Lcom/google/a/a/b/a;->a:[I

    aget v4, v4, v3

    xor-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    if-gt v4, v2, :cond_c5

    iput v3, p0, Lcom/google/a/a/b/a;->g:I

    const-wide/16 v2, 0x0

    :goto_80
    if-ge v0, v5, :cond_a8

    iget p1, p0, Lcom/google/a/a/b/a;->g:I

    add-int/2addr p1, v0

    rem-int/2addr p1, v5

    aget p1, v6, p1

    iget-boolean v4, p0, Lcom/google/a/a/b/a;->c:Z

    if-eqz v4, :cond_97

    const/4 v4, 0x7

    shl-long/2addr v2, v4

    shr-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x7f

    int-to-long v7, p1

    :goto_93
    add-long v9, v2, v7

    move-wide v2, v9

    goto :goto_a5

    :cond_97
    const/16 v4, 0xa

    shl-long/2addr v2, v4

    shr-int/lit8 v4, p1, 0x2

    and-int/lit16 v4, v4, 0x3e0

    shr-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v4, p1

    int-to-long v7, v4

    goto :goto_93

    :goto_a5
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_a8
    iget-boolean p1, p0, Lcom/google/a/a/b/a;->c:Z

    invoke-static {v2, v3, p1}, Lcom/google/a/a/b/a;->a(JZ)I

    move-result p1

    iget-boolean v0, p0, Lcom/google/a/a/b/a;->c:Z

    if-eqz v0, :cond_bd

    shr-int/lit8 v0, p1, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/a/b/a;->d:I

    and-int/lit8 p1, p1, 0x3f

    :goto_b9
    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/a/a/b/a;->e:I

    return-void

    :cond_bd
    shr-int/lit8 v0, p1, 0xb

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/a/b/a;->d:I

    and-int/lit16 p1, p1, 0x7ff

    goto :goto_b9

    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    :cond_c8
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_cd
    :goto_cd
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private a(II)Z
    .registers 4

    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    iget v0, v0, Lcom/google/a/c/b;->a:I

    if-ge p1, v0, :cond_12

    if-lez p2, :cond_12

    iget-object p1, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    iget p1, p1, Lcom/google/a/c/b;->b:I

    if-ge p2, p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)Z
    .registers 7

    new-instance v0, Lcom/google/a/a/b/a$a;

    iget v1, p1, Lcom/google/a/a/b/a$a;->a:I

    add-int/lit8 v1, v1, -0x3

    iget p1, p1, Lcom/google/a/a/b/a$a;->b:I

    add-int/lit8 p1, p1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/google/a/a/b/a$a;-><init>(II)V

    new-instance p1, Lcom/google/a/a/b/a$a;

    iget v1, p2, Lcom/google/a/a/b/a$a;->a:I

    add-int/lit8 v1, v1, -0x3

    iget p2, p2, Lcom/google/a/a/b/a$a;->b:I

    add-int/lit8 p2, p2, -0x3

    invoke-direct {p1, v1, p2}, Lcom/google/a/a/b/a$a;-><init>(II)V

    new-instance p2, Lcom/google/a/a/b/a$a;

    iget v1, p3, Lcom/google/a/a/b/a$a;->a:I

    add-int/lit8 v1, v1, 0x3

    iget p3, p3, Lcom/google/a/a/b/a$a;->b:I

    add-int/lit8 p3, p3, -0x3

    invoke-direct {p2, v1, p3}, Lcom/google/a/a/b/a$a;-><init>(II)V

    new-instance p3, Lcom/google/a/a/b/a$a;

    iget v1, p4, Lcom/google/a/a/b/a$a;->a:I

    add-int/lit8 v1, v1, 0x3

    iget p4, p4, Lcom/google/a/a/b/a$a;->b:I

    add-int/lit8 p4, p4, 0x3

    invoke-direct {p3, v1, p4}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {p0, p3, v0}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result p4

    const/4 v1, 0x0

    if-nez p4, :cond_3c

    return v1

    :cond_3c
    invoke-direct {p0, v0, p1}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result v0

    if-eq v0, p4, :cond_43

    return v1

    :cond_43
    invoke-direct {p0, p1, p2}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result p1

    if-eq p1, p4, :cond_4a

    return v1

    :cond_4a
    invoke-direct {p0, p2, p3}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result p1

    if-ne p1, p4, :cond_52

    const/4 p1, 0x1

    return p1

    :cond_52
    return v1
.end method

.method private a(Lcom/google/a/t;)Z
    .registers 3

    iget v0, p1, Lcom/google/a/t;->a:F

    invoke-static {v0}, Lcom/google/a/c/a/a;->a(F)I

    move-result v0

    iget p1, p1, Lcom/google/a/t;->b:F

    invoke-static {p1}, Lcom/google/a/c/a/a;->a(F)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/a/a/b/a;->a(II)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/google/a/a/b/a$a;)[Lcom/google/a/t;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/a/a/b/a;->f:I

    move-object/from16 v2, p1

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    const/4 v3, 0x1

    :goto_b
    iget v7, v0, Lcom/google/a/a/b/a;->f:I

    const/16 v8, 0x9

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-ge v7, v8, :cond_a7

    const/4 v7, -0x1

    invoke-direct {v0, v2, v3, v1, v7}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v8

    invoke-direct {v0, v4, v3, v1, v1}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v12

    invoke-direct {v0, v5, v3, v7, v1}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v13

    invoke-direct {v0, v6, v3, v7, v7}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v7

    iget v14, v0, Lcom/google/a/a/b/a;->f:I

    if-le v14, v10, :cond_95

    invoke-static {v7, v8}, Lcom/google/a/a/b/a;->b(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)F

    move-result v14

    iget v15, v0, Lcom/google/a/a/b/a;->f:I

    int-to-float v15, v15

    mul-float v14, v14, v15

    invoke-static {v6, v2}, Lcom/google/a/a/b/a;->b(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)F

    move-result v15

    iget v9, v0, Lcom/google/a/a/b/a;->f:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v15, v15, v9

    div-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    cmpg-double v9, v14, v16

    if-ltz v9, :cond_a7

    const-wide/high16 v16, 0x3ff4000000000000L    # 1.25

    cmpl-double v9, v14, v16

    if-gtz v9, :cond_a7

    new-instance v9, Lcom/google/a/a/b/a$a;

    iget v14, v8, Lcom/google/a/a/b/a$a;->a:I

    sub-int/2addr v14, v11

    iget v15, v8, Lcom/google/a/a/b/a$a;->b:I

    add-int/2addr v15, v11

    invoke-direct {v9, v14, v15}, Lcom/google/a/a/b/a$a;-><init>(II)V

    new-instance v14, Lcom/google/a/a/b/a$a;

    iget v15, v12, Lcom/google/a/a/b/a$a;->a:I

    sub-int/2addr v15, v11

    iget v10, v12, Lcom/google/a/a/b/a$a;->b:I

    sub-int/2addr v10, v11

    invoke-direct {v14, v15, v10}, Lcom/google/a/a/b/a$a;-><init>(II)V

    new-instance v10, Lcom/google/a/a/b/a$a;

    iget v15, v13, Lcom/google/a/a/b/a$a;->a:I

    add-int/2addr v15, v11

    iget v1, v13, Lcom/google/a/a/b/a$a;->b:I

    sub-int/2addr v1, v11

    invoke-direct {v10, v15, v1}, Lcom/google/a/a/b/a$a;-><init>(II)V

    new-instance v1, Lcom/google/a/a/b/a$a;

    iget v15, v7, Lcom/google/a/a/b/a$a;->a:I

    add-int/2addr v15, v11

    move-object/from16 v18, v8

    iget v8, v7, Lcom/google/a/a/b/a$a;->b:I

    add-int/2addr v8, v11

    invoke-direct {v1, v15, v8}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {v0, v1, v9}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result v8

    if-eqz v8, :cond_91

    invoke-direct {v0, v9, v14}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result v9

    if-ne v9, v8, :cond_91

    invoke-direct {v0, v14, v10}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result v9

    if-ne v9, v8, :cond_91

    invoke-direct {v0, v10, v1}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result v1

    if-ne v1, v8, :cond_91

    const/4 v1, 0x1

    goto :goto_92

    :cond_91
    const/4 v1, 0x0

    :goto_92
    if-eqz v1, :cond_a7

    goto :goto_97

    :cond_95
    move-object/from16 v18, v8

    :goto_97
    xor-int/lit8 v3, v3, 0x1

    iget v1, v0, Lcom/google/a/a/b/a;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/a/a/b/a;->f:I

    move-object v6, v7

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v2, v18

    const/4 v1, 0x1

    goto/16 :goto_b

    :cond_a7
    iget v1, v0, Lcom/google/a/a/b/a;->f:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_b6

    iget v1, v0, Lcom/google/a/a/b/a;->f:I

    const/4 v7, 0x7

    if-eq v1, v7, :cond_b6

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_b6
    iget v1, v0, Lcom/google/a/a/b/a;->f:I

    if-ne v1, v3, :cond_bc

    const/4 v1, 0x1

    goto :goto_bd

    :cond_bc
    const/4 v1, 0x0

    :goto_bd
    iput-boolean v1, v0, Lcom/google/a/a/b/a;->c:Z

    new-instance v1, Lcom/google/a/t;

    iget v3, v2, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v3, v3

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v3, v7

    iget v2, v2, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v2, v2

    sub-float/2addr v2, v7

    invoke-direct {v1, v3, v2}, Lcom/google/a/t;-><init>(FF)V

    new-instance v2, Lcom/google/a/t;

    iget v3, v4, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget v4, v4, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    invoke-direct {v2, v3, v4}, Lcom/google/a/t;-><init>(FF)V

    new-instance v3, Lcom/google/a/t;

    iget v4, v5, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    iget v5, v5, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    invoke-direct {v3, v4, v5}, Lcom/google/a/t;-><init>(FF)V

    new-instance v4, Lcom/google/a/t;

    iget v5, v6, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v5, v5

    sub-float/2addr v5, v7

    iget v6, v6, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v6, v6

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/a/t;-><init>(FF)V

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/a/t;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    aput-object v4, v5, v11

    iget v2, v0, Lcom/google/a/a/b/a;->f:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v11

    iget v3, v0, Lcom/google/a/a/b/a;->f:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v5, v2, v3}, Lcom/google/a/a/b/a;->a([Lcom/google/a/t;II)[Lcom/google/a/t;

    move-result-object v1

    return-object v1
.end method

.method private static a([Lcom/google/a/t;II)[Lcom/google/a/t;
    .registers 13

    int-to-float p2, p2

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    div-float/2addr p2, p1

    const/4 p1, 0x0

    aget-object v1, p0, p1

    iget v1, v1, Lcom/google/a/t;->a:F

    const/4 v2, 0x2

    aget-object v3, p0, v2

    iget v3, v3, Lcom/google/a/t;->a:F

    sub-float/2addr v1, v3

    aget-object v3, p0, p1

    iget v3, v3, Lcom/google/a/t;->b:F

    aget-object v4, p0, v2

    iget v4, v4, Lcom/google/a/t;->b:F

    sub-float/2addr v3, v4

    aget-object v4, p0, p1

    iget v4, v4, Lcom/google/a/t;->a:F

    aget-object v5, p0, v2

    iget v5, v5, Lcom/google/a/t;->a:F

    add-float/2addr v4, v5

    div-float/2addr v4, v0

    aget-object v5, p0, p1

    iget v5, v5, Lcom/google/a/t;->b:F

    aget-object v6, p0, v2

    iget v6, v6, Lcom/google/a/t;->b:F

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    new-instance v6, Lcom/google/a/t;

    mul-float v1, v1, p2

    add-float v7, v4, v1

    mul-float v3, v3, p2

    add-float v8, v5, v3

    invoke-direct {v6, v7, v8}, Lcom/google/a/t;-><init>(FF)V

    new-instance v7, Lcom/google/a/t;

    sub-float/2addr v4, v1

    sub-float/2addr v5, v3

    invoke-direct {v7, v4, v5}, Lcom/google/a/t;-><init>(FF)V

    const/4 v1, 0x1

    aget-object v3, p0, v1

    iget v3, v3, Lcom/google/a/t;->a:F

    const/4 v4, 0x3

    aget-object v5, p0, v4

    iget v5, v5, Lcom/google/a/t;->a:F

    sub-float/2addr v3, v5

    aget-object v5, p0, v1

    iget v5, v5, Lcom/google/a/t;->b:F

    aget-object v8, p0, v4

    iget v8, v8, Lcom/google/a/t;->b:F

    sub-float/2addr v5, v8

    aget-object v8, p0, v1

    iget v8, v8, Lcom/google/a/t;->a:F

    aget-object v9, p0, v4

    iget v9, v9, Lcom/google/a/t;->a:F

    add-float/2addr v8, v9

    div-float/2addr v8, v0

    aget-object v9, p0, v1

    iget v9, v9, Lcom/google/a/t;->b:F

    aget-object p0, p0, v4

    iget p0, p0, Lcom/google/a/t;->b:F

    add-float/2addr v9, p0

    div-float/2addr v9, v0

    new-instance p0, Lcom/google/a/t;

    mul-float v3, v3, p2

    add-float v0, v8, v3

    mul-float p2, p2, v5

    add-float v5, v9, p2

    invoke-direct {p0, v0, v5}, Lcom/google/a/t;-><init>(FF)V

    new-instance v0, Lcom/google/a/t;

    sub-float/2addr v8, v3

    sub-float/2addr v9, p2

    invoke-direct {v0, v8, v9}, Lcom/google/a/t;-><init>(FF)V

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/google/a/t;

    aput-object v6, p2, p1

    aput-object p0, p2, v1

    aput-object v7, p2, v2

    aput-object v0, p2, v4

    return-object p2
.end method

.method private static b(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)F
    .registers 4

    iget v0, p0, Lcom/google/a/a/b/a$a;->a:I

    iget p0, p0, Lcom/google/a/a/b/a$a;->b:I

    iget v1, p1, Lcom/google/a/a/b/a$a;->a:I

    iget p1, p1, Lcom/google/a/a/b/a$a;->b:I

    invoke-static {v0, p0, v1, p1}, Lcom/google/a/c/a/a;->a(IIII)F

    move-result p0

    return p0
.end method

.method private b()Lcom/google/a/a/b/a$a;
    .registers 13

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_5
    new-instance v5, Lcom/google/a/c/a/c;

    iget-object v6, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    invoke-direct {v5, v6}, Lcom/google/a/c/a/c;-><init>(Lcom/google/a/c/b;)V

    invoke-virtual {v5}, Lcom/google/a/c/a/c;->a()[Lcom/google/a/t;

    move-result-object v5

    aget-object v6, v5, v4

    aget-object v7, v5, v3

    aget-object v8, v5, v1

    aget-object v5, v5, v0
    :try_end_18
    .catch Lcom/google/a/m; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_63

    :catch_19
    iget-object v5, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    iget v5, v5, Lcom/google/a/c/b;->a:I

    div-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    iget v6, v6, Lcom/google/a/c/b;->b:I

    div-int/2addr v6, v1

    new-instance v7, Lcom/google/a/a/b/a$a;

    add-int/lit8 v8, v5, 0x7

    add-int/lit8 v9, v6, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v7, v4, v3, v2}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/a/a/b/a$a;->a()Lcom/google/a/t;

    move-result-object v7

    new-instance v10, Lcom/google/a/a/b/a$a;

    add-int/lit8 v6, v6, 0x7

    invoke-direct {v10, v8, v6}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v10, v4, v3, v3}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/a/a/b/a$a;->a()Lcom/google/a/t;

    move-result-object v8

    new-instance v10, Lcom/google/a/a/b/a$a;

    add-int/lit8 v5, v5, -0x7

    invoke-direct {v10, v5, v6}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v10, v4, v2, v3}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/a/a/b/a$a;->a()Lcom/google/a/t;

    move-result-object v6

    new-instance v10, Lcom/google/a/a/b/a$a;

    invoke-direct {v10, v5, v9}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v10, v4, v2, v2}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/a/b/a$a;->a()Lcom/google/a/t;

    move-result-object v5

    move-object v11, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v11

    :goto_63
    iget v9, v6, Lcom/google/a/t;->a:F

    iget v10, v5, Lcom/google/a/t;->a:F

    add-float/2addr v9, v10

    iget v10, v7, Lcom/google/a/t;->a:F

    add-float/2addr v9, v10

    iget v10, v8, Lcom/google/a/t;->a:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Lcom/google/a/c/a/a;->a(F)I

    move-result v9

    iget v6, v6, Lcom/google/a/t;->b:F

    iget v5, v5, Lcom/google/a/t;->b:F

    add-float/2addr v6, v5

    iget v5, v7, Lcom/google/a/t;->b:F

    add-float/2addr v6, v5

    iget v5, v8, Lcom/google/a/t;->b:F

    add-float/2addr v6, v5

    div-float/2addr v6, v10

    invoke-static {v6}, Lcom/google/a/c/a/a;->a(F)I

    move-result v5

    :try_start_85
    new-instance v6, Lcom/google/a/c/a/c;

    iget-object v7, p0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    const/16 v8, 0xf

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/google/a/c/a/c;-><init>(Lcom/google/a/c/b;III)V

    invoke-virtual {v6}, Lcom/google/a/c/a/c;->a()[Lcom/google/a/t;

    move-result-object v6

    aget-object v7, v6, v4

    aget-object v8, v6, v3

    aget-object v1, v6, v1

    aget-object v0, v6, v0
    :try_end_9a
    .catch Lcom/google/a/m; {:try_start_85 .. :try_end_9a} :catch_9b

    goto :goto_d7

    :catch_9b
    new-instance v0, Lcom/google/a/a/b/a$a;

    add-int/lit8 v1, v9, 0x7

    add-int/lit8 v6, v5, -0x7

    invoke-direct {v0, v1, v6}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v3, v2}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/b/a$a;->a()Lcom/google/a/t;

    move-result-object v7

    new-instance v0, Lcom/google/a/a/b/a$a;

    add-int/lit8 v5, v5, 0x7

    invoke-direct {v0, v1, v5}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v3, v3}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/b/a$a;->a()Lcom/google/a/t;

    move-result-object v8

    new-instance v0, Lcom/google/a/a/b/a$a;

    add-int/lit8 v9, v9, -0x7

    invoke-direct {v0, v9, v5}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v2, v3}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/b/a$a;->a()Lcom/google/a/t;

    move-result-object v1

    new-instance v0, Lcom/google/a/a/b/a$a;

    invoke-direct {v0, v9, v6}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v2, v2}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/b/a$a;->a()Lcom/google/a/t;

    move-result-object v0

    :goto_d7
    iget v2, v7, Lcom/google/a/t;->a:F

    iget v3, v0, Lcom/google/a/t;->a:F

    add-float/2addr v2, v3

    iget v3, v8, Lcom/google/a/t;->a:F

    add-float/2addr v2, v3

    iget v3, v1, Lcom/google/a/t;->a:F

    add-float/2addr v2, v3

    div-float/2addr v2, v10

    invoke-static {v2}, Lcom/google/a/c/a/a;->a(F)I

    move-result v2

    iget v3, v7, Lcom/google/a/t;->b:F

    iget v0, v0, Lcom/google/a/t;->b:F

    add-float/2addr v3, v0

    iget v0, v8, Lcom/google/a/t;->b:F

    add-float/2addr v3, v0

    iget v0, v1, Lcom/google/a/t;->b:F

    add-float/2addr v3, v0

    div-float/2addr v3, v10

    invoke-static {v3}, Lcom/google/a/c/a/a;->a(F)I

    move-result v0

    new-instance v1, Lcom/google/a/a/b/a$a;

    invoke-direct {v1, v2, v0}, Lcom/google/a/a/b/a$a;-><init>(II)V

    return-object v1
.end method

.method private b([Lcom/google/a/t;)[Lcom/google/a/t;
    .registers 4

    iget v0, p0, Lcom/google/a/a/b/a;->f:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/google/a/a/b/a;->c()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/a/a/b/a;->a([Lcom/google/a/t;II)[Lcom/google/a/t;

    move-result-object p1

    return-object p1
.end method

.method private c()I
    .registers 4

    iget-boolean v0, p0, Lcom/google/a/a/b/a;->c:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/a/a/b/a;->d:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    return v0

    :cond_c
    iget v0, p0, Lcom/google/a/a/b/a;->d:I

    if-gt v0, v1, :cond_17

    iget v0, p0, Lcom/google/a/a/b/a;->d:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    return v0

    :cond_17
    iget v0, p0, Lcom/google/a/a/b/a;->d:I

    mul-int/lit8 v0, v0, 0x4

    iget v2, p0, Lcom/google/a/a/b/a;->d:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0xf

    return v0
.end method


# virtual methods
.method public final a(Z)Lcom/google/a/a/a;
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/a/a/b/a;->b()Lcom/google/a/a/b/a$a;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/a/a/b/a;->f:I

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    const/4 v3, 0x1

    :goto_d
    iget v7, v0, Lcom/google/a/a/b/a;->f:I

    const/16 v8, 0x9

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-ge v7, v8, :cond_a9

    const/4 v7, -0x1

    invoke-direct {v0, v1, v3, v2, v7}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v8

    invoke-direct {v0, v4, v3, v2, v2}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v12

    invoke-direct {v0, v5, v3, v7, v2}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v13

    invoke-direct {v0, v6, v3, v7, v7}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;ZII)Lcom/google/a/a/b/a$a;

    move-result-object v7

    iget v14, v0, Lcom/google/a/a/b/a;->f:I

    if-le v14, v11, :cond_97

    invoke-static {v7, v8}, Lcom/google/a/a/b/a;->b(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)F

    move-result v14

    iget v15, v0, Lcom/google/a/a/b/a;->f:I

    int-to-float v15, v15

    mul-float v14, v14, v15

    invoke-static {v6, v1}, Lcom/google/a/a/b/a;->b(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)F

    move-result v15

    iget v9, v0, Lcom/google/a/a/b/a;->f:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    mul-float v15, v15, v9

    div-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v17, 0x3fe8000000000000L    # 0.75

    cmpg-double v9, v14, v17

    if-ltz v9, :cond_a9

    const-wide/high16 v17, 0x3ff4000000000000L    # 1.25

    cmpl-double v9, v14, v17

    if-gtz v9, :cond_a9

    new-instance v9, Lcom/google/a/a/b/a$a;

    iget v14, v8, Lcom/google/a/a/b/a$a;->a:I

    sub-int/2addr v14, v10

    iget v15, v8, Lcom/google/a/a/b/a$a;->b:I

    add-int/2addr v15, v10

    invoke-direct {v9, v14, v15}, Lcom/google/a/a/b/a$a;-><init>(II)V

    new-instance v14, Lcom/google/a/a/b/a$a;

    iget v15, v12, Lcom/google/a/a/b/a$a;->a:I

    sub-int/2addr v15, v10

    iget v11, v12, Lcom/google/a/a/b/a$a;->b:I

    sub-int/2addr v11, v10

    invoke-direct {v14, v15, v11}, Lcom/google/a/a/b/a$a;-><init>(II)V

    new-instance v11, Lcom/google/a/a/b/a$a;

    iget v15, v13, Lcom/google/a/a/b/a$a;->a:I

    add-int/2addr v15, v10

    iget v2, v13, Lcom/google/a/a/b/a$a;->b:I

    sub-int/2addr v2, v10

    invoke-direct {v11, v15, v2}, Lcom/google/a/a/b/a$a;-><init>(II)V

    new-instance v2, Lcom/google/a/a/b/a$a;

    iget v15, v7, Lcom/google/a/a/b/a$a;->a:I

    add-int/2addr v15, v10

    move-object/from16 v20, v8

    iget v8, v7, Lcom/google/a/a/b/a$a;->b:I

    add-int/2addr v8, v10

    invoke-direct {v2, v15, v8}, Lcom/google/a/a/b/a$a;-><init>(II)V

    invoke-direct {v0, v2, v9}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result v8

    if-eqz v8, :cond_93

    invoke-direct {v0, v9, v14}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result v9

    if-ne v9, v8, :cond_93

    invoke-direct {v0, v14, v11}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result v9

    if-ne v9, v8, :cond_93

    invoke-direct {v0, v11, v2}, Lcom/google/a/a/b/a;->a(Lcom/google/a/a/b/a$a;Lcom/google/a/a/b/a$a;)I

    move-result v2

    if-ne v2, v8, :cond_93

    const/4 v2, 0x1

    goto :goto_94

    :cond_93
    const/4 v2, 0x0

    :goto_94
    if-eqz v2, :cond_a9

    goto :goto_99

    :cond_97
    move-object/from16 v20, v8

    :goto_99
    xor-int/lit8 v3, v3, 0x1

    iget v1, v0, Lcom/google/a/a/b/a;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/a/a/b/a;->f:I

    move-object v6, v7

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v1, v20

    const/4 v2, 0x1

    goto/16 :goto_d

    :cond_a9
    iget v2, v0, Lcom/google/a/a/b/a;->f:I

    const/4 v3, 0x7

    const/4 v7, 0x5

    if-eq v2, v7, :cond_b8

    iget v2, v0, Lcom/google/a/a/b/a;->f:I

    if-eq v2, v3, :cond_b8

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_b8
    iget v2, v0, Lcom/google/a/a/b/a;->f:I

    if-ne v2, v7, :cond_be

    const/4 v2, 0x1

    goto :goto_bf

    :cond_be
    const/4 v2, 0x0

    :goto_bf
    iput-boolean v2, v0, Lcom/google/a/a/b/a;->c:Z

    new-instance v2, Lcom/google/a/t;

    iget v7, v1, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    iget v1, v1, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v1, v1

    sub-float/2addr v1, v8

    invoke-direct {v2, v7, v1}, Lcom/google/a/t;-><init>(FF)V

    new-instance v1, Lcom/google/a/t;

    iget v7, v4, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v7, v7

    add-float/2addr v7, v8

    iget v4, v4, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    invoke-direct {v1, v7, v4}, Lcom/google/a/t;-><init>(FF)V

    new-instance v4, Lcom/google/a/t;

    iget v7, v5, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    iget v5, v5, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v5, v5

    add-float/2addr v5, v8

    invoke-direct {v4, v7, v5}, Lcom/google/a/t;-><init>(FF)V

    new-instance v5, Lcom/google/a/t;

    iget v7, v6, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    iget v6, v6, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v6, v6

    sub-float/2addr v6, v8

    invoke-direct {v5, v7, v6}, Lcom/google/a/t;-><init>(FF)V

    const/4 v6, 0x4

    new-array v7, v6, [Lcom/google/a/t;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    aput-object v4, v7, v1

    aput-object v5, v7, v10

    iget v2, v0, Lcom/google/a/a/b/a;->f:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v10

    iget v4, v0, Lcom/google/a/a/b/a;->f:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v7, v2, v4}, Lcom/google/a/a/b/a;->a([Lcom/google/a/t;II)[Lcom/google/a/t;

    move-result-object v2

    if-eqz p1, :cond_11c

    aget-object v4, v2, v8

    aget-object v5, v2, v1

    aput-object v5, v2, v8

    aput-object v4, v2, v1

    :cond_11c
    aget-object v4, v2, v8

    invoke-direct {v0, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;)Z

    move-result v4

    if-eqz v4, :cond_273

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-direct {v0, v5}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;)Z

    move-result v4

    if-eqz v4, :cond_273

    aget-object v4, v2, v1

    invoke-direct {v0, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;)Z

    move-result v4

    if-eqz v4, :cond_273

    aget-object v4, v2, v10

    invoke-direct {v0, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;)Z

    move-result v4

    if-nez v4, :cond_13f

    goto/16 :goto_273

    :cond_13f
    iget v4, v0, Lcom/google/a/a/b/a;->f:I

    mul-int/lit8 v4, v4, 0x2

    new-array v5, v6, [I

    const/4 v8, 0x0

    aget-object v7, v2, v8

    const/4 v9, 0x1

    aget-object v11, v2, v9

    invoke-direct {v0, v7, v11, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;I)I

    move-result v7

    aput v7, v5, v8

    aget-object v7, v2, v9

    aget-object v11, v2, v1

    invoke-direct {v0, v7, v11, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;I)I

    move-result v7

    aput v7, v5, v9

    aget-object v7, v2, v1

    aget-object v9, v2, v10

    invoke-direct {v0, v7, v9, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;I)I

    move-result v7

    aput v7, v5, v1

    aget-object v7, v2, v10

    aget-object v9, v2, v8

    invoke-direct {v0, v7, v9, v4}, Lcom/google/a/a/b/a;->a(Lcom/google/a/t;Lcom/google/a/t;I)I

    move-result v7

    aput v7, v5, v10

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_171
    if-ge v7, v6, :cond_184

    aget v11, v5, v7

    add-int/lit8 v12, v4, -0x2

    shr-int v1, v11, v12

    const/4 v12, 0x1

    shl-int/2addr v1, v12

    and-int/2addr v11, v12

    add-int/2addr v1, v11

    shl-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v1

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x2

    goto :goto_171

    :cond_184
    and-int/lit8 v1, v9, 0x1

    shl-int/lit8 v1, v1, 0xb

    const/4 v4, 0x1

    shr-int/lit8 v7, v9, 0x1

    add-int/2addr v1, v7

    const/4 v4, 0x0

    :goto_18d
    if-ge v4, v6, :cond_26e

    sget-object v7, Lcom/google/a/a/b/a;->a:[I

    aget v7, v7, v4

    xor-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    move-result v7

    const/4 v9, 0x2

    if-gt v7, v9, :cond_269

    iput v4, v0, Lcom/google/a/a/b/a;->g:I

    const-wide/16 v11, 0x0

    :goto_19f
    if-ge v8, v6, :cond_1c6

    iget v1, v0, Lcom/google/a/a/b/a;->g:I

    add-int/2addr v1, v8

    rem-int/2addr v1, v6

    aget v1, v5, v1

    iget-boolean v4, v0, Lcom/google/a/a/b/a;->c:Z

    if-eqz v4, :cond_1b5

    shl-long/2addr v11, v3

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-long v13, v1

    :goto_1b1
    add-long v15, v11, v13

    move-wide v11, v15

    goto :goto_1c3

    :cond_1b5
    const/16 v4, 0xa

    shl-long/2addr v11, v4

    shr-int/lit8 v4, v1, 0x2

    and-int/lit16 v4, v4, 0x3e0

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1f

    add-int/2addr v4, v1

    int-to-long v13, v4

    goto :goto_1b1

    :goto_1c3
    add-int/lit8 v8, v8, 0x1

    goto :goto_19f

    :cond_1c6
    iget-boolean v1, v0, Lcom/google/a/a/b/a;->c:Z

    invoke-static {v11, v12, v1}, Lcom/google/a/a/b/a;->a(JZ)I

    move-result v1

    iget-boolean v3, v0, Lcom/google/a/a/b/a;->c:Z

    if-eqz v3, :cond_1dc

    shr-int/lit8 v3, v1, 0x6

    const/4 v7, 0x1

    add-int/2addr v3, v7

    iput v3, v0, Lcom/google/a/a/b/a;->d:I

    and-int/lit8 v1, v1, 0x3f

    :goto_1d8
    add-int/2addr v1, v7

    iput v1, v0, Lcom/google/a/a/b/a;->e:I

    goto :goto_1e5

    :cond_1dc
    const/4 v7, 0x1

    shr-int/lit8 v3, v1, 0xb

    add-int/2addr v3, v7

    iput v3, v0, Lcom/google/a/a/b/a;->d:I

    and-int/lit16 v1, v1, 0x7ff

    goto :goto_1d8

    :goto_1e5
    iget-object v1, v0, Lcom/google/a/a/b/a;->b:Lcom/google/a/c/b;

    iget v3, v0, Lcom/google/a/a/b/a;->g:I

    rem-int/2addr v3, v6

    aget-object v3, v2, v3

    iget v4, v0, Lcom/google/a/a/b/a;->g:I

    add-int/2addr v4, v7

    rem-int/2addr v4, v6

    aget-object v4, v2, v4

    iget v5, v0, Lcom/google/a/a/b/a;->g:I

    const/4 v7, 0x2

    add-int/2addr v5, v7

    rem-int/2addr v5, v6

    aget-object v5, v2, v5

    iget v7, v0, Lcom/google/a/a/b/a;->g:I

    add-int/2addr v7, v10

    rem-int/2addr v7, v6

    aget-object v6, v2, v7

    invoke-static {}, Lcom/google/a/c/i;->a()Lcom/google/a/c/i;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/google/a/a/b/a;->c()I

    move-result v7

    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, v0, Lcom/google/a/a/b/a;->f:I

    int-to-float v9, v9

    sub-float v29, v8, v9

    iget v9, v0, Lcom/google/a/a/b/a;->f:I

    int-to-float v9, v9

    add-float v30, v8, v9

    iget v8, v3, Lcom/google/a/t;->a:F

    iget v3, v3, Lcom/google/a/t;->b:F

    iget v9, v4, Lcom/google/a/t;->a:F

    iget v4, v4, Lcom/google/a/t;->b:F

    iget v10, v5, Lcom/google/a/t;->a:F

    iget v5, v5, Lcom/google/a/t;->b:F

    iget v11, v6, Lcom/google/a/t;->a:F

    iget v6, v6, Lcom/google/a/t;->b:F

    move-object/from16 v20, v1

    move/from16 v21, v7

    move/from16 v22, v7

    move/from16 v23, v29

    move/from16 v24, v29

    move/from16 v25, v30

    move/from16 v26, v29

    move/from16 v27, v30

    move/from16 v28, v30

    move/from16 v31, v8

    move/from16 v32, v3

    move/from16 v33, v9

    move/from16 v34, v4

    move/from16 v35, v10

    move/from16 v36, v5

    move/from16 v37, v11

    move/from16 v38, v6

    invoke-virtual/range {v19 .. v38}, Lcom/google/a/c/i;->a(Lcom/google/a/c/b;IIFFFFFFFFFFFFFFFF)Lcom/google/a/c/b;

    move-result-object v13

    iget v1, v0, Lcom/google/a/a/b/a;->f:I

    const/4 v9, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/google/a/a/b/a;->c()I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/google/a/a/b/a;->a([Lcom/google/a/t;II)[Lcom/google/a/t;

    move-result-object v14

    new-instance v1, Lcom/google/a/a/a;

    iget-boolean v15, v0, Lcom/google/a/a/b/a;->c:Z

    iget v2, v0, Lcom/google/a/a/b/a;->e:I

    iget v3, v0, Lcom/google/a/a/b/a;->d:I

    move-object v12, v1

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lcom/google/a/a/a;-><init>(Lcom/google/a/c/b;[Lcom/google/a/t;ZII)V

    return-object v1

    :cond_269
    const/4 v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_18d

    :cond_26e
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_273
    :goto_273
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1
.end method
