.class final Lcom/google/a/d/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/d/a/c$a;
    }
.end annotation


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[C

.field private static final d:[C

.field private static final e:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x28

    new-array v1, v0, [C

    fill-array-data v1, :array_28

    sput-object v1, Lcom/google/a/d/a/c;->a:[C

    const/16 v1, 0x1b

    new-array v1, v1, [C

    fill-array-data v1, :array_54

    sput-object v1, Lcom/google/a/d/a/c;->b:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_74

    sput-object v0, Lcom/google/a/d/a/c;->c:[C

    sget-object v0, Lcom/google/a/d/a/c;->b:[C

    sput-object v0, Lcom/google/a/d/a/c;->d:[C

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_a0

    sput-object v0, Lcom/google/a/d/a/c;->e:[C

    return-void

    nop

    :array_28
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_54
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_74
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_a0
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)I
    .registers 2

    mul-int/lit16 p1, p1, 0x95

    rem-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    if-ltz p0, :cond_a

    return p0

    :cond_a
    add-int/lit16 p0, p0, 0x100

    return p0
.end method

.method private static a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_f
    const/4 v3, 0x1

    const/16 v4, 0x80

    if-gt v2, v4, :cond_20

    if-eqz v1, :cond_18

    add-int/lit16 v2, v2, 0x80

    :cond_18
    sub-int/2addr v2, v3

    int-to-char p0, v2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget p0, Lcom/google/a/d/a/c$a;->ASCII_ENCODE$6e85352:I

    return p0

    :cond_20
    const/16 v4, 0x81

    if-ne v2, v4, :cond_27

    sget p0, Lcom/google/a/d/a/c$a;->PAD_ENCODE$6e85352:I

    return p0

    :cond_27
    const/16 v4, 0xe5

    if-gt v2, v4, :cond_3a

    add-int/lit16 v2, v2, -0x82

    const/16 v3, 0xa

    if-ge v2, v3, :cond_36

    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_3a
    packed-switch v2, :pswitch_data_7c

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_76

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v2

    if-eqz v2, :cond_6d

    goto :goto_76

    :pswitch_48
    sget p0, Lcom/google/a/d/a/c$a;->EDIFACT_ENCODE$6e85352:I

    return p0

    :pswitch_4b
    sget p0, Lcom/google/a/d/a/c$a;->TEXT_ENCODE$6e85352:I

    return p0

    :pswitch_4e
    sget p0, Lcom/google/a/d/a/c$a;->ANSIX12_ENCODE$6e85352:I

    return p0

    :pswitch_51
    const-string v2, "[)>\u001e06\u001d"

    goto :goto_56

    :pswitch_54
    const-string v2, "[)>\u001e05\u001d"

    :goto_56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u001e\u0004"

    invoke-virtual {p2, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    :pswitch_5f
    const/4 v1, 0x1

    goto :goto_6d

    :pswitch_61
    const/16 v2, 0x1d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6d

    :pswitch_67
    sget p0, Lcom/google/a/d/a/c$a;->BASE256_ENCODE$6e85352:I

    return p0

    :pswitch_6a
    sget p0, Lcom/google/a/d/a/c$a;->C40_ENCODE$6e85352:I

    return p0

    :cond_6d
    :goto_6d
    :pswitch_6d
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v2

    if-gtz v2, :cond_2

    sget p0, Lcom/google/a/d/a/c$a;->ASCII_ENCODE$6e85352:I

    return p0

    :cond_76
    :goto_76
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_7c
    .packed-switch 0xe6
        :pswitch_6a
        :pswitch_67
        :pswitch_61
        :pswitch_6d
        :pswitch_6d
        :pswitch_5f
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_6d
    .end packed-switch
.end method

.method static a([B)Lcom/google/a/c/e;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    new-instance v0, Lcom/google/a/c/c;

    invoke-direct {v0, p0}, Lcom/google/a/c/c;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    sget v4, Lcom/google/a/d/a/c$a;->ASCII_ENCODE$6e85352:I

    :cond_1a
    sget v5, Lcom/google/a/d/a/c$a;->ASCII_ENCODE$6e85352:I

    if-ne v4, v5, :cond_23

    invoke-static {v0, v1, v2}, Lcom/google/a/d/a/c;->a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v4

    goto :goto_46

    :cond_23
    sget-object v5, Lcom/google/a/d/a/c$1;->a:[I

    add-int/lit8 v4, v4, -0x1

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_6c

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_31
    invoke-static {v0, v1, v3}, Lcom/google/a/d/a/c;->a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    goto :goto_44

    :pswitch_35
    invoke-static {v0, v1}, Lcom/google/a/d/a/c;->d(Lcom/google/a/c/c;Ljava/lang/StringBuilder;)V

    goto :goto_44

    :pswitch_39
    invoke-static {v0, v1}, Lcom/google/a/d/a/c;->c(Lcom/google/a/c/c;Ljava/lang/StringBuilder;)V

    goto :goto_44

    :pswitch_3d
    invoke-static {v0, v1}, Lcom/google/a/d/a/c;->b(Lcom/google/a/c/c;Ljava/lang/StringBuilder;)V

    goto :goto_44

    :pswitch_41
    invoke-static {v0, v1}, Lcom/google/a/d/a/c;->a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;)V

    :goto_44
    sget v4, Lcom/google/a/d/a/c$a;->ASCII_ENCODE$6e85352:I

    :goto_46
    sget v5, Lcom/google/a/d/a/c$a;->PAD_ENCODE$6e85352:I

    if-eq v4, v5, :cond_50

    invoke-virtual {v0}, Lcom/google/a/c/c;->a()I

    move-result v5

    if-gtz v5, :cond_1a

    :cond_50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_59
    new-instance v0, Lcom/google/a/c/e;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_67

    move-object v3, v4

    :cond_67
    invoke-direct {v0, p0, v1, v3, v4}, Lcom/google/a/c/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
    .end packed-switch
.end method

.method private static a(II[I)V
    .registers 5

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    div-int/lit16 v0, p0, 0x640

    const/4 v1, 0x0

    aput v0, p2, v1

    mul-int/lit16 v0, v0, 0x640

    sub-int/2addr p0, v0

    div-int/lit8 v0, p0, 0x28

    aput v0, p2, p1

    mul-int/lit8 v0, v0, 0x28

    sub-int/2addr p0, v0

    const/4 p1, 0x2

    aput p0, p2, p1

    return-void
.end method

.method private static a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0, v6}, Lcom/google/a/c/c;->a(I)I

    move-result v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0, v6}, Lcom/google/a/c/c;->a(I)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/google/a/d/a/c;->a(II[I)V

    move v5, v3

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v0, :cond_94

    aget v6, v1, v3

    packed-switch v4, :pswitch_data_9e

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_2d
    if-eqz v5, :cond_37

    add-int/lit16 v6, v6, 0xe0

    :goto_31
    int-to-char v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_6f

    :cond_37
    add-int/lit8 v6, v6, 0x60

    :cond_39
    int-to-char v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6f

    :pswitch_3e
    sget-object v4, Lcom/google/a/d/a/c;->b:[C

    array-length v4, v4

    if-ge v6, v4, :cond_55

    sget-object v4, Lcom/google/a/d/a/c;->b:[C

    aget-char v4, v4, v6

    if-eqz v5, :cond_51

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_68

    :cond_51
    :goto_51
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_55
    const/16 v4, 0x1b

    if-eq v6, v4, :cond_64

    const/16 v4, 0x1e

    if-eq v6, v4, :cond_62

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_62
    const/4 v4, 0x1

    goto :goto_68

    :cond_64
    const/16 v4, 0x1d

    goto :goto_51

    :goto_67
    move v4, v5

    :goto_68
    move v5, v4

    goto :goto_6f

    :pswitch_6a
    if-eqz v5, :cond_39

    add-int/lit16 v6, v6, 0x80

    goto :goto_31

    :goto_6f
    const/4 v4, 0x0

    goto :goto_8c

    :pswitch_71
    if-ge v6, v0, :cond_76

    add-int/lit8 v4, v6, 0x1

    goto :goto_8c

    :cond_76
    sget-object v7, Lcom/google/a/d/a/c;->a:[C

    array-length v7, v7

    if-ge v6, v7, :cond_8f

    sget-object v7, Lcom/google/a/d/a/c;->a:[C

    aget-char v6, v7, v6

    if-eqz v5, :cond_89

    add-int/lit16 v6, v6, 0x80

    int-to-char v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_8c

    :cond_89
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_8f
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_94
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v3

    if-gtz v3, :cond_9b

    return-void

    :cond_9b
    move v3, v5

    goto/16 :goto_6

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_71
        :pswitch_6a
        :pswitch_3e
        :pswitch_2d
    .end packed-switch
.end method

.method private static a(Lcom/google/a/c/c;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/c;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/c/c;->a:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0}, Lcom/google/a/d/a/c;->a(II)I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v0

    div-int/2addr v0, v1

    goto :goto_2c

    :cond_18
    const/16 v2, 0xfa

    if-lt v0, v2, :cond_2c

    add-int/lit16 v0, v0, -0xf9

    mul-int/lit16 v0, v0, 0xfa

    invoke-virtual {p0, v1}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v3}, Lcom/google/a/d/a/c;->a(II)I

    move-result v2

    add-int/2addr v0, v2

    move v3, v4

    :cond_2c
    :goto_2c
    if-gez v0, :cond_33

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_33
    new-array v2, v0, [B

    const/4 v4, 0x0

    :goto_36
    if-ge v4, v0, :cond_54

    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v5

    if-ge v5, v1, :cond_43

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_43
    invoke-virtual {p0, v1}, Lcom/google/a/c/c;->a(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v3}, Lcom/google/a/d/a/c;->a(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_36

    :cond_54
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :try_start_57
    new-instance p0, Ljava/lang/String;

    const-string p2, "ISO8859_1"

    invoke-direct {p0, v2, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_57 .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Platform does not support required encoding: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b(Lcom/google/a/c/c;Ljava/lang/StringBuilder;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0, v6}, Lcom/google/a/c/c;->a(I)I

    move-result v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0, v6}, Lcom/google/a/c/c;->a(I)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/google/a/d/a/c;->a(II[I)V

    move v5, v3

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v0, :cond_a2

    aget v6, v1, v3

    packed-switch v4, :pswitch_data_ac

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_2d
    sget-object v4, Lcom/google/a/d/a/c;->e:[C

    array-length v4, v4

    if-ge v6, v4, :cond_44

    sget-object v4, Lcom/google/a/d/a/c;->e:[C

    aget-char v4, v4, v6

    if-eqz v5, :cond_40

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    :goto_3b
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_7d

    :cond_40
    :goto_40
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7d

    :cond_44
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_49
    sget-object v4, Lcom/google/a/d/a/c;->d:[C

    array-length v4, v4

    if-ge v6, v4, :cond_60

    sget-object v4, Lcom/google/a/d/a/c;->d:[C

    aget-char v4, v4, v6

    if-eqz v5, :cond_5c

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_73

    :cond_5c
    :goto_5c
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_60
    const/16 v4, 0x1b

    if-eq v6, v4, :cond_6f

    const/16 v4, 0x1e

    if-eq v6, v4, :cond_6d

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_6d
    const/4 v4, 0x1

    goto :goto_73

    :cond_6f
    const/16 v4, 0x1d

    goto :goto_5c

    :goto_72
    move v4, v5

    :goto_73
    move v5, v4

    goto :goto_7d

    :pswitch_75
    if-eqz v5, :cond_7b

    add-int/lit16 v6, v6, 0x80

    int-to-char v4, v6

    goto :goto_3b

    :cond_7b
    int-to-char v4, v6

    goto :goto_40

    :goto_7d
    const/4 v4, 0x0

    goto :goto_9a

    :pswitch_7f
    if-ge v6, v0, :cond_84

    add-int/lit8 v4, v6, 0x1

    goto :goto_9a

    :cond_84
    sget-object v7, Lcom/google/a/d/a/c;->c:[C

    array-length v7, v7

    if-ge v6, v7, :cond_9d

    sget-object v7, Lcom/google/a/d/a/c;->c:[C

    aget-char v6, v7, v6

    if-eqz v5, :cond_97

    add-int/lit16 v6, v6, 0x80

    int-to-char v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_9a

    :cond_97
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_9d
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_a2
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v3

    if-gtz v3, :cond_a9

    return-void

    :cond_a9
    move v3, v5

    goto/16 :goto_6

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_75
        :pswitch_49
        :pswitch_2d
    .end packed-switch
.end method

.method private static c(Lcom/google/a/c/c;Ljava/lang/StringBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    :cond_3
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0, v3}, Lcom/google/a/c/c;->a(I)I

    move-result v2

    const/16 v4, 0xfe

    if-ne v2, v4, :cond_15

    return-void

    :cond_15
    invoke-virtual {p0, v3}, Lcom/google/a/c/c;->a(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/google/a/d/a/c;->a(II[I)V

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v0, :cond_4a

    aget v3, v1, v2

    packed-switch v3, :pswitch_data_52

    const/16 v4, 0xe

    if-ge v3, v4, :cond_3b

    add-int/lit8 v3, v3, 0x2c

    :goto_2a
    int-to-char v3, v3

    goto :goto_37

    :pswitch_2c
    const/16 v3, 0x20

    goto :goto_37

    :pswitch_2f
    const/16 v3, 0x3e

    goto :goto_37

    :pswitch_32
    const/16 v3, 0x2a

    goto :goto_37

    :pswitch_35
    const/16 v3, 0xd

    :goto_37
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_3b
    const/16 v4, 0x28

    if-ge v3, v4, :cond_45

    add-int/lit8 v3, v3, 0x33

    goto :goto_2a

    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_45
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_4a
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v2

    if-gtz v2, :cond_3

    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
    .end packed-switch
.end method

.method private static d(Lcom/google/a/c/c;Ljava/lang/StringBuilder;)V
    .registers 5

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2f

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/a/c/c;->a(I)I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_22

    iget p1, p0, Lcom/google/a/c/c;->b:I

    const/16 v0, 0x8

    rsub-int/lit8 p1, p1, 0x8

    if-eq p1, v0, :cond_21

    invoke-virtual {p0, p1}, Lcom/google/a/c/c;->a(I)I

    :cond_21
    return-void

    :cond_22
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_28

    or-int/lit8 v1, v1, 0x40

    :cond_28
    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2f
    invoke-virtual {p0}, Lcom/google/a/c/c;->a()I

    move-result v0

    if-gtz v0, :cond_0

    return-void
.end method
