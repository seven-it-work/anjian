.class Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BoundedByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedByteIterator"
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lcom/google/protobuf/BoundedByteString;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/BoundedByteString;)V
    .registers 3

    iput-object p1, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->this$0:Lcom/google/protobuf/BoundedByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/BoundedByteString;->getOffsetIntoBytes()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    iget v0, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    invoke-virtual {p1}, Lcom/google/protobuf/BoundedByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->limit:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/BoundedByteString;Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;-><init>(Lcom/google/protobuf/BoundedByteString;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    iget v1, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Byte;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .registers 4

    iget v0, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    iget v1, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->limit:I

    if-lt v0, v1, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->this$0:Lcom/google/protobuf/BoundedByteString;

    iget-object v0, v0, Lcom/google/protobuf/BoundedByteString;->bytes:[B

    iget v1, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
