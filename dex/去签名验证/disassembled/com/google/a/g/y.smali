.class public abstract Lcom/google/a/g/y;
.super Lcom/google/a/g/r;


# static fields
.field private static final a:F = 0.48f

.field static final b:[I

.field static final c:[I

.field static final d:[I

.field static final e:[[I

.field static final f:[[I

.field private static final g:F = 0.7f


# instance fields
.field private final h:Ljava/lang/StringBuilder;

.field private final i:Lcom/google/a/g/x;

.field private final j:Lcom/google/a/g/m;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_9c

    sput-object v1, Lcom/google/a/g/y;->b:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    fill-array-data v2, :array_a6

    sput-object v2, Lcom/google/a/g/y;->c:[I

    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_b4

    sput-object v3, Lcom/google/a/g/y;->d:[I

    const/16 v3, 0xa

    new-array v4, v3, [[I

    const/4 v5, 0x4

    new-array v6, v5, [I

    fill-array-data v6, :array_c4

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_d0

    const/4 v8, 0x1

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_dc

    const/4 v9, 0x2

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_e8

    aput-object v6, v4, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_f4

    aput-object v0, v4, v5

    new-array v0, v5, [I

    fill-array-data v0, :array_100

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_10c

    aput-object v0, v4, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_118

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_124

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_130

    const/16 v1, 0x9

    aput-object v0, v4, v1

    sput-object v4, Lcom/google/a/g/y;->e:[[I

    const/16 v0, 0x14

    new-array v1, v0, [[I

    sput-object v1, Lcom/google/a/g/y;->f:[[I

    sget-object v1, Lcom/google/a/g/y;->e:[[I

    sget-object v2, Lcom/google/a/g/y;->f:[[I

    invoke-static {v1, v7, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7a
    if-ge v3, v0, :cond_9a

    sget-object v1, Lcom/google/a/g/y;->e:[[I

    add-int/lit8 v2, v3, -0xa

    aget-object v1, v1, v2

    array-length v2, v1

    new-array v2, v2, [I

    const/4 v4, 0x0

    :goto_86
    array-length v5, v1

    if-ge v4, v5, :cond_93

    array-length v5, v1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    aget v5, v1, v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    :cond_93
    sget-object v1, Lcom/google/a/g/y;->f:[[I

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    :cond_9a
    return-void

    nop

    :array_9c
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_a6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_b4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_c4
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_d0
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_dc
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_e8
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_f4
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_100
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_10c
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_118
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_124
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_130
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/a/g/r;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/a/g/y;->h:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/a/g/x;

    invoke-direct {v0}, Lcom/google/a/g/x;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/y;->i:Lcom/google/a/g/x;

    new-instance v0, Lcom/google/a/g/m;

    invoke-direct {v0}, Lcom/google/a/g/m;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/y;->j:Lcom/google/a/g/m;

    return-void
.end method

.method static a(Lcom/google/a/c/a;[II[[I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-static {p0, p2, p1}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;I[I)V

    array-length p0, p3

    const p2, 0x3ef5c28f    # 0.48f

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p0, :cond_1d

    aget-object v2, p3, v1

    const v3, 0x3f333333    # 0.7f

    invoke-static {p1, v2, v3}, Lcom/google/a/g/y;->a([I[IF)F

    move-result v2

    cmpg-float v3, v2, p2

    if-gez v3, :cond_1a

    move v0, v1

    move p2, v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    if-ltz v0, :cond_20

    return v0

    :cond_20
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method static a(Ljava/lang/CharSequence;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/google/a/g/y;->b(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v3, :cond_1f

    return v2

    :cond_1f
    return v1
.end method

.method static a(Lcom/google/a/c/a;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    sget-object v0, Lcom/google/a/g/y;->b:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-nez v2, :cond_29

    sget-object v4, Lcom/google/a/g/y;->b:[I

    array-length v4, v4

    invoke-static {v0, v1, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    sget-object v4, Lcom/google/a/g/y;->b:[I

    invoke-static {p0, v3, v1, v4, v0}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;IZ[I[I)[I

    move-result-object v4

    aget v3, v4, v1

    const/4 v5, 0x1

    aget v5, v4, v5

    sub-int v6, v5, v3

    sub-int v6, v3, v6

    if-ltz v6, :cond_27

    invoke-virtual {p0, v6, v3}, Lcom/google/a/c/a;->a(II)Z

    move-result v2

    :cond_27
    move v3, v5

    goto :goto_a

    :cond_29
    return-object v4
.end method

.method static a(Lcom/google/a/c/a;IZ[I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;IZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/a/c/a;IZ[I[I)[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/c/a;->b:I

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->d(I)I

    move-result p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->c(I)I

    move-result p1

    :goto_d
    array-length v1, p3

    const/4 v2, 0x0

    move v4, p1

    const/4 v3, 0x0

    :goto_11
    if-ge p1, v0, :cond_58

    invoke-virtual {p0, p1}, Lcom/google/a/c/a;->a(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, p2, :cond_20

    aget v5, p4, v3

    add-int/2addr v5, v6

    aput v5, p4, v3

    goto :goto_55

    :cond_20
    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_4c

    const v5, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v5}, Lcom/google/a/g/y;->a([I[IF)F

    move-result v5

    const v7, 0x3ef5c28f    # 0.48f

    cmpg-float v5, v5, v7

    const/4 v7, 0x2

    if-gez v5, :cond_3a

    new-array p0, v7, [I

    aput v4, p0, v2

    aput p1, p0, v6

    return-object p0

    :cond_3a
    aget v5, p4, v2

    aget v8, p4, v6

    add-int/2addr v5, v8

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    invoke-static {p4, v7, p4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v2, p4, v5

    aput v2, p4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_4e

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    :goto_4e
    aput v6, p4, v3

    if-nez p2, :cond_53

    goto :goto_54

    :cond_53
    const/4 v6, 0x0

    :goto_54
    move p2, v6

    :goto_55
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_58
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method static b(Ljava/lang/CharSequence;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0x9

    if-ltz v1, :cond_1f

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_1a

    if-le v4, v3, :cond_16

    goto :goto_1a

    :cond_16
    add-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x2

    goto :goto_7

    :cond_1a
    :goto_1a
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_1f
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x2

    :goto_23
    if-ltz v0, :cond_39

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-ltz v1, :cond_34

    if-le v1, v3, :cond_30

    goto :goto_34

    :cond_30
    add-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_23

    :cond_34
    :goto_34
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_39
    rsub-int p0, v2, 0x3e8

    rem-int/lit8 p0, p0, 0xa

    return p0
.end method


# virtual methods
.method protected abstract a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation
.end method

.method public a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .registers 5
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
            Lcom/google/a/m;,
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/a/g/y;->a(ILcom/google/a/c/a;[ILjava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/google/a/c/a;[ILjava/util/Map;)Lcom/google/a/r;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/a/c/a;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_5

    move-object v1, v0

    goto :goto_d

    :cond_5
    sget-object v1, Lcom/google/a/e;->NEED_RESULT_POINT_CALLBACK:Lcom/google/a/e;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/u;

    :goto_d
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_20

    new-instance v5, Lcom/google/a/t;

    aget v6, p3, v4

    aget v7, p3, v3

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v2

    int-to-float v7, p1

    invoke-direct {v5, v6, v7}, Lcom/google/a/t;-><init>(FF)V

    :cond_20
    iget-object v5, p0, Lcom/google/a/g/y;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0, p2, p3, v5}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I

    move-result v6

    if-eqz v1, :cond_32

    new-instance v7, Lcom/google/a/t;

    int-to-float v8, v6

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/google/a/t;-><init>(FF)V

    :cond_32
    invoke-virtual {p0, p2, v6}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;I)[I

    move-result-object v6

    if-eqz v1, :cond_45

    new-instance v1, Lcom/google/a/t;

    aget v7, v6, v4

    aget v8, v6, v3

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v2

    int-to-float v8, p1

    invoke-direct {v1, v7, v8}, Lcom/google/a/t;-><init>(FF)V

    :cond_45
    aget v1, v6, v3

    aget v7, v6, v4

    sub-int v7, v1, v7

    add-int/2addr v7, v1

    iget v8, p2, Lcom/google/a/c/a;->b:I

    if-ge v7, v8, :cond_142

    invoke-virtual {p2, v1, v7}, Lcom/google/a/c/a;->a(II)Z

    move-result v1

    if-nez v1, :cond_58

    goto/16 :goto_142

    :cond_58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x8

    if-ge v5, v7, :cond_69

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p1

    throw p1

    :cond_69
    invoke-virtual {p0, v1}, Lcom/google/a/g/y;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_74

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object p1

    throw p1

    :cond_74
    aget v5, p3, v3

    aget p3, p3, v4

    add-int/2addr v5, p3

    int-to-float p3, v5

    div-float/2addr p3, v2

    aget v5, v6, v3

    aget v7, v6, v4

    add-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {p0}, Lcom/google/a/g/y;->b()Lcom/google/a/a;

    move-result-object v2

    new-instance v7, Lcom/google/a/r;

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/a/t;

    new-instance v9, Lcom/google/a/t;

    int-to-float v10, p1

    invoke-direct {v9, p3, v10}, Lcom/google/a/t;-><init>(FF)V

    aput-object v9, v8, v4

    new-instance p3, Lcom/google/a/t;

    invoke-direct {p3, v5, v10}, Lcom/google/a/t;-><init>(FF)V

    aput-object p3, v8, v3

    invoke-direct {v7, v1, v0, v8, v2}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    :try_start_9d
    iget-object p3, p0, Lcom/google/a/g/y;->i:Lcom/google/a/g/x;

    aget v5, v6, v3

    invoke-virtual {p3, p1, p2, v5}, Lcom/google/a/g/x;->a(ILcom/google/a/c/a;I)Lcom/google/a/r;

    move-result-object p1

    sget-object p2, Lcom/google/a/s;->UPC_EAN_EXTENSION:Lcom/google/a/s;

    iget-object p3, p1, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-virtual {v7, p2, p3}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/google/a/r;->f:Ljava/util/Map;

    invoke-virtual {v7, p2}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    iget-object p2, p1, Lcom/google/a/r;->d:[Lcom/google/a/t;

    iget-object p3, v7, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-nez p3, :cond_ba

    iput-object p2, v7, Lcom/google/a/r;->d:[Lcom/google/a/t;

    goto :goto_cf

    :cond_ba
    if-eqz p2, :cond_cf

    array-length v5, p2

    if-lez v5, :cond_cf

    array-length v5, p3

    array-length v6, p2

    add-int/2addr v5, v6

    new-array v5, v5, [Lcom/google/a/t;

    array-length v6, p3

    invoke-static {p3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    array-length v6, p2

    invoke-static {p2, v4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v7, Lcom/google/a/r;->d:[Lcom/google/a/t;

    :cond_cf
    :goto_cf
    iget-object p1, p1, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_d5
    .catch Lcom/google/a/q; {:try_start_9d .. :try_end_d5} :catch_d6

    goto :goto_d7

    :catch_d6
    const/4 p1, 0x0

    :goto_d7
    if-nez p4, :cond_db

    move-object p2, v0

    goto :goto_e3

    :cond_db
    sget-object p2, Lcom/google/a/e;->ALLOWED_EAN_EXTENSIONS:Lcom/google/a/e;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    :goto_e3
    if-eqz p2, :cond_fa

    array-length p3, p2

    const/4 p4, 0x0

    :goto_e7
    if-ge p4, p3, :cond_f2

    aget v5, p2, p4

    if-ne p1, v5, :cond_ef

    const/4 p1, 0x1

    goto :goto_f3

    :cond_ef
    add-int/lit8 p4, p4, 0x1

    goto :goto_e7

    :cond_f2
    const/4 p1, 0x0

    :goto_f3
    if-nez p1, :cond_fa

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_fa
    sget-object p1, Lcom/google/a/a;->EAN_13:Lcom/google/a/a;

    if-eq v2, p1, :cond_102

    sget-object p1, Lcom/google/a/a;->UPC_A:Lcom/google/a/a;

    if-ne v2, p1, :cond_141

    :cond_102
    iget-object p1, p0, Lcom/google/a/g/y;->j:Lcom/google/a/g/m;

    invoke-virtual {p1}, Lcom/google/a/g/m;->a()V

    const/4 p2, 0x3

    invoke-virtual {v1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object p3, p1, Lcom/google/a/g/m;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_117
    if-ge p4, p3, :cond_13a

    iget-object v1, p1, Lcom/google/a/g/m;->a:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v2, v1, v4

    if-lt p2, v2, :cond_13a

    array-length v5, v1

    if-ne v5, v3, :cond_129

    goto :goto_12b

    :cond_129
    aget v2, v1, v3

    :goto_12b
    if-gt p2, v2, :cond_137

    iget-object p1, p1, Lcom/google/a/g/m;->b:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_13a

    :cond_137
    add-int/lit8 p4, p4, 0x1

    goto :goto_117

    :cond_13a
    :goto_13a
    if-eqz v0, :cond_141

    sget-object p1, Lcom/google/a/s;->POSSIBLE_COUNTRY:Lcom/google/a/s;

    invoke-virtual {v7, p1, v0}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    :cond_141
    return-object v7

    :cond_142
    :goto_142
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method a(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/a/g/y;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method a(Lcom/google/a/c/a;I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    sget-object v0, Lcom/google/a/g/y;->b:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;IZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method abstract b()Lcom/google/a/a;
.end method
