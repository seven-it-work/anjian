.class final Lcom/google/a/g/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/v;->a:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/v;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/v;->a:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    iget v4, p1, Lcom/google/a/c/a;->b:I

    aget p2, p2, v2

    move v5, p2

    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_15
    if-ge p2, v3, :cond_4b

    if-ge v5, v4, :cond_4b

    sget-object v7, Lcom/google/a/g/y;->f:[[I

    invoke-static {p1, v0, v5, v7}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v7

    rem-int/lit8 v8, v7, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v8, v0

    move v9, v5

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v8, :cond_32

    aget v10, v0, v5

    add-int/2addr v9, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_32
    const/16 v5, 0xa

    if-lt v7, v5, :cond_3c

    rsub-int/lit8 v5, p2, 0x1

    shl-int v5, v2, v5

    or-int/2addr v5, v6

    move v6, v5

    :cond_3c
    if-eq p2, v2, :cond_47

    invoke-virtual {p1, v9}, Lcom/google/a/c/a;->c(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/a/c/a;->d(I)I

    move-result v5

    goto :goto_48

    :cond_47
    move v5, v9

    :goto_48
    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_4b
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eq p1, v3, :cond_56

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_56
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    if-eq p1, v6, :cond_67

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_67
    return v5
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
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

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/a/s;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/google/a/s;->ISSUE_NUMBER:Lcom/google/a/s;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final a(ILcom/google/a/c/a;[I)Lcom/google/a/r;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v3, v0, Lcom/google/a/g/v;->b:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v5, v0, Lcom/google/a/g/v;->a:[I

    aput v4, v5, v4

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v7, 0x2

    aput v4, v5, v7

    const/4 v8, 0x3

    aput v4, v5, v8

    iget v8, v1, Lcom/google/a/c/a;->b:I

    aget v9, p3, v6

    move v10, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_1e
    if-ge v9, v7, :cond_54

    if-ge v10, v8, :cond_54

    sget-object v12, Lcom/google/a/g/y;->f:[[I

    invoke-static {v1, v5, v10, v12}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v12

    rem-int/lit8 v13, v12, 0xa

    add-int/lit8 v13, v13, 0x30

    int-to-char v13, v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v13, v5

    move v14, v10

    const/4 v10, 0x0

    :goto_33
    if-ge v10, v13, :cond_3b

    aget v15, v5, v10

    add-int/2addr v14, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    :cond_3b
    const/16 v10, 0xa

    if-lt v12, v10, :cond_45

    rsub-int/lit8 v10, v9, 0x1

    shl-int v10, v6, v10

    or-int/2addr v10, v11

    move v11, v10

    :cond_45
    if-eq v9, v6, :cond_50

    invoke-virtual {v1, v14}, Lcom/google/a/c/a;->c(I)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/google/a/c/a;->d(I)I

    move-result v10

    goto :goto_51

    :cond_50
    move v10, v14

    :goto_51
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v1, v7, :cond_5f

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eq v1, v11, :cond_70

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-eq v3, v7, :cond_7d

    move-object v3, v5

    goto :goto_8d

    :cond_7d
    new-instance v3, Ljava/util/EnumMap;

    const-class v8, Lcom/google/a/s;

    invoke-direct {v3, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v8, Lcom/google/a/s;->ISSUE_NUMBER:Lcom/google/a/s;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8d
    new-instance v8, Lcom/google/a/r;

    new-array v7, v7, [Lcom/google/a/t;

    new-instance v9, Lcom/google/a/t;

    aget v11, p3, v4

    aget v2, p3, v6

    add-int/2addr v11, v2

    int-to-float v2, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    move/from16 v11, p1

    int-to-float v11, v11

    invoke-direct {v9, v2, v11}, Lcom/google/a/t;-><init>(FF)V

    aput-object v9, v7, v4

    new-instance v2, Lcom/google/a/t;

    int-to-float v4, v10

    invoke-direct {v2, v4, v11}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v7, v6

    sget-object v2, Lcom/google/a/a;->UPC_EAN_EXTENSION:Lcom/google/a/a;

    invoke-direct {v8, v1, v5, v7, v2}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    if-eqz v3, :cond_b6

    invoke-virtual {v8, v3}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    :cond_b6
    return-object v8
.end method
