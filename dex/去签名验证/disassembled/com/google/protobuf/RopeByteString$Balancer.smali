.class Lcom/google/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final prefixesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/RopeByteString$Balancer;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/google/protobuf/RopeByteString$Balancer;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/RopeByteString$Balancer;->balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    iget-object p1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    :goto_e
    iget-object p2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_17

    return-object p1

    :cond_17
    iget-object p2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/ByteString;

    new-instance v0, Lcom/google/protobuf/RopeByteString;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString;)V

    move-object p1, v0

    goto :goto_e
.end method

.method private doBalance(Lcom/google/protobuf/ByteString;)V
    .registers 5

    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->insert(Lcom/google/protobuf/ByteString;)V

    return-void

    :cond_a
    instance-of v0, p1, Lcom/google/protobuf/RopeByteString;

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/google/protobuf/RopeByteString;

    # getter for: Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/protobuf/RopeByteString;->access$2(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    # getter for: Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/protobuf/RopeByteString;->access$3(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDepthBinForLength(I)I
    .registers 3

    # getter for: Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I
    invoke-static {}, Lcom/google/protobuf/RopeByteString;->access$4()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_f

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_f
    return p1
.end method

.method private insert(Lcom/google/protobuf/ByteString;)V
    .registers 7

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    # getter for: Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I
    invoke-static {}, Lcom/google/protobuf/RopeByteString;->access$4()[I

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9e

    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_28

    goto/16 :goto_9e

    :cond_28
    # getter for: Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I
    invoke-static {}, Lcom/google/protobuf/RopeByteString;->access$4()[I

    move-result-object v1

    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    :goto_36
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v0, :cond_4e

    goto :goto_5d

    :cond_4e
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    new-instance v4, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString;)V

    move-object v1, v4

    goto :goto_36

    :cond_5d
    :goto_5d
    new-instance v0, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v0, v1, p1, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString;)V

    :goto_62
    iget-object p1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_98

    :cond_6b
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result p1

    # getter for: Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I
    invoke-static {}, Lcom/google/protobuf/RopeByteString;->access$4()[I

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, p1, :cond_98

    iget-object p1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    new-instance v1, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v1, p1, v0, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString;)V

    move-object v0, v1

    goto :goto_62

    :cond_98
    :goto_98
    iget-object p1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
