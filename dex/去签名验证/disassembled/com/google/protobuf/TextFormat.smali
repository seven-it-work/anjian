.class public final Lcom/google/protobuf/TextFormat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/google/protobuf/TextFormat$ParseException;,
        Lcom/google/protobuf/TextFormat$Printer;,
        Lcom/google/protobuf/TextFormat$TextGenerator;,
        Lcom/google/protobuf/TextFormat$Tokenizer;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I = null

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

.field private static final SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

.field private static final UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type()[I
    .registers 3

    sget-object v0, Lcom/google/protobuf/TextFormat;->$SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BOOL:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_16

    :catch_16
    :try_start_16
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_20} :catch_20

    :catch_20
    :try_start_20
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->DOUBLE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_29

    :catch_29
    :try_start_29
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->FIXED32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->FIXED64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_45} :catch_45

    :catch_45
    :try_start_45
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->FLOAT:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_58

    :catch_58
    :try_start_58
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->INT32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_61} :catch_61

    :catch_61
    :try_start_61
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->INT64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6a
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_74} :catch_74

    :catch_74
    :try_start_74
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7e
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_88} :catch_88

    :catch_88
    :try_start_88
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->SINT32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_92} :catch_92

    :catch_92
    :try_start_92
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->SINT64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a6} :catch_a6

    :catch_a6
    :try_start_a6
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->UINT32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_b0} :catch_b0

    :catch_b0
    :try_start_b0
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->UINT64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b9} :catch_b9

    :catch_b9
    sput-object v0, Lcom/google/protobuf/TextFormat;->$SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/protobuf/TextFormat$Printer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;-><init>(Lcom/google/protobuf/TextFormat$Printer;)V

    sput-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v0, Lcom/google/protobuf/TextFormat$Printer;

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;-><init>(Lcom/google/protobuf/TextFormat$Printer;)V

    const/4 v2, 0x1

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->setSingleLineMode(Z)Lcom/google/protobuf/TextFormat$Printer;
    invoke-static {v0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$1(Lcom/google/protobuf/TextFormat$Printer;Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v0, Lcom/google/protobuf/TextFormat$Printer;

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;-><init>(Lcom/google/protobuf/TextFormat$Printer;)V

    const/4 v1, 0x0

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->setEscapeNonAscii(Z)Lcom/google/protobuf/TextFormat$Printer;
    invoke-static {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$2(Lcom/google/protobuf/TextFormat$Printer;Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(J)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private static digitValue(B)I
    .registers 3

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_16

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_16

    sub-int/2addr p0, v0

    :goto_13
    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    add-int/lit8 p0, p0, -0x41

    goto :goto_13
.end method

.method static escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-lt v1, v2, :cond_15

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-virtual {p0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x27

    if-eq v2, v3, :cond_68

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_65

    packed-switch v2, :pswitch_data_72

    const/16 v4, 0x20

    if-lt v2, v4, :cond_31

    :goto_2c
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6e

    :cond_31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    goto :goto_2c

    :pswitch_4d
    const-string v2, "\\r"

    goto :goto_61

    :pswitch_50
    const-string v2, "\\f"

    goto :goto_61

    :pswitch_53
    const-string v2, "\\v"

    goto :goto_61

    :pswitch_56
    const-string v2, "\\n"

    goto :goto_61

    :pswitch_59
    const-string v2, "\\t"

    goto :goto_61

    :pswitch_5c
    const-string v2, "\\b"

    goto :goto_61

    :pswitch_5f
    const-string v2, "\\a"

    :goto_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    :cond_65
    const-string v2, "\\\\"

    goto :goto_61

    :cond_68
    const-string v2, "\\\'"

    goto :goto_61

    :cond_6b
    const-string v2, "\\\""

    goto :goto_61

    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    nop

    :pswitch_data_72
    .packed-switch 0x7
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
    .end packed-switch
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isHex(B)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_19

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_19

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1b

    const/16 v0, 0x46

    if-le p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method private static isOctal(B)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x37

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/TextFormat$Tokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/google/protobuf/TextFormat$Tokenizer;)V

    :goto_6
    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    :cond_d
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/TextFormat;->mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    goto :goto_6
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/protobuf/TextFormat;->merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method private static mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {p0, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x2e

    const/4 v3, 0x0

    if-eqz v1, :cond_81

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_18
    const-string v4, "."

    invoke-virtual {p0, v4}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_76

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/protobuf/ExtensionRegistry;->findExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v4

    if-nez v4, :cond_42

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Extension \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" not found in the ExtensionRegistry."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_42
    iget-object v5, v4, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v5

    if-eq v5, v0, :cond_6e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Extension \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" does not extend message type \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_6e
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    goto :goto_e1

    :cond_76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_81
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v4

    if-nez v4, :cond_a0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v4

    if-eqz v4, :cond_a0

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v5, v6, :cond_a0

    move-object v4, v3

    :cond_a0
    if-eqz v4, :cond_b9

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v5, v6, :cond_b9

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b9

    move-object v4, v3

    :cond_b9
    if-nez v4, :cond_df

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Message type \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" has no field named \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_df
    move-object v0, v4

    move-object v4, v3

    :goto_e1
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v5, :cond_13b

    const-string v1, ":"

    invoke-virtual {p0, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    const-string v1, "<"

    invoke-virtual {p0, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    const-string v1, ">"

    goto :goto_100

    :cond_f9
    const-string v1, "{"

    invoke-virtual {p0, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    const-string v1, "}"

    :goto_100
    if-nez v4, :cond_107

    invoke-interface {p2, v0}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v2

    goto :goto_10d

    :cond_107
    iget-object v2, v4, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {v2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v2

    :goto_10d
    invoke-virtual {p0, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_119

    invoke-interface {v2}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v3

    goto/16 :goto_1ff

    :cond_119
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v3

    if-eqz v3, :cond_137

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_137
    invoke-static {p0, p1, v2}, Lcom/google/protobuf/TextFormat;->mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    goto :goto_10d

    :cond_13b
    const-string p1, ":"

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/protobuf/TextFormat;->$SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type()[I

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_20e

    goto/16 :goto_1ff

    :pswitch_153
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAtInteger()Z

    move-result v1

    if-eqz v1, :cond_189

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v3

    if-nez v3, :cond_1ff

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Enum type \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has no value with number "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_189
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v3

    if-nez v3, :cond_1ff

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Enum type \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has no value named \""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :pswitch_1b7
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/google/protobuf/ByteString;

    move-result-object v3

    goto :goto_1ff

    :pswitch_1bc
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can\'t get here."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1c4
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1ff

    :pswitch_1c9
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1ff

    :pswitch_1d2
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeUInt32()I

    move-result p0

    goto :goto_1db

    :pswitch_1d7
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result p0

    :goto_1db
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1ff

    :pswitch_1e0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeUInt64()J

    move-result-wide p0

    goto :goto_1e9

    :pswitch_1e5
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt64()J

    move-result-wide p0

    :goto_1e9
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1ff

    :pswitch_1ee
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1ff

    :pswitch_1f7
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_1ff
    :goto_1ff
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_209

    invoke-interface {p2, v0, v3}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    return-void

    :cond_209
    invoke-interface {p2, v0, v3}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    return-void

    nop

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_1f7
        :pswitch_1ee
        :pswitch_1e5
        :pswitch_1e0
        :pswitch_1d7
        :pswitch_1e0
        :pswitch_1d2
        :pswitch_1c9
        :pswitch_1c4
        :pswitch_1bc
        :pswitch_1bc
        :pswitch_1b7
        :pswitch_1d2
        :pswitch_153
        :pswitch_1d7
        :pswitch_1e5
        :pswitch_1d7
        :pswitch_1e5
    .end packed-switch
.end method

.method static parseInt32(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static parseInt64(Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseInteger(Ljava/lang/String;ZZ)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "-"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    if-nez p1, :cond_20

    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number must be positive: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    const/16 v0, 0xa

    const-string v3, "0x"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_34

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x10

    goto :goto_3e

    :cond_34
    const-string v3, "0"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/16 v0, 0x8

    :cond_3e
    :goto_3e
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_98

    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    if-eqz v2, :cond_4f

    neg-long v0, v0

    :cond_4f
    if-nez p2, :cond_11d

    if-eqz p1, :cond_75

    const-wide/32 p1, 0x7fffffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_61

    const-wide/32 p1, -0x80000000

    cmp-long v2, v0, p1

    if-gez v2, :cond_11d

    :cond_61
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number out of range for 32-bit signed integer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    const-wide p1, 0x100000000L

    cmp-long v2, v0, p1

    if-gez v2, :cond_84

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_11d

    :cond_84
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number out of range for 32-bit unsigned integer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_98
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_a3

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_a3
    if-nez p2, :cond_df

    if-eqz p1, :cond_c3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-le p1, p2, :cond_119

    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number out of range for 32-bit signed integer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c3
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-le p1, p2, :cond_119

    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number out of range for 32-bit unsigned integer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_df
    if-eqz p1, :cond_fd

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-le p1, p2, :cond_119

    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number out of range for 64-bit signed integer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fd
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-le p1, p2, :cond_119

    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number out of range for 64-bit unsigned integer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_119
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_11d
    return-wide v0
.end method

.method static parseUInt32(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static parseUInt64(Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static print(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->print(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$4(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$5(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    invoke-static {v0, p0, p1, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$6(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static printFieldToString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/TextFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    invoke-static {v0, p0, p1, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$7(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .registers 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .registers 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static printToUnicodeString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->print(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    invoke-static {v1, p0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$4(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static printToUnicodeString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    invoke-static {v1, p0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$5(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5b

    packed-switch v0, :pswitch_data_6c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bad tag: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_21
    sget-object p0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    check-cast p1, Lcom/google/protobuf/UnknownFieldSet;

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->access$5(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void

    :pswitch_29
    const-string p0, "\""

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string p0, "\""

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_3d
    const-string p0, "0x%016x"

    new-array v0, v3, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    aput-object p1, v0, v2

    invoke-static {v4, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_4d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    :cond_5b
    const-string p0, "0x%08x"

    new-array v0, v3, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, v0, v2

    invoke-static {v4, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_3d
        :pswitch_29
        :pswitch_21
    .end packed-switch
.end method

.method public static printUnknownFieldValue(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static shortDebugString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->print(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    invoke-static {v1, p0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$4(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static shortDebugString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    # invokes: Lcom/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    invoke-static {v1, p0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$5(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_b
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1a
    return-object v0
.end method

.method static unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    if-lt v2, v4, :cond_1c

    invoke-static {v0, v1, v3}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_14a

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    if-ge v2, v4, :cond_142

    invoke-virtual {p0, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-static {v4}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_58

    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v6

    if-eqz v6, :cond_58

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_58
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_76

    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v6

    if-eqz v6, :cond_76

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_76
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto/16 :goto_14e

    :cond_7d
    const/16 v6, 0x22

    if-eq v4, v6, :cond_13c

    const/16 v6, 0x27

    if-eq v4, v6, :cond_137

    if-eq v4, v5, :cond_132

    const/16 v5, 0x66

    if-eq v4, v5, :cond_12b

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_124

    const/16 v5, 0x72

    if-eq v4, v5, :cond_11d

    const/16 v5, 0x74

    if-eq v4, v5, :cond_116

    const/16 v5, 0x76

    if-eq v4, v5, :cond_10f

    const/16 v5, 0x78

    if-eq v4, v5, :cond_c9

    packed-switch v4, :pswitch_data_154

    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_ba
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    aput-byte v5, v0, v3

    goto/16 :goto_140

    :pswitch_c2
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    aput-byte v5, v0, v3

    goto/16 :goto_140

    :cond_c9
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    if-ge v2, v4, :cond_107

    invoke-virtual {p0, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    move-result v4

    if-eqz v4, :cond_107

    invoke-virtual {p0, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_101

    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    move-result v6

    if-eqz v6, :cond_101

    mul-int/lit8 v4, v4, 0x10

    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_101
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto :goto_14e

    :cond_107
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10f
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    aput-byte v5, v0, v3

    goto :goto_140

    :cond_116
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    aput-byte v5, v0, v3

    goto :goto_140

    :cond_11d
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    aput-byte v5, v0, v3

    goto :goto_140

    :cond_124
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    aput-byte v5, v0, v3

    goto :goto_140

    :cond_12b
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    aput-byte v5, v0, v3

    goto :goto_140

    :cond_132
    add-int/lit8 v4, v3, 0x1

    aput-byte v5, v0, v3

    goto :goto_140

    :cond_137
    add-int/lit8 v4, v3, 0x1

    aput-byte v6, v0, v3

    goto :goto_140

    :cond_13c
    add-int/lit8 v4, v3, 0x1

    aput-byte v6, v0, v3

    :goto_140
    move v3, v4

    goto :goto_14f

    :cond_142
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14a
    add-int/lit8 v5, v3, 0x1

    aput-byte v4, v0, v3

    :goto_14e
    move v3, v5

    :goto_14f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    nop

    :pswitch_data_154
    .packed-switch 0x61
        :pswitch_c2
        :pswitch_ba
    .end packed-switch
.end method

.method static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static unsignedToString(I)Ljava/lang/String;
    .registers 7

    if-ltz p0, :cond_7

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static unsignedToString(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_b

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    and-long v2, p0, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
