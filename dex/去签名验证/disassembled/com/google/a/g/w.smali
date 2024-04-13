.class final Lcom/google/a/g/w;
.super Ljava/lang/Object;


# static fields
.field static final a:[I


# instance fields
.field final b:[I

.field final c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/a/g/w;->a:[I

    return-void

    :array_a
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/w;->b:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/w;->c:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    sget-object v1, Lcom/google/a/g/w;->a:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/w;->b:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    iget v4, p1, Lcom/google/a/c/a;->b:I

    aget p2, p2, v2

    move v5, p2

    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_15
    const/4 v7, 0x5

    const/16 v8, 0xa

    if-ge p2, v7, :cond_4c

    if-ge v5, v4, :cond_4c

    sget-object v7, Lcom/google/a/g/y;->f:[[I

    invoke-static {p1, v0, v5, v7}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v7

    rem-int/lit8 v9, v7, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v9, v0

    move v10, v5

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v9, :cond_35

    aget v11, v0, v5

    add-int/2addr v10, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_35
    const/4 v5, 0x4

    if-lt v7, v8, :cond_3d

    rsub-int/lit8 v7, p2, 0x4

    shl-int v7, v2, v7

    or-int/2addr v6, v7

    :cond_3d
    if-eq p2, v5, :cond_48

    invoke-virtual {p1, v10}, Lcom/google/a/c/a;->c(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/a/c/a;->d(I)I

    move-result v5

    goto :goto_49

    :cond_48
    move v5, v10

    :goto_49
    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_4c
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eq p1, v7, :cond_57

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_57
    const/4 p1, 0x0

    :goto_58
    if-ge p1, v8, :cond_93

    sget-object p2, Lcom/google/a/g/w;->a:[I

    aget p2, p2, p1

    if-ne v6, p2, :cond_90

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/lit8 v0, p3, -0x2

    :goto_6a
    if-ltz v0, :cond_76

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, -0x2

    goto :goto_6a

    :cond_76
    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr p3, v2

    :goto_79
    if-ltz p3, :cond_85

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v1, v0

    add-int/lit8 p3, p3, -0x2

    goto :goto_79

    :cond_85
    mul-int/lit8 v1, v1, 0x3

    rem-int/2addr v1, v8

    if-eq v1, p1, :cond_8f

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_8f
    return v5

    :cond_90
    add-int/lit8 p1, p1, 0x1

    goto :goto_58

    :cond_93
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .registers 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/4 v2, 0x0

    :goto_7
    if-ltz v1, :cond_13

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x2

    goto :goto_7

    :cond_13
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_23

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_17

    :cond_23
    mul-int/lit8 v2, v2, 0x3

    rem-int/lit8 v2, v2, 0xa

    return v2
.end method

.method private a(ILcom/google/a/c/a;[I)Lcom/google/a/r;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v3, v0, Lcom/google/a/g/w;->c:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v5, v0, Lcom/google/a/g/w;->b:[I

    aput v4, v5, v4

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v7, 0x2

    aput v4, v5, v7

    const/4 v8, 0x3

    aput v4, v5, v8

    iget v9, v1, Lcom/google/a/c/a;->b:I

    aget v10, p3, v6

    move v11, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1e
    const/4 v13, 0x5

    const/16 v14, 0x30

    const/16 v15, 0xa

    if-ge v10, v13, :cond_58

    if-ge v11, v9, :cond_58

    sget-object v13, Lcom/google/a/g/y;->f:[[I

    invoke-static {v1, v5, v11, v13}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v13

    rem-int/lit8 v16, v13, 0xa

    add-int/lit8 v14, v16, 0x30

    int-to-char v14, v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v14, v5

    move v7, v11

    const/4 v11, 0x0

    :goto_38
    if-ge v11, v14, :cond_41

    aget v16, v5, v11

    add-int v7, v7, v16

    add-int/lit8 v11, v11, 0x1

    goto :goto_38

    :cond_41
    const/4 v11, 0x4

    if-lt v13, v15, :cond_49

    rsub-int/lit8 v13, v10, 0x4

    shl-int v13, v6, v13

    or-int/2addr v12, v13

    :cond_49
    if-eq v10, v11, :cond_53

    invoke-virtual {v1, v7}, Lcom/google/a/c/a;->c(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/a/c/a;->d(I)I

    move-result v7

    :cond_53
    move v11, v7

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x2

    goto :goto_1e

    :cond_58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v1, v13, :cond_63

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_63
    const/4 v1, 0x0

    :goto_64
    if-ge v1, v15, :cond_16f

    sget-object v5, Lcom/google/a/g/w;->a:[I

    aget v5, v5, v1

    if-ne v12, v5, :cond_168

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v9, v7, -0x2

    const/4 v10, 0x0

    :goto_77
    if-ltz v9, :cond_82

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    sub-int/2addr v12, v14

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, -0x2

    goto :goto_77

    :cond_82
    mul-int/lit8 v10, v10, 0x3

    sub-int/2addr v7, v6

    :goto_85
    if-ltz v7, :cond_90

    invoke-interface {v5, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v14

    add-int/2addr v10, v9

    add-int/lit8 v7, v7, -0x2

    goto :goto_85

    :cond_90
    mul-int/lit8 v10, v10, 0x3

    rem-int/2addr v10, v15

    if-eq v10, v1, :cond_9a

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_9a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-eq v3, v13, :cond_a8

    :goto_a5
    move-object v7, v5

    goto/16 :goto_13d

    :cond_a8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v14, :cond_f3

    const/16 v7, 0x35

    if-eq v3, v7, :cond_f0

    const/16 v7, 0x39

    if-eq v3, v7, :cond_b9

    :goto_b6
    const-string v3, ""

    goto :goto_f5

    :cond_b9
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x339c7b9

    if-eq v7, v8, :cond_db

    packed-switch v7, :pswitch_data_174

    goto :goto_e4

    :pswitch_c7
    const-string v7, "99991"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e4

    const/4 v3, 0x1

    goto :goto_e4

    :pswitch_d1
    const-string v7, "99990"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e4

    const/4 v3, 0x2

    goto :goto_e4

    :cond_db
    const-string v7, "90000"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e4

    const/4 v3, 0x0

    :cond_e4
    :goto_e4
    packed-switch v3, :pswitch_data_17c

    goto :goto_b6

    :pswitch_e8
    const-string v3, "Used"

    goto :goto_12d

    :pswitch_eb
    const-string v3, "0.00"

    goto :goto_12d

    :pswitch_ee
    move-object v3, v5

    goto :goto_12d

    :cond_f0
    const-string v3, "$"

    goto :goto_f5

    :cond_f3
    const-string v3, "\u00a3"

    :goto_f5
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    div-int/lit8 v8, v7, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    rem-int/lit8 v7, v7, 0x64

    if-ge v7, v15, :cond_112

    const-string v9, "0"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_116

    :cond_112
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :goto_116
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_12d
    if-nez v3, :cond_131

    goto/16 :goto_a5

    :cond_131
    new-instance v7, Ljava/util/EnumMap;

    const-class v8, Lcom/google/a/s;

    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v8, Lcom/google/a/s;->SUGGESTED_PRICE:Lcom/google/a/s;

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13d
    new-instance v3, Lcom/google/a/r;

    const/4 v9, 0x2

    new-array v8, v9, [Lcom/google/a/t;

    new-instance v9, Lcom/google/a/t;

    aget v10, p3, v4

    aget v2, p3, v6

    add-int/2addr v10, v2

    int-to-float v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v2, v10

    move/from16 v10, p1

    int-to-float v10, v10

    invoke-direct {v9, v2, v10}, Lcom/google/a/t;-><init>(FF)V

    aput-object v9, v8, v4

    new-instance v2, Lcom/google/a/t;

    int-to-float v4, v11

    invoke-direct {v2, v4, v10}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v8, v6

    sget-object v2, Lcom/google/a/a;->UPC_EAN_EXTENSION:Lcom/google/a/a;

    invoke-direct {v3, v1, v5, v8, v2}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    if-eqz v7, :cond_167

    invoke-virtual {v3, v7}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    :cond_167
    return-object v3

    :cond_168
    move/from16 v10, p1

    const/4 v9, 0x2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_64

    :cond_16f
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :pswitch_data_174
    .packed-switch 0x33e01f0
        :pswitch_d1
        :pswitch_c7
    .end packed-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/a/s;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_9

    return-object v1

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-eq v2, v3, :cond_59

    const/16 v3, 0x35

    if-eq v2, v3, :cond_56

    const/16 v3, 0x39

    if-eq v2, v3, :cond_1e

    :goto_1b
    const-string v0, ""

    goto :goto_5b

    :cond_1e
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v5, 0x339c7b9

    if-eq v3, v5, :cond_40

    packed-switch v3, :pswitch_data_a6

    goto :goto_49

    :pswitch_2c
    const-string v0, "99991"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :pswitch_36
    const-string v0, "99990"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x2

    goto :goto_4a

    :cond_40
    const-string v3, "90000"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v0, -0x1

    :goto_4a
    packed-switch v0, :pswitch_data_ae

    goto :goto_1b

    :pswitch_4e
    const-string p0, "Used"

    goto :goto_95

    :pswitch_51
    const-string p0, "0.00"

    goto :goto_95

    :pswitch_54
    move-object p0, v1

    goto :goto_95

    :cond_56
    const-string v0, "$"

    goto :goto_5b

    :cond_59
    const-string v0, "\u00a3"

    :goto_5b
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 v2, p0, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    rem-int/lit8 p0, p0, 0x64

    const/16 v3, 0xa

    if-ge p0, v3, :cond_7a

    const-string v3, "0"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7e

    :cond_7a
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_95
    if-nez p0, :cond_98

    return-object v1

    :cond_98
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/a/s;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/google/a/s;->SUGGESTED_PRICE:Lcom/google/a/s;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_a6
    .packed-switch 0x33e01f0
        :pswitch_36
        :pswitch_2c
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_54
        :pswitch_51
        :pswitch_4e
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-eq v1, v2, :cond_50

    const/16 v2, 0x35

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x39

    if-eq v1, v2, :cond_15

    :goto_12
    const-string v0, ""

    goto :goto_52

    :cond_15
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x339c7b9

    if-eq v2, v4, :cond_37

    packed-switch v2, :pswitch_data_8e

    goto :goto_40

    :pswitch_23
    const-string v0, "99991"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :pswitch_2d
    const-string v0, "99990"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x2

    goto :goto_41

    :cond_37
    const-string v2, "90000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, -0x1

    :goto_41
    packed-switch v0, :pswitch_data_96

    goto :goto_12

    :pswitch_45
    const-string p0, "Used"

    return-object p0

    :pswitch_48
    const-string p0, "0.00"

    return-object p0

    :pswitch_4b
    const/4 p0, 0x0

    return-object p0

    :cond_4d
    const-string v0, "$"

    goto :goto_52

    :cond_50
    const-string v0, "\u00a3"

    :goto_52
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 v1, p0, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    rem-int/lit8 p0, p0, 0x64

    const/16 v2, 0xa

    if-ge p0, v2, :cond_71

    const-string v2, "0"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_75

    :cond_71
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_8e
    .packed-switch 0x33e01f0
        :pswitch_2d
        :pswitch_23
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch
.end method
