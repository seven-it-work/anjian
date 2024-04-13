.class public final Lcom/google/a/g/g;
.super Lcom/google/a/g/r;


# static fields
.field static final a:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field static final b:[I

.field private static final c:[C

.field private static final d:I


# instance fields
.field private final e:Ljava/lang/StringBuilder;

.field private final f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/g/g;->c:[C

    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/a/g/g;->b:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/a/g/g;->d:I

    return-void

    :array_18
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/a/g/r;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/a/g/g;->e:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/g;->f:[I

    return-void
.end method

.method private static a(I)C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/a/g/g;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    sget-object v1, Lcom/google/a/g/g;->b:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    sget-object p0, Lcom/google/a/g/g;->c:[C

    aget-char p0, p0, v0

    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private static a([I)I
    .registers 8

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v2, v0, :cond_c

    aget v4, p0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v2, v0, :cond_3b

    aget v5, p0, v2

    int-to-float v5, v5

    const/high16 v6, 0x41100000    # 9.0f

    mul-float v5, v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-lez v5, :cond_39

    const/4 v6, 0x4

    if-le v5, v6, :cond_24

    goto :goto_39

    :cond_24
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_35

    move v6, v4

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v5, :cond_33

    shl-int/lit8 v6, v6, 0x1

    or-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_33
    move v4, v6

    goto :goto_36

    :cond_35
    shl-int/2addr v4, v5

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_39
    :goto_39
    const/4 p0, -0x1

    return p0

    :cond_3b
    return v4
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_9b

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_94

    const/16 v5, 0x64

    if-gt v4, v5, :cond_94

    add-int/lit8 v5, v0, -0x1

    if-lt v3, v5, :cond_22

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x4f

    const/16 v7, 0x5a

    const/16 v8, 0x41

    packed-switch v4, :pswitch_data_a0

    const/4 v4, 0x0

    goto/16 :goto_94

    :pswitch_34
    if-lt v5, v8, :cond_3b

    if-gt v5, v7, :cond_3b

    add-int/lit8 v5, v5, 0x20

    goto :goto_8d

    :cond_3b
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_40
    if-lt v5, v8, :cond_47

    if-gt v5, v6, :cond_47

    add-int/lit8 v5, v5, -0x20

    goto :goto_8d

    :cond_47
    if-ne v5, v7, :cond_4c

    const/16 v4, 0x3a

    goto :goto_94

    :cond_4c
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_51
    if-lt v5, v8, :cond_5a

    const/16 v4, 0x45

    if-gt v5, v4, :cond_5a

    add-int/lit8 v5, v5, -0x26

    goto :goto_8d

    :cond_5a
    const/16 v4, 0x46

    if-lt v5, v4, :cond_65

    const/16 v4, 0x4a

    if-gt v5, v4, :cond_65

    add-int/lit8 v5, v5, -0xb

    goto :goto_8d

    :cond_65
    const/16 v4, 0x4b

    if-lt v5, v4, :cond_6e

    if-gt v5, v6, :cond_6e

    add-int/lit8 v5, v5, 0x10

    goto :goto_8d

    :cond_6e
    const/16 v4, 0x50

    if-lt v5, v4, :cond_79

    const/16 v4, 0x53

    if-gt v5, v4, :cond_79

    add-int/lit8 v5, v5, 0x2b

    goto :goto_8d

    :cond_79
    const/16 v4, 0x54

    if-lt v5, v4, :cond_82

    if-gt v5, v7, :cond_82

    const/16 v4, 0x7f

    goto :goto_94

    :cond_82
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_87
    if-lt v5, v8, :cond_8f

    if-gt v5, v7, :cond_8f

    add-int/lit8 v5, v5, -0x40

    :goto_8d
    int-to-char v4, v5

    goto :goto_94

    :cond_8f
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_94
    :goto_94
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_9b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_a0
    .packed-switch 0x61
        :pswitch_87
        :pswitch_51
        :pswitch_40
        :pswitch_34
    .end packed-switch
.end method

.method private static a(Ljava/lang/CharSequence;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_5
    if-ltz v0, :cond_1b

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_18

    const/4 v3, 0x1

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_1b
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sget-object p1, Lcom/google/a/g/g;->c:[C

    rem-int/lit8 v2, v2, 0x2f

    aget-char p1, p1, v2

    if-eq p0, p1, :cond_2c

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object p0

    throw p0

    :cond_2c
    return-void
.end method

.method private a(Lcom/google/a/c/a;)[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget v0, p1, Lcom/google/a/c/a;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/a/c/a;->c(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/a/g/g;->f:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v3, p0, Lcom/google/a/g/g;->f:[I

    array-length v4, v3

    move v7, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_12
    if-ge v2, v0, :cond_50

    invoke-virtual {p1, v2}, Lcom/google/a/c/a;->a(I)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v5, :cond_21

    aget v8, v3, v6

    add-int/2addr v8, v9

    aput v8, v3, v6

    goto :goto_4d

    :cond_21
    add-int/lit8 v8, v4, -0x1

    if-ne v6, v8, :cond_47

    invoke-static {v3}, Lcom/google/a/g/g;->a([I)I

    move-result v8

    sget v10, Lcom/google/a/g/g;->d:I

    const/4 v11, 0x2

    if-ne v8, v10, :cond_35

    new-array p1, v11, [I

    aput v7, p1, v1

    aput v2, p1, v9

    return-object p1

    :cond_35
    aget v8, v3, v1

    aget v10, v3, v9

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    add-int/lit8 v8, v6, -0x1

    invoke-static {v3, v11, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v1, v3, v8

    aput v1, v3, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_49

    :cond_47
    add-int/lit8 v6, v6, 0x1

    :goto_49
    aput v9, v3, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_50
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method private static b(Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/d;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/a/g/g;->a(Ljava/lang/CharSequence;II)V

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/google/a/g/g;->a(Ljava/lang/CharSequence;II)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .registers 20
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v1, Lcom/google/a/c/a;->b:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/a/c/a;->c(I)I

    move-result v4

    iget-object v5, v0, Lcom/google/a/g/g;->f:[I

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v5, v0, Lcom/google/a/g/g;->f:[I

    array-length v6, v5

    move v9, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_16
    if-ge v4, v2, :cond_1bd

    invoke-virtual {v1, v4}, Lcom/google/a/c/a;->a(I)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v7, :cond_28

    aget v10, v5, v8

    add-int/2addr v10, v11

    aput v10, v5, v8

    move/from16 v10, p1

    goto/16 :goto_1b9

    :cond_28
    add-int/lit8 v10, v6, -0x1

    if-ne v8, v10, :cond_1b1

    invoke-static {v5}, Lcom/google/a/g/g;->a([I)I

    move-result v10

    sget v12, Lcom/google/a/g/g;->d:I

    const/4 v13, 0x2

    if-ne v10, v12, :cond_19d

    new-array v2, v13, [I

    aput v9, v2, v3

    aput v4, v2, v11

    aget v4, v2, v11

    invoke-virtual {v1, v4}, Lcom/google/a/c/a;->c(I)I

    move-result v4

    iget v5, v1, Lcom/google/a/c/a;->b:I

    iget-object v6, v0, Lcom/google/a/g/g;->f:[I

    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v7, v0, Lcom/google/a/g/g;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_4d
    invoke-static {v1, v4, v6}, Lcom/google/a/g/g;->a(Lcom/google/a/c/a;I[I)V

    invoke-static {v6}, Lcom/google/a/g/g;->a([I)I

    move-result v8

    if-gez v8, :cond_5b

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_5b
    const/4 v9, 0x0

    :goto_5c
    sget-object v10, Lcom/google/a/g/g;->b:[I

    array-length v10, v10

    if-ge v9, v10, :cond_198

    sget-object v10, Lcom/google/a/g/g;->b:[I

    aget v10, v10, v9

    if-ne v10, v8, :cond_192

    sget-object v8, Lcom/google/a/g/g;->c:[C

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v9, v6

    move v12, v4

    const/4 v10, 0x0

    :goto_71
    if-ge v10, v9, :cond_79

    aget v14, v6, v10

    add-int/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_71

    :cond_79
    invoke-virtual {v1, v12}, Lcom/google/a/c/a;->c(I)I

    move-result v9

    const/16 v10, 0x2a

    if-ne v8, v10, :cond_18d

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    array-length v8, v6

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_8c
    if-ge v10, v8, :cond_94

    aget v14, v6, v10

    add-int/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_8c

    :cond_94
    if-eq v9, v5, :cond_188

    invoke-virtual {v1, v9}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_9e

    goto/16 :goto_188

    :cond_9e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v13, :cond_a9

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_a9
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    const/16 v6, 0x14

    invoke-static {v7, v5, v6}, Lcom/google/a/g/g;->a(Ljava/lang/CharSequence;II)V

    sub-int/2addr v1, v11

    const/16 v5, 0xf

    invoke-static {v7, v1, v5}, Lcom/google/a/g/g;->a(Ljava/lang/CharSequence;II)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    :goto_cc
    if-ge v6, v1, :cond_15b

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x61

    if-lt v8, v9, :cond_155

    const/16 v9, 0x64

    if-gt v8, v9, :cond_155

    add-int/lit8 v9, v1, -0x1

    if-lt v6, v9, :cond_e3

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :cond_e3
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x4f

    const/16 v14, 0x5a

    const/16 v15, 0x41

    packed-switch v8, :pswitch_data_1c2

    const/4 v8, 0x0

    goto/16 :goto_155

    :pswitch_f5
    if-lt v9, v15, :cond_fc

    if-gt v9, v14, :cond_fc

    add-int/lit8 v9, v9, 0x20

    goto :goto_14e

    :cond_fc
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :pswitch_101
    if-lt v9, v15, :cond_108

    if-gt v9, v10, :cond_108

    add-int/lit8 v9, v9, -0x20

    goto :goto_14e

    :cond_108
    if-ne v9, v14, :cond_10d

    const/16 v8, 0x3a

    goto :goto_155

    :cond_10d
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :pswitch_112
    if-lt v9, v15, :cond_11b

    const/16 v8, 0x45

    if-gt v9, v8, :cond_11b

    add-int/lit8 v9, v9, -0x26

    goto :goto_14e

    :cond_11b
    const/16 v8, 0x46

    if-lt v9, v8, :cond_126

    const/16 v8, 0x4a

    if-gt v9, v8, :cond_126

    add-int/lit8 v9, v9, -0xb

    goto :goto_14e

    :cond_126
    const/16 v8, 0x4b

    if-lt v9, v8, :cond_12f

    if-gt v9, v10, :cond_12f

    add-int/lit8 v9, v9, 0x10

    goto :goto_14e

    :cond_12f
    const/16 v8, 0x50

    if-lt v9, v8, :cond_13a

    const/16 v8, 0x53

    if-gt v9, v8, :cond_13a

    add-int/lit8 v9, v9, 0x2b

    goto :goto_14e

    :cond_13a
    const/16 v8, 0x54

    if-lt v9, v8, :cond_143

    if-gt v9, v14, :cond_143

    const/16 v8, 0x7f

    goto :goto_155

    :cond_143
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :pswitch_148
    if-lt v9, v15, :cond_150

    if-gt v9, v14, :cond_150

    add-int/lit8 v9, v9, -0x40

    :goto_14e
    int-to-char v8, v9

    goto :goto_155

    :cond_150
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :cond_155
    :goto_155
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v6, v11

    goto/16 :goto_cc

    :cond_15b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v5, v2, v11

    aget v2, v2, v3

    add-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    int-to-float v4, v4

    int-to-float v6, v12

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    new-instance v5, Lcom/google/a/r;

    const/4 v6, 0x0

    new-array v7, v13, [Lcom/google/a/t;

    new-instance v8, Lcom/google/a/t;

    move/from16 v10, p1

    int-to-float v9, v10

    invoke-direct {v8, v2, v9}, Lcom/google/a/t;-><init>(FF)V

    aput-object v8, v7, v3

    new-instance v2, Lcom/google/a/t;

    invoke-direct {v2, v4, v9}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v7, v11

    sget-object v2, Lcom/google/a/a;->CODE_93:Lcom/google/a/a;

    invoke-direct {v5, v1, v6, v7, v2}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    return-object v5

    :cond_188
    :goto_188
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_18d
    move/from16 v10, p1

    move v4, v9

    goto/16 :goto_4d

    :cond_192
    move/from16 v10, p1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5c

    :cond_198
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_19d
    move/from16 v10, p1

    aget v12, v5, v3

    aget v14, v5, v11

    add-int/2addr v12, v14

    add-int/2addr v9, v12

    add-int/lit8 v12, v8, -0x1

    invoke-static {v5, v13, v5, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v3, v5, v12

    aput v3, v5, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_1b5

    :cond_1b1
    move/from16 v10, p1

    add-int/lit8 v8, v8, 0x1

    :goto_1b5
    aput v11, v5, v8

    xor-int/lit8 v7, v7, 0x1

    :goto_1b9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16

    :cond_1bd
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :pswitch_data_1c2
    .packed-switch 0x61
        :pswitch_148
        :pswitch_112
        :pswitch_101
        :pswitch_f5
    .end packed-switch
.end method
