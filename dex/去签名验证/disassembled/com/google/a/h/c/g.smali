.class public final Lcom/google/a/h/c/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x384

.field private static final i:I = 0x385

.field private static final j:I = 0x386

.field private static final k:I = 0x391

.field private static final l:I = 0x39c

.field private static final m:I = 0x39d

.field private static final n:I = 0x39e

.field private static final o:I = 0x39f

.field private static final p:[B

.field private static final q:[B

.field private static final r:[B

.field private static final s:[B

.field private static final t:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x1e

    new-array v1, v0, [B

    fill-array-data v1, :array_52

    sput-object v1, Lcom/google/a/h/c/g;->p:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_66

    sput-object v0, Lcom/google/a/h/c/g;->q:[B

    const/16 v0, 0x80

    new-array v1, v0, [B

    sput-object v1, Lcom/google/a/h/c/g;->r:[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/a/h/c/g;->s:[B

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/a/h/c/g;->t:Ljava/nio/charset/Charset;

    sget-object v0, Lcom/google/a/h/c/g;->r:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_26
    sget-object v3, Lcom/google/a/h/c/g;->p:[B

    array-length v3, v3

    if-ge v2, v3, :cond_39

    sget-object v3, Lcom/google/a/h/c/g;->p:[B

    aget-byte v3, v3, v2

    if-lez v3, :cond_36

    sget-object v4, Lcom/google/a/h/c/g;->r:[B

    int-to-byte v5, v2

    aput-byte v5, v4, v3

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_39
    sget-object v2, Lcom/google/a/h/c/g;->s:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    :goto_3e
    sget-object v1, Lcom/google/a/h/c/g;->q:[B

    array-length v1, v1

    if-ge v0, v1, :cond_51

    sget-object v1, Lcom/google/a/h/c/g;->q:[B

    aget-byte v1, v1, v0

    if-lez v1, :cond_4e

    sget-object v2, Lcom/google/a/h/c/g;->s:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_51
    return-void

    :array_52
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_66
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    invoke-static {v2}, Lcom/google/a/h/c/g;->a(C)Z

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

.method private static a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x2

    const/4 v6, 0x0

    move/from16 v9, p4

    const/4 v8, 0x0

    :cond_10
    :goto_10
    add-int v10, p1, v8

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x1a

    const/16 v13, 0x20

    const/16 v14, 0x1b

    const/16 v15, 0x1c

    const/16 v5, 0x1d

    packed-switch v9, :pswitch_data_fc

    invoke-static {v11}, Lcom/google/a/h/c/g;->e(C)Z

    move-result v10

    if-eqz v10, :cond_f6

    sget-object v10, Lcom/google/a/h/c/g;->s:[B

    aget-byte v10, v10, v11

    :goto_2d
    int-to-char v10, v10

    :goto_2e
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c3

    :pswitch_33
    invoke-static {v11}, Lcom/google/a/h/c/g;->d(C)Z

    move-result v12

    if-eqz v12, :cond_3e

    sget-object v10, Lcom/google/a/h/c/g;->r:[B

    aget-byte v10, v10, v11

    goto :goto_2d

    :cond_3e
    invoke-static {v11}, Lcom/google/a/h/c/g;->b(C)Z

    move-result v12

    if-eqz v12, :cond_49

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f9

    :cond_49
    invoke-static {v11}, Lcom/google/a/h/c/g;->c(C)Z

    move-result v12

    if-eqz v12, :cond_50

    goto :goto_a8

    :cond_50
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v1, :cond_65

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/google/a/h/c/g;->e(C)Z

    move-result v10

    if-eqz v10, :cond_65

    const/4 v9, 0x3

    const/16 v5, 0x19

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/google/a/h/c/g;->s:[B

    aget-byte v10, v10, v11

    goto :goto_2d

    :pswitch_6d
    invoke-static {v11}, Lcom/google/a/h/c/g;->c(C)Z

    move-result v10

    if-eqz v10, :cond_79

    if-ne v11, v13, :cond_76

    goto :goto_9a

    :cond_76
    add-int/lit8 v11, v11, -0x61

    goto :goto_a0

    :cond_79
    invoke-static {v11}, Lcom/google/a/h/c/g;->b(C)Z

    move-result v10

    if-eqz v10, :cond_83

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9e

    :cond_83
    invoke-static {v11}, Lcom/google/a/h/c/g;->d(C)Z

    move-result v10

    if-eqz v10, :cond_8a

    goto :goto_b4

    :cond_8a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/google/a/h/c/g;->s:[B

    aget-byte v10, v10, v11

    goto :goto_2d

    :pswitch_92
    invoke-static {v11}, Lcom/google/a/h/c/g;->b(C)Z

    move-result v10

    if-eqz v10, :cond_a2

    if-ne v11, v13, :cond_9e

    :goto_9a
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c3

    :cond_9e
    :goto_9e
    add-int/lit8 v11, v11, -0x41

    :goto_a0
    int-to-char v10, v11

    goto :goto_2e

    :cond_a2
    invoke-static {v11}, Lcom/google/a/h/c/g;->c(C)Z

    move-result v10

    if-eqz v10, :cond_ae

    :goto_a8
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    goto/16 :goto_10

    :cond_ae
    invoke-static {v11}, Lcom/google/a/h/c/g;->d(C)Z

    move-result v10

    if-eqz v10, :cond_ba

    :goto_b4
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    goto/16 :goto_10

    :cond_ba
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/google/a/h/c/g;->s:[B

    aget-byte v10, v10, v11

    goto/16 :goto_2d

    :goto_c3
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v1, :cond_10

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_cd
    if-ge v1, v0, :cond_eb

    rem-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_d5

    const/4 v8, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v8, 0x0

    :goto_d6
    if-eqz v8, :cond_e4

    mul-int/lit8 v7, v7, 0x1e

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    add-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e8

    :cond_e4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    :goto_e8
    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    :cond_eb
    rem-int/2addr v0, v4

    if-eqz v0, :cond_f5

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v7, v5

    int-to-char v0, v7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f5
    return v9

    :cond_f6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_f9
    const/4 v9, 0x0

    goto/16 :goto_10

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_92
        :pswitch_6d
        :pswitch_33
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;ILjava/nio/charset/Charset;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p1

    :goto_9
    if-ge v1, v0, :cond_57

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :goto_10
    const/16 v4, 0xd

    if-ge v3, v4, :cond_25

    invoke-static {v2}, Lcom/google/a/h/c/g;->a(C)Z

    move-result v2

    if-eqz v2, :cond_25

    add-int/lit8 v3, v3, 0x1

    add-int v2, v1, v3

    if-ge v2, v0, :cond_25

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_10

    :cond_25
    if-lt v3, v4, :cond_29

    sub-int/2addr v1, p1

    return v1

    :cond_29
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v3

    if-nez v3, :cond_54

    new-instance p0, Lcom/google/a/w;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Non-encodable character detected: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " (Unicode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_57
    sub-int/2addr v1, p1

    return v1
.end method

.method public static a(Ljava/lang/String;Lcom/google/a/h/c/c;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x384

    const/4 v2, 0x1

    if-nez p2, :cond_11

    sget-object p2, Lcom/google/a/h/c/g;->t:Ljava/nio/charset/Charset;

    goto :goto_65

    :cond_11
    sget-object v3, Lcom/google/a/h/c/g;->t:Ljava/nio/charset/Charset;

    invoke-virtual {v3, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/c/d;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/a/c/d;

    move-result-object v3

    if-eqz v3, :cond_65

    invoke-virtual {v3}, Lcom/google/a/c/d;->getValue()I

    move-result v3

    if-ltz v3, :cond_35

    if-ge v3, v1, :cond_35

    const/16 v4, 0x39f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_30
    int-to-char v3, v3

    :goto_31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_65

    :cond_35
    const v4, 0xc5f94

    if-ge v3, v4, :cond_48

    const/16 v4, 0x39e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit16 v4, v3, 0x384

    sub-int/2addr v4, v2

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr v3, v1

    goto :goto_30

    :cond_48
    const v5, 0xc6318

    if-ge v3, v5, :cond_55

    const/16 v5, 0x39d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v3

    int-to-char v3, v4

    goto :goto_31

    :cond_55
    new-instance p0, Lcom/google/a/w;

    const-string p1, "ECI number not in valid range from 0..811799, but was "

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    :goto_65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/google/a/h/c/g$1;->a:[I

    invoke-virtual {p1}, Lcom/google/a/h/c/c;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/16 v4, 0x386

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_e0

    const/4 p1, 0x0

    const/4 v6, 0x0

    :goto_79
    const/4 v7, 0x0

    goto :goto_8f

    :pswitch_7b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v5, v3, v0}, Lcom/google/a/h/c/g;->a(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_da

    :pswitch_82
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p1, p0

    invoke-static {p0, p1, v2, v0}, Lcom/google/a/h/c/g;->a([BIILjava/lang/StringBuilder;)V

    goto :goto_da

    :pswitch_8b
    invoke-static {p0, v5, v3, v0, v5}, Lcom/google/a/h/c/g;->a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    goto :goto_da

    :goto_8f
    if-ge p1, v3, :cond_da

    invoke-static {p0, p1}, Lcom/google/a/h/c/g;->a(Ljava/lang/CharSequence;I)I

    move-result v8

    const/16 v9, 0xd

    if-lt v8, v9, :cond_a2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-static {p0, p1, v8, v0}, Lcom/google/a/h/c/g;->a(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    add-int/2addr p1, v8

    goto :goto_79

    :cond_a2
    invoke-static {p0, p1}, Lcom/google/a/h/c/g;->b(Ljava/lang/CharSequence;I)I

    move-result v9

    const/4 v10, 0x5

    if-ge v9, v10, :cond_cd

    if-ne v8, v3, :cond_ac

    goto :goto_cd

    :cond_ac
    invoke-static {p0, p1, p2}, Lcom/google/a/h/c/g;->a(Ljava/lang/String;ILjava/nio/charset/Charset;)I

    move-result v8

    if-nez v8, :cond_b3

    const/4 v8, 0x1

    :cond_b3
    add-int/2addr v8, p1

    invoke-virtual {p0, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v9, p1

    if-ne v9, v2, :cond_c5

    if-nez v6, :cond_c5

    invoke-static {p1, v2, v5, v0}, Lcom/google/a/h/c/g;->a([BIILjava/lang/StringBuilder;)V

    goto :goto_cb

    :cond_c5
    array-length v7, p1

    invoke-static {p1, v7, v6, v0}, Lcom/google/a/h/c/g;->a([BIILjava/lang/StringBuilder;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_cb
    move p1, v8

    goto :goto_8f

    :cond_cd
    :goto_cd
    if-eqz v6, :cond_d4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_d4
    invoke-static {p0, p1, v9, v0, v7}, Lcom/google/a/h/c/g;->a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v7

    add-int/2addr p1, v9

    goto :goto_8f

    :cond_da
    :goto_da
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_82
        :pswitch_7b
    .end packed-switch
.end method

.method private static a(ILjava/lang/StringBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/16 v0, 0x384

    if-ltz p0, :cond_10

    if-ge p0, v0, :cond_10

    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    int-to-char p0, p0

    :goto_c
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_10
    const v1, 0xc5f94

    if-ge p0, v1, :cond_24

    const/16 v1, 0x39e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit16 v1, p0, 0x384

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr p0, v0

    goto :goto_b

    :cond_24
    const v0, 0xc6318

    if-ge p0, v0, :cond_31

    const/16 v0, 0x39d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v1, p0

    int-to-char p0, v1

    goto :goto_c

    :cond_31
    new-instance p1, Lcom/google/a/w;

    const-string v0, "ECI number not in valid range from 0..811799, but was "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/a/w;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    if-ge v4, p2, :cond_69

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v5, 0x2c

    sub-int v6, p2, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v7, p1, v4

    add-int v8, v7, v5

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_3f
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_5b
    if-ltz v6, :cond_67

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    goto :goto_5b

    :cond_67
    add-int/2addr v4, v5

    goto :goto_17

    :cond_69
    return-void
.end method

.method private static a([BIILjava/lang/StringBuilder;)V
    .registers 15

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    if-nez p2, :cond_b

    const/16 p2, 0x391

    :goto_7
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_b
    rem-int/lit8 p2, p1, 0x6

    if-nez p2, :cond_12

    const/16 p2, 0x39c

    goto :goto_7

    :cond_12
    const/16 p2, 0x385

    goto :goto_7

    :goto_15
    const/4 p2, 0x0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_55

    const/4 v1, 0x5

    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_1d
    add-int/lit8 v4, p1, 0x0

    sub-int/2addr v4, v3

    if-lt v4, v0, :cond_56

    const-wide/16 v4, 0x0

    move-wide v5, v4

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v0, :cond_38

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    add-int v7, v3, v4

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    add-long v9, v5, v7

    add-int/lit8 v4, v4, 0x1

    move-wide v5, v9

    goto :goto_26

    :cond_38
    const/4 v4, 0x0

    :goto_39
    if-ge v4, v1, :cond_47

    const-wide/16 v7, 0x384

    rem-long v9, v5, v7

    long-to-int v9, v9

    int-to-char v9, v9

    aput-char v9, v2, v4

    div-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_47
    const/4 v4, 0x4

    :goto_48
    if-ltz v4, :cond_52

    aget-char v5, v2, v4

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_48

    :cond_52
    add-int/lit8 v3, v3, 0x6

    goto :goto_1d

    :cond_55
    const/4 v3, 0x0

    :cond_56
    :goto_56
    add-int/lit8 v0, p1, 0x0

    if-ge v3, v0, :cond_65

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_65
    return-void
.end method

.method private static a(C)Z
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

.method private static b(Ljava/lang/CharSequence;I)I
    .registers 9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p1

    :goto_5
    if-ge v1, v0, :cond_4c

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    move v4, v1

    const/4 v1, 0x0

    :cond_e
    :goto_e
    const/16 v5, 0xd

    if-ge v1, v5, :cond_25

    invoke-static {v2}, Lcom/google/a/h/c/g;->a(C)Z

    move-result v6

    if-eqz v6, :cond_25

    if-ge v4, v0, :cond_25

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_e

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_e

    :cond_25
    if-lt v1, v5, :cond_2a

    sub-int/2addr v4, p1

    sub-int/2addr v4, v1

    return v4

    :cond_2a
    if-gtz v1, :cond_4a

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_42

    const/16 v2, 0xa

    if-eq v1, v2, :cond_42

    if-eq v1, v5, :cond_42

    const/16 v2, 0x20

    if-lt v1, v2, :cond_43

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_43

    :cond_42
    const/4 v3, 0x1

    :cond_43
    if-eqz v3, :cond_48

    add-int/lit8 v1, v4, 0x1

    goto :goto_5

    :cond_48
    move v1, v4

    goto :goto_4c

    :cond_4a
    move v1, v4

    goto :goto_5

    :cond_4c
    :goto_4c
    sub-int/2addr v1, p1

    return v1
.end method

.method private static b(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_f

    const/16 v0, 0x41

    if-lt p0, v0, :cond_d

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static c(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_f

    const/16 v0, 0x61

    if-lt p0, v0, :cond_d

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static d(C)Z
    .registers 2

    sget-object v0, Lcom/google/a/h/c/g;->r:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private static e(C)Z
    .registers 2

    sget-object v0, Lcom/google/a/h/c/g;->s:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private static f(C)Z
    .registers 2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    const/16 v0, 0xa

    if-eq p0, v0, :cond_17

    const/16 v0, 0xd

    if-eq p0, v0, :cond_17

    const/16 v0, 0x20

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7e

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
