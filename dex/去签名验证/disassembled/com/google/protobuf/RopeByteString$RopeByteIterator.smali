.class Lcom/google/protobuf/RopeByteString$RopeByteIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RopeByteIterator"
.end annotation


# instance fields
.field private bytes:Lcom/google/protobuf/ByteString$ByteIterator;

.field bytesRemaining:I

.field private final pieces:Lcom/google/protobuf/RopeByteString$PieceIterator;

.field final synthetic this$0:Lcom/google/protobuf/RopeByteString;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/RopeByteString;)V
    .registers 4

    iput-object p1, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->this$0:Lcom/google/protobuf/RopeByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$PieceIterator;)V

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/google/protobuf/RopeByteString$PieceIterator;

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/LiteralByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/protobuf/ByteString$ByteIterator;

    invoke-virtual {p1}, Lcom/google/protobuf/RopeByteString;->size()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/RopeByteString;Lcom/google/protobuf/RopeByteString$RopeByteIterator;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;-><init>(Lcom/google/protobuf/RopeByteString;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Byte;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/protobuf/ByteString$ByteIterator;

    invoke-interface {v0}, Lcom/google/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/LiteralByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/protobuf/ByteString$ByteIterator;

    :cond_14
    iget v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/protobuf/ByteString$ByteIterator;

    invoke-interface {v0}, Lcom/google/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
