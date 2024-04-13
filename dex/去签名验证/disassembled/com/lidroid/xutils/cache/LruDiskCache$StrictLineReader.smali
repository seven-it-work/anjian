.class Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrictLineReader"
.end annotation


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V
    .registers 4

    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;I)V
    .registers 4

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "US-ASCII"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    if-nez p2, :cond_15

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_15
    if-gez p3, :cond_1f

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    new-array p1, p3, [B

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 1

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private fillBuf()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_15
    iput v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-nez v1, :cond_f

    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-lt v1, v2, :cond_18

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    :cond_18
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    :goto_1a
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    const/16 v3, 0xa

    if-ne v1, v2, :cond_6a

    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader$1;

    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader$1;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;I)V

    :goto_2c
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    :goto_40
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-ne v2, v4, :cond_45

    goto :goto_2c

    :cond_45
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_67

    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v2, v3, :cond_5a

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_5a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_6a
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_98

    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v1, v2, :cond_7f

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_7f

    goto :goto_80

    :cond_7f
    move v3, v1

    :goto_80
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v3, v6

    iget-object v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    monitor-exit v0

    return-object v2

    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1a

    :catchall_9c
    move-exception v1

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_9c

    throw v1
.end method
