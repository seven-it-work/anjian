.class public final Lcom/google/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private final flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private flushedBuffersTotalBytes:I

.field private final initialCapacity:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-gez p1, :cond_d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iput p1, p0, Lcom/google/protobuf/ByteString$Output;->initialCapacity:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    return-void
.end method

.method private copyArray([BI)[B
    .registers 5

    new-array v0, p2, [B

    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private flushFullBuffer(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/protobuf/LiteralByteString;

    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->initialCapacity:I

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    return-void
.end method

.method private flushLastBuffer()V
    .registers 4

    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/protobuf/LiteralByteString;

    invoke-direct {v2, v0}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/protobuf/LiteralByteString;

    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    :cond_2e
    :goto_2e
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized size()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toByteString()Lcom/google/protobuf/ByteString;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$Output;->flushLastBuffer()V

    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/protobuf/ByteString;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$Output;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/ByteString$Output;->flushFullBuffer(I)V

    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_17

    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_33

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/google/protobuf/ByteString$Output;->flushFullBuffer(I)V

    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_33

    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/ByteString;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2a

    array-length v3, v0

    const/4 v4, 0x0

    :goto_18
    if-lt v4, v3, :cond_22

    invoke-direct {p0, v1, v2}, Lcom/google/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_22
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method
