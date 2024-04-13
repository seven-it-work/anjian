.class public final Lcom/google/a/g/e;
.super Lcom/google/a/g/r;


# static fields
.field static final a:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

.field static final b:[I

.field static final c:I = 0x94


# instance fields
.field private final d:Z

.field private final e:Z

.field private final f:Ljava/lang/StringBuilder;

.field private final g:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/a/g/e;->b:[I

    return-void

    :array_a
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g/e;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/a/g/e;-><init>(ZB)V

    return-void
.end method

.method private constructor <init>(ZB)V
    .registers 3

    invoke-direct {p0}, Lcom/google/a/g/r;-><init>()V

    iput-boolean p1, p0, Lcom/google/a/g/e;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/a/g/e;->e:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/google/a/g/e;->f:Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/a/g/e;->g:[I

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
    sget-object v1, Lcom/google/a/g/e;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    sget-object v1, Lcom/google/a/g/e;->b:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_13

    const-string p0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    const/16 v0, 0x94

    if-ne p0, v0, :cond_1d

    const/16 p0, 0x2a

    return p0

    :cond_1d
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method private static a([I)I
    .registers 11

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const v3, 0x7fffffff

    array-length v4, p0

    const/4 v3, 0x0

    const v5, 0x7fffffff

    :goto_b
    if-ge v3, v4, :cond_17

    aget v6, p0, v3

    if-ge v6, v5, :cond_14

    if-le v6, v2, :cond_14

    move v5, v6

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2e

    aget v7, p0, v2

    if-le v7, v5, :cond_2b

    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v2

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v6, v7

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v2, 0x3

    const/4 v7, -0x1

    if-ne v3, v2, :cond_45

    :goto_32
    if-ge v1, v0, :cond_44

    if-lez v3, :cond_44

    aget v2, p0, v1

    if-le v2, v5, :cond_41

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v2, v2, 0x1

    if-lt v2, v6, :cond_41

    return v7

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_44
    return v4

    :cond_45
    if-gt v3, v2, :cond_48

    return v7

    :cond_48
    move v2, v5

    goto :goto_3
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11
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
    if-ge v3, v0, :cond_b6

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_21

    const/16 v7, 0x24

    if-eq v4, v7, :cond_21

    const/16 v7, 0x25

    if-eq v4, v7, :cond_21

    if-ne v4, v5, :cond_aa

    :cond_21
    add-int/lit8 v3, v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x5a

    const/16 v9, 0x41

    if-eq v4, v6, :cond_a3

    const/16 v6, 0x4f

    if-eq v4, v5, :cond_92

    packed-switch v4, :pswitch_data_bc

    :goto_34
    const/4 v4, 0x0

    goto/16 :goto_aa

    :pswitch_37
    if-lt v7, v9, :cond_40

    const/16 v4, 0x45

    if-gt v7, v4, :cond_40

    add-int/lit8 v7, v7, -0x26

    goto :goto_8b

    :cond_40
    const/16 v4, 0x46

    if-lt v7, v4, :cond_4b

    const/16 v4, 0x4a

    if-gt v7, v4, :cond_4b

    add-int/lit8 v7, v7, -0xb

    goto :goto_8b

    :cond_4b
    const/16 v4, 0x4b

    if-lt v7, v4, :cond_54

    if-gt v7, v6, :cond_54

    add-int/lit8 v7, v7, 0x10

    goto :goto_8b

    :cond_54
    const/16 v4, 0x50

    if-lt v7, v4, :cond_5f

    const/16 v4, 0x54

    if-gt v7, v4, :cond_5f

    add-int/lit8 v7, v7, 0x2b

    goto :goto_8b

    :cond_5f
    const/16 v4, 0x55

    if-ne v7, v4, :cond_64

    goto :goto_34

    :cond_64
    const/16 v4, 0x56

    if-ne v7, v4, :cond_6b

    const/16 v4, 0x40

    goto :goto_aa

    :cond_6b
    const/16 v4, 0x57

    if-ne v7, v4, :cond_72

    const/16 v4, 0x60

    goto :goto_aa

    :cond_72
    const/16 v4, 0x58

    if-eq v7, v4, :cond_82

    const/16 v4, 0x59

    if-eq v7, v4, :cond_82

    if-ne v7, v8, :cond_7d

    goto :goto_82

    :cond_7d
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_82
    :goto_82
    const/16 v4, 0x7f

    goto :goto_aa

    :pswitch_85
    if-lt v7, v9, :cond_8d

    if-gt v7, v8, :cond_8d

    add-int/lit8 v7, v7, -0x40

    :goto_8b
    int-to-char v4, v7

    goto :goto_aa

    :cond_8d
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_92
    if-lt v7, v9, :cond_99

    if-gt v7, v6, :cond_99

    add-int/lit8 v7, v7, -0x20

    goto :goto_8b

    :cond_99
    if-ne v7, v8, :cond_9e

    const/16 v4, 0x3a

    goto :goto_aa

    :cond_9e
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_a3
    if-lt v7, v9, :cond_b1

    if-gt v7, v8, :cond_b1

    add-int/lit8 v7, v7, 0x20

    goto :goto_8b

    :cond_aa
    :goto_aa
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_b1
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_bc
    .packed-switch 0x24
        :pswitch_85
        :pswitch_37
    .end packed-switch
.end method

.method private static a(Lcom/google/a/c/a;[I)[I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/c/a;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/a/c/a;->c(I)I

    move-result v2

    array-length v3, p1

    move v6, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v2, v0, :cond_58

    invoke-virtual {p0, v2}, Lcom/google/a/c/a;->a(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v4, :cond_1a

    aget v7, p1, v5

    add-int/2addr v7, v8

    aput v7, p1, v5

    goto :goto_55

    :cond_1a
    add-int/lit8 v7, v3, -0x1

    if-ne v5, v7, :cond_4f

    invoke-static {p1}, Lcom/google/a/g/e;->a([I)I

    move-result v7

    const/16 v9, 0x94

    const/4 v10, 0x2

    if-ne v7, v9, :cond_3d

    sub-int v7, v2, v6

    div-int/2addr v7, v10

    sub-int v7, v6, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7, v6}, Lcom/google/a/c/a;->a(II)Z

    move-result v7

    if-eqz v7, :cond_3d

    new-array p0, v10, [I

    aput v6, p0, v1

    aput v2, p0, v8

    return-object p0

    :cond_3d
    aget v7, p1, v1

    aget v9, p1, v8

    add-int/2addr v7, v9

    add-int/2addr v6, v7

    add-int/lit8 v7, v5, -0x1

    invoke-static {p1, v10, p1, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v1, p1, v7

    aput v1, p1, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_51

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    :goto_51
    aput v8, p1, v5

    xor-int/lit8 v4, v4, 0x1

    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_58
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .registers 22
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

    iget-object v2, v0, Lcom/google/a/g/e;->g:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v4, v0, Lcom/google/a/g/e;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v5, v1, Lcom/google/a/c/a;->b:I

    invoke-virtual {v1, v3}, Lcom/google/a/c/a;->c(I)I

    move-result v6

    array-length v7, v2

    move v10, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_19
    if-ge v6, v5, :cond_210

    invoke-virtual {v1, v6}, Lcom/google/a/c/a;->a(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v8, :cond_2b

    aget v11, v2, v9

    add-int/2addr v11, v12

    aput v11, v2, v9

    move/from16 v11, p1

    goto/16 :goto_20c

    :cond_2b
    add-int/lit8 v11, v7, -0x1

    if-ne v9, v11, :cond_204

    invoke-static {v2}, Lcom/google/a/g/e;->a([I)I

    move-result v11

    const/16 v13, 0x94

    const/4 v14, 0x2

    if-ne v11, v13, :cond_1ef

    sub-int v11, v6, v10

    div-int/2addr v11, v14

    sub-int v11, v10, v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1, v11, v10}, Lcom/google/a/c/a;->a(II)Z

    move-result v11

    if-eqz v11, :cond_1ef

    new-array v5, v14, [I

    aput v10, v5, v3

    aput v6, v5, v12

    aget v6, v5, v12

    invoke-virtual {v1, v6}, Lcom/google/a/c/a;->c(I)I

    move-result v6

    iget v7, v1, Lcom/google/a/c/a;->b:I

    :goto_55
    invoke-static {v1, v6, v2}, Lcom/google/a/g/e;->a(Lcom/google/a/c/a;I[I)V

    invoke-static {v2}, Lcom/google/a/g/e;->a([I)I

    move-result v8

    if-gez v8, :cond_63

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_63
    const/4 v9, 0x0

    :goto_64
    sget-object v10, Lcom/google/a/g/e;->b:[I

    array-length v10, v10

    const/16 v11, 0x2a

    if-ge v9, v10, :cond_7b

    sget-object v10, Lcom/google/a/g/e;->b:[I

    aget v10, v10, v9

    if-ne v10, v8, :cond_78

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_7f

    :cond_78
    add-int/lit8 v9, v9, 0x1

    goto :goto_64

    :cond_7b
    if-ne v8, v13, :cond_1ea

    const/16 v8, 0x2a

    :goto_7f
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v9, v2

    move v15, v6

    const/4 v10, 0x0

    :goto_85
    if-ge v10, v9, :cond_8e

    aget v16, v2, v10

    add-int v15, v15, v16

    add-int/lit8 v10, v10, 0x1

    goto :goto_85

    :cond_8e
    invoke-virtual {v1, v15}, Lcom/google/a/c/a;->c(I)I

    move-result v9

    if-ne v8, v11, :cond_1e5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    array-length v1, v2

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_9f
    if-ge v8, v1, :cond_a7

    aget v11, v2, v8

    add-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_9f

    :cond_a7
    sub-int v1, v9, v6

    sub-int/2addr v1, v10

    if-eq v9, v7, :cond_b4

    shl-int/2addr v1, v12

    if-ge v1, v10, :cond_b4

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_b4
    iget-boolean v1, v0, Lcom/google/a/g/e;->d:Z

    const/16 v2, 0x2b

    if-eqz v1, :cond_e8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_c1
    if-ge v7, v1, :cond_d3

    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    iget-object v11, v0, Lcom/google/a/g/e;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_c1

    :cond_d3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    rem-int/2addr v8, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_e5

    invoke-static {}, Lcom/google/a/d;->getChecksumInstance()Lcom/google/a/d;

    move-result-object v1

    throw v1

    :cond_e5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_e8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_f3

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_f3
    iget-boolean v1, v0, Lcom/google/a/g/e;->e:Z

    if-eqz v1, :cond_1b7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v8, 0x0

    :goto_101
    if-ge v8, v1, :cond_1b2

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v11, 0x2f

    if-eq v9, v2, :cond_11b

    const/16 v13, 0x24

    if-eq v9, v13, :cond_11b

    const/16 v13, 0x25

    if-eq v9, v13, :cond_11b

    if-ne v9, v11, :cond_116

    goto :goto_11b

    :cond_116
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1a7

    :cond_11b
    :goto_11b
    add-int/lit8 v8, v8, 0x1

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v15, 0x5a

    const/16 v14, 0x41

    if-eq v9, v2, :cond_19d

    const/16 v2, 0x4f

    if-eq v9, v11, :cond_18c

    packed-switch v9, :pswitch_data_216

    :goto_12e
    const/4 v2, 0x0

    goto/16 :goto_1a4

    :pswitch_131
    if-lt v13, v14, :cond_13a

    const/16 v9, 0x45

    if-gt v13, v9, :cond_13a

    add-int/lit8 v13, v13, -0x26

    goto :goto_185

    :cond_13a
    const/16 v9, 0x46

    if-lt v13, v9, :cond_145

    const/16 v9, 0x4a

    if-gt v13, v9, :cond_145

    add-int/lit8 v13, v13, -0xb

    goto :goto_185

    :cond_145
    const/16 v9, 0x4b

    if-lt v13, v9, :cond_14e

    if-gt v13, v2, :cond_14e

    add-int/lit8 v13, v13, 0x10

    goto :goto_185

    :cond_14e
    const/16 v2, 0x50

    if-lt v13, v2, :cond_159

    const/16 v2, 0x54

    if-gt v13, v2, :cond_159

    add-int/lit8 v13, v13, 0x2b

    goto :goto_185

    :cond_159
    const/16 v2, 0x55

    if-ne v13, v2, :cond_15e

    goto :goto_12e

    :cond_15e
    const/16 v2, 0x56

    if-ne v13, v2, :cond_165

    const/16 v2, 0x40

    goto :goto_1a4

    :cond_165
    const/16 v2, 0x57

    if-ne v13, v2, :cond_16c

    const/16 v2, 0x60

    goto :goto_1a4

    :cond_16c
    const/16 v2, 0x58

    if-eq v13, v2, :cond_17c

    const/16 v2, 0x59

    if-eq v13, v2, :cond_17c

    if-ne v13, v15, :cond_177

    goto :goto_17c

    :cond_177
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :cond_17c
    :goto_17c
    const/16 v2, 0x7f

    goto :goto_1a4

    :pswitch_17f
    if-lt v13, v14, :cond_187

    if-gt v13, v15, :cond_187

    add-int/lit8 v13, v13, -0x40

    :goto_185
    int-to-char v2, v13

    goto :goto_1a4

    :cond_187
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :cond_18c
    if-lt v13, v14, :cond_193

    if-gt v13, v2, :cond_193

    add-int/lit8 v13, v13, -0x20

    goto :goto_185

    :cond_193
    if-ne v13, v15, :cond_198

    const/16 v2, 0x3a

    goto :goto_1a4

    :cond_198
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :cond_19d
    if-lt v13, v14, :cond_1ad

    if-gt v13, v15, :cond_1ad

    add-int/lit8 v13, v13, 0x20

    goto :goto_185

    :goto_1a4
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1a7
    add-int/2addr v8, v12

    const/16 v2, 0x2b

    const/4 v14, 0x2

    goto/16 :goto_101

    :cond_1ad
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object v1

    throw v1

    :cond_1b2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1bb

    :cond_1b7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1bb
    aget v2, v5, v12

    aget v4, v5, v3

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    int-to-float v5, v6

    int-to-float v6, v10

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    new-instance v4, Lcom/google/a/r;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/a/t;

    new-instance v8, Lcom/google/a/t;

    move/from16 v11, p1

    int-to-float v9, v11

    invoke-direct {v8, v2, v9}, Lcom/google/a/t;-><init>(FF)V

    aput-object v8, v7, v3

    new-instance v2, Lcom/google/a/t;

    invoke-direct {v2, v5, v9}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, v7, v12

    sget-object v2, Lcom/google/a/a;->CODE_39:Lcom/google/a/a;

    invoke-direct {v4, v1, v6, v7, v2}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    return-object v4

    :cond_1e5
    move/from16 v11, p1

    move v6, v9

    goto/16 :goto_55

    :cond_1ea
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    :cond_1ef
    move/from16 v11, p1

    aget v13, v2, v3

    aget v14, v2, v12

    add-int/2addr v13, v14

    add-int/2addr v10, v13

    add-int/lit8 v13, v9, -0x1

    const/4 v14, 0x2

    invoke-static {v2, v14, v2, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v3, v2, v13

    aput v3, v2, v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_208

    :cond_204
    move/from16 v11, p1

    add-int/lit8 v9, v9, 0x1

    :goto_208
    aput v12, v2, v9

    xor-int/lit8 v8, v8, 0x1

    :goto_20c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_19

    :cond_210
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_216
    .packed-switch 0x24
        :pswitch_17f
        :pswitch_131
    .end packed-switch
.end method
