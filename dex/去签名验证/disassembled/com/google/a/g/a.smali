.class public final Lcom/google/a/g/a;
.super Lcom/google/a/g/r;


# static fields
.field static final a:[C

.field static final b:[I

.field private static final c:F = 2.0f

.field private static final d:F = 1.5f

.field private static final e:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field private static final f:I = 0x3

.field private static final g:[C


# instance fields
.field private final h:Ljava/lang/StringBuilder;

.field private i:[I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/g/a;->a:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/a/g/a;->b:[I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/a/g/a;->g:[C

    return-void

    :array_1a
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_46
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/a/g/r;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/a;->i:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/g/a;->j:I

    return-void
.end method

.method private a(I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_ba

    new-array v2, v0, [I

    fill-array-data v2, :array_c6

    iget-object v3, p0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    move v6, p1

    const/4 v5, 0x0

    :goto_16
    sget-object v7, Lcom/google/a/g/a;->b:[I

    iget-object v8, p0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x6

    move v9, v7

    const/4 v7, 0x6

    :goto_23
    if-ltz v7, :cond_42

    and-int/lit8 v10, v7, 0x1

    and-int/lit8 v11, v9, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v10, v11

    aget v11, v1, v10

    iget-object v12, p0, Lcom/google/a/g/a;->i:[I

    add-int v13, v6, v7

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v1, v10

    aget v11, v2, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v2, v10

    shr-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_23

    :cond_42
    if-ge v5, v3, :cond_49

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_49
    new-array v5, v0, [F

    new-array v0, v0, [F

    const/4 v6, 0x0

    :goto_4e
    const/4 v7, 0x2

    if-ge v6, v7, :cond_7f

    const/4 v7, 0x0

    aput v7, v0, v6

    add-int/lit8 v7, v6, 0x2

    aget v9, v1, v6

    int-to-float v9, v9

    aget v10, v2, v6

    int-to-float v10, v10

    div-float/2addr v9, v10

    aget v10, v1, v7

    int-to-float v10, v10

    aget v11, v2, v7

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v0, v7

    aget v9, v0, v7

    aput v9, v5, v6

    aget v9, v1, v7

    int-to-float v9, v9

    mul-float v9, v9, v10

    const/high16 v10, 0x3fc00000    # 1.5f

    add-float/2addr v9, v10

    aget v10, v2, v7

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    :cond_7f
    :goto_7f
    sget-object v1, Lcom/google/a/g/a;->b:[I

    iget-object v2, p0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    move v2, v1

    const/4 v1, 0x6

    :goto_8b
    if-ltz v1, :cond_b2

    and-int/lit8 v6, v1, 0x1

    and-int/lit8 v7, v2, 0x1

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/a/g/a;->i:[I

    add-int v9, p1, v1

    aget v7, v7, v9

    int-to-float v7, v7

    aget v9, v0, v6

    cmpg-float v9, v7, v9

    if-ltz v9, :cond_ad

    aget v6, v5, v6

    cmpl-float v6, v7, v6

    if-lez v6, :cond_a8

    goto :goto_ad

    :cond_a8
    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8b

    :cond_ad
    :goto_ad
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_b2
    if-ge v4, v3, :cond_b9

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    :cond_b9
    return-void

    :array_ba
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(Lcom/google/a/c/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/g/a;->j:I

    invoke-virtual {p1, v0}, Lcom/google/a/c/a;->d(I)I

    move-result v1

    iget v2, p1, Lcom/google/a/c/a;->b:I

    if-lt v1, v2, :cond_10

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_10
    const/4 v3, 0x1

    const/4 v0, 0x1

    const/4 v4, 0x0

    :goto_13
    if-ge v1, v2, :cond_27

    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v5

    if-eq v5, v0, :cond_1e

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_1e
    invoke-direct {p0, v4}, Lcom/google/a/g/a;->b(I)V

    xor-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_27
    invoke-direct {p0, v4}, Lcom/google/a/g/a;->b(I)V

    return-void
.end method

.method static a([CC)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    array-length v1, p0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_10

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    return v0
.end method

.method private b()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    iget v2, p0, Lcom/google/a/g/a;->j:I

    if-ge v1, v2, :cond_38

    invoke-direct {p0, v1}, Lcom/google/a/g/a;->c(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    sget-object v3, Lcom/google/a/g/a;->g:[C

    sget-object v4, Lcom/google/a/g/a;->a:[C

    aget-char v2, v4, v2

    invoke-static {v3, v2}, Lcom/google/a/g/a;->a([CC)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x0

    move v2, v1

    const/4 v3, 0x0

    :goto_1c
    add-int/lit8 v4, v1, 0x7

    if-ge v2, v4, :cond_28

    iget-object v4, p0, Lcom/google/a/g/a;->i:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_28
    if-eq v1, v0, :cond_34

    iget-object v2, p0, Lcom/google/a/g/a;->i:[I

    add-int/lit8 v4, v1, -0x1

    aget v2, v2, v4

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_35

    :cond_34
    return v1

    :cond_35
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_38
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0
.end method

.method private b(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/a/g/a;->i:[I

    iget v1, p0, Lcom/google/a/g/a;->j:I

    aput p1, v0, v1

    iget p1, p0, Lcom/google/a/g/a;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/a/g/a;->j:I

    iget p1, p0, Lcom/google/a/g/a;->j:I

    iget-object v0, p0, Lcom/google/a/g/a;->i:[I

    array-length v0, v0

    if-lt p1, v0, :cond_23

    iget p1, p0, Lcom/google/a/g/a;->j:I

    shl-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/google/a/g/a;->i:[I

    iget v1, p0, Lcom/google/a/g/a;->j:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/google/a/g/a;->i:[I

    :cond_23
    return-void
.end method

.method private c(I)I
    .registers 12

    add-int/lit8 v0, p1, 0x7

    iget v1, p0, Lcom/google/a/g/a;->j:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/a/g/a;->i:[I

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v5, p1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_13
    if-ge v5, v0, :cond_20

    aget v8, v1, v5

    if-ge v8, v6, :cond_1a

    move v6, v8

    :cond_1a
    if-le v8, v7, :cond_1d

    move v7, v8

    :cond_1d
    add-int/lit8 v5, v5, 0x2

    goto :goto_13

    :cond_20
    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, p1, 0x1

    const/4 v7, 0x0

    :goto_26
    if-ge v5, v0, :cond_33

    aget v8, v1, v5

    if-ge v8, v3, :cond_2d

    move v3, v8

    :cond_2d
    if-le v8, v7, :cond_30

    move v7, v8

    :cond_30
    add-int/lit8 v5, v5, 0x2

    goto :goto_26

    :cond_33
    add-int/2addr v3, v7

    div-int/lit8 v0, v3, 0x2

    const/16 v3, 0x80

    const/4 v3, 0x0

    const/16 v5, 0x80

    const/4 v7, 0x0

    :goto_3c
    const/4 v8, 0x7

    if-ge v3, v8, :cond_52

    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_45

    move v8, v6

    goto :goto_46

    :cond_45
    move v8, v0

    :goto_46
    shr-int/lit8 v5, v5, 0x1

    add-int v9, p1, v3

    aget v9, v1, v9

    if-le v9, v8, :cond_4f

    or-int/2addr v7, v5

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_52
    :goto_52
    sget-object p1, Lcom/google/a/g/a;->b:[I

    array-length p1, p1

    if-ge v4, p1, :cond_61

    sget-object p1, Lcom/google/a/g/a;->b:[I

    aget p1, p1, v4

    if-ne p1, v7, :cond_5e

    return v4

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_61
    return v2
.end method


# virtual methods
.method public final a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .registers 24
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
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/google/a/g/a;->i:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    iput v4, v0, Lcom/google/a/g/a;->j:I

    invoke-virtual {v1, v4}, Lcom/google/a/c/a;->d(I)I

    move-result v3

    iget v5, v1, Lcom/google/a/c/a;->b:I

    if-lt v3, v5, :cond_1b

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_1b
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1e
    if-ge v3, v5, :cond_32

    invoke-virtual {v1, v3}, Lcom/google/a/c/a;->a(I)Z

    move-result v9

    if-eq v9, v7, :cond_29

    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    :cond_29
    invoke-direct {v0, v8}, Lcom/google/a/g/a;->b(I)V

    xor-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_32
    invoke-direct {v0, v8}, Lcom/google/a/g/a;->b(I)V

    const/4 v1, 0x1

    :goto_36
    iget v3, v0, Lcom/google/a/g/a;->j:I

    if-ge v1, v3, :cond_226

    invoke-direct {v0, v1}, Lcom/google/a/g/a;->c(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_220

    sget-object v7, Lcom/google/a/g/a;->g:[C

    sget-object v8, Lcom/google/a/g/a;->a:[C

    aget-char v3, v8, v3

    invoke-static {v7, v3}, Lcom/google/a/g/a;->a([CC)Z

    move-result v3

    if-eqz v3, :cond_220

    move v3, v1

    const/4 v7, 0x0

    :goto_4f
    add-int/lit8 v8, v1, 0x7

    if-ge v3, v8, :cond_5b

    iget-object v8, v0, Lcom/google/a/g/a;->i:[I

    aget v8, v8, v3

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_5b
    if-eq v1, v6, :cond_67

    iget-object v3, v0, Lcom/google/a/g/a;->i:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    div-int/lit8 v7, v7, 0x2

    if-lt v3, v7, :cond_220

    :cond_67
    iget-object v3, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v1

    :goto_6d
    invoke-direct {v0, v3}, Lcom/google/a/g/a;->c(I)I

    move-result v7

    if-ne v7, v5, :cond_78

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_78
    iget-object v8, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    int-to-char v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x8

    iget-object v8, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v6, :cond_94

    sget-object v8, Lcom/google/a/g/a;->g:[C

    sget-object v9, Lcom/google/a/g/a;->a:[C

    aget-char v7, v9, v7

    invoke-static {v8, v7}, Lcom/google/a/g/a;->a([CC)Z

    move-result v7

    if-nez v7, :cond_98

    :cond_94
    iget v7, v0, Lcom/google/a/g/a;->j:I

    if-lt v3, v7, :cond_21c

    :cond_98
    iget-object v7, v0, Lcom/google/a/g/a;->i:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    const/4 v9, -0x8

    const/4 v10, 0x0

    :goto_a0
    if-ge v9, v5, :cond_ac

    iget-object v11, v0, Lcom/google/a/g/a;->i:[I

    add-int v12, v3, v9

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_a0

    :cond_ac
    iget v5, v0, Lcom/google/a/g/a;->j:I

    const/4 v9, 0x2

    if-ge v3, v5, :cond_b9

    div-int/2addr v10, v9

    if-ge v7, v10, :cond_b9

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_b9
    const/4 v3, 0x4

    new-array v5, v3, [I

    fill-array-data v5, :array_22c

    new-array v7, v3, [I

    fill-array-data v7, :array_238

    iget-object v10, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v6

    move v12, v1

    const/4 v11, 0x0

    :goto_cd
    sget-object v13, Lcom/google/a/g/a;->b:[I

    iget-object v14, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    aget v13, v13, v14

    move v15, v13

    const/4 v13, 0x6

    :goto_d9
    if-ltz v13, :cond_f8

    and-int/lit8 v16, v13, 0x1

    and-int/lit8 v17, v15, 0x1

    shl-int/lit8 v17, v17, 0x1

    add-int v16, v16, v17

    aget v17, v5, v16

    iget-object v14, v0, Lcom/google/a/g/a;->i:[I

    add-int v18, v12, v13

    aget v14, v14, v18

    add-int v17, v17, v14

    aput v17, v5, v16

    aget v14, v7, v16

    add-int/2addr v14, v6

    aput v14, v7, v16

    shr-int/2addr v15, v6

    add-int/lit8 v13, v13, -0x1

    goto :goto_d9

    :cond_f8
    if-ge v11, v10, :cond_ff

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v11, v11, 0x1

    goto :goto_cd

    :cond_ff
    new-array v11, v3, [F

    new-array v3, v3, [F

    const/4 v12, 0x0

    :goto_104
    if-ge v12, v9, :cond_135

    const/4 v13, 0x0

    aput v13, v3, v12

    add-int/lit8 v13, v12, 0x2

    aget v14, v5, v12

    int-to-float v14, v14

    aget v15, v7, v12

    int-to-float v15, v15

    div-float/2addr v14, v15

    aget v15, v5, v13

    int-to-float v15, v15

    aget v9, v7, v13

    int-to-float v9, v9

    div-float/2addr v15, v9

    add-float/2addr v14, v15

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v14, v9

    aput v14, v3, v13

    aget v14, v3, v13

    aput v14, v11, v12

    aget v14, v5, v13

    int-to-float v14, v14

    mul-float v14, v14, v9

    const/high16 v9, 0x3fc00000    # 1.5f

    add-float/2addr v14, v9

    aget v9, v7, v13

    int-to-float v9, v9

    div-float/2addr v14, v9

    aput v14, v11, v13

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x2

    goto :goto_104

    :cond_135
    move v7, v1

    const/4 v5, 0x0

    :goto_137
    sget-object v9, Lcom/google/a/g/a;->b:[I

    iget-object v12, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v9, v9, v12

    move v12, v9

    const/4 v9, 0x6

    :goto_143
    if-ltz v9, :cond_169

    and-int/lit8 v13, v9, 0x1

    and-int/lit8 v14, v12, 0x1

    shl-int/2addr v14, v6

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/google/a/g/a;->i:[I

    add-int v15, v7, v9

    aget v14, v14, v15

    int-to-float v14, v14

    aget v15, v3, v13

    cmpg-float v15, v14, v15

    if-ltz v15, :cond_164

    aget v13, v11, v13

    cmpl-float v13, v14, v13

    if-lez v13, :cond_15f

    goto :goto_164

    :cond_15f
    shr-int/lit8 v12, v12, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_143

    :cond_164
    :goto_164
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_169
    if-ge v5, v10, :cond_170

    add-int/lit8 v7, v7, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_137

    :cond_170
    const/4 v3, 0x0

    :goto_171
    iget-object v5, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v3, v5, :cond_18b

    iget-object v5, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    sget-object v7, Lcom/google/a/g/a;->a:[C

    iget-object v9, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    aget-char v7, v7, v9

    invoke-virtual {v5, v3, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_171

    :cond_18b
    iget-object v3, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sget-object v5, Lcom/google/a/g/a;->g:[C

    invoke-static {v5, v3}, Lcom/google/a/g/a;->a([CC)Z

    move-result v3

    if-nez v3, :cond_19e

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_19e
    iget-object v3, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sget-object v5, Lcom/google/a/g/a;->g:[C

    invoke-static {v5, v3}, Lcom/google/a/g/a;->a([CC)Z

    move-result v3

    if-nez v3, :cond_1b8

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_1b8
    iget-object v3, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x3

    if-gt v3, v5, :cond_1c6

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_1c6
    if-eqz v2, :cond_1d0

    sget-object v3, Lcom/google/a/e;->RETURN_CODABAR_START_END:Lcom/google/a/e;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e1

    :cond_1d0
    iget-object v2, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1e1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e3
    if-ge v2, v1, :cond_1ed

    iget-object v5, v0, Lcom/google/a/g/a;->i:[I

    aget v5, v5, v2

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e3

    :cond_1ed
    int-to-float v2, v3

    :goto_1ee
    if-ge v1, v8, :cond_1f8

    iget-object v5, v0, Lcom/google/a/g/a;->i:[I

    aget v5, v5, v1

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ee

    :cond_1f8
    int-to-float v1, v3

    new-instance v3, Lcom/google/a/r;

    iget-object v5, v0, Lcom/google/a/g/a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/a/t;

    new-instance v9, Lcom/google/a/t;

    move/from16 v10, p1

    int-to-float v10, v10

    invoke-direct {v9, v2, v10}, Lcom/google/a/t;-><init>(FF)V

    aput-object v9, v8, v4

    new-instance v2, Lcom/google/a/t;

    invoke-direct {v2, v1, v10}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v8, v6

    sget-object v1, Lcom/google/a/a;->CODABAR:Lcom/google/a/a;

    invoke-direct {v3, v5, v7, v8, v1}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    return-object v3

    :cond_21c
    move/from16 v10, p1

    goto/16 :goto_6d

    :cond_220
    move/from16 v10, p1

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_36

    :cond_226
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    nop

    :array_22c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_238
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
