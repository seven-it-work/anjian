.class final Lcom/google/a/i/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/i/a/d;->a:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    sget-object v0, Lcom/google/a/i/a/d;->a:[C

    array-length v0, v0

    if-lt p0, v0, :cond_a

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_a
    sget-object v0, Lcom/google/a/i/a/d;->a:[C

    aget-char p0, v0, p0

    return p0
.end method

.method private static a(Lcom/google/a/c/c;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_d

    and-int/lit8 p0, v1, 0x7f

    return p0

    :cond_d
    and-int/lit16 v2, v1, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1d

    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_1d
    and-int/lit16 v0, v1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_2f

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p0, v0

    return p0

    :cond_2f
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method static a([BLcom/google/a/i/a/j;Lcom/google/a/i/a/f;Ljava/util/Map;)Lcom/google/a/c/e;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/a/i/a/j;",
            "Lcom/google/a/i/a/f;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v7, Lcom/google/a/c/c;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lcom/google/a/c/c;-><init>([B)V

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v12, 0x0

    move-object v14, v12

    const/4 v13, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    :goto_1e
    :try_start_1e
    invoke-virtual {v7}, Lcom/google/a/c/c;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_29

    sget-object v1, Lcom/google/a/i/a/h;->TERMINATOR:Lcom/google/a/i/a/h;

    :goto_27
    move-object v6, v1

    goto :goto_32

    :cond_29
    invoke-virtual {v7, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/a/i/a/h;->forBits(I)Lcom/google/a/i/a/h;

    move-result-object v1

    goto :goto_27

    :goto_32
    sget-object v1, Lcom/google/a/i/a/d$1;->a:[I

    invoke-virtual {v6}, Lcom/google/a/i/a/h;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/16 v3, 0x10

    const/16 v4, 0x8

    packed-switch v1, :pswitch_data_106

    invoke-virtual {v6, v0}, Lcom/google/a/i/a/h;->getCharacterCountBits(Lcom/google/a/i/a/j;)I

    move-result v1

    goto/16 :goto_ac

    :pswitch_47
    invoke-virtual {v7, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    invoke-virtual {v6, v0}, Lcom/google/a/i/a/h;->getCharacterCountBits(Lcom/google/a/i/a/j;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    if-ne v1, v11, :cond_a7

    invoke-static {v7, v9, v2}, Lcom/google/a/i/a/d;->a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V

    goto :goto_a7

    :pswitch_59
    invoke-virtual {v7, v4}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_64

    and-int/lit8 v1, v1, 0x7f

    goto :goto_81

    :cond_64
    and-int/lit16 v2, v1, 0xc0

    const/16 v5, 0x80

    if-ne v2, v5, :cond_73

    invoke-virtual {v7, v4}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    and-int/lit8 v1, v1, 0x3f

    shl-int/2addr v1, v4

    :goto_71
    or-int/2addr v1, v2

    goto :goto_81

    :cond_73
    and-int/lit16 v2, v1, 0xe0

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_8c

    invoke-virtual {v7, v3}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    and-int/lit8 v1, v1, 0x1f

    shl-int/2addr v1, v3

    goto :goto_71

    :goto_81
    invoke-static {v1}, Lcom/google/a/c/d;->getCharacterSetECIByValue(I)Lcom/google/a/c/d;

    move-result-object v14

    if-nez v14, :cond_a7

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :cond_8c
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :pswitch_91
    invoke-virtual {v7}, Lcom/google/a/c/c;->a()I

    move-result v1

    if-ge v1, v3, :cond_9c

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :cond_9c
    invoke-virtual {v7, v4}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    invoke-virtual {v7, v4}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    move v15, v1

    move/from16 v16, v2

    :cond_a7
    :goto_a7
    :pswitch_a7
    move-object v11, v6

    goto :goto_d8

    :pswitch_a9
    move-object v11, v6

    const/4 v13, 0x1

    goto :goto_d8

    :goto_ac
    invoke-virtual {v7, v1}, Lcom/google/a/c/c;->a(I)I

    move-result v3

    sget-object v1, Lcom/google/a/i/a/d$1;->a:[I

    invoke-virtual {v6}, Lcom/google/a/i/a/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_116

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    goto :goto_100

    :pswitch_c0
    invoke-static {v7, v9, v3}, Lcom/google/a/i/a/d;->b(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V

    goto :goto_a7

    :pswitch_c4
    move-object v1, v7

    move-object v2, v9

    move-object v4, v14

    move-object v5, v10

    move-object v11, v6

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/a/i/a/d;->a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;ILcom/google/a/c/d;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_d8

    :pswitch_cf
    move-object v11, v6

    invoke-static {v7, v9, v3, v13}, Lcom/google/a/i/a/d;->a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;IZ)V

    goto :goto_d8

    :pswitch_d4
    move-object v11, v6

    invoke-static {v7, v9, v3}, Lcom/google/a/i/a/d;->c(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V

    :goto_d8
    sget-object v1, Lcom/google/a/i/a/h;->TERMINATOR:Lcom/google/a/i/a/h;
    :try_end_da
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_da} :catch_101

    if-ne v11, v1, :cond_fd

    new-instance v7, Lcom/google/a/c/e;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ea

    move-object v3, v12

    goto :goto_eb

    :cond_ea
    move-object v3, v10

    :goto_eb
    if-nez p2, :cond_ef

    move-object v4, v12

    goto :goto_f4

    :cond_ef
    invoke-virtual/range {p2 .. p2}, Lcom/google/a/i/a/f;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_f4
    move-object v0, v7

    move-object v1, v8

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/google/a/c/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-object v7

    :cond_fd
    const/4 v11, 0x1

    goto/16 :goto_1e

    :goto_100
    :try_start_100
    throw v0
    :try_end_101
    .catch Ljava/lang/IllegalArgumentException; {:try_start_100 .. :try_end_101} :catch_101

    :catch_101
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v0

    throw v0

    :pswitch_data_106
    .packed-switch 0x5
        :pswitch_a7
        :pswitch_a9
        :pswitch_a9
        :pswitch_91
        :pswitch_59
        :pswitch_47
    .end packed-switch

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_cf
        :pswitch_c4
        :pswitch_c0
    .end packed-switch
.end method

.method private static a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v1

    if-le v0, v1, :cond_d

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_d
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_12
    if-lez p2, :cond_3d

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    const/16 v3, 0x3bf

    if-ge v2, v3, :cond_2a

    const v3, 0xa1a1

    :goto_28
    add-int/2addr v2, v3

    goto :goto_2e

    :cond_2a
    const v3, 0xa6a1

    goto :goto_28

    :goto_2e
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_12

    :cond_3d
    :try_start_3d
    new-instance p0, Ljava/lang/String;

    const-string p2, "GB2312"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_47} :catch_48

    return-void

    :catch_48
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;ILcom/google/a/c/d;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/c;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/a/c/d;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v1

    if-le v0, v1, :cond_d

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_d
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p2, :cond_1e

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    if-nez p3, :cond_25

    invoke-static {v0, p5}, Lcom/google/a/c/l;->a([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_25
    invoke-virtual {p3}, Lcom/google/a/c/d;->name()Ljava/lang/String;

    move-result-object p0

    :goto_29
    :try_start_29
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_31} :catch_35

    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :catch_35
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_4
    const/4 v1, 0x1

    if-le p2, v1, :cond_2d

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_14

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_14
    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/a/i/a/d;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/google/a/i/a/d;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_4

    :cond_2d
    if-ne p2, v1, :cond_46

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result p2

    const/4 v2, 0x6

    if-ge p2, v2, :cond_3b

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_3b
    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/a/i/a/d;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_46
    if-eqz p3, :cond_71

    :goto_48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v0, p0, :cond_71

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p2, 0x25

    if-ne p0, p2, :cond_6e

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_69

    add-int/lit8 p0, v0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    if-ne p3, p2, :cond_69

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_6e

    :cond_69
    const/16 p0, 0x1d

    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_6e
    :goto_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_71
    return-void
.end method

.method private static b(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v1

    if-le v0, v1, :cond_d

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_d
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_12
    if-lez p2, :cond_3d

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    div-int/lit16 v3, v2, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v2, v2, 0xc0

    or-int/2addr v2, v3

    const/16 v3, 0x1f00

    if-ge v2, v3, :cond_2a

    const v3, 0x8140

    :goto_28
    add-int/2addr v2, v3

    goto :goto_2e

    :cond_2a
    const v3, 0xc140

    goto :goto_28

    :goto_2e
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_12

    :cond_3d
    :try_start_3d
    new-instance p0, Ljava/lang/String;

    const-string p2, "SJIS"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_47} :catch_48

    return-void

    :catch_48
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method private static c(Lcom/google/a/c/c;Ljava/lang/StringBuilder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0xa

    if-lt p2, v0, :cond_3c

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v0

    if-ge v0, v1, :cond_10

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_10
    invoke-virtual {p0, v1}, Lcom/google/a/c/c;->a(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_1d

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_1d
    div-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Lcom/google/a/i/a/d;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/a/i/a/d;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/a/i/a/d;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    :cond_3c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6a

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result p2

    const/4 v0, 0x7

    if-ge p2, v0, :cond_4b

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_4b
    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    const/16 p2, 0x64

    if-lt p0, p2, :cond_58

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_58
    div-int/lit8 p2, p0, 0xa

    invoke-static {p2}, Lcom/google/a/i/a/d;->a(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr p0, v1

    invoke-static {p0}, Lcom/google/a/i/a/d;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_6a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8b

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result p2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_79

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_79
    invoke-virtual {p0, v0}, Lcom/google/a/c/c;->a(I)I

    move-result p0

    if-lt p0, v1, :cond_84

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_84
    invoke-static {p0}, Lcom/google/a/i/a/d;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8b
    return-void
.end method
