.class final Lcom/google/a/h/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/h/a/e$a;
    }
.end annotation


# static fields
.field private static final A:[C

.field private static final B:[C

.field private static final C:[Ljava/math/BigInteger;

.field private static final D:I = 0x2

.field private static final a:I = 0x384

.field private static final b:I = 0x385

.field private static final c:I = 0x386

.field private static final d:I = 0x39c

.field private static final e:I = 0x39d

.field private static final f:I = 0x39e

.field private static final g:I = 0x39f

.field private static final h:I = 0x3a0

.field private static final i:I = 0x39b

.field private static final j:I = 0x39a

.field private static final k:I = 0x391

.field private static final l:I = 0xf

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x4

.field private static final r:I = 0x5

.field private static final s:I = 0x6

.field private static final t:I = 0x19

.field private static final u:I = 0x1b

.field private static final v:I = 0x1b

.field private static final w:I = 0x1c

.field private static final x:I = 0x1c

.field private static final y:I = 0x1d

.field private static final z:I = 0x1d


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/h/a/e;->A:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/h/a/e;->B:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v1, 0x2

    :goto_27
    sget-object v2, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    sget-object v2, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3b
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 25

    move/from16 v0, p0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x385

    const/16 v5, 0x3a0

    const-wide/16 v6, 0x384

    const/16 v8, 0x384

    const/4 v9, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v0, v4, :cond_64

    const/16 v4, 0x39c

    if-eq v0, v4, :cond_1c

    move/from16 v2, p3

    goto/16 :goto_c9

    :cond_1c
    move/from16 v2, p3

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v14, 0x0

    :goto_22
    aget v10, p1, v12

    if-ge v2, v10, :cond_c9

    if-nez v0, :cond_c9

    add-int/lit8 v10, v2, 0x1

    aget v2, p1, v2

    if-ge v2, v8, :cond_39

    add-int/lit8 v4, v4, 0x1

    mul-long v14, v14, v6

    int-to-long v6, v2

    add-long v18, v14, v6

    move v2, v10

    move-wide/from16 v14, v18

    goto :goto_47

    :cond_39
    if-eq v2, v5, :cond_43

    packed-switch v2, :pswitch_data_da

    packed-switch v2, :pswitch_data_e4

    move v2, v10

    goto :goto_47

    :cond_43
    :pswitch_43
    add-int/lit8 v10, v10, -0x1

    move v2, v10

    const/4 v0, 0x1

    :goto_47
    rem-int/lit8 v6, v4, 0x5

    if-nez v6, :cond_61

    if-lez v4, :cond_61

    const/4 v4, 0x0

    :goto_4e
    if-ge v4, v9, :cond_5e

    rsub-int/lit8 v6, v4, 0x5

    mul-int/lit8 v6, v6, 0x8

    shr-long v6, v14, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_5e
    const/4 v4, 0x0

    const-wide/16 v14, 0x0

    :cond_61
    const-wide/16 v6, 0x384

    goto :goto_22

    :cond_64
    new-array v0, v9, [I

    add-int/lit8 v4, p3, 0x1

    aget v2, p1, p3

    move v7, v2

    const/4 v2, 0x0

    :goto_6c
    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    :goto_6f
    aget v14, p1, v12

    if-ge v4, v14, :cond_b1

    if-nez v2, :cond_b1

    add-int/lit8 v14, v6, 0x1

    aput v7, v0, v6

    const-wide/16 v16, 0x384

    mul-long v10, v10, v16

    int-to-long v6, v7

    add-long v18, v10, v6

    add-int/lit8 v6, v4, 0x1

    aget v7, p1, v4

    if-eq v7, v5, :cond_aa

    packed-switch v7, :pswitch_data_ee

    packed-switch v7, :pswitch_data_f8

    rem-int/lit8 v4, v14, 0x5

    if-nez v4, :cond_a5

    if-lez v14, :cond_a5

    const/4 v4, 0x0

    :goto_93
    if-ge v4, v9, :cond_a3

    rsub-int/lit8 v10, v4, 0x5

    mul-int/lit8 v10, v10, 0x8

    shr-long v10, v18, v10

    long-to-int v10, v10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    :cond_a3
    move v4, v6

    goto :goto_6c

    :cond_a5
    move v4, v6

    move v6, v14

    move-wide/from16 v10, v18

    goto :goto_6f

    :cond_aa
    :pswitch_aa
    add-int/lit8 v4, v6, -0x1

    move v6, v14

    move-wide/from16 v10, v18

    const/4 v2, 0x1

    goto :goto_6f

    :cond_b1
    aget v1, p1, v12

    if-ne v4, v1, :cond_bc

    if-ge v7, v8, :cond_bc

    add-int/lit8 v1, v6, 0x1

    aput v7, v0, v6

    goto :goto_bd

    :cond_bc
    move v1, v6

    :goto_bd
    if-ge v12, v1, :cond_c8

    aget v2, v0, v12

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_bd

    :cond_c8
    move v2, v4

    :cond_c9
    :goto_c9
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :pswitch_data_da
    .packed-switch 0x384
        :pswitch_43
        :pswitch_43
        :pswitch_43
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x39a
        :pswitch_43
        :pswitch_43
        :pswitch_43
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x384
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x39a
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
    .end packed-switch
.end method

.method private static a([IILcom/google/a/h/c;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-le v0, v2, :cond_c

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_c
    const/4 v0, 0x2

    new-array v2, v0, [I

    move v3, p1

    const/4 p1, 0x0

    :goto_11
    if-ge p1, v0, :cond_1c

    aget v4, p0, v3

    aput v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1c
    invoke-static {v2, v0}, Lcom/google/a/h/a/e;->a([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/google/a/h/c;->a:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v3, p1}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/google/a/h/c;->b:Ljava/lang/String;

    aget p1, p0, v0

    const/16 v2, 0x39b

    const/4 v3, -0x1

    if-ne p1, v2, :cond_3f

    add-int/lit8 p1, v0, 0x1

    goto :goto_40

    :cond_3f
    const/4 p1, -0x1

    :goto_40
    aget v2, p0, v1

    if-ge v0, v2, :cond_f1

    aget v2, p0, v0

    packed-switch v2, :pswitch_data_104

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_4e
    add-int/lit8 v0, v0, 0x1

    aget v2, p0, v0

    packed-switch v2, :pswitch_data_10c

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/google/a/h/c;->j:I

    goto :goto_40

    :pswitch_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/google/a/h/c;->h:J

    goto :goto_40

    :pswitch_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/google/a/h/c;->f:Ljava/lang/String;

    goto :goto_40

    :pswitch_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/google/a/h/c;->e:Ljava/lang/String;

    goto :goto_40

    :pswitch_aa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/google/a/h/c;->i:J

    goto :goto_40

    :pswitch_c0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/google/a/h/c;->d:I

    goto/16 :goto_40

    :pswitch_d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v2}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/google/a/h/c;->g:Ljava/lang/String;

    goto/16 :goto_40

    :pswitch_ea
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/google/a/h/c;->c:Z

    goto/16 :goto_40

    :cond_f1
    if-eq p1, v3, :cond_102

    sub-int v1, v0, p1

    iget-boolean v2, p2, Lcom/google/a/h/c;->c:Z

    if-eqz v2, :cond_fb

    add-int/lit8 v1, v1, -0x1

    :cond_fb
    add-int/2addr v1, p1

    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    iput-object p0, p2, Lcom/google/a/h/c;->k:[I

    :cond_102
    return v0

    nop

    :pswitch_data_104
    .packed-switch 0x39a
        :pswitch_ea
        :pswitch_4e
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_c0
        :pswitch_aa
        :pswitch_98
        :pswitch_86
        :pswitch_70
        :pswitch_5a
    .end packed-switch
.end method

.method private static a([IILjava/lang/StringBuilder;)I
    .registers 20

    move-object/from16 v2, p2

    const/4 v3, 0x0

    aget v4, p0, v3

    sub-int v4, v4, p1

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    new-array v4, v4, [I

    aget v6, p0, v3

    sub-int v6, v6, p1

    shl-int/2addr v6, v5

    new-array v6, v6, [I

    move/from16 v1, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_16
    aget v9, p0, v3

    const/16 v10, 0x391

    const/16 v11, 0x384

    if-ge v1, v9, :cond_56

    if-nez v7, :cond_56

    add-int/lit8 v9, v1, 0x1

    aget v1, p0, v1

    if-ge v1, v11, :cond_34

    div-int/lit8 v10, v1, 0x1e

    aput v10, v4, v8

    add-int/lit8 v10, v8, 0x1

    rem-int/lit8 v1, v1, 0x1e

    aput v1, v4, v10

    add-int/lit8 v8, v8, 0x2

    :goto_32
    move v1, v9

    goto :goto_16

    :cond_34
    if-eq v1, v10, :cond_4b

    const/16 v10, 0x3a0

    if-eq v1, v10, :cond_47

    packed-switch v1, :pswitch_data_106

    packed-switch v1, :pswitch_data_110

    goto :goto_32

    :pswitch_41
    add-int/lit8 v1, v8, 0x1

    aput v11, v4, v8

    move v8, v1

    goto :goto_32

    :cond_47
    :pswitch_47
    add-int/lit8 v1, v9, -0x1

    const/4 v7, 0x1

    goto :goto_16

    :cond_4b
    aput v10, v4, v8

    add-int/lit8 v1, v9, 0x1

    aget v9, p0, v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_56
    sget v0, Lcom/google/a/h/a/e$a;->ALPHA$72b0c14b:I

    sget v5, Lcom/google/a/h/a/e$a;->ALPHA$72b0c14b:I

    move v7, v5

    move v5, v0

    const/4 v0, 0x0

    :goto_5d
    if-ge v0, v8, :cond_104

    aget v9, v4, v0

    sget-object v12, Lcom/google/a/h/a/e$1;->a:[I

    add-int/lit8 v13, v5, -0x1

    aget v12, v12, v13

    const/16 v13, 0x20

    const/16 v14, 0x1a

    const/16 v15, 0x1d

    packed-switch v12, :pswitch_data_11a

    goto/16 :goto_fa

    :pswitch_72
    if-ge v9, v15, :cond_79

    sget-object v5, Lcom/google/a/h/a/e;->A:[C

    aget-char v5, v5, v9

    goto :goto_8e

    :cond_79
    if-eq v9, v15, :cond_ba

    if-eq v9, v11, :cond_ba

    if-eq v9, v10, :cond_80

    goto :goto_86

    :cond_80
    aget v5, v6, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_86
    move v5, v7

    goto/16 :goto_fa

    :pswitch_89
    if-ge v9, v14, :cond_92

    add-int/lit8 v9, v9, 0x41

    int-to-char v5, v9

    :goto_8e
    move v13, v5

    :cond_8f
    move v5, v7

    goto/16 :goto_fb

    :cond_92
    if-eq v9, v14, :cond_8f

    if-eq v9, v11, :cond_ba

    goto :goto_86

    :pswitch_97
    if-ge v9, v15, :cond_9e

    sget-object v12, Lcom/google/a/h/a/e;->A:[C

    aget-char v9, v12, v9

    goto :goto_db

    :cond_9e
    if-eq v9, v15, :cond_ba

    if-eq v9, v11, :cond_ba

    if-eq v9, v10, :cond_a6

    goto/16 :goto_fa

    :cond_a6
    aget v9, v6, v0

    goto :goto_f6

    :pswitch_a9
    const/16 v12, 0x19

    if-ge v9, v12, :cond_b2

    sget-object v12, Lcom/google/a/h/a/e;->B:[C

    aget-char v9, v12, v9

    goto :goto_db

    :cond_b2
    if-eq v9, v11, :cond_ba

    if-eq v9, v10, :cond_c0

    packed-switch v9, :pswitch_data_12a

    goto :goto_fa

    :cond_ba
    :pswitch_ba
    sget v5, Lcom/google/a/h/a/e$a;->ALPHA$72b0c14b:I

    goto :goto_fa

    :pswitch_bd
    sget v5, Lcom/google/a/h/a/e$a;->PUNCT$72b0c14b:I

    goto :goto_fa

    :cond_c0
    aget v9, v6, v0

    goto :goto_f6

    :pswitch_c3
    if-ge v9, v14, :cond_c8

    add-int/lit8 v9, v9, 0x61

    goto :goto_da

    :cond_c8
    if-eq v9, v11, :cond_ba

    if-eq v9, v10, :cond_d3

    packed-switch v9, :pswitch_data_138

    goto :goto_fa

    :pswitch_d0
    sget v7, Lcom/google/a/h/a/e$a;->ALPHA_SHIFT$72b0c14b:I

    goto :goto_e7

    :cond_d3
    aget v9, v6, v0

    goto :goto_f6

    :pswitch_d6
    if-ge v9, v14, :cond_dd

    add-int/lit8 v9, v9, 0x41

    :goto_da
    int-to-char v9, v9

    :goto_db
    move v13, v9

    goto :goto_fb

    :cond_dd
    if-eq v9, v11, :cond_ba

    if-eq v9, v10, :cond_f4

    packed-switch v9, :pswitch_data_144

    goto :goto_fa

    :pswitch_e5
    sget v7, Lcom/google/a/h/a/e$a;->PUNCT_SHIFT$72b0c14b:I

    :goto_e7
    const/4 v13, 0x0

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    goto :goto_fb

    :pswitch_ee
    sget v5, Lcom/google/a/h/a/e$a;->MIXED$72b0c14b:I

    goto :goto_fa

    :pswitch_f1
    sget v5, Lcom/google/a/h/a/e$a;->LOWER$72b0c14b:I

    goto :goto_fa

    :cond_f4
    aget v9, v6, v0

    :goto_f6
    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_fa
    const/4 v13, 0x0

    :goto_fb
    :pswitch_fb
    if-eqz v13, :cond_100

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_100
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5d

    :cond_104
    return v1

    nop

    :pswitch_data_106
    .packed-switch 0x384
        :pswitch_41
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_110
    .packed-switch 0x39a
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_c3
        :pswitch_a9
        :pswitch_97
        :pswitch_89
        :pswitch_72
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x19
        :pswitch_bd
        :pswitch_fb
        :pswitch_f1
        :pswitch_ba
        :pswitch_e5
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x1a
        :pswitch_fb
        :pswitch_d0
        :pswitch_ee
        :pswitch_e5
    .end packed-switch

    :pswitch_data_144
    .packed-switch 0x1a
        :pswitch_fb
        :pswitch_f1
        :pswitch_ee
        :pswitch_e5
    .end packed-switch
.end method

.method static a([ILjava/lang/String;)Lcom/google/a/c/e;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    aget v2, p0, v2

    new-instance v3, Lcom/google/a/h/c;

    invoke-direct {v3}, Lcom/google/a/h/c;-><init>()V

    const/4 v4, 0x2

    :goto_12
    const/4 v5, 0x0

    aget v5, p0, v5

    if-ge v4, v5, :cond_68

    const/16 v5, 0x391

    if-eq v2, v5, :cond_53

    packed-switch v2, :pswitch_data_80

    packed-switch v2, :pswitch_data_8a

    add-int/lit8 v4, v4, -0x1

    :pswitch_23
    invoke-static {p0, v4, v0}, Lcom/google/a/h/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_5b

    :pswitch_28
    invoke-static {p0, v4, v3}, Lcom/google/a/h/a/e;->a([IILcom/google/a/h/c;)I

    move-result v2

    goto :goto_5b

    :pswitch_2d
    add-int/lit8 v2, v4, 0x1

    aget v1, p0, v4

    invoke-static {v1}, Lcom/google/a/c/d;->getCharacterSetECIByValue(I)Lcom/google/a/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/d;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_5b

    :pswitch_3e
    add-int/lit8 v2, v4, 0x2

    goto :goto_5b

    :pswitch_41
    add-int/lit8 v2, v4, 0x1

    goto :goto_5b

    :pswitch_44
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :pswitch_49
    invoke-static {p0, v4, v0}, Lcom/google/a/h/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_5b

    :pswitch_4e
    invoke-static {v2, p0, v1, v4, v0}, Lcom/google/a/h/a/e;->a(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_5b

    :cond_53
    add-int/lit8 v2, v4, 0x1

    aget v4, p0, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5b
    array-length v4, p0

    if-ge v2, v4, :cond_63

    add-int/lit8 v4, v2, 0x1

    aget v2, p0, v2

    goto :goto_12

    :cond_63
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_73

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_73
    new-instance p0, Lcom/google/a/c/e;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/a/c/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    return-object p0

    :pswitch_data_80
    .packed-switch 0x384
        :pswitch_23
        :pswitch_4e
        :pswitch_49
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x39a
        :pswitch_44
        :pswitch_44
        :pswitch_4e
        :pswitch_41
        :pswitch_3e
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method private static a([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v0, p1, :cond_21

    sget-object v4, Lcom/google/a/h/a/e;->C:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_21
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-eq p1, v0, :cond_32

    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0

    :cond_32
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([I[IILjava/lang/StringBuilder;)V
    .registers 16

    sget v0, Lcom/google/a/h/a/e$a;->ALPHA$72b0c14b:I

    sget v1, Lcom/google/a/h/a/e$a;->ALPHA$72b0c14b:I

    const/4 v2, 0x0

    move v3, v1

    move v1, v0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p2, :cond_b7

    aget v4, p0, v0

    sget-object v5, Lcom/google/a/h/a/e$1;->a:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    const/16 v6, 0x20

    const/16 v7, 0x1a

    const/16 v8, 0x1d

    const/16 v9, 0x391

    const/16 v10, 0x384

    packed-switch v5, :pswitch_data_b8

    goto/16 :goto_ad

    :pswitch_21
    if-ge v4, v8, :cond_28

    sget-object v1, Lcom/google/a/h/a/e;->A:[C

    aget-char v1, v1, v4

    goto :goto_3d

    :cond_28
    if-eq v4, v8, :cond_6d

    if-eq v4, v10, :cond_6d

    if-eq v4, v9, :cond_2f

    goto :goto_35

    :cond_2f
    aget v1, p1, v0

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_35
    move v1, v3

    goto/16 :goto_ad

    :pswitch_38
    if-ge v4, v7, :cond_41

    add-int/lit8 v4, v4, 0x41

    int-to-char v1, v4

    :goto_3d
    move v4, v1

    move v1, v3

    goto/16 :goto_ae

    :cond_41
    if-eq v4, v7, :cond_46

    if-eq v4, v10, :cond_6d

    goto :goto_35

    :cond_46
    move v1, v3

    goto/16 :goto_a4

    :pswitch_49
    if-ge v4, v8, :cond_51

    sget-object v5, Lcom/google/a/h/a/e;->A:[C

    aget-char v4, v5, v4

    goto/16 :goto_ae

    :cond_51
    if-eq v4, v8, :cond_6d

    if-eq v4, v10, :cond_6d

    if-eq v4, v9, :cond_59

    goto/16 :goto_ad

    :cond_59
    aget v4, p1, v0

    goto :goto_a9

    :pswitch_5c
    const/16 v5, 0x19

    if-ge v4, v5, :cond_65

    sget-object v5, Lcom/google/a/h/a/e;->B:[C

    aget-char v4, v5, v4

    goto :goto_ae

    :cond_65
    if-eq v4, v10, :cond_6d

    if-eq v4, v9, :cond_73

    packed-switch v4, :pswitch_data_c8

    goto :goto_ad

    :cond_6d
    :pswitch_6d
    sget v1, Lcom/google/a/h/a/e$a;->ALPHA$72b0c14b:I

    goto :goto_ad

    :pswitch_70
    sget v1, Lcom/google/a/h/a/e$a;->PUNCT$72b0c14b:I

    goto :goto_ad

    :cond_73
    aget v4, p1, v0

    goto :goto_a9

    :pswitch_76
    if-ge v4, v7, :cond_7b

    add-int/lit8 v4, v4, 0x61

    goto :goto_8d

    :cond_7b
    if-eq v4, v10, :cond_6d

    if-eq v4, v9, :cond_86

    packed-switch v4, :pswitch_data_d6

    goto :goto_ad

    :pswitch_83
    sget v3, Lcom/google/a/h/a/e$a;->ALPHA_SHIFT$72b0c14b:I

    goto :goto_99

    :cond_86
    aget v4, p1, v0

    goto :goto_a9

    :pswitch_89
    if-ge v4, v7, :cond_8f

    add-int/lit8 v4, v4, 0x41

    :goto_8d
    int-to-char v4, v4

    goto :goto_ae

    :cond_8f
    if-eq v4, v10, :cond_6d

    if-eq v4, v9, :cond_a7

    packed-switch v4, :pswitch_data_e2

    goto :goto_ad

    :pswitch_97
    sget v3, Lcom/google/a/h/a/e$a;->PUNCT_SHIFT$72b0c14b:I

    :goto_99
    const/4 v4, 0x0

    move v11, v3

    move v3, v1

    move v1, v11

    goto :goto_ae

    :pswitch_9e
    sget v1, Lcom/google/a/h/a/e$a;->MIXED$72b0c14b:I

    goto :goto_ad

    :pswitch_a1
    sget v1, Lcom/google/a/h/a/e$a;->LOWER$72b0c14b:I

    goto :goto_ad

    :goto_a4
    :pswitch_a4
    const/16 v4, 0x20

    goto :goto_ae

    :cond_a7
    aget v4, p1, v0

    :goto_a9
    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_ad
    const/4 v4, 0x0

    :goto_ae
    if-eqz v4, :cond_b3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_b7
    return-void

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_89
        :pswitch_76
        :pswitch_5c
        :pswitch_49
        :pswitch_38
        :pswitch_21
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x19
        :pswitch_70
        :pswitch_a4
        :pswitch_a1
        :pswitch_6d
        :pswitch_97
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x1a
        :pswitch_a4
        :pswitch_83
        :pswitch_9e
        :pswitch_97
    .end packed-switch

    :pswitch_data_e2
    .packed-switch 0x1a
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_97
    .end packed-switch
.end method

.method private static b([IILjava/lang/StringBuilder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_44

    if-nez v2, :cond_44

    add-int/lit8 v4, p1, 0x1

    aget p1, p0, p1

    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_17

    const/4 v2, 0x1

    :cond_17
    const/16 v5, 0x384

    if-ge p1, v5, :cond_20

    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_20
    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_2b

    packed-switch p1, :pswitch_data_46

    packed-switch p1, :pswitch_data_4e

    goto :goto_2e

    :cond_2b
    :pswitch_2b
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    :goto_2e
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_38

    const/16 v5, 0x386

    if-eq p1, v5, :cond_38

    if-eqz v2, :cond_42

    :cond_38
    if-lez v3, :cond_42

    invoke-static {v0, v3}, Lcom/google/a/h/a/e;->a([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_42
    move p1, v4

    goto :goto_7

    :cond_44
    return p1

    nop

    :pswitch_data_46
    .packed-switch 0x384
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x39a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method
