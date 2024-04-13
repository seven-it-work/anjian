.class public final Lcom/google/a/h/a/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x2

.field private static final b:I = 0x3

.field private static final c:I = 0x200

.field private static final d:Lcom/google/a/h/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/a/h/a/a/a;

    invoke-direct {v0}, Lcom/google/a/h/a/a/a;-><init>()V

    sput-object v0, Lcom/google/a/h/a/j;->d:Lcom/google/a/h/a/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .registers 2

    const/4 v0, 0x2

    shl-int p0, v0, p0

    return p0
.end method

.method private static a(Lcom/google/a/h/a/f;IIZ)I
    .registers 10

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    const/4 v1, 0x0

    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/f;I)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v1, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/google/a/h/a/g;->c(I)Lcom/google/a/h/a/d;

    move-result-object v1

    :cond_16
    if-eqz v1, :cond_20

    if-eqz p3, :cond_1d

    iget p0, v1, Lcom/google/a/h/a/d;->b:I

    return p0

    :cond_1d
    iget p0, v1, Lcom/google/a/h/a/d;->a:I

    return p0

    :cond_20
    iget-object v1, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/google/a/h/a/g;->a(I)Lcom/google/a/h/a/d;

    move-result-object v1

    if-eqz v1, :cond_32

    if-eqz p3, :cond_2f

    iget p0, v1, Lcom/google/a/h/a/d;->a:I

    return p0

    :cond_2f
    iget p0, v1, Lcom/google/a/h/a/d;->b:I

    return p0

    :cond_32
    invoke-static {p0, v2}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/f;I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v1, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/google/a/h/a/g;->a(I)Lcom/google/a/h/a/d;

    move-result-object v1

    :cond_40
    if-eqz v1, :cond_4a

    if-eqz p3, :cond_47

    iget p0, v1, Lcom/google/a/h/a/d;->b:I

    return p0

    :cond_47
    iget p0, v1, Lcom/google/a/h/a/d;->a:I

    return p0

    :cond_4a
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_4c
    sub-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/f;I)Z

    move-result v2

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_5b
    if-ge v4, v3, :cond_76

    aget-object v5, v2, v4

    if-eqz v5, :cond_73

    if-eqz p3, :cond_66

    iget p0, v5, Lcom/google/a/h/a/d;->b:I

    goto :goto_68

    :cond_66
    iget p0, v5, Lcom/google/a/h/a/d;->a:I

    :goto_68
    mul-int v0, v0, v1

    iget p1, v5, Lcom/google/a/h/a/d;->b:I

    iget p2, v5, Lcom/google/a/h/a/d;->a:I

    sub-int/2addr p1, p2

    mul-int v0, v0, p1

    add-int/2addr p0, v0

    return p0

    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_79
    if-eqz p3, :cond_80

    iget-object p0, p0, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    iget p0, p0, Lcom/google/a/h/a/c;->f:I

    return p0

    :cond_80
    iget-object p0, p0, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    iget p0, p0, Lcom/google/a/h/a/c;->g:I

    return p0
.end method

.method private static a([I)I
    .registers 5

    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private static a([I[II)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_f

    array-length v3, v1

    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x3

    if-gt v3, v4, :cond_19d

    :cond_f
    if-ltz v2, :cond_19d

    const/16 v3, 0x200

    if-le v2, v3, :cond_17

    goto/16 :goto_19d

    :cond_17
    sget-object v3, Lcom/google/a/h/a/j;->d:Lcom/google/a/h/a/a/a;

    new-instance v4, Lcom/google/a/h/a/a/c;

    iget-object v5, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v4, v5, v0}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    new-array v5, v2, [I

    const/4 v6, 0x0

    move v7, v2

    const/4 v8, 0x0

    :goto_25
    const/4 v9, 0x1

    if-lez v7, :cond_3c

    iget-object v10, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v10, v10, Lcom/google/a/h/a/a/b;->b:[I

    aget v10, v10, v7

    invoke-virtual {v4, v10}, Lcom/google/a/h/a/a/c;->b(I)I

    move-result v10

    sub-int v11, v2, v7

    aput v10, v5, v11

    if-eqz v10, :cond_39

    const/4 v8, 0x1

    :cond_39
    add-int/lit8 v7, v7, -0x1

    goto :goto_25

    :cond_3c
    if-nez v8, :cond_3f

    return v6

    :cond_3f
    iget-object v4, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v4, v4, Lcom/google/a/h/a/a/b;->e:Lcom/google/a/h/a/a/c;

    const/4 v7, 0x2

    if-eqz v1, :cond_70

    array-length v8, v1

    move-object v10, v4

    const/4 v4, 0x0

    :goto_49
    if-ge v4, v8, :cond_70

    aget v11, v1, v4

    iget-object v12, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    array-length v13, v0

    sub-int/2addr v13, v9

    sub-int/2addr v13, v11

    iget-object v11, v12, Lcom/google/a/h/a/a/b;->b:[I

    aget v11, v11, v13

    new-instance v12, Lcom/google/a/h/a/a/c;

    iget-object v13, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    new-array v14, v7, [I

    iget-object v15, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v15, v6, v11}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v11

    aput v11, v14, v6

    aput v9, v14, v9

    invoke-direct {v12, v13, v14}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    invoke-virtual {v10, v12}, Lcom/google/a/h/a/a/c;->c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_70
    new-instance v1, Lcom/google/a/h/a/a/c;

    iget-object v4, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v1, v4, v5}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    iget-object v4, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v4, v2, v9}, Lcom/google/a/h/a/a/b;->a(II)Lcom/google/a/h/a/a/c;

    move-result-object v4

    iget-object v5, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v5, v5

    sub-int/2addr v5, v9

    iget-object v8, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v8, v8

    sub-int/2addr v8, v9

    if-ge v5, v8, :cond_88

    goto :goto_8d

    :cond_88
    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    :goto_8d
    iget-object v5, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v5, v5, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v8, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v8, v8, Lcom/google/a/h/a/a/b;->e:Lcom/google/a/h/a/a/c;

    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    :goto_9a
    iget-object v10, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v10, v10

    sub-int/2addr v10, v9

    div-int/lit8 v11, v2, 0x2

    if-lt v10, v11, :cond_142

    invoke-virtual {v1}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v10

    if-eqz v10, :cond_ad

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0

    :cond_ad
    iget-object v10, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v10, v10, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v11, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v11, v11

    sub-int/2addr v11, v9

    invoke-virtual {v1, v11}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v11

    iget-object v12, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v12, v11}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v11

    :goto_bf
    iget-object v12, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v9

    iget-object v13, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v9

    if-lt v12, v13, :cond_128

    invoke-virtual {v4}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v12

    if-nez v12, :cond_128

    iget-object v12, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v9

    iget-object v13, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v9

    sub-int/2addr v12, v13

    iget-object v13, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v14, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v14, v14

    sub-int/2addr v14, v9

    invoke-virtual {v4, v14}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v14

    invoke-virtual {v13, v14, v11}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v13

    iget-object v14, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v14, v12, v13}, Lcom/google/a/h/a/a/b;->a(II)Lcom/google/a/h/a/a/c;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/google/a/h/a/a/c;->a(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v10

    if-gez v12, :cond_f8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f8
    if-nez v13, :cond_ff

    iget-object v12, v1, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v12, v12, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    goto :goto_121

    :cond_ff
    iget-object v14, v1, Lcom/google/a/h/a/a/c;->b:[I

    array-length v14, v14

    add-int/2addr v12, v14

    new-array v12, v12, [I

    const/4 v15, 0x0

    :goto_106
    if-ge v15, v14, :cond_119

    iget-object v9, v1, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v7, v1, Lcom/google/a/h/a/a/c;->b:[I

    aget v7, v7, v15

    invoke-virtual {v9, v7, v13}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v7

    aput v7, v12, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x1

    goto :goto_106

    :cond_119
    new-instance v7, Lcom/google/a/h/a/a/c;

    iget-object v9, v1, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v7, v9, v12}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    move-object v12, v7

    :goto_121
    invoke-virtual {v4, v12}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v9, 0x1

    goto :goto_bf

    :cond_128
    invoke-virtual {v10, v8}, Lcom/google/a/h/a/a/c;->c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/h/a/a/c;->b()Lcom/google/a/h/a/a/c;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v9, 0x1

    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v8

    move-object v8, v5

    move-object/from16 v5, v17

    goto/16 :goto_9a

    :cond_142
    invoke-virtual {v8, v6}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v2

    if-nez v2, :cond_14d

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0

    :cond_14d
    iget-object v4, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v4, v2}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/a/h/a/a/c;

    aput-object v4, v2, v6

    const/4 v4, 0x1

    aput-object v1, v2, v4

    aget-object v1, v2, v6

    aget-object v2, v2, v4

    invoke-virtual {v3, v1}, Lcom/google/a/h/a/a/a;->a(Lcom/google/a/h/a/a/c;)[I

    move-result-object v5

    invoke-virtual {v3, v2, v1, v5}, Lcom/google/a/h/a/a/a;->a(Lcom/google/a/h/a/a/c;Lcom/google/a/h/a/a/c;[I)[I

    move-result-object v1

    :goto_16f
    array-length v2, v5

    if-ge v6, v2, :cond_19b

    array-length v2, v0

    sub-int/2addr v2, v4

    iget-object v7, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    aget v8, v5, v6

    if-nez v8, :cond_180

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_180
    iget-object v7, v7, Lcom/google/a/h/a/a/b;->c:[I

    aget v7, v7, v8

    sub-int/2addr v2, v7

    if-gez v2, :cond_18c

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0

    :cond_18c
    iget-object v7, v3, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    aget v8, v0, v2

    aget v9, v1, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v7

    aput v7, v0, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_16f

    :cond_19b
    array-length v0, v5

    return v0

    :cond_19d
    :goto_19d
    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0
.end method

.method private static a(I[I[I[I[[I)Lcom/google/a/c/e;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    array-length v3, v2

    new-array v3, v3, [I

    const/16 v4, 0x64

    :goto_b
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_25e

    const/4 v6, 0x0

    :goto_10
    array-length v7, v3

    if-ge v6, v7, :cond_20

    aget v7, v2, v6

    aget-object v8, p4, v6

    aget v9, v3, v6

    aget v8, v8, v9

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_20
    const/4 v6, 0x1

    :try_start_21
    array-length v7, v0

    if-nez v7, :cond_29

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v7

    throw v7

    :cond_29
    add-int/lit8 v8, p0, 0x1

    shl-int v8, v6, v8

    if-eqz v1, :cond_36

    array-length v9, v1

    div-int/lit8 v10, v8, 0x2

    add-int/lit8 v10, v10, 0x3

    if-gt v9, v10, :cond_225

    :cond_36
    if-ltz v8, :cond_225

    const/16 v9, 0x200

    if-le v8, v9, :cond_3e

    goto/16 :goto_225

    :cond_3e
    sget-object v9, Lcom/google/a/h/a/j;->d:Lcom/google/a/h/a/a/a;

    new-instance v10, Lcom/google/a/h/a/a/c;

    iget-object v11, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v10, v11, v0}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    new-array v11, v8, [I

    move v12, v8

    const/4 v13, 0x0

    :goto_4b
    if-lez v12, :cond_61

    iget-object v14, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v14, v14, Lcom/google/a/h/a/a/b;->b:[I

    aget v14, v14, v12

    invoke-virtual {v10, v14}, Lcom/google/a/h/a/a/c;->b(I)I

    move-result v14

    sub-int v15, v8, v12

    aput v14, v11, v15

    if-eqz v14, :cond_5e

    const/4 v13, 0x1

    :cond_5e
    add-int/lit8 v12, v12, -0x1

    goto :goto_4b

    :cond_61
    if-nez v13, :cond_68

    move/from16 v16, v5

    const/4 v4, 0x0

    goto/16 :goto_1eb

    :cond_68
    iget-object v10, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v10, v10, Lcom/google/a/h/a/a/b;->e:Lcom/google/a/h/a/a/c;

    if-eqz v1, :cond_a6

    array-length v13, v1

    move-object v14, v10

    const/4 v10, 0x0

    :goto_71
    if-ge v10, v13, :cond_a6

    aget v15, v1, v10

    iget-object v4, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    array-length v12, v0

    sub-int/2addr v12, v6

    sub-int/2addr v12, v15

    iget-object v4, v4, Lcom/google/a/h/a/a/b;->b:[I

    aget v4, v4, v12

    new-instance v12, Lcom/google/a/h/a/a/c;

    iget-object v6, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;
    :try_end_82
    .catch Lcom/google/a/d; {:try_start_21 .. :try_end_82} :catch_22c

    move/from16 v16, v5

    const/4 v2, 0x2

    :try_start_85
    new-array v5, v2, [I

    iget-object v2, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    move/from16 v17, v13

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v4}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v2

    aput v2, v5, v13

    const/4 v2, 0x1

    aput v2, v5, v2

    invoke-direct {v12, v6, v5}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    invoke-virtual {v14, v12}, Lcom/google/a/h/a/a/c;->c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    move/from16 v13, v17

    move-object/from16 v2, p3

    const/4 v6, 0x1

    goto :goto_71

    :cond_a6
    move/from16 v16, v5

    new-instance v2, Lcom/google/a/h/a/a/c;

    iget-object v4, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v2, v4, v11}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    iget-object v4, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    const/4 v5, 0x1

    invoke-virtual {v4, v8, v5}, Lcom/google/a/h/a/a/b;->a(II)Lcom/google/a/h/a/a/c;

    move-result-object v4

    iget-object v6, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v6, v6

    sub-int/2addr v6, v5

    iget-object v10, v2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v10, v10

    sub-int/2addr v10, v5

    if-ge v6, v10, :cond_c1

    goto :goto_c6

    :cond_c1
    move-object/from16 v21, v4

    move-object v4, v2

    move-object/from16 v2, v21

    :goto_c6
    iget-object v5, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v5, v5, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v6, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v6, v6, Lcom/google/a/h/a/a/b;->e:Lcom/google/a/h/a/a/c;

    move-object/from16 v21, v4

    move-object v4, v2

    move-object/from16 v2, v21

    :goto_d3
    iget-object v10, v2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    div-int/lit8 v11, v8, 0x2

    if-lt v10, v11, :cond_18d

    invoke-virtual {v2}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v10

    if-eqz v10, :cond_e7

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v2

    throw v2

    :cond_e7
    iget-object v10, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v10, v10, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v11, v2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v11, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v2, v11}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v11

    iget-object v12, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v12, v11}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v11

    :goto_fa
    iget-object v12, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v12, v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    iget-object v14, v2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v14, v14

    sub-int/2addr v14, v13

    if-lt v12, v14, :cond_175

    invoke-virtual {v4}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v12

    if-nez v12, :cond_175

    iget-object v12, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v13

    iget-object v14, v2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v14, v14

    sub-int/2addr v14, v13

    sub-int/2addr v12, v14

    iget-object v14, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v13, v4, Lcom/google/a/h/a/a/c;->b:[I

    array-length v13, v13

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    invoke-virtual {v4, v13}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v13

    invoke-virtual {v14, v13, v11}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v13

    iget-object v14, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v14, v12, v13}, Lcom/google/a/h/a/a/b;->a(II)Lcom/google/a/h/a/a/c;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/google/a/h/a/a/c;->a(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v10

    if-gez v12, :cond_135

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_135
    if-nez v13, :cond_141

    iget-object v12, v2, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v12, v12, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object v10, v12

    goto :goto_16c

    :cond_141
    iget-object v14, v2, Lcom/google/a/h/a/a/c;->b:[I

    array-length v14, v14

    add-int/2addr v12, v14

    new-array v12, v12, [I

    move-object/from16 v18, v10

    const/4 v10, 0x0

    :goto_14a
    if-ge v10, v14, :cond_163

    move/from16 v19, v11

    iget-object v11, v2, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    move/from16 v20, v14

    iget-object v14, v2, Lcom/google/a/h/a/a/c;->b:[I

    aget v14, v14, v10

    invoke-virtual {v11, v14, v13}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v11

    aput v11, v12, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v19

    move/from16 v14, v20

    goto :goto_14a

    :cond_163
    move/from16 v19, v11

    new-instance v10, Lcom/google/a/h/a/a/c;

    iget-object v11, v2, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v10, v11, v12}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    :goto_16c
    invoke-virtual {v4, v10}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v4

    move-object/from16 v10, v18

    move/from16 v11, v19

    goto :goto_fa

    :cond_175
    invoke-virtual {v10, v6}, Lcom/google/a/h/a/a/c;->c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/h/a/a/c;->b()Lcom/google/a/h/a/a/c;

    move-result-object v5

    move-object/from16 v21, v4

    move-object v4, v2

    move-object/from16 v2, v21

    move-object/from16 v22, v6

    move-object v6, v5

    move-object/from16 v5, v22

    goto/16 :goto_d3

    :cond_18d
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v5

    if-nez v5, :cond_199

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v2

    throw v2

    :cond_199
    iget-object v4, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v4, v5}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/a/h/a/a/c;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    aget-object v2, v4, v6

    aget-object v4, v4, v5

    invoke-virtual {v9, v2}, Lcom/google/a/h/a/a/a;->a(Lcom/google/a/h/a/a/c;)[I

    move-result-object v5

    invoke-virtual {v9, v4, v2, v5}, Lcom/google/a/h/a/a/a;->a(Lcom/google/a/h/a/a/c;Lcom/google/a/h/a/a/c;[I)[I

    move-result-object v2

    const/4 v4, 0x0

    :goto_1bd
    array-length v6, v5

    if-ge v4, v6, :cond_1ea

    array-length v6, v0

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    iget-object v10, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    aget v11, v5, v4

    if-nez v11, :cond_1cf

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1cf
    iget-object v10, v10, Lcom/google/a/h/a/a/b;->c:[I

    aget v10, v10, v11

    sub-int/2addr v6, v10

    if-gez v6, :cond_1db

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v2

    throw v2

    :cond_1db
    iget-object v10, v9, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    aget v11, v0, v6

    aget v12, v2, v4

    invoke-virtual {v10, v11, v12}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v10

    aput v10, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1bd

    :cond_1ea
    array-length v4, v5

    :goto_1eb
    array-length v2, v0

    const/4 v5, 0x4

    if-ge v2, v5, :cond_1f4

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v2

    throw v2

    :cond_1f4
    const/4 v2, 0x0

    aget v5, v0, v2

    array-length v2, v0

    if-le v5, v2, :cond_1ff

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v2

    throw v2

    :cond_1ff
    if-nez v5, :cond_20f

    array-length v2, v0

    if-ge v8, v2, :cond_20a

    array-length v2, v0

    sub-int/2addr v2, v8

    const/4 v5, 0x0

    aput v2, v0, v5

    goto :goto_20f

    :cond_20a
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v2

    throw v2

    :cond_20f
    :goto_20f
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/a/h/a/e;->a([ILjava/lang/String;)Lcom/google/a/c/e;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/a/c/e;->f:Ljava/lang/Integer;

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/a/c/e;->g:Ljava/lang/Integer;

    return-object v2

    :cond_225
    :goto_225
    move/from16 v16, v5

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v2

    throw v2
    :try_end_22c
    .catch Lcom/google/a/d; {:try_start_85 .. :try_end_22c} :catch_22e

    :catch_22c
    move/from16 v16, v5

    :catch_22e
    array-length v2, v3

    if-nez v2, :cond_236

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0

    :cond_236
    const/4 v2, 0x0

    :goto_237
    array-length v4, v3

    if-ge v2, v4, :cond_258

    aget v4, v3, v2

    aget-object v5, p4, v2

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_249

    aget v4, v3, v2

    add-int/2addr v4, v6

    aput v4, v3, v2

    goto :goto_258

    :cond_249
    const/4 v4, 0x0

    aput v4, v3, v2

    array-length v5, v3

    sub-int/2addr v5, v6

    if-ne v2, v5, :cond_255

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0

    :cond_255
    add-int/lit8 v2, v2, 0x1

    goto :goto_237

    :cond_258
    :goto_258
    move/from16 v4, v16

    move-object/from16 v2, p3

    goto/16 :goto_b

    :cond_25e
    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0
.end method

.method public static a(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;II)Lcom/google/a/c/e;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    new-instance v6, Lcom/google/a/h/a/c;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/a/h/a/c;-><init>(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)V

    const/4 v1, 0x0

    move-object v9, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_16
    const/4 v11, 0x2

    if-ge v2, v11, :cond_c9

    if-eqz p1, :cond_29

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/a/h/a/j;->a(Lcom/google/a/c/b;Lcom/google/a/h/a/c;Lcom/google/a/t;ZII)Lcom/google/a/h/a/h;

    move-result-object v3

    :cond_29
    move-object v14, v3

    if-eqz p3, :cond_3b

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/a/h/a/j;->a(Lcom/google/a/c/b;Lcom/google/a/h/a/c;Lcom/google/a/t;ZII)Lcom/google/a/h/a/h;

    move-result-object v3

    move-object v10, v3

    :cond_3b
    if-nez v14, :cond_42

    if-nez v10, :cond_42

    :goto_3f
    const/4 v4, 0x0

    goto/16 :goto_a2

    :cond_42
    if-eqz v14, :cond_67

    invoke-virtual {v14}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object v3

    if-nez v3, :cond_4b

    goto :goto_67

    :cond_4b
    if-eqz v10, :cond_6f

    invoke-virtual {v10}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object v4

    if-nez v4, :cond_54

    goto :goto_6f

    :cond_54
    iget v5, v3, Lcom/google/a/h/a/a;->a:I

    iget v6, v4, Lcom/google/a/h/a/a;->a:I

    if-eq v5, v6, :cond_6f

    iget v5, v3, Lcom/google/a/h/a/a;->b:I

    iget v6, v4, Lcom/google/a/h/a/a;->b:I

    if-eq v5, v6, :cond_6f

    iget v5, v3, Lcom/google/a/h/a/a;->e:I

    iget v4, v4, Lcom/google/a/h/a/a;->e:I

    if-eq v5, v4, :cond_6f

    goto :goto_69

    :cond_67
    :goto_67
    if-nez v10, :cond_6b

    :goto_69
    const/4 v3, 0x0

    goto :goto_6f

    :cond_6b
    invoke-virtual {v10}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object v3

    :cond_6f
    :goto_6f
    if-nez v3, :cond_72

    goto :goto_3f

    :cond_72
    invoke-static {v14}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/h;)Lcom/google/a/h/a/c;

    move-result-object v4

    invoke-static {v10}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/h;)Lcom/google/a/h/a/c;

    move-result-object v5

    if-nez v4, :cond_7e

    move-object v4, v5

    goto :goto_9c

    :cond_7e
    if-nez v5, :cond_81

    goto :goto_9c

    :cond_81
    new-instance v6, Lcom/google/a/h/a/c;

    iget-object v7, v4, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iget-object v8, v4, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    iget-object v4, v4, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    iget-object v15, v5, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    iget-object v5, v5, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    move-object/from16 v19, v15

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/google/a/h/a/c;-><init>(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)V

    move-object v4, v6

    :goto_9c
    new-instance v5, Lcom/google/a/h/a/f;

    invoke-direct {v5, v3, v4}, Lcom/google/a/h/a/f;-><init>(Lcom/google/a/h/a/a;Lcom/google/a/h/a/c;)V

    move-object v4, v5

    :goto_a2
    if-nez v4, :cond_a9

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_a9
    if-nez v2, :cond_c6

    iget-object v3, v4, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    if-eqz v3, :cond_c6

    iget-object v3, v4, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    iget v3, v3, Lcom/google/a/h/a/c;->h:I

    iget v5, v9, Lcom/google/a/h/a/c;->h:I

    if-lt v3, v5, :cond_bf

    iget-object v3, v4, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    iget v3, v3, Lcom/google/a/h/a/c;->i:I

    iget v5, v9, Lcom/google/a/h/a/c;->i:I

    if-le v3, v5, :cond_c6

    :cond_bf
    iget-object v9, v4, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    add-int/lit8 v2, v2, 0x1

    move-object v3, v14

    goto/16 :goto_16

    :cond_c6
    iput-object v9, v4, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    goto :goto_ca

    :cond_c9
    move-object v14, v3

    :goto_ca
    iget v2, v4, Lcom/google/a/h/a/f;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v5, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aput-object v14, v5, v1

    iget-object v5, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aput-object v10, v5, v2

    if-eqz v14, :cond_da

    const/4 v5, 0x1

    goto :goto_db

    :cond_da
    const/4 v5, 0x0

    :goto_db
    move/from16 v7, p5

    move/from16 v8, p6

    const/4 v6, 0x1

    :goto_e0
    if-gt v6, v2, :cond_1f5

    if-eqz v5, :cond_e6

    move v10, v6

    goto :goto_e8

    :cond_e6
    sub-int v10, v2, v6

    :goto_e8
    iget-object v12, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v12, v12, v10

    if-nez v12, :cond_1ea

    if-eqz v10, :cond_f9

    if-ne v10, v2, :cond_f3

    goto :goto_f9

    :cond_f3
    new-instance v12, Lcom/google/a/h/a/g;

    invoke-direct {v12, v9}, Lcom/google/a/h/a/g;-><init>(Lcom/google/a/h/a/c;)V

    goto :goto_103

    :cond_f9
    :goto_f9
    new-instance v12, Lcom/google/a/h/a/h;

    if-nez v10, :cond_ff

    const/4 v13, 0x1

    goto :goto_100

    :cond_ff
    const/4 v13, 0x0

    :goto_100
    invoke-direct {v12, v9, v13}, Lcom/google/a/h/a/h;-><init>(Lcom/google/a/h/a/c;Z)V

    :goto_103
    iget-object v13, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aput-object v12, v13, v10

    iget v13, v9, Lcom/google/a/h/a/c;->h:I

    move v15, v8

    move v8, v7

    const/4 v7, -0x1

    :goto_10c
    iget v0, v9, Lcom/google/a/h/a/c;->i:I

    if-gt v13, v0, :cond_1e4

    if-eqz v5, :cond_114

    const/4 v0, 0x1

    goto :goto_115

    :cond_114
    const/4 v0, -0x1

    :goto_115
    sub-int v3, v10, v0

    invoke-static {v4, v3}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/f;I)Z

    move-result v16

    if-eqz v16, :cond_126

    iget-object v1, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v1, v1, v3

    invoke-virtual {v1, v13}, Lcom/google/a/h/a/g;->c(I)Lcom/google/a/h/a/d;

    move-result-object v1

    goto :goto_127

    :cond_126
    const/4 v1, 0x0

    :goto_127
    if-eqz v1, :cond_134

    if-eqz v5, :cond_131

    :cond_12b
    :goto_12b
    iget v0, v1, Lcom/google/a/h/a/d;->b:I

    :goto_12d
    move/from16 v25, v2

    goto/16 :goto_19b

    :cond_131
    :goto_131
    iget v0, v1, Lcom/google/a/h/a/d;->a:I

    goto :goto_12d

    :cond_134
    iget-object v1, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v1, v1, v10

    invoke-virtual {v1, v13}, Lcom/google/a/h/a/g;->a(I)Lcom/google/a/h/a/d;

    move-result-object v1

    if-eqz v1, :cond_141

    if-eqz v5, :cond_12b

    goto :goto_131

    :cond_141
    invoke-static {v4, v3}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/f;I)Z

    move-result v16

    if-eqz v16, :cond_14f

    iget-object v1, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v1, v1, v3

    invoke-virtual {v1, v13}, Lcom/google/a/h/a/g;->a(I)Lcom/google/a/h/a/d;

    move-result-object v1

    :cond_14f
    if-eqz v1, :cond_154

    if-eqz v5, :cond_131

    goto :goto_12b

    :cond_154
    move v1, v10

    const/4 v3, 0x0

    :goto_156
    sub-int/2addr v1, v0

    invoke-static {v4, v1}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/f;I)Z

    move-result v16

    if-eqz v16, :cond_18e

    iget-object v11, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v11, v11, v1

    iget-object v11, v11, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v14, v11

    move/from16 v24, v1

    const/4 v1, 0x0

    :goto_167
    if-ge v1, v14, :cond_186

    move/from16 v25, v2

    aget-object v2, v11, v1

    if-eqz v2, :cond_181

    if-eqz v5, :cond_174

    iget v1, v2, Lcom/google/a/h/a/d;->b:I

    goto :goto_176

    :cond_174
    iget v1, v2, Lcom/google/a/h/a/d;->a:I

    :goto_176
    mul-int v0, v0, v3

    iget v3, v2, Lcom/google/a/h/a/d;->b:I

    iget v2, v2, Lcom/google/a/h/a/d;->a:I

    sub-int/2addr v3, v2

    mul-int v0, v0, v3

    add-int/2addr v0, v1

    goto :goto_19b

    :cond_181
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v25

    goto :goto_167

    :cond_186
    move/from16 v25, v2

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v24

    const/4 v11, 0x2

    goto :goto_156

    :cond_18e
    move/from16 v25, v2

    if-eqz v5, :cond_197

    iget-object v0, v4, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    iget v0, v0, Lcom/google/a/h/a/c;->f:I

    goto :goto_19b

    :cond_197
    iget-object v0, v4, Lcom/google/a/h/a/f;->c:Lcom/google/a/h/a/c;

    iget v0, v0, Lcom/google/a/h/a/c;->g:I

    :goto_19b
    if-ltz v0, :cond_1a5

    iget v1, v9, Lcom/google/a/h/a/c;->g:I

    if-le v0, v1, :cond_1a2

    goto :goto_1a5

    :cond_1a2
    move v1, v0

    const/4 v0, -0x1

    goto :goto_1a9

    :cond_1a5
    :goto_1a5
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1d9

    move v1, v7

    :goto_1a9
    iget v2, v9, Lcom/google/a/h/a/c;->f:I

    iget v3, v9, Lcom/google/a/h/a/c;->g:I

    move v11, v15

    move-object/from16 v15, p0

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v1

    move/from16 v20, v13

    move/from16 v21, v8

    move/from16 v22, v11

    invoke-static/range {v15 .. v22}, Lcom/google/a/h/a/j;->a(Lcom/google/a/c/b;IIZIIII)Lcom/google/a/h/a/d;

    move-result-object v2

    if-eqz v2, :cond_1da

    invoke-virtual {v12, v13, v2}, Lcom/google/a/h/a/g;->a(ILcom/google/a/h/a/d;)V

    invoke-virtual {v2}, Lcom/google/a/h/a/d;->c()I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2}, Lcom/google/a/h/a/d;->c()I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v7, v1

    goto :goto_1db

    :cond_1d9
    move v11, v15

    :cond_1da
    move v15, v11

    :goto_1db
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v25

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x2

    goto/16 :goto_10c

    :cond_1e4
    move/from16 v25, v2

    move v11, v15

    move v7, v8

    move v8, v11

    goto :goto_1ec

    :cond_1ea
    move/from16 v25, v2

    :goto_1ec
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v25

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x2

    goto/16 :goto_e0

    :cond_1f5
    iget-object v0, v4, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v0, v0, Lcom/google/a/h/a/a;->e:I

    iget v1, v4, Lcom/google/a/h/a/f;->d:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/google/a/h/a/b;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/a/h/a/b;

    const/4 v1, 0x0

    :goto_20a
    array-length v2, v0

    if-ge v1, v2, :cond_222

    const/4 v2, 0x0

    :goto_20e
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_21f

    aget-object v3, v0, v1

    new-instance v5, Lcom/google/a/h/a/b;

    invoke-direct {v5}, Lcom/google/a/h/a/b;-><init>()V

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20e

    :cond_21f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20a

    :cond_222
    iget-object v1, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v4, v1}, Lcom/google/a/h/a/f;->a(Lcom/google/a/h/a/g;)V

    iget-object v1, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v3, v4, Lcom/google/a/h/a/f;->d:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    aget-object v1, v1, v3

    invoke-virtual {v4, v1}, Lcom/google/a/h/a/f;->a(Lcom/google/a/h/a/g;)V

    const/16 v1, 0x3a0

    const/16 v3, 0x3a0

    :goto_239
    iget-object v6, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v6, v6, v2

    if-eqz v6, :cond_29b

    iget-object v6, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v7, v4, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v7, v5

    aget-object v6, v6, v7

    if-nez v6, :cond_249

    goto :goto_29b

    :cond_249
    iget-object v6, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v6, v6, v2

    iget-object v2, v6, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    iget-object v6, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v7, v4, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v7, v5

    aget-object v5, v6, v7

    iget-object v5, v5, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v6, 0x0

    :goto_259
    array-length v7, v2

    if-ge v6, v7, :cond_29b

    aget-object v7, v2, v6

    if-eqz v7, :cond_297

    aget-object v7, v5, v6

    if-eqz v7, :cond_297

    aget-object v7, v2, v6

    iget v7, v7, Lcom/google/a/h/a/d;->e:I

    aget-object v8, v5, v6

    iget v8, v8, Lcom/google/a/h/a/d;->e:I

    if-ne v7, v8, :cond_297

    const/4 v7, 0x1

    :goto_26f
    iget v8, v4, Lcom/google/a/h/a/f;->d:I

    if-gt v7, v8, :cond_297

    iget-object v8, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v8, v8, v6

    if-eqz v8, :cond_293

    aget-object v9, v2, v6

    iget v9, v9, Lcom/google/a/h/a/d;->e:I

    iput v9, v8, Lcom/google/a/h/a/d;->e:I

    invoke-virtual {v8}, Lcom/google/a/h/a/d;->a()Z

    move-result v8

    if-nez v8, :cond_293

    iget-object v8, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v9, 0x0

    aput-object v9, v8, v6

    goto :goto_294

    :cond_293
    const/4 v9, 0x0

    :goto_294
    add-int/lit8 v7, v7, 0x1

    goto :goto_26f

    :cond_297
    const/4 v9, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_259

    :cond_29b
    :goto_29b
    const/4 v9, 0x0

    iget-object v2, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    const/16 v23, 0x0

    aget-object v2, v2, v23

    if-nez v2, :cond_2a6

    const/4 v6, 0x0

    goto :goto_2e2

    :cond_2a6
    iget-object v2, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v2, v2, v23

    iget-object v2, v2, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2ae
    array-length v7, v2

    if-ge v5, v7, :cond_2e2

    aget-object v7, v2, v5

    if-eqz v7, :cond_2df

    aget-object v7, v2, v5

    iget v7, v7, Lcom/google/a/h/a/d;->e:I

    move v10, v6

    const/4 v6, 0x1

    const/4 v8, 0x0

    :goto_2bc
    iget v11, v4, Lcom/google/a/h/a/f;->d:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    if-ge v6, v11, :cond_2de

    const/4 v11, 0x2

    if-ge v8, v11, :cond_2de

    iget-object v11, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v11, v11, v6

    iget-object v11, v11, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v11, v11, v5

    if-eqz v11, :cond_2db

    invoke-static {v7, v8, v11}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v8

    invoke-virtual {v11}, Lcom/google/a/h/a/d;->a()Z

    move-result v11

    if-nez v11, :cond_2db

    add-int/lit8 v10, v10, 0x1

    :cond_2db
    add-int/lit8 v6, v6, 0x1

    goto :goto_2bc

    :cond_2de
    move v6, v10

    :cond_2df
    add-int/lit8 v5, v5, 0x1

    goto :goto_2ae

    :cond_2e2
    :goto_2e2
    iget-object v2, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v5, v4, Lcom/google/a/h/a/f;->d:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    aget-object v2, v2, v5

    if-nez v2, :cond_2ee

    const/4 v8, 0x0

    goto :goto_32a

    :cond_2ee
    iget-object v2, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v5, v4, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v5, v7

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_2f9
    array-length v10, v2

    if-ge v5, v10, :cond_32a

    aget-object v10, v2, v5

    if-eqz v10, :cond_326

    aget-object v10, v2, v5

    iget v10, v10, Lcom/google/a/h/a/d;->e:I

    iget v11, v4, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v11, v7

    const/4 v7, 0x0

    :goto_308
    if-lez v11, :cond_326

    const/4 v12, 0x2

    if-ge v7, v12, :cond_326

    iget-object v12, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v12, v12, v11

    iget-object v12, v12, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v12, v12, v5

    if-eqz v12, :cond_323

    invoke-static {v10, v7, v12}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v7

    invoke-virtual {v12}, Lcom/google/a/h/a/d;->a()Z

    move-result v12

    if-nez v12, :cond_323

    add-int/lit8 v8, v8, 0x1

    :cond_323
    add-int/lit8 v11, v11, -0x1

    goto :goto_308

    :cond_326
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    goto :goto_2f9

    :cond_32a
    :goto_32a
    add-int v2, v6, v8

    if-nez v2, :cond_331

    const/4 v2, 0x0

    goto/16 :goto_3f6

    :cond_331
    const/4 v5, 0x1

    :goto_332
    iget v6, v4, Lcom/google/a/h/a/f;->d:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3f6

    iget-object v6, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v7, 0x0

    :goto_33f
    array-length v8, v6

    if-ge v7, v8, :cond_3f2

    aget-object v8, v6, v7

    if-eqz v8, :cond_3ee

    aget-object v8, v6, v7

    invoke-virtual {v8}, Lcom/google/a/h/a/d;->a()Z

    move-result v8

    if-nez v8, :cond_3ee

    aget-object v8, v6, v7

    iget-object v10, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v11, v5, -0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    iget-object v11, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v12, v5, 0x1

    aget-object v11, v11, v12

    if-eqz v11, :cond_367

    iget-object v11, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    goto :goto_368

    :cond_367
    move-object v11, v10

    :goto_368
    const/16 v12, 0xe

    new-array v13, v12, [Lcom/google/a/h/a/d;

    aget-object v14, v10, v7

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const/4 v14, 0x3

    aget-object v15, v11, v7

    aput-object v15, v13, v14

    if-lez v7, :cond_38a

    add-int/lit8 v14, v7, -0x1

    aget-object v15, v6, v14

    const/16 v16, 0x0

    aput-object v15, v13, v16

    const/4 v15, 0x4

    aget-object v16, v10, v14

    aput-object v16, v13, v15

    const/4 v15, 0x5

    aget-object v14, v11, v14

    aput-object v14, v13, v15

    :cond_38a
    const/4 v14, 0x1

    if-le v7, v14, :cond_3a1

    const/16 v14, 0x8

    add-int/lit8 v15, v7, -0x2

    aget-object v16, v6, v15

    aput-object v16, v13, v14

    const/16 v14, 0xa

    aget-object v16, v10, v15

    aput-object v16, v13, v14

    const/16 v14, 0xb

    aget-object v15, v11, v15

    aput-object v15, v13, v14

    :cond_3a1
    array-length v14, v6

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ge v7, v14, :cond_3b6

    add-int/lit8 v14, v7, 0x1

    aget-object v16, v6, v14

    aput-object v16, v13, v15

    const/4 v15, 0x6

    aget-object v16, v10, v14

    aput-object v16, v13, v15

    const/4 v15, 0x7

    aget-object v14, v11, v14

    aput-object v14, v13, v15

    :cond_3b6
    array-length v14, v6

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    if-ge v7, v14, :cond_3cf

    const/16 v14, 0x9

    add-int/lit8 v15, v7, 0x2

    aget-object v16, v6, v15

    aput-object v16, v13, v14

    const/16 v14, 0xc

    aget-object v10, v10, v15

    aput-object v10, v13, v14

    const/16 v10, 0xd

    aget-object v11, v11, v15

    aput-object v11, v13, v10

    :cond_3cf
    const/4 v10, 0x0

    :goto_3d0
    if-ge v10, v12, :cond_3ee

    aget-object v11, v13, v10

    if-eqz v11, :cond_3e8

    invoke-virtual {v11}, Lcom/google/a/h/a/d;->a()Z

    move-result v14

    if-eqz v14, :cond_3e8

    iget v14, v11, Lcom/google/a/h/a/d;->c:I

    iget v15, v8, Lcom/google/a/h/a/d;->c:I

    if-ne v14, v15, :cond_3e8

    iget v11, v11, Lcom/google/a/h/a/d;->e:I

    iput v11, v8, Lcom/google/a/h/a/d;->e:I

    const/4 v11, 0x1

    goto :goto_3e9

    :cond_3e8
    const/4 v11, 0x0

    :goto_3e9
    if-nez v11, :cond_3ee

    add-int/lit8 v10, v10, 0x1

    goto :goto_3d0

    :cond_3ee
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_33f

    :cond_3f2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_332

    :cond_3f6
    :goto_3f6
    if-lez v2, :cond_400

    if-lt v2, v3, :cond_3fb

    goto :goto_400

    :cond_3fb
    move v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_239

    :cond_400
    :goto_400
    iget-object v2, v4, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_405
    if-ge v5, v3, :cond_42d

    aget-object v7, v2, v5

    if-eqz v7, :cond_428

    iget-object v7, v7, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_40f
    if-ge v9, v8, :cond_428

    aget-object v10, v7, v9

    if-eqz v10, :cond_425

    iget v11, v10, Lcom/google/a/h/a/d;->e:I

    if-ltz v11, :cond_425

    array-length v12, v0

    if-ge v11, v12, :cond_425

    aget-object v11, v0, v11

    aget-object v11, v11, v6

    iget v10, v10, Lcom/google/a/h/a/d;->d:I

    invoke-virtual {v11, v10}, Lcom/google/a/h/a/b;->a(I)V

    :cond_425
    add-int/lit8 v9, v9, 0x1

    goto :goto_40f

    :cond_428
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_405

    :cond_42d
    const/4 v5, 0x0

    aget-object v2, v0, v5

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v3

    iget v5, v4, Lcom/google/a/h/a/f;->d:I

    iget-object v6, v4, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v6, v6, Lcom/google/a/h/a/a;->e:I

    mul-int v5, v5, v6

    iget-object v6, v4, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v6, v6, Lcom/google/a/h/a/a;->b:I

    const/4 v7, 0x2

    shl-int v6, v7, v6

    sub-int/2addr v5, v6

    array-length v6, v3

    if-nez v6, :cond_453

    if-lez v5, :cond_44e

    if-le v5, v1, :cond_458

    :cond_44e
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_453
    const/4 v1, 0x0

    aget v3, v3, v1

    if-eq v3, v5, :cond_45b

    :cond_458
    invoke-virtual {v2, v5}, Lcom/google/a/h/a/b;->a(I)V

    :cond_45b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v4, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v2, v2, Lcom/google/a/h/a/a;->e:I

    iget v3, v4, Lcom/google/a/h/a/f;->d:I

    mul-int v2, v2, v3

    new-array v2, v2, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_475
    iget-object v7, v4, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v7, v7, Lcom/google/a/h/a/a;->e:I

    if-ge v6, v7, :cond_4b8

    const/4 v7, 0x0

    :goto_47c
    iget v8, v4, Lcom/google/a/h/a/f;->d:I

    if-ge v7, v8, :cond_4b3

    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v8

    iget v10, v4, Lcom/google/a/h/a/f;->d:I

    mul-int v10, v10, v6

    add-int/2addr v10, v7

    array-length v7, v8

    if-nez v7, :cond_49c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v11, 0x1

    goto :goto_4b1

    :cond_49c
    array-length v7, v8

    const/4 v11, 0x1

    if-ne v7, v11, :cond_4a6

    const/4 v7, 0x0

    aget v8, v8, v7

    aput v8, v2, v10

    goto :goto_4b1

    :cond_4a6
    const/4 v7, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4b1
    move v7, v9

    goto :goto_47c

    :cond_4b3
    const/4 v7, 0x0

    const/4 v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_475

    :cond_4b8
    const/4 v7, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    :goto_4bf
    array-length v6, v0

    if-ge v7, v6, :cond_4cd

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aput-object v6, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4bf

    :cond_4cd
    iget-object v3, v4, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v3, v3, Lcom/google/a/h/a/a;->b:I

    invoke-static {v1}, Lcom/google/a/h/a;->a(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {v5}, Lcom/google/a/h/a;->a(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-static {v3, v2, v1, v4, v0}, Lcom/google/a/h/a/j;->a(I[I[I[I[[I)Lcom/google/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/a/h/a/f;)Lcom/google/a/c/e;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;,
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v1, v1, Lcom/google/a/h/a/a;->e:I

    iget v2, v0, Lcom/google/a/h/a/f;->d:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Lcom/google/a/h/a/b;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/google/a/h/a/b;

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_18
    array-length v5, v1

    if-ge v4, v5, :cond_30

    const/4 v5, 0x0

    :goto_1c
    aget-object v6, v1, v4

    array-length v6, v6

    if-ge v5, v6, :cond_2d

    aget-object v6, v1, v4

    new-instance v7, Lcom/google/a/h/a/b;

    invoke-direct {v7}, Lcom/google/a/h/a/b;-><init>()V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_30
    iget-object v4, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/google/a/h/a/f;->a(Lcom/google/a/h/a/g;)V

    iget-object v4, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v5, v0, Lcom/google/a/h/a/f;->d:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/google/a/h/a/f;->a(Lcom/google/a/h/a/g;)V

    const/16 v5, 0x3a0

    :goto_44
    iget-object v7, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v7, v7, v2

    if-eqz v7, :cond_a3

    iget-object v7, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v8, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    if-nez v7, :cond_54

    goto :goto_a3

    :cond_54
    iget-object v7, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    iget-object v8, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v9, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v9, v6

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v9, 0x0

    :goto_64
    array-length v10, v7

    if-ge v9, v10, :cond_a3

    aget-object v10, v7, v9

    if-eqz v10, :cond_a0

    aget-object v10, v8, v9

    if-eqz v10, :cond_a0

    aget-object v10, v7, v9

    iget v10, v10, Lcom/google/a/h/a/d;->e:I

    aget-object v11, v8, v9

    iget v11, v11, Lcom/google/a/h/a/d;->e:I

    if-ne v10, v11, :cond_a0

    const/4 v10, 0x1

    :goto_7a
    iget v11, v0, Lcom/google/a/h/a/f;->d:I

    if-gt v10, v11, :cond_a0

    iget-object v11, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v11, v11, v9

    if-eqz v11, :cond_9d

    aget-object v12, v7, v9

    iget v12, v12, Lcom/google/a/h/a/d;->e:I

    iput v12, v11, Lcom/google/a/h/a/d;->e:I

    invoke-virtual {v11}, Lcom/google/a/h/a/d;->a()Z

    move-result v11

    if-nez v11, :cond_9d

    iget-object v11, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v12, 0x0

    aput-object v12, v11, v9

    :cond_9d
    add-int/lit8 v10, v10, 0x1

    goto :goto_7a

    :cond_a0
    add-int/lit8 v9, v9, 0x1

    goto :goto_64

    :cond_a3
    :goto_a3
    iget-object v7, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v7, v7, v2

    if-nez v7, :cond_ab

    const/4 v9, 0x0

    goto :goto_e5

    :cond_ab
    iget-object v7, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_b3
    array-length v10, v7

    if-ge v8, v10, :cond_e5

    aget-object v10, v7, v8

    if-eqz v10, :cond_e2

    aget-object v10, v7, v8

    iget v10, v10, Lcom/google/a/h/a/d;->e:I

    move v12, v9

    const/4 v9, 0x1

    const/4 v11, 0x0

    :goto_c1
    iget v13, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v13, v6

    if-ge v9, v13, :cond_e1

    if-ge v11, v3, :cond_e1

    iget-object v13, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v13, v13, v9

    iget-object v13, v13, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v13, v13, v8

    if-eqz v13, :cond_de

    invoke-static {v10, v11, v13}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v11

    invoke-virtual {v13}, Lcom/google/a/h/a/d;->a()Z

    move-result v13

    if-nez v13, :cond_de

    add-int/lit8 v12, v12, 0x1

    :cond_de
    add-int/lit8 v9, v9, 0x1

    goto :goto_c1

    :cond_e1
    move v9, v12

    :cond_e2
    add-int/lit8 v8, v8, 0x1

    goto :goto_b3

    :cond_e5
    :goto_e5
    iget-object v7, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v8, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    if-nez v7, :cond_f0

    const/4 v10, 0x0

    goto :goto_12c

    :cond_f0
    iget-object v7, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v8, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_fb
    array-length v11, v7

    if-ge v8, v11, :cond_12c

    aget-object v11, v7, v8

    if-eqz v11, :cond_129

    aget-object v11, v7, v8

    iget v11, v11, Lcom/google/a/h/a/d;->e:I

    iget v12, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v12, v6

    move v13, v10

    const/4 v10, 0x0

    :goto_10b
    if-lez v12, :cond_128

    if-ge v10, v3, :cond_128

    iget-object v14, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v14, v14, v8

    if-eqz v14, :cond_125

    invoke-static {v11, v10, v14}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v10

    invoke-virtual {v14}, Lcom/google/a/h/a/d;->a()Z

    move-result v14

    if-nez v14, :cond_125

    add-int/lit8 v13, v13, 0x1

    :cond_125
    add-int/lit8 v12, v12, -0x1

    goto :goto_10b

    :cond_128
    move v10, v13

    :cond_129
    add-int/lit8 v8, v8, 0x1

    goto :goto_fb

    :cond_12c
    :goto_12c
    add-int v7, v9, v10

    if-nez v7, :cond_133

    const/4 v7, 0x0

    goto/16 :goto_1f8

    :cond_133
    const/4 v8, 0x1

    :goto_134
    iget v9, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v9, v6

    if-ge v8, v9, :cond_1f8

    iget-object v9, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v10, 0x0

    :goto_140
    array-length v11, v9

    if-ge v10, v11, :cond_1f4

    aget-object v11, v9, v10

    if-eqz v11, :cond_1f0

    aget-object v11, v9, v10

    invoke-virtual {v11}, Lcom/google/a/h/a/d;->a()Z

    move-result v11

    if-nez v11, :cond_1f0

    aget-object v11, v9, v10

    iget-object v12, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v13, v8, -0x1

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    iget-object v13, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v14, v8, 0x1

    aget-object v13, v13, v14

    if-eqz v13, :cond_168

    iget-object v13, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    goto :goto_169

    :cond_168
    move-object v13, v12

    :goto_169
    const/16 v14, 0xe

    new-array v15, v14, [Lcom/google/a/h/a/d;

    aget-object v16, v12, v10

    aput-object v16, v15, v3

    const/16 v16, 0x3

    aget-object v17, v13, v10

    aput-object v17, v15, v16

    if-lez v10, :cond_18b

    add-int/lit8 v16, v10, -0x1

    aget-object v17, v9, v16

    aput-object v17, v15, v2

    const/16 v17, 0x4

    aget-object v18, v12, v16

    aput-object v18, v15, v17

    const/16 v17, 0x5

    aget-object v16, v13, v16

    aput-object v16, v15, v17

    :cond_18b
    if-le v10, v6, :cond_1a1

    const/16 v16, 0x8

    add-int/lit8 v17, v10, -0x2

    aget-object v18, v9, v17

    aput-object v18, v15, v16

    const/16 v16, 0xa

    aget-object v18, v12, v17

    aput-object v18, v15, v16

    const/16 v16, 0xb

    aget-object v17, v13, v17

    aput-object v17, v15, v16

    :cond_1a1
    array-length v4, v9

    sub-int/2addr v4, v6

    if-ge v10, v4, :cond_1b7

    add-int/lit8 v4, v10, 0x1

    aget-object v16, v9, v4

    aput-object v16, v15, v6

    const/16 v16, 0x6

    aget-object v17, v12, v4

    aput-object v17, v15, v16

    const/16 v16, 0x7

    aget-object v4, v13, v4

    aput-object v4, v15, v16

    :cond_1b7
    array-length v4, v9

    sub-int/2addr v4, v3

    if-ge v10, v4, :cond_1cf

    const/16 v4, 0x9

    add-int/lit8 v16, v10, 0x2

    aget-object v17, v9, v16

    aput-object v17, v15, v4

    const/16 v4, 0xc

    aget-object v12, v12, v16

    aput-object v12, v15, v4

    const/16 v4, 0xd

    aget-object v12, v13, v16

    aput-object v12, v15, v4

    :cond_1cf
    const/4 v4, 0x0

    :goto_1d0
    if-ge v4, v14, :cond_1f0

    aget-object v12, v15, v4

    if-eqz v12, :cond_1e8

    invoke-virtual {v12}, Lcom/google/a/h/a/d;->a()Z

    move-result v13

    if-eqz v13, :cond_1e8

    iget v13, v12, Lcom/google/a/h/a/d;->c:I

    iget v14, v11, Lcom/google/a/h/a/d;->c:I

    if-ne v13, v14, :cond_1e8

    iget v12, v12, Lcom/google/a/h/a/d;->e:I

    iput v12, v11, Lcom/google/a/h/a/d;->e:I

    const/4 v12, 0x1

    goto :goto_1e9

    :cond_1e8
    const/4 v12, 0x0

    :goto_1e9
    if-nez v12, :cond_1f0

    add-int/lit8 v4, v4, 0x1

    const/16 v14, 0xe

    goto :goto_1d0

    :cond_1f0
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_140

    :cond_1f4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_134

    :cond_1f8
    :goto_1f8
    if-lez v7, :cond_200

    if-lt v7, v5, :cond_1fd

    goto :goto_200

    :cond_1fd
    move v5, v7

    goto/16 :goto_44

    :cond_200
    :goto_200
    iget-object v4, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    array-length v5, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_205
    if-ge v7, v5, :cond_22d

    aget-object v9, v4, v7

    if-eqz v9, :cond_228

    iget-object v9, v9, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_20f
    if-ge v11, v10, :cond_228

    aget-object v12, v9, v11

    if-eqz v12, :cond_225

    iget v13, v12, Lcom/google/a/h/a/d;->e:I

    if-ltz v13, :cond_225

    array-length v14, v1

    if-ge v13, v14, :cond_225

    aget-object v13, v1, v13

    aget-object v13, v13, v8

    iget v12, v12, Lcom/google/a/h/a/d;->d:I

    invoke-virtual {v13, v12}, Lcom/google/a/h/a/b;->a(I)V

    :cond_225
    add-int/lit8 v11, v11, 0x1

    goto :goto_20f

    :cond_228
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_205

    :cond_22d
    aget-object v4, v1, v2

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v5

    iget v7, v0, Lcom/google/a/h/a/f;->d:I

    iget-object v8, v0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v8, v8, Lcom/google/a/h/a/a;->e:I

    mul-int v7, v7, v8

    iget-object v8, v0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v8, v8, Lcom/google/a/h/a/a;->b:I

    shl-int/2addr v3, v8

    sub-int/2addr v7, v3

    array-length v3, v5

    if-nez v3, :cond_251

    if-lez v7, :cond_24c

    const/16 v3, 0x3a0

    if-le v7, v3, :cond_255

    :cond_24c
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_251
    aget v3, v5, v2

    if-eq v3, v7, :cond_258

    :cond_255
    invoke-virtual {v4, v7}, Lcom/google/a/h/a/b;->a(I)V

    :cond_258
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v4, v4, Lcom/google/a/h/a/a;->e:I

    iget v5, v0, Lcom/google/a/h/a/f;->d:I

    mul-int v4, v4, v5

    new-array v4, v4, [I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_272
    iget-object v9, v0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v9, v9, Lcom/google/a/h/a/a;->e:I

    if-ge v8, v9, :cond_2ae

    const/4 v9, 0x0

    :goto_279
    iget v10, v0, Lcom/google/a/h/a/f;->d:I

    if-ge v9, v10, :cond_2ab

    aget-object v10, v1, v8

    add-int/lit8 v11, v9, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v10

    iget v12, v0, Lcom/google/a/h/a/f;->d:I

    mul-int v12, v12, v8

    add-int/2addr v12, v9

    array-length v9, v10

    if-nez v9, :cond_297

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2a9

    :cond_297
    array-length v9, v10

    if-ne v9, v6, :cond_29f

    aget v9, v10, v2

    aput v9, v4, v12

    goto :goto_2a9

    :cond_29f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a9
    move v9, v11

    goto :goto_279

    :cond_2ab
    add-int/lit8 v8, v8, 0x1

    goto :goto_272

    :cond_2ae
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[I

    :goto_2b4
    array-length v6, v1

    if-ge v2, v6, :cond_2c2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aput-object v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b4

    :cond_2c2
    iget-object v0, v0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v0, v0, Lcom/google/a/h/a/a;->b:I

    invoke-static {v3}, Lcom/google/a/h/a;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-static {v7}, Lcom/google/a/h/a;->a(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-static {v0, v4, v2, v3, v1}, Lcom/google/a/h/a/j;->a(I[I[I[I[[I)Lcom/google/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method private static a([II[I)Lcom/google/a/c/e;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    array-length v2, v0

    if-nez v2, :cond_c

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :cond_c
    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    shl-int v3, v4, v3

    if-eqz v1, :cond_1a

    array-length v5, v1

    div-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x3

    if-gt v5, v6, :cond_1e4

    :cond_1a
    if-ltz v3, :cond_1e4

    const/16 v5, 0x200

    if-le v3, v5, :cond_22

    goto/16 :goto_1e4

    :cond_22
    sget-object v5, Lcom/google/a/h/a/j;->d:Lcom/google/a/h/a/a/a;

    new-instance v6, Lcom/google/a/h/a/a/c;

    iget-object v7, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v6, v7, v0}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    new-array v7, v3, [I

    const/4 v8, 0x0

    move v9, v3

    const/4 v10, 0x0

    :goto_30
    if-lez v9, :cond_46

    iget-object v11, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v11, v11, Lcom/google/a/h/a/a/b;->b:[I

    aget v11, v11, v9

    invoke-virtual {v6, v11}, Lcom/google/a/h/a/a/c;->b(I)I

    move-result v11

    sub-int v12, v3, v9

    aput v11, v7, v12

    if-eqz v11, :cond_43

    const/4 v10, 0x1

    :cond_43
    add-int/lit8 v9, v9, -0x1

    goto :goto_30

    :cond_46
    if-nez v10, :cond_4a

    goto/16 :goto_1ab

    :cond_4a
    iget-object v6, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v6, v6, Lcom/google/a/h/a/a/b;->e:Lcom/google/a/h/a/a/c;

    const/4 v9, 0x2

    if-eqz v1, :cond_7c

    array-length v10, v1

    move-object v11, v6

    const/4 v6, 0x0

    :goto_54
    if-ge v6, v10, :cond_7c

    aget v12, v1, v6

    iget-object v13, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    array-length v14, v0

    sub-int/2addr v14, v4

    sub-int/2addr v14, v12

    iget-object v12, v13, Lcom/google/a/h/a/a/b;->b:[I

    aget v12, v12, v14

    new-instance v13, Lcom/google/a/h/a/a/c;

    iget-object v14, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    new-array v15, v9, [I

    iget-object v9, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v9, v8, v12}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v9

    aput v9, v15, v8

    aput v4, v15, v4

    invoke-direct {v13, v14, v15}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    invoke-virtual {v11, v13}, Lcom/google/a/h/a/a/c;->c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v11

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x2

    goto :goto_54

    :cond_7c
    new-instance v6, Lcom/google/a/h/a/a/c;

    iget-object v9, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v6, v9, v7}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    iget-object v7, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v7, v3, v4}, Lcom/google/a/h/a/a/b;->a(II)Lcom/google/a/h/a/a/c;

    move-result-object v7

    iget-object v9, v7, Lcom/google/a/h/a/a/c;->b:[I

    array-length v9, v9

    sub-int/2addr v9, v4

    iget-object v10, v6, Lcom/google/a/h/a/a/c;->b:[I

    array-length v10, v10

    sub-int/2addr v10, v4

    if-ge v9, v10, :cond_94

    goto :goto_99

    :cond_94
    move-object/from16 v17, v7

    move-object v7, v6

    move-object/from16 v6, v17

    :goto_99
    iget-object v9, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v9, v9, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v10, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v10, v10, Lcom/google/a/h/a/a/b;->e:Lcom/google/a/h/a/a/c;

    :goto_a1
    move-object/from16 v17, v7

    move-object v7, v6

    move-object/from16 v6, v17

    iget-object v11, v6, Lcom/google/a/h/a/a/c;->b:[I

    array-length v11, v11

    sub-int/2addr v11, v4

    div-int/lit8 v12, v3, 0x2

    if-lt v11, v12, :cond_14f

    invoke-virtual {v6}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v11

    if-eqz v11, :cond_b9

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0

    :cond_b9
    iget-object v11, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v11, v11, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    iget-object v12, v6, Lcom/google/a/h/a/a/c;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v4

    invoke-virtual {v6, v12}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v12

    iget-object v13, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v13, v12}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v12

    :goto_cb
    iget-object v13, v7, Lcom/google/a/h/a/a/c;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v4

    iget-object v14, v6, Lcom/google/a/h/a/a/c;->b:[I

    array-length v14, v14

    sub-int/2addr v14, v4

    if-lt v13, v14, :cond_13d

    invoke-virtual {v7}, Lcom/google/a/h/a/a/c;->a()Z

    move-result v13

    if-nez v13, :cond_13d

    iget-object v13, v7, Lcom/google/a/h/a/a/c;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v4

    iget-object v14, v6, Lcom/google/a/h/a/a/c;->b:[I

    array-length v14, v14

    sub-int/2addr v14, v4

    sub-int/2addr v13, v14

    iget-object v14, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    iget-object v15, v7, Lcom/google/a/h/a/a/c;->b:[I

    array-length v15, v15

    sub-int/2addr v15, v4

    invoke-virtual {v7, v15}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v15

    invoke-virtual {v14, v15, v12}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v14

    iget-object v15, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v15, v13, v14}, Lcom/google/a/h/a/a/b;->a(II)Lcom/google/a/h/a/a/c;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/google/a/h/a/a/c;->a(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v11

    if-gez v13, :cond_104

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_104
    if-nez v14, :cond_10d

    iget-object v13, v6, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    iget-object v13, v13, Lcom/google/a/h/a/a/b;->d:Lcom/google/a/h/a/a/c;

    move-object/from16 v16, v11

    goto :goto_134

    :cond_10d
    iget-object v15, v6, Lcom/google/a/h/a/a/c;->b:[I

    array-length v15, v15

    add-int/2addr v13, v15

    new-array v13, v13, [I

    const/4 v4, 0x0

    :goto_114
    if-ge v4, v15, :cond_12a

    iget-object v8, v6, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    move-object/from16 v16, v11

    iget-object v11, v6, Lcom/google/a/h/a/a/c;->b:[I

    aget v11, v11, v4

    invoke-virtual {v8, v11, v14}, Lcom/google/a/h/a/a/b;->d(II)I

    move-result v8

    aput v8, v13, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, v16

    const/4 v8, 0x0

    goto :goto_114

    :cond_12a
    move-object/from16 v16, v11

    new-instance v4, Lcom/google/a/h/a/a/c;

    iget-object v8, v6, Lcom/google/a/h/a/a/c;->a:Lcom/google/a/h/a/a/b;

    invoke-direct {v4, v8, v13}, Lcom/google/a/h/a/a/c;-><init>(Lcom/google/a/h/a/a/b;[I)V

    move-object v13, v4

    :goto_134
    invoke-virtual {v7, v13}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v7

    move-object/from16 v11, v16

    const/4 v4, 0x1

    const/4 v8, 0x0

    goto :goto_cb

    :cond_13d
    invoke-virtual {v11, v10}, Lcom/google/a/h/a/a/c;->c(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/a/h/a/a/c;->b(Lcom/google/a/h/a/a/c;)Lcom/google/a/h/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/h/a/a/c;->b()Lcom/google/a/h/a/a/c;

    move-result-object v4

    move-object v9, v10

    const/4 v8, 0x0

    move-object v10, v4

    const/4 v4, 0x1

    goto/16 :goto_a1

    :cond_14f
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/google/a/h/a/a/c;->a(I)I

    move-result v7

    if-nez v7, :cond_15b

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0

    :cond_15b
    iget-object v8, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    invoke-virtual {v8, v7}, Lcom/google/a/h/a/a/b;->a(I)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v8

    invoke-virtual {v6, v7}, Lcom/google/a/h/a/a/c;->c(I)Lcom/google/a/h/a/a/c;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/a/h/a/a/c;

    aput-object v8, v7, v4

    const/4 v8, 0x1

    aput-object v6, v7, v8

    aget-object v6, v7, v4

    aget-object v4, v7, v8

    invoke-virtual {v5, v6}, Lcom/google/a/h/a/a/a;->a(Lcom/google/a/h/a/a/c;)[I

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/a/h/a/a/a;->a(Lcom/google/a/h/a/a/c;Lcom/google/a/h/a/a/c;[I)[I

    move-result-object v4

    const/4 v6, 0x0

    :goto_17e
    array-length v9, v7

    if-ge v6, v9, :cond_1aa

    array-length v9, v0

    sub-int/2addr v9, v8

    iget-object v10, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    aget v11, v7, v6

    if-nez v11, :cond_18f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_18f
    iget-object v10, v10, Lcom/google/a/h/a/a/b;->c:[I

    aget v10, v10, v11

    sub-int/2addr v9, v10

    if-gez v9, :cond_19b

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0

    :cond_19b
    iget-object v10, v5, Lcom/google/a/h/a/a/a;->a:Lcom/google/a/h/a/a/b;

    aget v11, v0, v9

    aget v12, v4, v6

    invoke-virtual {v10, v11, v12}, Lcom/google/a/h/a/a/b;->c(II)I

    move-result v10

    aput v10, v0, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_17e

    :cond_1aa
    array-length v8, v7

    :goto_1ab
    array-length v4, v0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1b4

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :cond_1b4
    const/4 v4, 0x0

    aget v5, v0, v4

    array-length v6, v0

    if-le v5, v6, :cond_1bf

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :cond_1bf
    if-nez v5, :cond_1ce

    array-length v5, v0

    if-ge v3, v5, :cond_1c9

    array-length v5, v0

    sub-int/2addr v5, v3

    aput v5, v0, v4

    goto :goto_1ce

    :cond_1c9
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :cond_1ce
    :goto_1ce
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/a/h/a/e;->a([ILjava/lang/String;)Lcom/google/a/c/e;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/a/c/e;->f:Ljava/lang/Integer;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/c/e;->g:Ljava/lang/Integer;

    return-object v0

    :cond_1e4
    :goto_1e4
    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v0

    throw v0
.end method

.method private static a(Lcom/google/a/h/a/h;)Lcom/google/a/h/a/c;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_12

    move-object v2, v1

    goto/16 :goto_82

    :cond_12
    iget-object v6, v0, Lcom/google/a/h/a/g;->a:Lcom/google/a/h/a/c;

    iget-boolean v7, v0, Lcom/google/a/h/a/h;->c:Z

    if-eqz v7, :cond_1b

    iget-object v7, v6, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    goto :goto_1d

    :cond_1b
    iget-object v7, v6, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    :goto_1d
    iget-boolean v8, v0, Lcom/google/a/h/a/h;->c:Z

    if-eqz v8, :cond_24

    iget-object v6, v6, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    goto :goto_26

    :cond_24
    iget-object v6, v6, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    :goto_26
    iget v7, v7, Lcom/google/a/t;->b:F

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Lcom/google/a/h/a/h;->b(I)I

    move-result v7

    iget v6, v6, Lcom/google/a/t;->b:F

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Lcom/google/a/h/a/h;->b(I)I

    move-result v6

    iget-object v8, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_39
    if-ge v7, v6, :cond_67

    aget-object v12, v8, v7

    if-eqz v12, :cond_64

    aget-object v12, v8, v7

    invoke-virtual {v12}, Lcom/google/a/h/a/d;->b()V

    iget v13, v12, Lcom/google/a/h/a/d;->e:I

    sub-int/2addr v13, v9

    if-nez v13, :cond_4c

    add-int/lit8 v10, v10, 0x1

    goto :goto_64

    :cond_4c
    if-ne v13, v5, :cond_58

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v12, Lcom/google/a/h/a/d;->e:I

    move v11, v9

    move v9, v10

    :goto_56
    const/4 v10, 0x1

    goto :goto_64

    :cond_58
    iget v13, v12, Lcom/google/a/h/a/d;->e:I

    iget v14, v2, Lcom/google/a/h/a/a;->e:I

    if-lt v13, v14, :cond_61

    aput-object v1, v8, v7

    goto :goto_64

    :cond_61
    iget v9, v12, Lcom/google/a/h/a/d;->e:I

    goto :goto_56

    :cond_64
    :goto_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_67
    iget v2, v2, Lcom/google/a/h/a/a;->e:I

    new-array v2, v2, [I

    iget-object v6, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_6f
    if-ge v8, v7, :cond_82

    aget-object v9, v6, v8

    if-eqz v9, :cond_7f

    iget v9, v9, Lcom/google/a/h/a/d;->e:I

    array-length v10, v2

    if-ge v9, v10, :cond_7f

    aget v10, v2, v9

    add-int/2addr v10, v5

    aput v10, v2, v9

    :cond_7f
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    :cond_82
    :goto_82
    if-nez v2, :cond_85

    return-object v1

    :cond_85
    array-length v1, v2

    const/4 v3, 0x0

    const/4 v6, -0x1

    :goto_88
    if-ge v3, v1, :cond_93

    aget v7, v2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    :cond_93
    array-length v1, v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_96
    if-ge v3, v1, :cond_a2

    aget v8, v2, v3

    sub-int v9, v6, v8

    add-int/2addr v7, v9

    if-gtz v8, :cond_a2

    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    :cond_a2
    iget-object v1, v0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v3, 0x0

    :goto_a5
    if-lez v7, :cond_b0

    aget-object v8, v1, v3

    if-nez v8, :cond_b0

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    :cond_b0
    array-length v3, v2

    sub-int/2addr v3, v5

    const/4 v8, 0x0

    :goto_b3
    if-ltz v3, :cond_c1

    aget v9, v2, v3

    sub-int v9, v6, v9

    add-int/2addr v8, v9

    aget v9, v2, v3

    if-gtz v9, :cond_c1

    add-int/lit8 v3, v3, -0x1

    goto :goto_b3

    :cond_c1
    array-length v2, v1

    sub-int/2addr v2, v5

    :goto_c3
    if-lez v8, :cond_ce

    aget-object v3, v1, v2

    if-nez v3, :cond_ce

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_c3

    :cond_ce
    iget-object v1, v0, Lcom/google/a/h/a/g;->a:Lcom/google/a/h/a/c;

    iget-boolean v0, v0, Lcom/google/a/h/a/h;->c:Z

    iget-object v2, v1, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    iget-object v3, v1, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    iget-object v6, v1, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    iget-object v9, v1, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    if-lez v7, :cond_fc

    if-eqz v0, :cond_e1

    iget-object v10, v1, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    goto :goto_e3

    :cond_e1
    iget-object v10, v1, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    :goto_e3
    iget v11, v10, Lcom/google/a/t;->b:F

    float-to-int v11, v11

    sub-int v7, v11, v7

    if-gez v7, :cond_eb

    goto :goto_ec

    :cond_eb
    move v4, v7

    :goto_ec
    new-instance v7, Lcom/google/a/t;

    iget v10, v10, Lcom/google/a/t;->a:F

    int-to-float v4, v4

    invoke-direct {v7, v10, v4}, Lcom/google/a/t;-><init>(FF)V

    if-eqz v0, :cond_f9

    move-object v15, v6

    move-object v13, v7

    goto :goto_fe

    :cond_f9
    move-object v13, v2

    move-object v15, v7

    goto :goto_fe

    :cond_fc
    move-object v13, v2

    move-object v15, v6

    :goto_fe
    if-lez v8, :cond_126

    if-eqz v0, :cond_105

    iget-object v2, v1, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    goto :goto_107

    :cond_105
    iget-object v2, v1, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    :goto_107
    iget v4, v2, Lcom/google/a/t;->b:F

    float-to-int v4, v4

    add-int/2addr v4, v8

    iget-object v6, v1, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iget v6, v6, Lcom/google/a/c/b;->b:I

    if-lt v4, v6, :cond_116

    iget-object v4, v1, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iget v4, v4, Lcom/google/a/c/b;->b:I

    sub-int/2addr v4, v5

    :cond_116
    new-instance v5, Lcom/google/a/t;

    iget v2, v2, Lcom/google/a/t;->a:F

    int-to-float v4, v4

    invoke-direct {v5, v2, v4}, Lcom/google/a/t;-><init>(FF)V

    if-eqz v0, :cond_122

    move-object v14, v5

    goto :goto_127

    :cond_122
    move-object v14, v3

    move-object/from16 v16, v5

    goto :goto_129

    :cond_126
    move-object v14, v3

    :goto_127
    move-object/from16 v16, v9

    :goto_129
    new-instance v0, Lcom/google/a/h/a/c;

    iget-object v12, v1, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/a/h/a/c;-><init>(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)V

    return-object v0
.end method

.method private static a(Lcom/google/a/c/b;IIZIIII)Lcom/google/a/h/a/d;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p5

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p3, :cond_e

    const/4 v7, -0x1

    goto :goto_f

    :cond_e
    const/4 v7, 0x1

    :goto_f
    move/from16 v11, p3

    move/from16 v9, p4

    move v10, v7

    const/4 v7, 0x0

    :goto_15
    const/4 v12, 0x2

    if-ge v7, v12, :cond_3b

    :goto_18
    if-eqz v11, :cond_1d

    if-lt v9, v1, :cond_32

    goto :goto_1f

    :cond_1d
    if-ge v9, v2, :cond_32

    :goto_1f
    invoke-virtual {v0, v9, v4}, Lcom/google/a/c/b;->a(II)Z

    move-result v13

    if-ne v11, v13, :cond_32

    sub-int v14, p4, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-le v14, v12, :cond_30

    move/from16 v9, p4

    goto :goto_3b

    :cond_30
    add-int/2addr v9, v10

    goto :goto_18

    :cond_32
    neg-int v10, v10

    if-nez v11, :cond_37

    const/4 v11, 0x1

    goto :goto_38

    :cond_37
    const/4 v11, 0x0

    :goto_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_3b
    :goto_3b
    const/16 v7, 0x8

    new-array v10, v7, [I

    if-eqz p3, :cond_43

    const/4 v11, 0x1

    goto :goto_44

    :cond_43
    const/4 v11, -0x1

    :goto_44
    move/from16 v15, p3

    move v13, v9

    const/4 v14, 0x0

    :goto_48
    if-eqz p3, :cond_4d

    if-ge v13, v2, :cond_66

    goto :goto_4f

    :cond_4d
    if-lt v13, v1, :cond_66

    :goto_4f
    if-ge v14, v7, :cond_66

    invoke-virtual {v0, v13, v4}, Lcom/google/a/c/b;->a(II)Z

    move-result v8

    if-ne v8, v15, :cond_5e

    aget v8, v10, v14

    add-int/2addr v8, v6

    aput v8, v10, v14

    add-int/2addr v13, v11

    goto :goto_48

    :cond_5e
    add-int/lit8 v14, v14, 0x1

    if-nez v15, :cond_64

    const/4 v15, 0x1

    goto :goto_48

    :cond_64
    const/4 v15, 0x0

    goto :goto_48

    :cond_66
    const/4 v0, 0x0

    if-eq v14, v7, :cond_73

    if-eqz p3, :cond_6c

    move v1, v2

    :cond_6c
    if-ne v13, v1, :cond_72

    const/4 v1, 0x7

    if-ne v14, v1, :cond_72

    goto :goto_73

    :cond_72
    move-object v10, v0

    :cond_73
    :goto_73
    if-nez v10, :cond_76

    return-object v0

    :cond_76
    invoke-static {v10}, Lcom/google/a/c/a/a;->a([I)I

    move-result v1

    if-eqz p3, :cond_80

    add-int v2, v9, v1

    move v3, v2

    goto :goto_9a

    :cond_80
    const/4 v2, 0x0

    :goto_81
    array-length v3, v10

    div-int/2addr v3, v12

    if-ge v2, v3, :cond_96

    aget v3, v10, v2

    array-length v4, v10

    sub-int/2addr v4, v6

    sub-int/2addr v4, v2

    aget v4, v10, v4

    aput v4, v10, v2

    array-length v4, v10

    sub-int/2addr v4, v6

    sub-int/2addr v4, v2

    aput v3, v10, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    :cond_96
    sub-int v2, v9, v1

    move v3, v9

    move v9, v2

    :goto_9a
    add-int/lit8 v2, p6, -0x2

    if-gt v2, v1, :cond_a3

    add-int/lit8 v2, p7, 0x2

    if-gt v1, v2, :cond_a3

    goto :goto_a4

    :cond_a3
    const/4 v6, 0x0

    :goto_a4
    if-nez v6, :cond_a7

    return-object v0

    :cond_a7
    invoke-static {v10}, Lcom/google/a/h/a/i;->a([I)I

    move-result v1

    invoke-static {v1}, Lcom/google/a/h/a;->a(I)I

    move-result v2

    if-ne v2, v5, :cond_b2

    return-object v0

    :cond_b2
    new-instance v0, Lcom/google/a/h/a/d;

    invoke-static {v1}, Lcom/google/a/h/a/j;->b(I)[I

    move-result-object v1

    const/4 v4, 0x0

    aget v4, v1, v4

    aget v5, v1, v12

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v1, v5

    add-int/2addr v4, v5

    const/4 v5, 0x6

    aget v1, v1, v5

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x9

    rem-int/lit8 v4, v4, 0x9

    invoke-direct {v0, v9, v3, v4, v2}, Lcom/google/a/h/a/d;-><init>(IIII)V

    return-object v0
.end method

.method private static a(Lcom/google/a/h/a/h;Lcom/google/a/h/a/h;)Lcom/google/a/h/a/f;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_2b

    :cond_f
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_33

    :cond_18
    iget v3, v1, Lcom/google/a/h/a/a;->a:I

    iget v4, v2, Lcom/google/a/h/a/a;->a:I

    if-eq v3, v4, :cond_33

    iget v3, v1, Lcom/google/a/h/a/a;->b:I

    iget v4, v2, Lcom/google/a/h/a/a;->b:I

    if-eq v3, v4, :cond_33

    iget v3, v1, Lcom/google/a/h/a/a;->e:I

    iget v2, v2, Lcom/google/a/h/a/a;->e:I

    if-eq v3, v2, :cond_33

    goto :goto_2d

    :cond_2b
    :goto_2b
    if-nez p1, :cond_2f

    :goto_2d
    move-object v1, v0

    goto :goto_33

    :cond_2f
    invoke-virtual {p1}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object v1

    :cond_33
    :goto_33
    if-nez v1, :cond_36

    return-object v0

    :cond_36
    invoke-static {p0}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/h;)Lcom/google/a/h/a/c;

    move-result-object p0

    invoke-static {p1}, Lcom/google/a/h/a/j;->a(Lcom/google/a/h/a/h;)Lcom/google/a/h/a/c;

    move-result-object p1

    if-nez p0, :cond_42

    move-object p0, p1

    goto :goto_56

    :cond_42
    if-nez p1, :cond_45

    goto :goto_56

    :cond_45
    new-instance v0, Lcom/google/a/h/a/c;

    iget-object v3, p0, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iget-object v4, p0, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    iget-object v5, p0, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    iget-object v6, p1, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    iget-object v7, p1, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/a/h/a/c;-><init>(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)V

    move-object p0, v0

    :goto_56
    new-instance p1, Lcom/google/a/h/a/f;

    invoke-direct {p1, v1, p0}, Lcom/google/a/h/a/f;-><init>(Lcom/google/a/h/a/a;Lcom/google/a/h/a/c;)V

    return-object p1
.end method

.method private static a(Lcom/google/a/c/b;Lcom/google/a/h/a/c;Lcom/google/a/t;ZII)Lcom/google/a/h/a/h;
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v10, p3

    new-instance v11, Lcom/google/a/h/a/h;

    invoke-direct {v11, v0, v10}, Lcom/google/a/h/a/h;-><init>(Lcom/google/a/h/a/c;Z)V

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_d
    const/4 v2, 0x2

    if-ge v12, v2, :cond_49

    if-nez v12, :cond_15

    const/4 v2, 0x1

    const/4 v13, 0x1

    goto :goto_17

    :cond_15
    const/4 v2, -0x1

    const/4 v13, -0x1

    :goto_17
    iget v2, v1, Lcom/google/a/t;->a:F

    float-to-int v2, v2

    iget v3, v1, Lcom/google/a/t;->b:F

    float-to-int v3, v3

    move v15, v2

    move v14, v3

    :goto_1f
    iget v2, v0, Lcom/google/a/h/a/c;->i:I

    if-gt v14, v2, :cond_46

    iget v2, v0, Lcom/google/a/h/a/c;->h:I

    if-lt v14, v2, :cond_46

    const/4 v3, 0x0

    move-object/from16 v9, p0

    iget v4, v9, Lcom/google/a/c/b;->a:I

    move-object v2, v9

    move v5, v10

    move v6, v15

    move v7, v14

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/google/a/h/a/j;->a(Lcom/google/a/c/b;IIZIIII)Lcom/google/a/h/a/d;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v11, v14, v2}, Lcom/google/a/h/a/h;->a(ILcom/google/a/h/a/d;)V

    if-eqz v10, :cond_42

    iget v15, v2, Lcom/google/a/h/a/d;->a:I

    goto :goto_44

    :cond_42
    iget v15, v2, Lcom/google/a/h/a/d;->b:I

    :cond_44
    :goto_44
    add-int/2addr v14, v13

    goto :goto_1f

    :cond_46
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_49
    return-object v11
.end method

.method private static a([[Lcom/google/a/h/a/b;)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x0

    :try_start_8
    array-length v4, p0

    if-ge v2, v4, :cond_65

    const-string v4, "Row %2d: "

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v0, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v4, 0x0

    :goto_1a
    aget-object v6, p0, v2

    array-length v6, v6

    if-ge v4, v6, :cond_5b

    aget-object v6, p0, v2

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_30

    const-string v6, "        "

    invoke-virtual {v0, v6, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_58

    :cond_30
    const-string v7, "%4d(%2d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v9

    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v6}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v9

    aget v9, v9, v1

    iget-object v6, v6, Lcom/google/a/h/a/b;->a:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    aput-object v6, v8, v5

    invoke-virtual {v0, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_5b
    const-string v4, "%n"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_65
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_69} :catch_6f
    .catchall {:try_start_8 .. :try_end_69} :catchall_6d

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object p0

    :catchall_6d
    move-exception p0

    goto :goto_72

    :catch_6f
    move-exception p0

    move-object v3, p0

    :try_start_71
    throw v3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_6d

    :goto_72
    if-eqz v3, :cond_7d

    :try_start_74
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_80

    :catch_78
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_80

    :cond_7d
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    :goto_80
    throw p0
.end method

.method private static a(Lcom/google/a/h/a/f;[[Lcom/google/a/h/a/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v1

    iget v2, p0, Lcom/google/a/h/a/f;->d:I

    iget-object v3, p0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v3, v3, Lcom/google/a/h/a/a;->e:I

    mul-int v2, v2, v3

    iget-object p0, p0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget p0, p0, Lcom/google/a/h/a/a;->b:I

    const/4 v3, 0x2

    shl-int p0, v3, p0

    sub-int/2addr v2, p0

    array-length p0, v1

    if-nez p0, :cond_2d

    if-lez v2, :cond_28

    const/16 p0, 0x3a0

    if-le v2, p0, :cond_24

    goto :goto_28

    :cond_24
    invoke-virtual {p1, v2}, Lcom/google/a/h/a/b;->a(I)V

    return-void

    :cond_28
    :goto_28
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_2d
    aget p0, v1, v0

    if-eq p0, v2, :cond_34

    invoke-virtual {p1, v2}, Lcom/google/a/h/a/b;->a(I)V

    :cond_34
    return-void
.end method

.method private static a([II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_9

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_9
    const/4 v0, 0x0

    aget v1, p0, v0

    array-length v2, p0

    if-le v1, v2, :cond_14

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_14
    if-nez v1, :cond_23

    array-length v1, p0

    if-ge p1, v1, :cond_1e

    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    return-void

    :cond_1e
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_23
    return-void
.end method

.method private static a(III)Z
    .registers 3

    add-int/lit8 p1, p1, -0x2

    if-gt p1, p0, :cond_a

    add-int/lit8 p2, p2, 0x2

    if-gt p0, p2, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/google/a/h/a/f;I)Z
    .registers 3

    if-ltz p1, :cond_9

    iget p0, p0, Lcom/google/a/h/a/f;->d:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    if-gt p1, p0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/google/a/c/b;IIZII)[I
    .registers 14

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x1

    if-eqz p3, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, -0x1

    :goto_a
    const/4 v4, 0x0

    move v6, p3

    const/4 v5, 0x0

    :goto_d
    if-eqz p3, :cond_12

    if-ge p4, p2, :cond_2b

    goto :goto_14

    :cond_12
    if-lt p4, p1, :cond_2b

    :goto_14
    if-ge v5, v0, :cond_2b

    invoke-virtual {p0, p4, p5}, Lcom/google/a/c/b;->a(II)Z

    move-result v7

    if-ne v7, v6, :cond_23

    aget v7, v1, v5

    add-int/2addr v7, v2

    aput v7, v1, v5

    add-int/2addr p4, v3

    goto :goto_d

    :cond_23
    add-int/lit8 v5, v5, 0x1

    if-nez v6, :cond_29

    const/4 v6, 0x1

    goto :goto_d

    :cond_29
    const/4 v6, 0x0

    goto :goto_d

    :cond_2b
    if-eq v5, v0, :cond_38

    if-eqz p3, :cond_30

    move p1, p2

    :cond_30
    if-ne p4, p1, :cond_36

    const/4 p0, 0x7

    if-ne v5, p0, :cond_36

    return-object v1

    :cond_36
    const/4 p0, 0x0

    return-object p0

    :cond_38
    return-object v1
.end method

.method private static b(Lcom/google/a/c/b;IIZII)I
    .registers 13

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    const/4 v1, -0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x1

    :goto_6
    const/4 v2, 0x0

    move v4, p3

    move v3, v1

    const/4 p3, 0x0

    move v1, p4

    :goto_b
    const/4 v5, 0x2

    if-ge p3, v5, :cond_2f

    :goto_e
    if-eqz v4, :cond_13

    if-lt v1, p1, :cond_26

    goto :goto_15

    :cond_13
    if-ge v1, p2, :cond_26

    :goto_15
    invoke-virtual {p0, v1, p5}, Lcom/google/a/c/b;->a(II)Z

    move-result v6

    if-ne v4, v6, :cond_26

    sub-int v6, p4, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v5, :cond_24

    return p4

    :cond_24
    add-int/2addr v1, v3

    goto :goto_e

    :cond_26
    neg-int v3, v3

    if-nez v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_2f
    return v1
.end method

.method private static b([I)I
    .registers 3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget p0, p0, v1

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static b(Lcom/google/a/h/a/h;Lcom/google/a/h/a/h;)Lcom/google/a/h/a/a;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_27

    :cond_a
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object p1

    if-nez p1, :cond_13

    return-object p0

    :cond_13
    iget v1, p0, Lcom/google/a/h/a/a;->a:I

    iget v2, p1, Lcom/google/a/h/a/a;->a:I

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/google/a/h/a/a;->b:I

    iget v2, p1, Lcom/google/a/h/a/a;->b:I

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/google/a/h/a/a;->e:I

    iget p1, p1, Lcom/google/a/h/a/a;->e:I

    if-eq v1, p1, :cond_26

    return-object v0

    :cond_26
    return-object p0

    :cond_27
    :goto_27
    if-nez p1, :cond_2a

    return-object v0

    :cond_2a
    invoke-virtual {p1}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object p0

    return-object p0
.end method

.method private static b(I)[I
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    :goto_6
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_11

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    return-object v0

    :cond_11
    :goto_11
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    shr-int/lit8 p0, p0, 0x1

    goto :goto_6
.end method

.method private static b(Lcom/google/a/h/a/f;)[[Lcom/google/a/h/a/b;
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/h/a/f;->a:Lcom/google/a/h/a/a;

    iget v1, v1, Lcom/google/a/h/a/a;->e:I

    iget v2, v0, Lcom/google/a/h/a/f;->d:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Lcom/google/a/h/a/b;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/google/a/h/a/b;

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_18
    array-length v5, v1

    if-ge v4, v5, :cond_30

    const/4 v5, 0x0

    :goto_1c
    aget-object v6, v1, v4

    array-length v6, v6

    if-ge v5, v6, :cond_2d

    aget-object v6, v1, v4

    new-instance v7, Lcom/google/a/h/a/b;

    invoke-direct {v7}, Lcom/google/a/h/a/b;-><init>()V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_30
    iget-object v4, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/google/a/h/a/f;->a(Lcom/google/a/h/a/g;)V

    iget-object v4, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v5, v0, Lcom/google/a/h/a/f;->d:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/google/a/h/a/f;->a(Lcom/google/a/h/a/g;)V

    const/16 v4, 0x3a0

    :goto_44
    iget-object v5, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v5, v5, v2

    if-eqz v5, :cond_a3

    iget-object v5, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v7, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v7, v6

    aget-object v5, v5, v7

    if-nez v5, :cond_54

    goto :goto_a3

    :cond_54
    iget-object v5, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    iget-object v7, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v8, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v8, 0x0

    :goto_64
    array-length v9, v5

    if-ge v8, v9, :cond_a3

    aget-object v9, v5, v8

    if-eqz v9, :cond_a0

    aget-object v9, v7, v8

    if-eqz v9, :cond_a0

    aget-object v9, v5, v8

    iget v9, v9, Lcom/google/a/h/a/d;->e:I

    aget-object v10, v7, v8

    iget v10, v10, Lcom/google/a/h/a/d;->e:I

    if-ne v9, v10, :cond_a0

    const/4 v9, 0x1

    :goto_7a
    iget v10, v0, Lcom/google/a/h/a/f;->d:I

    if-gt v9, v10, :cond_a0

    iget-object v10, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v10, v10, v9

    iget-object v10, v10, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v10, v10, v8

    if-eqz v10, :cond_9d

    aget-object v11, v5, v8

    iget v11, v11, Lcom/google/a/h/a/d;->e:I

    iput v11, v10, Lcom/google/a/h/a/d;->e:I

    invoke-virtual {v10}, Lcom/google/a/h/a/d;->a()Z

    move-result v10

    if-nez v10, :cond_9d

    iget-object v10, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v10, v10, v9

    iget-object v10, v10, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v11, 0x0

    aput-object v11, v10, v8

    :cond_9d
    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    :cond_a0
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    :cond_a3
    :goto_a3
    iget-object v5, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v5, v5, v2

    if-nez v5, :cond_ab

    const/4 v8, 0x0

    goto :goto_e5

    :cond_ab
    iget-object v5, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_b3
    array-length v9, v5

    if-ge v7, v9, :cond_e5

    aget-object v9, v5, v7

    if-eqz v9, :cond_e2

    aget-object v9, v5, v7

    iget v9, v9, Lcom/google/a/h/a/d;->e:I

    move v11, v8

    const/4 v8, 0x1

    const/4 v10, 0x0

    :goto_c1
    iget v12, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v12, v6

    if-ge v8, v12, :cond_e1

    if-ge v10, v3, :cond_e1

    iget-object v12, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v12, v12, v8

    iget-object v12, v12, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v12, v12, v7

    if-eqz v12, :cond_de

    invoke-static {v9, v10, v12}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v10

    invoke-virtual {v12}, Lcom/google/a/h/a/d;->a()Z

    move-result v12

    if-nez v12, :cond_de

    add-int/lit8 v11, v11, 0x1

    :cond_de
    add-int/lit8 v8, v8, 0x1

    goto :goto_c1

    :cond_e1
    move v8, v11

    :cond_e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_b3

    :cond_e5
    :goto_e5
    iget-object v5, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v7, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v7, v6

    aget-object v5, v5, v7

    if-nez v5, :cond_f0

    const/4 v9, 0x0

    goto :goto_12c

    :cond_f0
    iget-object v5, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    iget v7, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v7, v6

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_fb
    array-length v10, v5

    if-ge v7, v10, :cond_12c

    aget-object v10, v5, v7

    if-eqz v10, :cond_129

    aget-object v10, v5, v7

    iget v10, v10, Lcom/google/a/h/a/d;->e:I

    iget v11, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v11, v6

    move v12, v9

    const/4 v9, 0x0

    :goto_10b
    if-lez v11, :cond_128

    if-ge v9, v3, :cond_128

    iget-object v13, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v13, v13, v11

    iget-object v13, v13, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v13, v13, v7

    if-eqz v13, :cond_125

    invoke-static {v10, v9, v13}, Lcom/google/a/h/a/f;->a(IILcom/google/a/h/a/d;)I

    move-result v9

    invoke-virtual {v13}, Lcom/google/a/h/a/d;->a()Z

    move-result v13

    if-nez v13, :cond_125

    add-int/lit8 v12, v12, 0x1

    :cond_125
    add-int/lit8 v11, v11, -0x1

    goto :goto_10b

    :cond_128
    move v9, v12

    :cond_129
    add-int/lit8 v7, v7, 0x1

    goto :goto_fb

    :cond_12c
    :goto_12c
    add-int v5, v8, v9

    if-nez v5, :cond_132

    goto/16 :goto_1f8

    :cond_132
    const/4 v7, 0x1

    :goto_133
    iget v8, v0, Lcom/google/a/h/a/f;->d:I

    add-int/2addr v8, v6

    if-ge v7, v8, :cond_1f7

    iget-object v8, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v9, 0x0

    :goto_13f
    array-length v10, v8

    if-ge v9, v10, :cond_1f2

    aget-object v10, v8, v9

    if-eqz v10, :cond_1ed

    aget-object v10, v8, v9

    invoke-virtual {v10}, Lcom/google/a/h/a/d;->a()Z

    move-result v10

    if-nez v10, :cond_1ed

    aget-object v10, v8, v9

    iget-object v11, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v12, v7, -0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    iget-object v12, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    add-int/lit8 v13, v7, 0x1

    aget-object v12, v12, v13

    if-eqz v12, :cond_167

    iget-object v12, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    goto :goto_168

    :cond_167
    move-object v12, v11

    :goto_168
    const/16 v13, 0xe

    new-array v14, v13, [Lcom/google/a/h/a/d;

    aget-object v15, v11, v9

    aput-object v15, v14, v3

    const/4 v15, 0x3

    aget-object v16, v12, v9

    aput-object v16, v14, v15

    if-lez v9, :cond_189

    add-int/lit8 v15, v9, -0x1

    aget-object v16, v8, v15

    aput-object v16, v14, v2

    const/16 v16, 0x4

    aget-object v17, v11, v15

    aput-object v17, v14, v16

    const/16 v16, 0x5

    aget-object v15, v12, v15

    aput-object v15, v14, v16

    :cond_189
    if-le v9, v6, :cond_19f

    const/16 v15, 0x8

    add-int/lit8 v16, v9, -0x2

    aget-object v17, v8, v16

    aput-object v17, v14, v15

    const/16 v15, 0xa

    aget-object v17, v11, v16

    aput-object v17, v14, v15

    const/16 v15, 0xb

    aget-object v16, v12, v16

    aput-object v16, v14, v15

    :cond_19f
    array-length v15, v8

    sub-int/2addr v15, v6

    if-ge v9, v15, :cond_1b5

    add-int/lit8 v15, v9, 0x1

    aget-object v16, v8, v15

    aput-object v16, v14, v6

    const/16 v16, 0x6

    aget-object v17, v11, v15

    aput-object v17, v14, v16

    const/16 v16, 0x7

    aget-object v15, v12, v15

    aput-object v15, v14, v16

    :cond_1b5
    array-length v15, v8

    sub-int/2addr v15, v3

    if-ge v9, v15, :cond_1cd

    const/16 v15, 0x9

    add-int/lit8 v16, v9, 0x2

    aget-object v17, v8, v16

    aput-object v17, v14, v15

    const/16 v15, 0xc

    aget-object v11, v11, v16

    aput-object v11, v14, v15

    const/16 v11, 0xd

    aget-object v12, v12, v16

    aput-object v12, v14, v11

    :cond_1cd
    const/4 v11, 0x0

    :goto_1ce
    if-ge v11, v13, :cond_1ed

    aget-object v12, v14, v11

    if-eqz v12, :cond_1e6

    invoke-virtual {v12}, Lcom/google/a/h/a/d;->a()Z

    move-result v15

    if-eqz v15, :cond_1e6

    iget v15, v12, Lcom/google/a/h/a/d;->c:I

    iget v2, v10, Lcom/google/a/h/a/d;->c:I

    if-ne v15, v2, :cond_1e6

    iget v2, v12, Lcom/google/a/h/a/d;->e:I

    iput v2, v10, Lcom/google/a/h/a/d;->e:I

    const/4 v2, 0x1

    goto :goto_1e7

    :cond_1e6
    const/4 v2, 0x0

    :goto_1e7
    if-nez v2, :cond_1ed

    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_1ce

    :cond_1ed
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto/16 :goto_13f

    :cond_1f2
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto/16 :goto_133

    :cond_1f7
    move v2, v5

    :goto_1f8
    if-lez v2, :cond_201

    if-lt v2, v4, :cond_1fd

    goto :goto_201

    :cond_1fd
    move v4, v2

    const/4 v2, 0x0

    goto/16 :goto_44

    :cond_201
    :goto_201
    iget-object v0, v0, Lcom/google/a/h/a/f;->b:[Lcom/google/a/h/a/g;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_206
    if-ge v3, v2, :cond_22e

    aget-object v5, v0, v3

    if-eqz v5, :cond_229

    iget-object v5, v5, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_210
    if-ge v7, v6, :cond_229

    aget-object v8, v5, v7

    if-eqz v8, :cond_226

    iget v9, v8, Lcom/google/a/h/a/d;->e:I

    if-ltz v9, :cond_226

    array-length v10, v1

    if-ge v9, v10, :cond_226

    aget-object v9, v1, v9

    aget-object v9, v9, v4

    iget v8, v8, Lcom/google/a/h/a/d;->d:I

    invoke-virtual {v9, v8}, Lcom/google/a/h/a/b;->a(I)V

    :cond_226
    add-int/lit8 v7, v7, 0x1

    goto :goto_210

    :cond_229
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_206

    :cond_22e
    return-object v1
.end method

.method private static c(I)I
    .registers 6

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x7

    :goto_8
    and-int/lit8 v4, p0, 0x1

    if-eq v4, v2, :cond_25

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_12

    move v2, v4

    goto :goto_25

    :cond_12
    aget p0, v0, v1

    const/4 v1, 0x2

    aget v1, v0, v1

    sub-int/2addr p0, v1

    const/4 v1, 0x4

    aget v1, v0, v1

    add-int/2addr p0, v1

    const/4 v1, 0x6

    aget v0, v0, v1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x9

    rem-int/lit8 p0, p0, 0x9

    return p0

    :cond_25
    :goto_25
    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    shr-int/lit8 p0, p0, 0x1

    goto :goto_8
.end method
