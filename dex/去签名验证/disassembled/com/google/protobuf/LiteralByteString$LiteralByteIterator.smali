.class Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/LiteralByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiteralByteIterator"
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lcom/google/protobuf/LiteralByteString;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/LiteralByteString;)V
    .registers 3

    iput-object p1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->this$0:Lcom/google/protobuf/LiteralByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->limit:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/LiteralByteString;Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lcom/google/protobuf/LiteralByteString;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    iget v1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Byte;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->this$0:Lcom/google/protobuf/LiteralByteString;

    iget-object v0, v0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    iget v1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    aget-byte v0, v0, v1
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
