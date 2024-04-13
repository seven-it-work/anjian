.class public final Lcom/google/a/d/c/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[[I

.field private static final c:I = 0x12d

.field private static final d:[I

.field private static final e:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_ca

    sput-object v1, Lcom/google/a/d/c/i;->a:[I

    new-array v0, v0, [[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    fill-array-data v2, :array_ee

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x7

    new-array v4, v2, [I

    fill-array-data v4, :array_fc

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/16 v4, 0xa

    new-array v6, v4, [I

    fill-array-data v6, :array_10e

    const/4 v7, 0x2

    aput-object v6, v0, v7

    const/16 v6, 0xb

    new-array v7, v6, [I

    fill-array-data v7, :array_126

    const/4 v8, 0x3

    aput-object v7, v0, v8

    const/16 v7, 0xc

    new-array v8, v7, [I

    fill-array-data v8, :array_140

    const/4 v9, 0x4

    aput-object v8, v0, v9

    const/16 v8, 0xe

    new-array v9, v8, [I

    fill-array-data v9, :array_15c

    aput-object v9, v0, v1

    const/16 v1, 0x12

    new-array v1, v1, [I

    fill-array-data v1, :array_17c

    const/4 v9, 0x6

    aput-object v1, v0, v9

    const/16 v1, 0x14

    new-array v1, v1, [I

    fill-array-data v1, :array_1a4

    aput-object v1, v0, v2

    const/16 v1, 0x18

    new-array v1, v1, [I

    fill-array-data v1, :array_1d0

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x1c

    new-array v1, v1, [I

    fill-array-data v1, :array_204

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x24

    new-array v1, v1, [I

    fill-array-data v1, :array_240

    aput-object v1, v0, v4

    const/16 v1, 0x2a

    new-array v1, v1, [I

    fill-array-data v1, :array_28c

    aput-object v1, v0, v6

    const/16 v1, 0x30

    new-array v1, v1, [I

    fill-array-data v1, :array_2e4

    aput-object v1, v0, v7

    const/16 v1, 0x38

    new-array v1, v1, [I

    fill-array-data v1, :array_348

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0x3e

    new-array v1, v1, [I

    fill-array-data v1, :array_3bc

    aput-object v1, v0, v8

    const/16 v1, 0x44

    new-array v1, v1, [I

    fill-array-data v1, :array_43c

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/a/d/c/i;->b:[[I

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/google/a/d/c/i;->d:[I

    const/16 v1, 0xff

    new-array v2, v1, [I

    sput-object v2, Lcom/google/a/d/c/i;->e:[I

    const/4 v2, 0x1

    :goto_b6
    if-ge v3, v1, :cond_c8

    sget-object v4, Lcom/google/a/d/c/i;->e:[I

    aput v2, v4, v3

    sget-object v4, Lcom/google/a/d/c/i;->d:[I

    aput v3, v4, v2

    shl-int/2addr v2, v5

    if-lt v2, v0, :cond_c5

    xor-int/lit16 v2, v2, 0x12d

    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_c8
    return-void

    nop

    :array_ca
    .array-data 4
        0x5
        0x7
        0xa
        0xb
        0xc
        0xe
        0x12
        0x14
        0x18
        0x1c
        0x24
        0x2a
        0x30
        0x38
        0x3e
        0x44
    .end array-data

    :array_ee
    .array-data 4
        0xe4
        0x30
        0xf
        0x6f
        0x3e
    .end array-data

    :array_fc
    .array-data 4
        0x17
        0x44
        0x90
        0x86
        0xf0
        0x5c
        0xfe
    .end array-data

    :array_10e
    .array-data 4
        0x1c
        0x18
        0xb9
        0xa6
        0xdf
        0xf8
        0x74
        0xff
        0x6e
        0x3d
    .end array-data

    :array_126
    .array-data 4
        0xaf
        0x8a
        0xcd
        0xc
        0xc2
        0xa8
        0x27
        0xf5
        0x3c
        0x61
        0x78
    .end array-data

    :array_140
    .array-data 4
        0x29
        0x99
        0x9e
        0x5b
        0x3d
        0x2a
        0x8e
        0xd5
        0x61
        0xb2
        0x64
        0xf2
    .end array-data

    :array_15c
    .array-data 4
        0x9c
        0x61
        0xc0
        0xfc
        0x5f
        0x9
        0x9d
        0x77
        0x8a
        0x2d
        0x12
        0xba
        0x53
        0xb9
    .end array-data

    :array_17c
    .array-data 4
        0x53
        0xc3
        0x64
        0x27
        0xbc
        0x4b
        0x42
        0x3d
        0xf1
        0xd5
        0x6d
        0x81
        0x5e
        0xfe
        0xe1
        0x30
        0x5a
        0xbc
    .end array-data

    :array_1a4
    .array-data 4
        0xf
        0xc3
        0xf4
        0x9
        0xe9
        0x47
        0xa8
        0x2
        0xbc
        0xa0
        0x99
        0x91
        0xfd
        0x4f
        0x6c
        0x52
        0x1b
        0xae
        0xba
        0xac
    .end array-data

    :array_1d0
    .array-data 4
        0x34
        0xbe
        0x58
        0xcd
        0x6d
        0x27
        0xb0
        0x15
        0x9b
        0xc5
        0xfb
        0xdf
        0x9b
        0x15
        0x5
        0xac
        0xfe
        0x7c
        0xc
        0xb5
        0xb8
        0x60
        0x32
        0xc1
    .end array-data

    :array_204
    .array-data 4
        0xd3
        0xe7
        0x2b
        0x61
        0x47
        0x60
        0x67
        0xae
        0x25
        0x97
        0xaa
        0x35
        0x4b
        0x22
        0xf9
        0x79
        0x11
        0x8a
        0x6e
        0xd5
        0x8d
        0x88
        0x78
        0x97
        0xe9
        0xa8
        0x5d
        0xff
    .end array-data

    :array_240
    .array-data 4
        0xf5
        0x7f
        0xf2
        0xda
        0x82
        0xfa
        0xa2
        0xb5
        0x66
        0x78
        0x54
        0xb3
        0xdc
        0xfb
        0x50
        0xb6
        0xe5
        0x12
        0x2
        0x4
        0x44
        0x21
        0x65
        0x89
        0x5f
        0x77
        0x73
        0x2c
        0xaf
        0xb8
        0x3b
        0x19
        0xe1
        0x62
        0x51
        0x70
    .end array-data

    :array_28c
    .array-data 4
        0x4d
        0xc1
        0x89
        0x1f
        0x13
        0x26
        0x16
        0x99
        0xf7
        0x69
        0x7a
        0x2
        0xf5
        0x85
        0xf2
        0x8
        0xaf
        0x5f
        0x64
        0x9
        0xa7
        0x69
        0xd6
        0x6f
        0x39
        0x79
        0x15
        0x1
        0xfd
        0x39
        0x36
        0x65
        0xf8
        0xca
        0x45
        0x32
        0x96
        0xb1
        0xe2
        0x5
        0x9
        0x5
    .end array-data

    :array_2e4
    .array-data 4
        0xf5
        0x84
        0xac
        0xdf
        0x60
        0x20
        0x75
        0x16
        0xee
        0x85
        0xee
        0xe7
        0xcd
        0xbc
        0xed
        0x57
        0xbf
        0x6a
        0x10
        0x93
        0x76
        0x17
        0x25
        0x5a
        0xaa
        0xcd
        0x83
        0x58
        0x78
        0x64
        0x42
        0x8a
        0xba
        0xf0
        0x52
        0x2c
        0xb0
        0x57
        0xbb
        0x93
        0xa0
        0xaf
        0x45
        0xd5
        0x5c
        0xfd
        0xe1
        0x13
    .end array-data

    :array_348
    .array-data 4
        0xaf
        0x9
        0xdf
        0xee
        0xc
        0x11
        0xdc
        0xd0
        0x64
        0x1d
        0xaf
        0xaa
        0xe6
        0xc0
        0xd7
        0xeb
        0x96
        0x9f
        0x24
        0xdf
        0x26
        0xc8
        0x84
        0x36
        0xe4
        0x92
        0xda
        0xea
        0x75
        0xcb
        0x1d
        0xe8
        0x90
        0xee
        0x16
        0x96
        0xc9
        0x75
        0x3e
        0xcf
        0xa4
        0xd
        0x89
        0xf5
        0x7f
        0x43
        0xf7
        0x1c
        0x9b
        0x2b
        0xcb
        0x6b
        0xe9
        0x35
        0x8f
        0x2e
    .end array-data

    :array_3bc
    .array-data 4
        0xf2
        0x5d
        0xa9
        0x32
        0x90
        0xd2
        0x27
        0x76
        0xca
        0xbc
        0xc9
        0xbd
        0x8f
        0x6c
        0xc4
        0x25
        0xb9
        0x70
        0x86
        0xe6
        0xf5
        0x3f
        0xc5
        0xbe
        0xfa
        0x6a
        0xb9
        0xdd
        0xaf
        0x40
        0x72
        0x47
        0xa1
        0x2c
        0x93
        0x6
        0x1b
        0xda
        0x33
        0x3f
        0x57
        0xa
        0x28
        0x82
        0xbc
        0x11
        0xa3
        0x1f
        0xb0
        0xaa
        0x4
        0x6b
        0xe8
        0x7
        0x5e
        0xa6
        0xe0
        0x7c
        0x56
        0x2f
        0xb
        0xcc
    .end array-data

    :array_43c
    .array-data 4
        0xdc
        0xe4
        0xad
        0x59
        0xfb
        0x95
        0x9f
        0x38
        0x59
        0x21
        0x93
        0xf4
        0x9a
        0x24
        0x49
        0x7f
        0xd5
        0x88
        0xf8
        0xb4
        0xea
        0xc5
        0x9e
        0xb1
        0x44
        0x7a
        0x5d
        0xd5
        0xf
        0xa0
        0xe3
        0xec
        0x42
        0x8b
        0x99
        0xb9
        0xca
        0xa7
        0xb3
        0x19
        0xdc
        0xe8
        0x60
        0xd2
        0xe7
        0x88
        0xdf
        0xef
        0xb5
        0xf1
        0x3b
        0x34
        0xac
        0x19
        0x31
        0xe8
        0xd3
        0xbd
        0x40
        0x36
        0x6c
        0x99
        0x84
        0x3f
        0x60
        0x67
        0x52
        0xba
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 14

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    sget-object v3, Lcom/google/a/d/c/i;->a:[I

    array-length v3, v3

    if-ge v2, v3, :cond_15

    sget-object v3, Lcom/google/a/d/c/i;->a:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_12

    goto :goto_16

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    const/4 v2, -0x1

    :goto_16
    if-gez v2, :cond_28

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal number of error correction codewords specified: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    sget-object v3, Lcom/google/a/d/c/i;->b:[[I

    aget-object v2, v3, v2

    new-array v3, p1, [C

    const/4 v4, 0x0

    :goto_2f
    if-ge v4, p1, :cond_36

    aput-char v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_36
    const/4 v4, 0x0

    :goto_37
    add-int/lit8 v5, v0, 0x0

    if-ge v4, v5, :cond_8f

    add-int/lit8 v5, p1, -0x1

    aget-char v6, v3, v5

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    xor-int/2addr v6, v7

    :goto_44
    if-lez v5, :cond_6f

    if-eqz v6, :cond_66

    aget v7, v2, v5

    if-eqz v7, :cond_66

    add-int/lit8 v7, v5, -0x1

    aget-char v7, v3, v7

    sget-object v8, Lcom/google/a/d/c/i;->e:[I

    sget-object v9, Lcom/google/a/d/c/i;->d:[I

    aget v9, v9, v6

    sget-object v10, Lcom/google/a/d/c/i;->d:[I

    aget v11, v2, v5

    aget v10, v10, v11

    add-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v5

    goto :goto_6c

    :cond_66
    add-int/lit8 v7, v5, -0x1

    aget-char v7, v3, v7

    aput-char v7, v3, v5

    :goto_6c
    add-int/lit8 v5, v5, -0x1

    goto :goto_44

    :cond_6f
    if-eqz v6, :cond_8a

    aget v5, v2, v1

    if-eqz v5, :cond_8a

    sget-object v5, Lcom/google/a/d/c/i;->e:[I

    sget-object v7, Lcom/google/a/d/c/i;->d:[I

    aget v6, v7, v6

    sget-object v7, Lcom/google/a/d/c/i;->d:[I

    aget v8, v2, v1

    aget v7, v7, v8

    add-int/2addr v6, v7

    rem-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v1

    goto :goto_8c

    :cond_8a
    aput-char v1, v3, v1

    :goto_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_8f
    new-array p0, p1, [C

    :goto_91
    if-ge v1, p1, :cond_9e

    sub-int v0, p1, v1

    add-int/lit8 v0, v0, -0x1

    aget-char v0, v3, v0

    aput-char v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    :cond_9e
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/google/a/d/c/i;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_11

    sget-object v2, Lcom/google/a/d/c/i;->a:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_e

    goto :goto_12

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    const/4 v1, -0x1

    :goto_12
    if-gez v1, :cond_24

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal number of error correction codewords specified: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    sget-object v2, Lcom/google/a/d/c/i;->b:[[I

    aget-object v1, v2, v1

    new-array v2, p2, [C

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, p2, :cond_32

    aput-char v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_32
    const/4 v3, 0x0

    :goto_33
    add-int/lit8 v4, p1, 0x0

    if-ge v3, v4, :cond_8b

    add-int/lit8 v4, p2, -0x1

    aget-char v5, v2, v4

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    xor-int/2addr v5, v6

    :goto_40
    if-lez v4, :cond_6b

    if-eqz v5, :cond_62

    aget v6, v1, v4

    if-eqz v6, :cond_62

    add-int/lit8 v6, v4, -0x1

    aget-char v6, v2, v6

    sget-object v7, Lcom/google/a/d/c/i;->e:[I

    sget-object v8, Lcom/google/a/d/c/i;->d:[I

    aget v8, v8, v5

    sget-object v9, Lcom/google/a/d/c/i;->d:[I

    aget v10, v1, v4

    aget v9, v9, v10

    add-int/2addr v8, v9

    rem-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    goto :goto_68

    :cond_62
    add-int/lit8 v6, v4, -0x1

    aget-char v6, v2, v6

    aput-char v6, v2, v4

    :goto_68
    add-int/lit8 v4, v4, -0x1

    goto :goto_40

    :cond_6b
    if-eqz v5, :cond_86

    aget v4, v1, v0

    if-eqz v4, :cond_86

    sget-object v4, Lcom/google/a/d/c/i;->e:[I

    sget-object v6, Lcom/google/a/d/c/i;->d:[I

    aget v5, v6, v5

    sget-object v6, Lcom/google/a/d/c/i;->d:[I

    aget v7, v1, v0

    aget v6, v6, v7

    add-int/2addr v5, v6

    rem-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v0

    goto :goto_88

    :cond_86
    aput-char v0, v2, v0

    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_8b
    new-array p0, p2, [C

    :goto_8d
    if-ge v0, p2, :cond_9a

    sub-int p1, p2, v0

    add-int/lit8 p1, p1, -0x1

    aget-char p1, v2, p1

    aput-char p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_9a
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/google/a/d/c/k;)Ljava/lang/String;
    .registers 13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p1, Lcom/google/a/d/c/k;->b:I

    if-eq v0, v1, :cond_10

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of codewords does not match the selected symbol"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/a/d/c/k;->b:I

    iget v2, p1, Lcom/google/a/d/c/k;->c:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/a/d/c/k;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    iget p1, p1, Lcom/google/a/d/c/k;->c:I

    invoke-static {p0, p1}, Lcom/google/a/d/c/i;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_97

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v4, v1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3e
    if-ge v6, v1, :cond_5b

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7}, Lcom/google/a/d/c/k;->a(I)I

    move-result v8

    aput v8, v2, v6

    iget v8, p1, Lcom/google/a/d/c/k;->f:I

    aput v8, v3, v6

    aput v5, v4, v6

    if-lez v6, :cond_59

    add-int/lit8 v8, v6, -0x1

    aget v8, v4, v8

    aget v9, v2, v6

    add-int/2addr v8, v9

    aput v8, v4, v6

    :cond_59
    move v6, v7

    goto :goto_3e

    :cond_5b
    const/4 v4, 0x0

    :goto_5c
    if-ge v4, v1, :cond_97

    new-instance v6, Ljava/lang/StringBuilder;

    aget v7, v2, v4

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move v7, v4

    :goto_66
    iget v8, p1, Lcom/google/a/d/c/k;->b:I

    if-ge v7, v8, :cond_73

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v7, v1

    goto :goto_66

    :cond_73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget v7, v3, v4

    invoke-static {v6, v7}, Lcom/google/a/d/c/i;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v6

    move v7, v4

    const/4 v8, 0x0

    :goto_7f
    aget v9, v3, v4

    mul-int v9, v9, v1

    if-ge v7, v9, :cond_94

    iget v9, p1, Lcom/google/a/d/c/k;->b:I

    add-int/2addr v9, v7

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/2addr v7, v1

    move v8, v10

    goto :goto_7f

    :cond_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_97
    :goto_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
