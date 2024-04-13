.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x6

    aput v3, v0, v2

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    if-nez p1, :cond_3b

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_b

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_1d

    sget-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-eq v1, v2, :cond_31

    return-void

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_34
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void
.end method

.method private fillBuffer(I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1f

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    :cond_1f
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_21
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :cond_23
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5c

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    const/4 v2, 0x1

    if-nez v1, :cond_57

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v1, :cond_57

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v1, :cond_57

    aget-char v1, v0, v3

    const v4, 0xfeff

    if-ne v1, v4, :cond_57

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 p1, p1, 0x1

    :cond_57
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, p1, :cond_23

    return v2

    :cond_5c
    return v3
.end method

.method private isLiteral(C)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_a

    const/4 p1, 0x1

    return p1

    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :sswitch_8
    const/4 p1, 0x0

    return p1

    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private locationString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nextNonWhitespace(Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    :goto_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_6
    const/4 v3, 0x1

    if-ne v1, v2, :cond_32

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_32

    :cond_16
    if-eqz p1, :cond_30

    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    const/4 p1, -0x1

    return p1

    :cond_32
    :goto_32
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_42

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_a6

    :cond_42
    const/16 v5, 0x20

    if-eq v1, v5, :cond_a6

    const/16 v5, 0xd

    if-eq v1, v5, :cond_a6

    const/16 v5, 0x9

    if-eq v1, v5, :cond_a6

    const/16 v5, 0x2f

    if-ne v1, v5, :cond_95

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v6, 0x2

    if-ne v4, v2, :cond_68

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-nez v2, :cond_68

    return v1

    :cond_68
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v0, v2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_7c

    if-eq v2, v5, :cond_76

    return v1

    :cond_76
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_9e

    :cond_7c
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const-string v1, "*/"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string p1, "Unterminated comment"

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_90
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v6

    goto/16 :goto_4

    :cond_95
    const/16 v2, 0x23

    if-ne v1, v2, :cond_a3

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :goto_9e
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    goto/16 :goto_2

    :cond_a3
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return v1

    :cond_a6
    :goto_a6
    move v1, v4

    goto/16 :goto_6
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_7
    :goto_7
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v4, v2

    :goto_c
    const/4 v5, 0x1

    if-ge v4, v3, :cond_41

    add-int/lit8 v6, v4, 0x1

    aget-char v4, v0, v4

    if-ne v4, p1, :cond_21

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    invoke-virtual {v1, v0, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    const/16 v7, 0x5c

    if-ne v4, v7, :cond_34

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    invoke-virtual {v1, v0, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_34
    const/16 v7, 0xa

    if-ne v4, v7, :cond_3f

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_3f
    move v4, v6

    goto :goto_c

    :cond_41
    sub-int v3, v4, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_7

    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_3
    const/4 v1, 0x0

    :goto_4
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_1c

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_64

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :sswitch_18
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_2a

    :cond_1c
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2c

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_4

    :cond_2a
    :goto_2a
    :sswitch_2a
    move v0, v1

    goto :goto_46

    :cond_2c
    if-nez v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_33
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_46
    if-nez v2, :cond_52

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_5d

    :cond_52
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-object v1

    nop

    :sswitch_data_64
    .sparse-switch
        0x9 -> :sswitch_2a
        0xa -> :sswitch_2a
        0xc -> :sswitch_2a
        0xd -> :sswitch_2a
        0x20 -> :sswitch_2a
        0x23 -> :sswitch_18
        0x2c -> :sswitch_2a
        0x2f -> :sswitch_18
        0x3a -> :sswitch_2a
        0x3b -> :sswitch_18
        0x3d -> :sswitch_18
        0x5b -> :sswitch_2a
        0x5c -> :sswitch_18
        0x5d -> :sswitch_2a
        0x7b -> :sswitch_2a
        0x7d -> :sswitch_2a
    .end sparse-switch
.end method

.method private peekKeyword()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_2f

    const/16 v2, 0x54

    if-ne v0, v2, :cond_10

    goto :goto_2f

    :cond_10
    const/16 v2, 0x66

    if-eq v0, v2, :cond_29

    const/16 v2, 0x46

    if-ne v0, v2, :cond_19

    goto :goto_29

    :cond_19
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_23

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_22

    goto :goto_23

    :cond_22
    return v1

    :cond_23
    :goto_23
    const-string v0, "null"

    const-string v2, "NULL"

    const/4 v3, 0x7

    goto :goto_34

    :cond_29
    :goto_29
    const-string v0, "false"

    const-string v2, "FALSE"

    const/4 v3, 0x6

    goto :goto_34

    :cond_2f
    :goto_2f
    const-string v0, "true"

    const-string v2, "TRUE"

    const/4 v3, 0x5

    :goto_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_39
    if-ge v5, v4, :cond_62

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_4b

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_4b

    return v1

    :cond_4b
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    return v1

    :cond_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_62
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v4

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v2, :cond_71

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_71
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v4

    aget-char v0, v0, v2

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_7f

    return v1

    :cond_7f
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v3
.end method

.method private peekNumber()I
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v8, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_11
    add-int v14, v2, v3

    const/4 v15, 0x2

    if-ne v14, v8, :cond_26

    array-length v2, v1

    if-ne v3, v2, :cond_1a

    return v7

    :cond_1a
    add-int/lit8 v2, v3, 0x1

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_9d

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_26
    add-int v14, v2, v3

    aget-char v14, v1, v14

    const/16 v7, 0x2b

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq v14, v7, :cond_ea

    const/16 v7, 0x45

    if-eq v14, v7, :cond_de

    const/16 v7, 0x65

    if-eq v14, v7, :cond_de

    packed-switch v14, :pswitch_data_f6

    const/16 v7, 0x30

    if-lt v14, v7, :cond_95

    const/16 v7, 0x39

    if-le v14, v7, :cond_44

    goto :goto_95

    :cond_44
    if-eq v9, v6, :cond_8b

    if-nez v9, :cond_49

    goto :goto_8b

    :cond_49
    if-ne v9, v15, :cond_76

    const-wide/16 v18, 0x0

    cmp-long v4, v11, v18

    if-nez v4, :cond_53

    const/4 v4, 0x0

    return v4

    :cond_53
    const-wide/16 v4, 0xa

    mul-long v4, v4, v11

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long v16, v4, v14

    const-wide v4, -0xcccccccccccccccL

    cmp-long v7, v11, v4

    if-gtz v7, :cond_70

    cmp-long v7, v11, v4

    if-nez v7, :cond_6e

    cmp-long v4, v16, v11

    if-gez v4, :cond_6e

    goto :goto_70

    :cond_6e
    const/4 v4, 0x0

    goto :goto_71

    :cond_70
    :goto_70
    const/4 v4, 0x1

    :goto_71
    and-int/2addr v4, v10

    move v10, v4

    move-wide/from16 v11, v16

    goto :goto_84

    :cond_76
    const-wide/16 v18, 0x0

    if-ne v9, v4, :cond_7e

    const/4 v7, 0x0

    const/4 v9, 0x4

    goto/16 :goto_f1

    :cond_7e
    if-eq v9, v5, :cond_87

    const/4 v4, 0x6

    if-ne v9, v4, :cond_84

    goto :goto_87

    :cond_84
    :goto_84
    const/4 v7, 0x0

    goto/16 :goto_f1

    :cond_87
    :goto_87
    const/4 v7, 0x0

    const/4 v9, 0x7

    goto/16 :goto_f1

    :cond_8b
    :goto_8b
    const-wide/16 v18, 0x0

    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v4, v4

    move-wide v11, v4

    const/4 v7, 0x0

    const/4 v9, 0x2

    goto :goto_f1

    :cond_95
    :goto_95
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-eqz v1, :cond_9d

    const/4 v1, 0x0

    return v1

    :cond_9d
    if-ne v9, v15, :cond_b9

    if-eqz v10, :cond_b9

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v4, v11, v1

    if-nez v4, :cond_a9

    if-eqz v13, :cond_b9

    :cond_a9
    if-eqz v13, :cond_ac

    goto :goto_ad

    :cond_ac
    neg-long v11, v11

    :goto_ad
    iput-wide v11, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/16 v1, 0xf

    :goto_b6
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    :cond_b9
    if-eq v9, v15, :cond_c4

    const/4 v1, 0x4

    if-eq v9, v1, :cond_c4

    const/4 v1, 0x7

    if-ne v9, v1, :cond_c2

    goto :goto_c4

    :cond_c2
    const/4 v7, 0x0

    return v7

    :cond_c4
    :goto_c4
    iput v3, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    const/16 v1, 0x10

    goto :goto_b6

    :pswitch_c9
    const/4 v7, 0x0

    const-wide/16 v18, 0x0

    if-ne v9, v15, :cond_d0

    const/4 v9, 0x3

    goto :goto_f1

    :cond_d0
    return v7

    :pswitch_d1
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v18, 0x0

    if-nez v9, :cond_da

    const/4 v9, 0x1

    const/4 v13, 0x1

    goto :goto_f1

    :cond_da
    if-ne v9, v5, :cond_dd

    goto :goto_f0

    :cond_dd
    return v7

    :cond_de
    const/4 v7, 0x0

    const-wide/16 v18, 0x0

    if-eq v9, v15, :cond_e8

    const/4 v4, 0x4

    if-ne v9, v4, :cond_e7

    goto :goto_e8

    :cond_e7
    return v7

    :cond_e8
    :goto_e8
    const/4 v9, 0x5

    goto :goto_f1

    :cond_ea
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v18, 0x0

    if-ne v9, v5, :cond_f5

    :goto_f0
    const/4 v9, 0x6

    :goto_f1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    :cond_f5
    return v7

    :pswitch_data_f6
    .packed-switch 0x2d
        :pswitch_d1
        :pswitch_c9
    .end packed-switch
.end method

.method private push(I)V
    .registers 8

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_35

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    :cond_35
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    return-void
.end method

.method private readEscapeCharacter()C
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_14

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c4

    const/16 v2, 0x22

    if-eq v0, v2, :cond_cd

    const/16 v2, 0x27

    if-eq v0, v2, :cond_cd

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_cd

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_cd

    const/16 v2, 0x62

    if-eq v0, v2, :cond_c1

    const/16 v2, 0x66

    if-eq v0, v2, :cond_be

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_bd

    const/16 v3, 0x72

    if-eq v0, v3, :cond_ba

    packed-switch v0, :pswitch_data_ce

    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_4c
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v3, 0x4

    add-int/2addr v0, v3

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v4, :cond_61

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_61
    const/4 v0, 0x0

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v4, 0x4

    :goto_66
    if-ge v4, v5, :cond_b1

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v6, v6, v4

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v7, 0x30

    if-lt v6, v7, :cond_7c

    const/16 v7, 0x39

    if-gt v6, v7, :cond_7c

    add-int/lit8 v6, v6, -0x30

    :goto_79
    add-int/2addr v0, v6

    int-to-char v0, v0

    goto :goto_91

    :cond_7c
    const/16 v7, 0x61

    if-lt v6, v7, :cond_86

    if-gt v6, v2, :cond_86

    add-int/lit8 v6, v6, -0x61

    :goto_84
    add-int/2addr v6, v1

    goto :goto_79

    :cond_86
    const/16 v7, 0x41

    if-lt v6, v7, :cond_94

    const/16 v7, 0x46

    if-gt v6, v7, :cond_94

    add-int/lit8 v6, v6, -0x41

    goto :goto_84

    :goto_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_94
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v4, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return v0

    :pswitch_b7
    const/16 v0, 0x9

    return v0

    :cond_ba
    const/16 v0, 0xd

    return v0

    :cond_bd
    return v1

    :cond_be
    const/16 v0, 0xc

    return v0

    :cond_c1
    const/16 v0, 0x8

    return v0

    :cond_c4
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_cd
    return v0

    :pswitch_data_ce
    .packed-switch 0x74
        :pswitch_b7
        :pswitch_4c
    .end packed-switch
.end method

.method private skipQuotedValue(C)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    :cond_2
    :goto_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_6
    const/4 v3, 0x1

    if-ge v1, v2, :cond_29

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    if-ne v1, p1, :cond_12

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_12
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1c

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    goto :goto_2

    :cond_1c
    const/16 v5, 0xa

    if-ne v1, v5, :cond_27

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_27
    move v1, v4

    goto :goto_6

    :cond_29
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return v2

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2e

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_44

    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_4a

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_44

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_44
    :goto_44
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :cond_4a
    return v3
.end method

.method private skipToEndOfLine()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_d

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    return-void

    :cond_25
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_29
    return-void
.end method

.method private skipUnquotedValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1e

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_15
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :sswitch_18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_1e
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    nop

    :sswitch_data_2c
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method doPeek()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/16 v1, 0x27

    const/16 v3, 0x22

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/16 v6, 0x5d

    const/4 v7, 0x7

    const/16 v8, 0x3b

    const/16 v9, 0x2c

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v0, v2, :cond_23

    iget-object v12, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v13, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v13, v2

    aput v11, v12, v13

    goto/16 :goto_b2

    :cond_23
    if-ne v0, v11, :cond_3e

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v12

    if-eq v12, v9, :cond_b2

    if-eq v12, v8, :cond_39

    if-eq v12, v6, :cond_36

    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_36
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v10

    :cond_39
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto/16 :goto_b2

    :cond_3e
    const/4 v12, 0x5

    if-eq v0, v5, :cond_120

    if-ne v0, v12, :cond_45

    goto/16 :goto_120

    :cond_45
    if-ne v0, v10, :cond_80

    iget-object v13, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v14, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v14, v2

    aput v12, v13, v14

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v12

    const/16 v13, 0x3a

    if-eq v12, v13, :cond_b2

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_61

    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_61
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v12, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v13, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v12, v13, :cond_70

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v12

    if-eqz v12, :cond_b2

    :cond_70
    iget-object v12, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v13, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v12, v12, v13

    const/16 v13, 0x3e

    if-ne v12, v13, :cond_b2

    iget v12, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v12, v2

    :goto_7d
    iput v12, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_b2

    :cond_80
    const/4 v12, 0x6

    if-ne v0, v12, :cond_92

    iget-boolean v12, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v12, :cond_8a

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    :cond_8a
    iget-object v12, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v13, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v13, v2

    aput v7, v12, v13

    goto :goto_b2

    :cond_92
    if-ne v0, v7, :cond_a8

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_a1

    const/16 v0, 0x11

    :goto_9e
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0

    :cond_a1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v12, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v12, v2

    goto :goto_7d

    :cond_a8
    if-ne v0, v4, :cond_b2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b2
    :goto_b2
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v12

    if-eq v12, v3, :cond_11c

    if-eq v12, v1, :cond_116

    if-eq v12, v9, :cond_ff

    if-eq v12, v8, :cond_ff

    const/16 v1, 0x5b

    if-eq v12, v1, :cond_fc

    if-eq v12, v6, :cond_f7

    const/16 v0, 0x7b

    if-eq v12, v0, :cond_f4

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v0

    if-eqz v0, :cond_d4

    return v0

    :cond_d4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v0

    if-eqz v0, :cond_db

    return v0

    :cond_db
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-nez v0, :cond_ee

    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_ee
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xa

    goto :goto_9e

    :cond_f4
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v2

    :cond_f7
    if-ne v0, v2, :cond_ff

    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v10

    :cond_fc
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    :cond_ff
    if-eq v0, v2, :cond_10b

    if-ne v0, v11, :cond_104

    goto :goto_10b

    :cond_104
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_10b
    :goto_10b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    :cond_116
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4

    :cond_11c
    const/16 v0, 0x9

    goto/16 :goto_9e

    :cond_120
    :goto_120
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v5, v2

    aput v10, v4, v5

    const/16 v4, 0x7d

    if-ne v0, v12, :cond_142

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    if-eq v5, v9, :cond_142

    if-eq v5, v8, :cond_13f

    if-eq v5, v4, :cond_13c

    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_13c
    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v11

    :cond_13f
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :cond_142
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    if-eq v5, v3, :cond_179

    if-eq v5, v1, :cond_172

    if-eq v5, v4, :cond_166

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    int-to-char v0, v5

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_15f

    const/16 v0, 0xe

    goto/16 :goto_9e

    :cond_15f
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_166
    if-eq v0, v12, :cond_16b

    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v11

    :cond_16b
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_172
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xc

    goto/16 :goto_9e

    :cond_179
    const/16 v0, 0xd

    goto/16 :goto_9e
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3b

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_40

    goto :goto_38

    :pswitch_14
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :pswitch_27
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v0, v0

    return-wide v0

    :cond_1f
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_3a

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_7b

    :cond_3a
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6f

    const/16 v4, 0x9

    if-ne v0, v4, :cond_43

    goto :goto_6f

    :cond_43
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4e

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_7b

    :cond_4e
    if-eq v0, v3, :cond_7b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    :goto_6f
    if-ne v0, v1, :cond_74

    const/16 v0, 0x27

    goto :goto_76

    :cond_74
    const/16 v0, 0x22

    :goto_76
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_7b
    :goto_7b
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v3, :cond_ae

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_93

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_ae

    :cond_93
    new-instance v2, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ae
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0
.end method

.method public nextInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_43

    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v0, v0

    iget-wide v3, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v5, v0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_34

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return v0

    :cond_43
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5c

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_b2

    :cond_5c
    const/16 v1, 0xa

    const/16 v3, 0x8

    if-eq v0, v3, :cond_88

    const/16 v4, 0x9

    if-eq v0, v4, :cond_88

    if-ne v0, v1, :cond_69

    goto :goto_88

    :cond_69
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    :goto_88
    if-ne v0, v1, :cond_91

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_8e
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_9d

    :cond_91
    if-ne v0, v3, :cond_96

    const/16 v0, 0x27

    goto :goto_98

    :cond_96
    const/16 v0, 0x22

    :goto_98
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_8e

    :goto_9d
    :try_start_9d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_9d .. :try_end_b1} :catch_b2

    return v0

    :catch_b2
    :goto_b2
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-double v4, v3

    cmpl-double v6, v4, v0

    if-eqz v6, :cond_df

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_df
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v3
.end method

.method public nextLong()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v0

    :cond_1e
    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_8d

    :cond_37
    const/16 v1, 0xa

    const/16 v3, 0x8

    if-eq v0, v3, :cond_63

    const/16 v4, 0x9

    if-eq v0, v4, :cond_63

    if-ne v0, v1, :cond_44

    goto :goto_63

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    :goto_63
    if-ne v0, v1, :cond_6c

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_69
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_78

    :cond_6c
    if-ne v0, v3, :cond_71

    const/16 v0, 0x27

    goto :goto_73

    :cond_71
    const/16 v0, 0x22

    :goto_73
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    :goto_78
    :try_start_78
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_8c} :catch_8d

    return-wide v0

    :catch_8d
    :goto_8d
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v3, v0

    long-to-double v5, v3

    cmpl-double v7, v5, v0

    if-eqz v7, :cond_ba

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-wide v3
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_11
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x27

    :goto_17
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_1c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2f

    const/16 v0, 0x22

    goto :goto_17

    :goto_23
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_11
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x27

    :goto_17
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_1c
    const/16 v1, 0x9

    if-ne v0, v1, :cond_23

    const/16 v0, 0x22

    goto :goto_17

    :cond_23
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_4e

    :cond_2d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_38

    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_38
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5e

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_4e
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_11
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :pswitch_14
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :pswitch_17
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :pswitch_1a
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :pswitch_1d
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :pswitch_20
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :pswitch_23
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :pswitch_26
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :pswitch_29
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :pswitch_2c
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return-void
.end method

.method public skipValue()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    :cond_a
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_14

    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V

    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_14
    if-ne v2, v4, :cond_1a

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->push(I)V

    goto :goto_11

    :cond_1a
    const/4 v3, 0x4

    if-ne v2, v3, :cond_25

    :goto_1d
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    :cond_25
    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    goto :goto_1d

    :cond_29
    const/16 v3, 0xe

    if-eq v2, v3, :cond_59

    const/16 v3, 0xa

    if-ne v2, v3, :cond_32

    goto :goto_59

    :cond_32
    const/16 v3, 0x8

    if-eq v2, v3, :cond_53

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3b

    goto :goto_53

    :cond_3b
    const/16 v3, 0x9

    if-eq v2, v3, :cond_50

    const/16 v3, 0xd

    if-ne v2, v3, :cond_44

    goto :goto_50

    :cond_44
    const/16 v3, 0x10

    if-ne v2, v3, :cond_5c

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_5c

    :cond_50
    :goto_50
    const/16 v2, 0x22

    goto :goto_55

    :cond_53
    :goto_53
    const/16 v2, 0x27

    :goto_55
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_5c

    :cond_59
    :goto_59
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    :cond_5c
    :goto_5c
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v4

    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
