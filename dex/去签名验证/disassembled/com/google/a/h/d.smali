.class public final Lcom/google/a/h/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# static fields
.field private static final a:I = 0x1e

.field private static final b:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/h/c/e;Ljava/lang/String;IIII)Lcom/google/a/c/b;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {p2 .. p2}, Lcom/google/a/h/c/f;->a(I)I

    move-result v0

    iget-object v1, v6, Lcom/google/a/h/c/e;->c:Lcom/google/a/h/c/c;

    iget-object v2, v6, Lcom/google/a/h/c/e;->d:Ljava/nio/charset/Charset;

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/google/a/h/c/g;->a(Ljava/lang/String;Lcom/google/a/h/c/c;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v4, v6, Lcom/google/a/h/c/e;->e:I

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_1e
    iget v11, v6, Lcom/google/a/h/c/e;->f:I

    const/4 v12, 0x2

    if-gt v4, v11, :cond_60

    invoke-static {v2, v0, v4}, Lcom/google/a/h/c/e;->a(III)I

    move-result v11

    iget v15, v6, Lcom/google/a/h/c/e;->h:I

    if-lt v11, v15, :cond_60

    iget v15, v6, Lcom/google/a/h/c/e;->g:I

    if-gt v11, v15, :cond_5d

    mul-int/lit8 v15, v4, 0x11

    add-int/lit8 v15, v15, 0x45

    int-to-float v15, v15

    const v16, 0x3eb6c8b4    # 0.357f

    mul-float v15, v15, v16

    int-to-float v14, v11

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v14, v14, v16

    div-float/2addr v15, v14

    if-eqz v10, :cond_53

    const/high16 v14, 0x40400000    # 3.0f

    sub-float v13, v15, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float v14, v5, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_5d

    :cond_53
    new-array v5, v12, [I

    const/4 v10, 0x0

    aput v4, v5, v10

    const/4 v10, 0x1

    aput v11, v5, v10

    move-object v10, v5

    move v5, v15

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_60
    if-nez v10, :cond_79

    iget v4, v6, Lcom/google/a/h/c/e;->e:I

    invoke-static {v2, v0, v4}, Lcom/google/a/h/c/e;->a(III)I

    move-result v4

    iget v5, v6, Lcom/google/a/h/c/e;->h:I

    if-ge v4, v5, :cond_79

    new-array v10, v12, [I

    iget v4, v6, Lcom/google/a/h/c/e;->e:I

    const/4 v5, 0x0

    aput v4, v10, v5

    iget v4, v6, Lcom/google/a/h/c/e;->h:I

    const/4 v5, 0x1

    aput v4, v10, v5

    goto :goto_7a

    :cond_79
    const/4 v5, 0x1

    :goto_7a
    if-nez v10, :cond_84

    new-instance v0, Lcom/google/a/w;

    const-string v1, "Unable to fit message in columns"

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    const/4 v4, 0x0

    aget v11, v10, v4

    aget v4, v10, v5

    invoke-static {v2, v0, v11, v4}, Lcom/google/a/h/c/e;->a(IIII)I

    move-result v10

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    const/16 v5, 0x3a1

    if-le v0, v5, :cond_b0

    new-instance v0, Lcom/google/a/w;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoded message contains too many code words, message too big ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b0
    add-int/2addr v2, v10

    const/4 v0, 0x1

    add-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_c0
    if-ge v1, v10, :cond_ca

    const/16 v2, 0x384

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v5, p2

    invoke-static {v0, v5}, Lcom/google/a/h/c/f;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/a/h/c/a;

    invoke-direct {v2, v4, v11}, Lcom/google/a/h/c/a;-><init>(II)V

    iput-object v2, v6, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v10, v6, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    move-object v0, v6

    move v2, v11

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/h/c/e;->a(Ljava/lang/CharSequence;IIILcom/google/a/h/c/a;)V

    iget-object v0, v6, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/a/h/c/a;->a(II)[[B

    move-result-object v0

    if-le v8, v7, :cond_101

    const/4 v1, 0x1

    :goto_ff
    const/4 v10, 0x0

    goto :goto_103

    :cond_101
    const/4 v1, 0x0

    goto :goto_ff

    :goto_103
    aget-object v2, v0, v10

    array-length v2, v2

    array-length v3, v0

    if-ge v2, v3, :cond_10b

    const/4 v2, 0x1

    goto :goto_10c

    :cond_10b
    const/4 v2, 0x0

    :goto_10c
    if-eq v1, v2, :cond_114

    invoke-static {v0}, Lcom/google/a/h/d;->a([[B)[[B

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_115

    :cond_114
    const/4 v1, 0x0

    :goto_115
    aget-object v2, v0, v10

    array-length v2, v2

    div-int v2, v7, v2

    array-length v3, v0

    div-int v3, v8, v3

    if-lt v2, v3, :cond_120

    move v2, v3

    :cond_120
    const/4 v3, 0x1

    if-le v2, v3, :cond_136

    iget-object v0, v6, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    shl-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/a/h/c/a;->a(II)[[B

    move-result-object v0

    if-eqz v1, :cond_131

    invoke-static {v0}, Lcom/google/a/h/d;->a([[B)[[B

    move-result-object v0

    :cond_131
    invoke-static {v0, v9}, Lcom/google/a/h/d;->a([[BI)Lcom/google/a/c/b;

    move-result-object v0

    return-object v0

    :cond_136
    invoke-static {v0, v9}, Lcom/google/a/h/d;->a([[BI)Lcom/google/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method private static a([[BI)Lcom/google/a/c/b;
    .registers 10

    new-instance v0, Lcom/google/a/c/b;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Lcom/google/a/c/b;-><init>(II)V

    invoke-virtual {v0}, Lcom/google/a/c/b;->a()V

    iget v2, v0, Lcom/google/a/c/b;->b:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    const/4 v2, 0x0

    :goto_18
    array-length v5, p0

    if-ge v2, v5, :cond_34

    aget-object v5, p0, v2

    const/4 v6, 0x0

    :goto_1e
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_2f

    aget-byte v7, v5, v6

    if-ne v7, v3, :cond_2c

    add-int v7, v6, p1

    invoke-virtual {v0, v7, v4}, Lcom/google/a/c/b;->b(II)V

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_18

    :cond_34
    return-object v0
.end method

.method private static a([[B)[[B
    .registers 8

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, B

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    :goto_12
    array-length v3, p0

    if-ge v2, v3, :cond_2d

    array-length v3, p0

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    :goto_1a
    aget-object v5, p0, v0

    array-length v5, v5

    if-ge v4, v5, :cond_2a

    aget-object v5, v1, v4

    aget-object v6, p0, v2

    aget-byte v6, v6, v4

    aput-byte v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2d
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;II)Lcom/google/a/c/b;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/h/d;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/c/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    sget-object v0, Lcom/google/a/a;->PDF_417:Lcom/google/a/a;

    if-eq p2, v0, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode PDF_417, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p2, Lcom/google/a/h/c/e;

    invoke-direct {p2}, Lcom/google/a/h/c/e;-><init>()V

    const/16 v0, 0x1e

    const/4 v1, 0x2

    if-eqz p5, :cond_b6

    sget-object v2, Lcom/google/a/g;->PDF417_COMPACT:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lcom/google/a/g;->PDF417_COMPACT:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p2, Lcom/google/a/h/c/e;->b:Z

    :cond_3a
    sget-object v2, Lcom/google/a/g;->PDF417_COMPACTION:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    sget-object v2, Lcom/google/a/g;->PDF417_COMPACTION:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/a/h/c/c;->valueOf(Ljava/lang/String;)Lcom/google/a/h/c/c;

    move-result-object v2

    iput-object v2, p2, Lcom/google/a/h/c/e;->c:Lcom/google/a/h/c/c;

    :cond_52
    sget-object v2, Lcom/google/a/g;->PDF417_DIMENSIONS:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    sget-object v2, Lcom/google/a/g;->PDF417_DIMENSIONS:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/h/c/d;

    iget v3, v2, Lcom/google/a/h/c/d;->b:I

    iget v4, v2, Lcom/google/a/h/c/d;->a:I

    iget v5, v2, Lcom/google/a/h/c/d;->d:I

    iget v2, v2, Lcom/google/a/h/c/d;->c:I

    iput v3, p2, Lcom/google/a/h/c/e;->f:I

    iput v4, p2, Lcom/google/a/h/c/e;->e:I

    iput v5, p2, Lcom/google/a/h/c/e;->g:I

    iput v2, p2, Lcom/google/a/h/c/e;->h:I

    :cond_72
    sget-object v2, Lcom/google/a/g;->MARGIN:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    sget-object v0, Lcom/google/a/g;->MARGIN:Lcom/google/a/g;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_88
    sget-object v2, Lcom/google/a/g;->ERROR_CORRECTION:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    sget-object v1, Lcom/google/a/g;->ERROR_CORRECTION:Lcom/google/a/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_9e
    sget-object v2, Lcom/google/a/g;->CHARACTER_SET:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    sget-object v2, Lcom/google/a/g;->CHARACTER_SET:Lcom/google/a/g;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    iput-object p5, p2, Lcom/google/a/h/c/e;->d:Ljava/nio/charset/Charset;

    :cond_b6
    invoke-virtual {p2, p1, v1}, Lcom/google/a/h/c/e;->a(Ljava/lang/String;I)V

    iget-object p1, p2, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    const/4 p5, 0x4

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p5}, Lcom/google/a/h/c/a;->a(II)[[B

    move-result-object p1

    const/4 p5, 0x0

    if-le p4, p3, :cond_c6

    const/4 v2, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v2, 0x0

    :goto_c7
    aget-object v3, p1, p5

    array-length v3, v3

    array-length v4, p1

    if-ge v3, v4, :cond_cf

    const/4 v3, 0x1

    goto :goto_d0

    :cond_cf
    const/4 v3, 0x0

    :goto_d0
    if-eq v2, v3, :cond_d8

    invoke-static {p1}, Lcom/google/a/h/d;->a([[B)[[B

    move-result-object p1

    const/4 v2, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v2, 0x0

    :goto_d9
    aget-object p5, p1, p5

    array-length p5, p5

    div-int/2addr p3, p5

    array-length p5, p1

    div-int/2addr p4, p5

    if-lt p3, p4, :cond_e2

    move p3, p4

    :cond_e2
    if-le p3, v1, :cond_f7

    iget-object p1, p2, Lcom/google/a/h/c/e;->a:Lcom/google/a/h/c/a;

    shl-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p3, p2}, Lcom/google/a/h/c/a;->a(II)[[B

    move-result-object p1

    if-eqz v2, :cond_f2

    invoke-static {p1}, Lcom/google/a/h/d;->a([[B)[[B

    move-result-object p1

    :cond_f2
    invoke-static {p1, v0}, Lcom/google/a/h/d;->a([[BI)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1

    :cond_f7
    invoke-static {p1, v0}, Lcom/google/a/h/d;->a([[BI)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method
