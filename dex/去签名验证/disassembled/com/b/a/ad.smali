.class public final Lcom/b/a/ad;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ad;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ad;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/ad;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .registers 15

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_20

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_11

    goto :goto_20

    :cond_11
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2c
    add-int/lit8 p2, p2, 0x1

    :cond_2e
    :goto_2e
    move v4, p2

    if-ge v4, p3, :cond_e4

    const-string p2, "/\\"

    invoke-static {p1, v4, p3, p2}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-ge p2, p3, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    const-string v6, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, p1

    move v5, p2

    invoke-static/range {v3 .. v10}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    const-string v4, "%2e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    goto :goto_5c

    :cond_5a
    const/4 v4, 0x0

    goto :goto_5d

    :cond_5c
    :goto_5c
    const/4 v4, 0x1

    :goto_5d
    if-nez v4, :cond_e0

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "%2e."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, ".%2e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "%2e%2e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    :cond_7f
    const/4 v0, 0x1

    :cond_80
    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e0

    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    :cond_b6
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_dd

    :cond_d8
    iget-object v0, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_dd
    if-eqz v1, :cond_e0

    goto :goto_ae

    :cond_e0
    :goto_e0
    if-eqz v1, :cond_2e

    goto/16 :goto_2c

    :cond_e4
    return-void
.end method

.method private static b(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_1f

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_f

    goto :goto_1b

    :cond_f
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_f

    :cond_1b
    :goto_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1e
    return p1

    :cond_1f
    return p2
.end method

.method private static c(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/b/a/ac;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_97

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {p0, p2, p1}, Lcom/b/a/ad;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    goto :goto_30

    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/b/a/ad;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    :goto_30
    if-nez p0, :cond_34

    const/4 p0, 0x0

    return-object p0

    :cond_34
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    array-length p1, p0

    const/16 p2, 0x10

    if-ne p1, p2, :cond_91

    const/4 p1, -0x1

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_41
    array-length v3, p0

    if-ge p1, v3, :cond_5d

    move v3, p1

    :goto_45
    if-ge v3, p2, :cond_54

    aget-byte v4, p0, v3

    if-nez v4, :cond_54

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_54

    add-int/lit8 v3, v3, 0x2

    goto :goto_45

    :cond_54
    sub-int v4, v3, p1

    if-le v4, v1, :cond_5a

    move v2, p1

    move v1, v4

    :cond_5a
    add-int/lit8 p1, v3, 0x2

    goto :goto_41

    :cond_5d
    new-instance p1, Lcom/b/b/f;

    invoke-direct {p1}, Lcom/b/b/f;-><init>()V

    :cond_62
    :goto_62
    array-length v3, p0

    if-ge v0, v3, :cond_8c

    const/16 v3, 0x3a

    if-ne v0, v2, :cond_73

    invoke-virtual {p1, v3}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    add-int/2addr v0, v1

    if-ne v0, p2, :cond_62

    invoke-virtual {p1, v3}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    goto :goto_62

    :cond_73
    if-lez v0, :cond_78

    invoke-virtual {p1, v3}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    :cond_78
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/b/b/f;->h(J)Lcom/b/b/f;

    add-int/lit8 v0, v0, 0x2

    goto :goto_62

    :cond_8c
    invoke-virtual {p1}, Lcom/b/b/f;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_91
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_97
    invoke-static {p0}, Lcom/b/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, -0x1

    const/4 v5, 0x0

    move/from16 v6, p1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_f
    const/4 v10, 0x0

    if-ge v6, v1, :cond_d4

    if-ne v7, v2, :cond_15

    return-object v10

    :cond_15
    add-int/lit8 v11, v6, 0x2

    const/4 v12, 0x4

    const/16 v13, 0xff

    if-gt v11, v1, :cond_33

    const-string v14, "::"

    const/4 v15, 0x2

    invoke-virtual {v0, v6, v14, v5, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v14

    if-eqz v14, :cond_33

    if-eq v8, v4, :cond_28

    return-object v10

    :cond_28
    add-int/lit8 v7, v7, 0x2

    if-ne v11, v1, :cond_2f

    move v8, v7

    goto/16 :goto_d4

    :cond_2f
    move v8, v7

    move v9, v11

    goto/16 :goto_a2

    :cond_33
    if-eqz v7, :cond_a1

    const-string v11, ":"

    const/4 v14, 0x1

    invoke-virtual {v0, v6, v11, v5, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_42

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a1

    :cond_42
    const-string v11, "."

    invoke-virtual {v0, v6, v11, v5, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_a0

    add-int/lit8 v6, v7, -0x2

    move v11, v6

    :goto_4d
    if-ge v9, v1, :cond_94

    if-ne v11, v2, :cond_52

    goto :goto_9a

    :cond_52
    if-eq v11, v6, :cond_5f

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0x2e

    if-eq v15, v14, :cond_5d

    goto :goto_9a

    :cond_5d
    add-int/lit8 v9, v9, 0x1

    :cond_5f
    move v14, v9

    const/4 v15, 0x0

    :goto_61
    if-ge v14, v1, :cond_82

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x30

    if-lt v5, v2, :cond_82

    const/16 v4, 0x39

    if-gt v5, v4, :cond_82

    if-nez v15, :cond_74

    if-eq v9, v14, :cond_74

    goto :goto_97

    :cond_74
    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v5

    sub-int/2addr v15, v2

    if-le v15, v13, :cond_7b

    goto :goto_97

    :cond_7b
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_61

    :cond_82
    sub-int v2, v14, v9

    if-nez v2, :cond_87

    goto :goto_97

    :cond_87
    add-int/lit8 v2, v11, 0x1

    int-to-byte v4, v15

    aput-byte v4, v3, v11

    move v11, v2

    move v9, v14

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v14, 0x1

    goto :goto_4d

    :cond_94
    add-int/2addr v6, v12

    if-eq v11, v6, :cond_99

    :goto_97
    const/4 v5, 0x0

    goto :goto_9a

    :cond_99
    const/4 v5, 0x1

    :goto_9a
    if-nez v5, :cond_9d

    return-object v10

    :cond_9d
    add-int/lit8 v7, v7, 0x2

    goto :goto_d4

    :cond_a0
    return-object v10

    :cond_a1
    :goto_a1
    move v9, v6

    :goto_a2
    move v6, v9

    const/4 v2, 0x0

    :goto_a4
    if-ge v6, v1, :cond_b7

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/b/a/ac;->a(C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b7

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_a4

    :cond_b7
    sub-int v4, v6, v9

    if-eqz v4, :cond_d3

    if-le v4, v12, :cond_be

    return-object v10

    :cond_be
    add-int/lit8 v4, v7, 0x1

    ushr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v13

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_d3
    return-object v10

    :cond_d4
    :goto_d4
    const/16 v0, 0x10

    if-eq v7, v0, :cond_ea

    const/4 v1, -0x1

    if-ne v8, v1, :cond_dc

    return-object v10

    :cond_dc
    sub-int v1, v7, v8

    rsub-int/lit8 v2, v1, 0x10

    invoke-static {v3, v8, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v2, v7, 0x10

    add-int/2addr v2, v8

    const/4 v0, 0x0

    invoke-static {v3, v8, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_ea
    :try_start_ea
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_ee
    .catch Ljava/net/UnknownHostException; {:try_start_ea .. :try_end_ee} :catch_ef

    return-object v0

    :catch_ef
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static e(Ljava/lang/String;II)I
    .registers 12

    const/4 v0, -0x1

    :try_start_1
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1a

    if-lez p0, :cond_1a

    const p1, 0xffff

    if-gt p0, p1, :cond_1a

    return p0

    :catch_1a
    :cond_1a
    return v0
.end method


# virtual methods
.method final a()I
    .registers 3

    iget v0, p0, Lcom/b/a/ad;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/b/a/ad;->e:I

    return v0

    :cond_8
    iget-object v0, p0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final a(Lcom/b/a/ac;Ljava/lang/String;)I
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v9, v8, v2}, Lcom/b/a/a/c;->a(Ljava/lang/String;II)I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v9, v10, v2}, Lcom/b/a/a/c;->b(Ljava/lang/String;II)I

    move-result v11

    sub-int v2, v11, v10

    const/16 v12, 0x3a

    const/4 v13, 0x2

    const/4 v14, -0x1

    if-lt v2, v13, :cond_5e

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    const/16 v4, 0x41

    const/16 v5, 0x7a

    const/16 v6, 0x61

    if-lt v2, v6, :cond_2f

    if-le v2, v5, :cond_34

    :cond_2f
    if-lt v2, v4, :cond_5e

    if-le v2, v3, :cond_34

    goto :goto_5e

    :cond_34
    add-int/lit8 v2, v10, 0x1

    :goto_36
    if-ge v2, v11, :cond_5e

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_40

    if-le v7, v5, :cond_5b

    :cond_40
    if-lt v7, v4, :cond_44

    if-le v7, v3, :cond_5b

    :cond_44
    const/16 v15, 0x30

    if-lt v7, v15, :cond_4c

    const/16 v15, 0x39

    if-le v7, v15, :cond_5b

    :cond_4c
    const/16 v15, 0x2b

    if-eq v7, v15, :cond_5b

    const/16 v15, 0x2d

    if-eq v7, v15, :cond_5b

    const/16 v15, 0x2e

    if-eq v7, v15, :cond_5b

    if-ne v7, v12, :cond_5e

    goto :goto_5f

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_5e
    :goto_5e
    const/4 v2, -0x1

    :goto_5f
    if-eq v2, v14, :cond_8c

    const/4 v3, 0x1

    const-string v5, "https:"

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v2, v9

    move v4, v10

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "https"

    iput-object v2, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x6

    goto :goto_92

    :cond_75
    const/4 v3, 0x1

    const-string v5, "http:"

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v2, v9

    move v4, v10

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string v2, "http"

    iput-object v2, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x5

    goto :goto_92

    :cond_89
    sget v1, Lcom/b/a/ae;->c:I

    return v1

    :cond_8c
    if-eqz v1, :cond_20e

    iget-object v2, v1, Lcom/b/a/ac;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    :goto_92
    move v2, v10

    const/4 v3, 0x0

    :goto_94
    const/16 v15, 0x2f

    const/16 v7, 0x5c

    if-ge v2, v11, :cond_a7

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_a2

    if-ne v4, v15, :cond_a7

    :cond_a2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    :cond_a7
    const/16 v6, 0x23

    const/16 v16, 0x1

    if-ge v3, v13, :cond_ee

    if-eqz v1, :cond_ee

    iget-object v2, v1, Lcom/b/a/ac;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    goto :goto_ee

    :cond_ba
    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    iget-object v2, v1, Lcom/b/a/ac;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    iget v2, v1, Lcom/b/a/ac;->c:I

    iput v2, v0, Lcom/b/a/ad;->e:I

    iget-object v2, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v10, v11, :cond_e4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_eb

    :cond_e4
    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ad;->b(Ljava/lang/String;)Lcom/b/a/ad;

    :cond_eb
    move v15, v10

    goto/16 :goto_1c3

    :cond_ee
    :goto_ee
    add-int/2addr v10, v3

    move v2, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_f2
    const-string v1, "@/\\?#"

    invoke-static {v9, v2, v11, v1}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_ff

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_100

    :cond_ff
    const/4 v1, -0x1

    :goto_100
    if-eq v1, v14, :cond_192

    if-eq v1, v6, :cond_192

    if-eq v1, v15, :cond_192

    if-eq v1, v7, :cond_192

    packed-switch v1, :pswitch_data_212

    goto :goto_f2

    :pswitch_10c
    if-nez v10, :cond_15f

    invoke-static {v9, v2, v8, v12}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v5

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v1, v9

    move v3, v5

    move v12, v5

    move/from16 v5, v17

    const/16 v15, 0x23

    move/from16 v6, v18

    const/16 v17, 0x5c

    move/from16 v7, v19

    move v15, v8

    move/from16 v8, v20

    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v13, :cond_148

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%40"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_148
    iput-object v1, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    if-eq v12, v15, :cond_15d

    add-int/lit8 v2, v12, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move v3, v15

    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    const/4 v10, 0x1

    :cond_15d
    const/4 v13, 0x1

    goto :goto_186

    :cond_15f
    move v15, v8

    const/16 v17, 0x5c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%40"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move v3, v15

    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    :goto_186
    add-int/lit8 v2, v15, 0x1

    const/16 v6, 0x23

    const/16 v7, 0x5c

    const/16 v12, 0x3a

    const/16 v15, 0x2f

    goto/16 :goto_f2

    :cond_192
    :pswitch_192
    move v15, v8

    invoke-static {v9, v2, v15}, Lcom/b/a/ad;->b(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v15, :cond_1ae

    invoke-static {v9, v2, v1}, Lcom/b/a/ad;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    invoke-static {v9, v3, v15}, Lcom/b/a/ad;->e(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/b/a/ad;->e:I

    iget v1, v0, Lcom/b/a/ad;->e:I

    if-ne v1, v14, :cond_1bc

    sget v1, Lcom/b/a/ae;->d:I

    return v1

    :cond_1ae
    invoke-static {v9, v2, v1}, Lcom/b/a/ad;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/b/a/ad;->e:I

    :cond_1bc
    iget-object v1, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    if-nez v1, :cond_1c3

    sget v1, Lcom/b/a/ae;->e:I

    return v1

    :cond_1c3
    :goto_1c3
    const-string v1, "?#"

    invoke-static {v9, v15, v11, v1}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v9, v15, v1}, Lcom/b/a/ad;->a(Ljava/lang/String;II)V

    if-ge v1, v11, :cond_1f1

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1f1

    const/16 v2, 0x23

    invoke-static {v9, v1, v11, v2}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v10

    add-int/lit8 v2, v1, 0x1

    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move v3, v10

    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/ac;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    move v1, v10

    :cond_1f1
    if-ge v1, v11, :cond_20b

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_20b

    add-int/lit8 v2, v1, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move v3, v11

    invoke-static/range {v1 .. v8}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    :cond_20b
    sget v1, Lcom/b/a/ae;->a:I

    return v1

    :cond_20e
    sget v1, Lcom/b/a/ae;->b:I

    return v1

    nop

    :pswitch_data_212
    .packed-switch 0x3f
        :pswitch_192
        :pswitch_10c
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Lcom/b/a/ad;
    .registers 5

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "host == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/b/a/ad;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iput-object v0, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/b/a/ac;
    .registers 3

    iget-object v0, p0, Lcom/b/a/ad;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/b/a/ac;

    invoke-direct {v0, p0}, Lcom/b/a/ac;-><init>(Lcom/b/a/ad;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/b/a/ad;
    .registers 8

    if-eqz p1, :cond_12

    const-string v1, " \"\'<>#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/b/a/ac;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-object p1, p0, Lcom/b/a/ad;->g:Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/ad;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_21
    iget-object v1, p0, Lcom/b/a/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    iget-object v1, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_54
    iget-object v1, p0, Lcom/b/a/ad;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_59
    invoke-virtual {p0}, Lcom/b/a/ad;->a()I

    move-result v1

    iget-object v3, p0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_6b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6b
    iget-object v1, p0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/b/a/ad;->g:Ljava/util/List;

    if-eqz v1, :cond_7e

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/ad;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ac;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_7e
    iget-object v1, p0, Lcom/b/a/ad;->h:Ljava/lang/String;

    if-eqz v1, :cond_8c

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/ad;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
