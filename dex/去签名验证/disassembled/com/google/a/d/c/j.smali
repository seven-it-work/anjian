.class public final Lcom/google/a/d/c/j;
.super Ljava/lang/Object;


# static fields
.field static final a:C = '\u00e6'

.field static final b:C = '\u00e7'

.field static final c:C = '\u00eb'

.field static final d:C = '\u00ee'

.field static final e:C = '\u00ef'

.field static final f:C = '\u00f0'

.field static final g:C = '\u00fe'

.field static final h:C = '\u00fe'

.field static final i:I = 0x0

.field static final j:I = 0x1

.field static final k:I = 0x2

.field static final l:I = 0x3

.field static final m:I = 0x4

.field static final n:I = 0x5

.field private static final o:C = '\u0081'

.field private static final p:C = '\u00ec'

.field private static final q:C = '\u00ed'

.field private static final r:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final s:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final t:Ljava/lang/String; = "\u001e\u0004"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)C
    .registers 2

    mul-int/lit16 p0, p0, 0x95

    rem-int/lit16 p0, p0, 0xfd

    add-int/lit8 p0, p0, 0x1

    add-int/lit16 p0, p0, 0x81

    const/16 v0, 0xfe

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    add-int/lit16 p0, p0, -0xfe

    :goto_f
    int-to-char p0, p0

    return p0
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .registers 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1a

    :goto_7
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :cond_b
    invoke-static {v2}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-ge p1, v0, :cond_1a

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_b

    goto :goto_7

    :cond_1a
    return v1
.end method

.method static a(Ljava/lang/CharSequence;II)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v1, v3, :cond_b

    return p2

    :cond_b
    const/4 v3, 0x6

    if-nez p2, :cond_14

    new-array v2, v3, [F

    fill-array-data v2, :array_1fa

    goto :goto_1d

    :cond_14
    new-array v4, v3, [F

    fill-array-data v4, :array_20a

    const/4 v5, 0x0

    aput v5, v4, p2

    move-object v2, v4

    :goto_1d
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1f
    add-int v6, v1, v5

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const v8, 0x7fffffff

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ne v6, v7, :cond_5d

    new-array v0, v3, [B

    new-array v1, v3, [I

    invoke-static {v2, v1, v8, v0}, Lcom/google/a/d/c/j;->a([F[II[B)I

    move-result v2

    invoke-static {v0}, Lcom/google/a/d/c/j;->a([B)I

    move-result v3

    aget v1, v1, v4

    if-ne v1, v2, :cond_40

    return v4

    :cond_40
    if-ne v3, v13, :cond_47

    aget-byte v1, v0, v9

    if-lez v1, :cond_47

    return v9

    :cond_47
    if-ne v3, v13, :cond_4e

    aget-byte v1, v0, v11

    if-lez v1, :cond_4e

    return v11

    :cond_4e
    if-ne v3, v13, :cond_55

    aget-byte v1, v0, v10

    if-lez v1, :cond_55

    return v10

    :cond_55
    if-ne v3, v13, :cond_5c

    aget-byte v0, v0, v12

    if-lez v0, :cond_5c

    return v12

    :cond_5c
    return v13

    :cond_5d
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v7, :cond_73

    aget v7, v2, v4

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v7, v15

    aput v7, v2, v4

    goto :goto_9a

    :cond_73
    invoke-static {v6}, Lcom/google/a/d/c/j;->b(C)Z

    move-result v7

    if-eqz v7, :cond_8b

    aget v7, v2, v4

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v2, v4

    aget v7, v2, v4

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v7, v8

    aput v7, v2, v4

    goto :goto_9a

    :cond_8b
    aget v7, v2, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v2, v4

    aget v7, v2, v4

    add-float/2addr v7, v14

    aput v7, v2, v4

    :goto_9a
    const/16 v7, 0x39

    const/16 v8, 0x30

    const/16 v9, 0x20

    if-eq v6, v9, :cond_b1

    if-lt v6, v8, :cond_a6

    if-le v6, v7, :cond_b1

    :cond_a6
    const/16 v15, 0x41

    if-lt v6, v15, :cond_af

    const/16 v15, 0x5a

    if-gt v6, v15, :cond_af

    goto :goto_b1

    :cond_af
    const/4 v15, 0x0

    goto :goto_b2

    :cond_b1
    :goto_b1
    const/4 v15, 0x1

    :goto_b2
    const v16, 0x3faaaaab

    const v17, 0x402aaaab

    const v18, 0x3f2aaaab

    if-eqz v15, :cond_c4

    aget v15, v2, v13

    add-float v15, v15, v18

    aput v15, v2, v13

    goto :goto_d7

    :cond_c4
    invoke-static {v6}, Lcom/google/a/d/c/j;->b(C)Z

    move-result v15

    if-eqz v15, :cond_d1

    aget v15, v2, v13

    add-float v15, v15, v17

    aput v15, v2, v13

    goto :goto_d7

    :cond_d1
    aget v15, v2, v13

    add-float v15, v15, v16

    aput v15, v2, v13

    :goto_d7
    if-eq v6, v9, :cond_e8

    if-lt v6, v8, :cond_dd

    if-le v6, v7, :cond_e8

    :cond_dd
    const/16 v7, 0x61

    if-lt v6, v7, :cond_e6

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_e6

    goto :goto_e8

    :cond_e6
    const/4 v7, 0x0

    goto :goto_e9

    :cond_e8
    :goto_e8
    const/4 v7, 0x1

    :goto_e9
    if-eqz v7, :cond_f2

    aget v7, v2, v10

    add-float v7, v7, v18

    aput v7, v2, v10

    goto :goto_105

    :cond_f2
    invoke-static {v6}, Lcom/google/a/d/c/j;->b(C)Z

    move-result v7

    if-eqz v7, :cond_ff

    aget v7, v2, v10

    add-float v7, v7, v17

    aput v7, v2, v10

    goto :goto_105

    :cond_ff
    aget v7, v2, v10

    add-float v7, v7, v16

    aput v7, v2, v10

    :goto_105
    invoke-static {v6}, Lcom/google/a/d/c/j;->f(C)Z

    move-result v7

    if-eqz v7, :cond_112

    aget v7, v2, v12

    add-float v7, v7, v18

    aput v7, v2, v12

    goto :goto_129

    :cond_112
    invoke-static {v6}, Lcom/google/a/d/c/j;->b(C)Z

    move-result v7

    if-eqz v7, :cond_121

    aget v7, v2, v12

    const v8, 0x408aaaab

    add-float/2addr v7, v8

    aput v7, v2, v12

    goto :goto_129

    :cond_121
    aget v7, v2, v12

    const v8, 0x40555555

    add-float/2addr v7, v8

    aput v7, v2, v12

    :goto_129
    if-lt v6, v9, :cond_131

    const/16 v7, 0x5e

    if-gt v6, v7, :cond_131

    const/4 v7, 0x1

    goto :goto_132

    :cond_131
    const/4 v7, 0x0

    :goto_132
    if-eqz v7, :cond_13d

    aget v6, v2, v11

    const/high16 v7, 0x3f400000    # 0.75f

    add-float/2addr v6, v7

    aput v6, v2, v11

    :goto_13b
    const/4 v6, 0x5

    goto :goto_153

    :cond_13d
    invoke-static {v6}, Lcom/google/a/d/c/j;->b(C)Z

    move-result v6

    if-eqz v6, :cond_14b

    aget v6, v2, v11

    const/high16 v7, 0x40880000    # 4.25f

    add-float/2addr v6, v7

    aput v6, v2, v11

    goto :goto_13b

    :cond_14b
    aget v6, v2, v11

    const/high16 v7, 0x40500000    # 3.25f

    add-float/2addr v6, v7

    aput v6, v2, v11

    goto :goto_13b

    :goto_153
    aget v7, v2, v6

    add-float/2addr v7, v14

    aput v7, v2, v6

    if-lt v5, v11, :cond_1f

    new-array v7, v3, [I

    new-array v8, v3, [B

    const v9, 0x7fffffff

    invoke-static {v2, v7, v9, v8}, Lcom/google/a/d/c/j;->a([F[II[B)I

    invoke-static {v8}, Lcom/google/a/d/c/j;->a([B)I

    move-result v9

    aget v14, v7, v4

    aget v15, v7, v6

    if-ge v14, v15, :cond_187

    aget v6, v7, v4

    aget v14, v7, v13

    if-ge v6, v14, :cond_187

    aget v6, v7, v4

    aget v14, v7, v10

    if-ge v6, v14, :cond_187

    aget v6, v7, v4

    aget v14, v7, v12

    if-ge v6, v14, :cond_187

    aget v6, v7, v4

    aget v14, v7, v11

    if-ge v6, v14, :cond_187

    return v4

    :cond_187
    const/4 v6, 0x5

    aget v14, v7, v6

    aget v6, v7, v4

    if-lt v14, v6, :cond_1f8

    aget-byte v6, v8, v13

    aget-byte v14, v8, v10

    add-int/2addr v6, v14

    aget-byte v14, v8, v12

    add-int/2addr v6, v14

    aget-byte v14, v8, v11

    add-int/2addr v6, v14

    if-nez v6, :cond_19c

    goto :goto_1f8

    :cond_19c
    if-ne v9, v13, :cond_1a3

    aget-byte v6, v8, v11

    if-lez v6, :cond_1a3

    return v11

    :cond_1a3
    if-ne v9, v13, :cond_1aa

    aget-byte v6, v8, v10

    if-lez v6, :cond_1aa

    return v10

    :cond_1aa
    if-ne v9, v13, :cond_1b1

    aget-byte v6, v8, v12

    if-lez v6, :cond_1b1

    return v12

    :cond_1b1
    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v4

    if-ge v6, v8, :cond_1f

    aget v6, v7, v13

    add-int/2addr v6, v13

    const/4 v8, 0x5

    aget v8, v7, v8

    if-ge v6, v8, :cond_1f

    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v11

    if-ge v6, v8, :cond_1f

    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v10

    if-ge v6, v8, :cond_1f

    aget v6, v7, v13

    aget v8, v7, v12

    if-ge v6, v8, :cond_1d5

    return v13

    :cond_1d5
    aget v6, v7, v13

    aget v7, v7, v12

    if-ne v6, v7, :cond_1f

    add-int/2addr v1, v5

    add-int/2addr v1, v13

    :goto_1dd
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f7

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/a/d/c/j;->g(C)Z

    move-result v3

    if-eqz v3, :cond_1ee

    return v12

    :cond_1ee
    invoke-static {v2}, Lcom/google/a/d/c/j;->f(C)Z

    move-result v2

    if-eqz v2, :cond_1f7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1dd

    :cond_1f7
    return v13

    :cond_1f8
    :goto_1f8
    const/4 v0, 0x5

    return v0

    :array_1fa
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_20a
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static a([B)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_b

    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v1
.end method

.method private static a([F[II[B)I
    .registers 8

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, p2

    const/4 p2, 0x0

    :goto_6
    const/4 v2, 0x6

    if-ge p2, v2, :cond_27

    aget v2, p0, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, p2

    aget v2, p1, p2

    if-le v1, v2, :cond_1b

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, v2

    :cond_1b
    if-ne v1, v2, :cond_24

    aget-byte v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, p2

    :cond_24
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_27
    return v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/a/d/c/l;->FORCE_NONE:Lcom/google/a/d/c/l;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/google/a/d/c/j;->a(Ljava/lang/String;Lcom/google/a/d/c/l;Lcom/google/a/f;Lcom/google/a/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/google/a/d/c/l;Lcom/google/a/f;Lcom/google/a/f;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/a/d/c/g;

    new-instance v1, Lcom/google/a/d/c/a;

    invoke-direct {v1}, Lcom/google/a/d/c/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/a/d/c/c;

    invoke-direct {v1}, Lcom/google/a/d/c/c;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/a/d/c/m;

    invoke-direct {v1}, Lcom/google/a/d/c/m;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/a/d/c/n;

    invoke-direct {v1}, Lcom/google/a/d/c/n;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/a/d/c/f;

    invoke-direct {v1}, Lcom/google/a/d/c/f;-><init>()V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/a/d/c/b;

    invoke-direct {v1}, Lcom/google/a/d/c/b;-><init>()V

    const/4 v6, 0x5

    aput-object v1, v0, v6

    new-instance v1, Lcom/google/a/d/c/h;

    invoke-direct {v1, p0}, Lcom/google/a/d/c/h;-><init>(Ljava/lang/String;)V

    iput-object p1, v1, Lcom/google/a/d/c/h;->b:Lcom/google/a/d/c/l;

    iput-object p2, v1, Lcom/google/a/d/c/h;->c:Lcom/google/a/f;

    iput-object p3, v1, Lcom/google/a/d/c/h;->d:Lcom/google/a/f;

    const-string p1, "[)>\u001e05\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const-string p1, "\u001e\u0004"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const/16 p0, 0xec

    :goto_50
    invoke-virtual {v1, p0}, Lcom/google/a/d/c/h;->a(C)V

    iput v4, v1, Lcom/google/a/d/c/h;->i:I

    iget p0, v1, Lcom/google/a/d/c/h;->f:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lcom/google/a/d/c/h;->f:I

    goto :goto_6f

    :cond_5c
    const-string p1, "[)>\u001e06\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const-string p1, "\u001e\u0004"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6f

    const/16 p0, 0xed

    goto :goto_50

    :cond_6f
    :goto_6f
    invoke-virtual {v1}, Lcom/google/a/d/c/h;->b()Z

    move-result p0

    if-eqz p0, :cond_84

    aget-object p0, v0, v2

    invoke-interface {p0, v1}, Lcom/google/a/d/c/g;->a(Lcom/google/a/d/c/h;)V

    iget p0, v1, Lcom/google/a/d/c/h;->g:I

    if-ltz p0, :cond_6f

    iget v2, v1, Lcom/google/a/d/c/h;->g:I

    const/4 p0, -0x1

    iput p0, v1, Lcom/google/a/d/c/h;->g:I

    goto :goto_6f

    :cond_84
    iget-object p0, v1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v1}, Lcom/google/a/d/c/h;->d()V

    iget-object p1, v1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget p1, p1, Lcom/google/a/d/c/k;->b:I

    const/16 p2, 0xfe

    if-ge p0, p1, :cond_9e

    if-eqz v2, :cond_9e

    if-eq v2, v6, :cond_9e

    if-eq v2, v5, :cond_9e

    invoke-virtual {v1, p2}, Lcom/google/a/d/c/h;->a(C)V

    :cond_9e
    iget-object p0, v1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/16 v0, 0x81

    if-ge p3, p1, :cond_ab

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ab
    :goto_ab
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-ge p3, p1, :cond_c6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/2addr p3, v3

    mul-int/lit16 p3, p3, 0x95

    rem-int/lit16 p3, p3, 0xfd

    add-int/2addr p3, v3

    add-int/2addr p3, v0

    if-gt p3, p2, :cond_bf

    goto :goto_c1

    :cond_bf
    add-int/lit16 p3, p3, -0xfe

    :goto_c1
    int-to-char p3, p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ab

    :cond_c6
    iget-object p0, v1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method static a(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method static b(C)Z
    .registers 2

    const/16 v0, 0x80

    if-lt p0, v0, :cond_a

    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method static c(C)V
    .registers 6

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static d(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private static e(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private static f(C)Z
    .registers 2

    invoke-static {p0}, Lcom/google/a/d/c/j;->g(C)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x30

    if-lt p0, v0, :cond_12

    const/16 v0, 0x39

    if-le p0, v0, :cond_1d

    :cond_12
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method private static g(C)Z
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_f

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_f

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static h(C)Z
    .registers 2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
