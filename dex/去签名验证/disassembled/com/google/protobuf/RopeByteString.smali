.class Lcom/google/protobuf/RopeByteString;
.super Lcom/google/protobuf/ByteString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RopeByteString$Balancer;,
        Lcom/google/protobuf/RopeByteString$PieceIterator;,
        Lcom/google/protobuf/RopeByteString$RopeByteIterator;,
        Lcom/google/protobuf/RopeByteString$RopeInputStream;
    }
.end annotation


# static fields
.field private static final minLengthByDepth:[I


# instance fields
.field private hash:I

.field private final left:Lcom/google/protobuf/ByteString;

.field private final leftLength:I

.field private final right:Lcom/google/protobuf/ByteString;

.field private final totalLength:I

.field private final treeDepth:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_7
    if-gtz v1, :cond_33

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    const/4 v1, 0x0

    :goto_1c
    sget-object v2, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v2, v2

    if-lt v1, v2, :cond_22

    return-void

    :cond_22
    sget-object v2, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_7
.end method

.method private constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    iput-object p1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    iput-object p2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method static synthetic access$3(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method static synthetic access$4()[I
    .registers 1

    sget-object v0, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    return-object v0
.end method

.method static concatenate(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 8

    instance-of v0, p0, Lcom/google/protobuf/RopeByteString;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/RopeByteString;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_18

    :goto_16
    move-object p0, p1

    return-object p0

    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2a

    invoke-static {p0, p1}, Lcom/google/protobuf/RopeByteString;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;

    move-result-object p0

    return-object p0

    :cond_2a
    if-eqz v0, :cond_47

    iget-object v4, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v3, :cond_47

    iget-object p0, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/google/protobuf/RopeByteString;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;

    move-result-object p0

    new-instance p1, Lcom/google/protobuf/RopeByteString;

    iget-object v0, v0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    goto :goto_16

    :cond_47
    if-eqz v0, :cond_70

    iget-object v3, v0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    iget-object v4, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v4

    if-le v3, v4, :cond_70

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString;->getTreeDepth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v4

    if-le v3, v4, :cond_70

    new-instance p0, Lcom/google/protobuf/RopeByteString;

    iget-object v1, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-direct {p0, v1, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    new-instance p1, Lcom/google/protobuf/RopeByteString;

    iget-object v0, v0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    goto :goto_16

    :cond_70
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v0, v3, v0

    if-lt v2, v0, :cond_8b

    new-instance v0, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    move-object p0, v0

    return-object p0

    :cond_8b
    new-instance v0, Lcom/google/protobuf/RopeByteString$Balancer;

    invoke-direct {v0, v1}, Lcom/google/protobuf/RopeByteString$Balancer;-><init>(Lcom/google/protobuf/RopeByteString$Balancer;)V

    # invokes: Lcom/google/protobuf/RopeByteString$Balancer;->balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->access$1(Lcom/google/protobuf/RopeByteString$Balancer;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    :cond_94
    return-object p0
.end method

.method private static concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;
    .registers 6

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    new-instance p0, Lcom/google/protobuf/LiteralByteString;

    invoke-direct {p0, v2}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    return-object p0
.end method

.method private equalsFragments(Lcom/google/protobuf/ByteString;)Z
    .registers 13

    new-instance v0, Lcom/google/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$PieceIterator;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/LiteralByteString;

    new-instance v3, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v3, p1, v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$PieceIterator;)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/LiteralByteString;

    const/4 v1, 0x0

    move-object v4, p1

    const/4 p1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v2}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v7

    sub-int/2addr v7, p1

    invoke-virtual {v4}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez p1, :cond_31

    invoke-virtual {v2, v4, v5, v9}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v10

    goto :goto_35

    :cond_31
    invoke-virtual {v4, v2, p1, v9}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v10

    :goto_35
    if-nez v10, :cond_38

    return v1

    :cond_38
    add-int/2addr v6, v9

    iget v10, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-lt v6, v10, :cond_49

    iget p1, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-ne v6, p1, :cond_43

    const/4 p1, 0x1

    return p1

    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_49
    if-ne v9, v7, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/LiteralByteString;

    move-object v2, p1

    const/4 p1, 0x0

    goto :goto_55

    :cond_54
    add-int/2addr p1, v9

    :goto_55
    if-ne v9, v8, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/LiteralByteString;

    const/4 v5, 0x0

    goto :goto_1c

    :cond_5f
    add-int/2addr v5, v9

    goto :goto_1c
.end method

.method static newInstanceForTest(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/RopeByteString;
    .registers 3

    new-instance v0, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$PieceIterator;)V

    :goto_b
    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    return-object v0

    :cond_12
    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/LiteralByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public byteAt(I)B
    .registers 5

    if-gez p1, :cond_16

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-le p1, v0, :cond_38

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index > length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v0, :cond_43

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    :goto_3e
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result p1

    return p1

    :cond_43
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p1, v1

    goto :goto_3e

    return p1
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected copyToInternal([BIII)V
    .registers 7

    add-int v0, p2, p4

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    return-void

    :cond_c
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_19

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    return-void

    :cond_19
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    iget-object p2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-virtual {p2, p1, v1, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-nez v1, :cond_1a

    return v0

    :cond_1a
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    if-eqz v0, :cond_29

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    if-eq v1, v0, :cond_29

    return v2

    :cond_29
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString;->equalsFragments(Lcom/google/protobuf/ByteString;)Z

    move-result p1

    return p1
.end method

.method protected getTreeDepth()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    if-nez v0, :cond_12

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/RopeByteString;->partialHash(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    :cond_12
    return v0
.end method

.method protected isBalanced()Z
    .registers 4

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isValidUtf8()Z
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    return v2
.end method

.method public iterator()Lcom/google/protobuf/ByteString$ByteIterator;
    .registers 3

    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;-><init>(Lcom/google/protobuf/RopeByteString;Lcom/google/protobuf/RopeByteString$RopeByteIterator;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .registers 2

    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/protobuf/RopeByteString;)V

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .registers 6

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    :cond_d
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1b

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    :cond_1b
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1
.end method

.method protected partialIsValidUtf8(III)I
    .registers 6

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    :cond_d
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1b

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    :cond_1b
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1
.end method

.method protected peekCachedHashCode()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    return v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public substring(II)Lcom/google/protobuf/ByteString;
    .registers 6

    if-gez p1, :cond_1b

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1b
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-le p2, v0, :cond_3d

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    sub-int v0, p2, p1

    if-gez v0, :cond_5d

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beginning index larger than ending index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    if-nez v0, :cond_62

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object p1

    :cond_62
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-ne v0, v1, :cond_68

    move-object p1, p0

    return-object p1

    :cond_68
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v0, :cond_73

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    :goto_6e
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :cond_73
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p1, v0, :cond_80

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    goto :goto_6e

    :cond_80
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->substring(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p2

    new-instance v0, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v0, p1, p2}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    move-object p1, v0

    return-object p1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
