.class public final Lcom/bumptech/glide/util/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/a$a;,
        Lcom/bumptech/glide/util/a$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x4000

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 10
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, v5, v1

    if-lez v3, :cond_14

    new-instance p0, Ljava/io/IOException;

    const-string v1, "File too large to map into memory"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    if-nez v3, :cond_22

    new-instance p0, Ljava/io/IOException;

    const-string v1, "File unsuitable for memory mapping"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v7, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_4a

    :try_start_29
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_48

    :try_start_2d
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_43

    if-eqz p0, :cond_3f

    :try_start_3c
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    :try_start_3f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_42

    :catch_42
    return-object v0

    :catchall_43
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_4c

    :catchall_48
    move-exception p0

    goto :goto_4c

    :catchall_4a
    move-exception p0

    move-object v7, v0

    :goto_4c
    if-eqz v0, :cond_51

    :try_start_4e
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    if-eqz v7, :cond_56

    :try_start_53
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_56

    :catch_56
    :cond_56
    throw p0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v2, Lcom/bumptech/glide/util/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_14

    new-array v2, v1, [B

    :cond_14
    :goto_14
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v1, :cond_1f

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14

    :cond_1f
    sget-object p0, Lcom/bumptech/glide/util/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .registers 6
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2a

    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_27

    :try_start_10
    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_25

    if-eqz p1, :cond_21

    :try_start_1e
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_24

    :catch_24
    return-void

    :catchall_25
    move-exception p0

    goto :goto_2d

    :catchall_27
    move-exception p0

    move-object p1, v1

    goto :goto_2d

    :catchall_2a
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    :goto_2d
    if-eqz p1, :cond_32

    :try_start_2f
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_32

    :catch_32
    :cond_32
    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_37

    :catch_37
    :cond_37
    throw p0
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .registers 5
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/util/a;->c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/a$b;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, v0, Lcom/bumptech/glide/util/a$b;->c:[B

    iget v1, v0, Lcom/bumptech/glide/util/a$b;->a:I

    iget v2, v0, Lcom/bumptech/glide/util/a$b;->a:I

    iget v0, v0, Lcom/bumptech/glide/util/a$b;->b:I

    add-int/2addr v2, v0

    invoke-virtual {p1, p0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_13
    sget-object v0, Lcom/bumptech/glide/util/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_22

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :cond_22
    :goto_22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_39

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_22

    :cond_39
    sget-object p0, Lcom/bumptech/glide/util/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)[B
    .registers 3
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/util/a;->c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/a$b;

    move-result-object v0

    if-eqz v0, :cond_16

    iget v1, v0, Lcom/bumptech/glide/util/a$b;->a:I

    if-nez v1, :cond_16

    iget v1, v0, Lcom/bumptech/glide/util/a$b;->b:I

    iget-object v0, v0, Lcom/bumptech/glide/util/a$b;->c:[B

    array-length v0, v0

    if-ne v1, v0, :cond_16

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p0, v0

    return-object p0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .registers 2
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/util/a$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/util/a$a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method private static c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/a$b;
    .registers 4
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/bumptech/glide/util/a$b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/bumptech/glide/util/a$b;-><init>([BII)V

    return-object v0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method
