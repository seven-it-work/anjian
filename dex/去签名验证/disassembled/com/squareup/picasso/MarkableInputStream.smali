.class final Lcom/squareup/picasso/MarkableInputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field private defaultMark:J

.field private final in:Ljava/io/InputStream;

.field private limit:J

.field private offset:J

.field private reset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->defaultMark:J

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    :cond_13
    iput-object p1, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private setLimit(J)V
    .registers 8

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->reset:J

    iget-wide v2, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_28

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    iget-wide v2, p0, Lcom/squareup/picasso/MarkableInputStream;->limit:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_28

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    iget-wide v1, p0, Lcom/squareup/picasso/MarkableInputStream;->reset:J

    const/4 v3, 0x0

    sub-long v3, p1, v1

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->reset:J

    iget-wide v2, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->skip(JJ)V

    goto :goto_37

    :cond_28
    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    iput-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->reset:J

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    iget-wide v1, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    const/4 v3, 0x0

    sub-long v3, p1, v1

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    :goto_37
    iput-wide p1, p0, Lcom/squareup/picasso/MarkableInputStream;->limit:J
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to mark: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private skip(JJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_20

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    invoke-virtual {p0}, Lcom/squareup/picasso/MarkableInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    const-wide/16 v0, 0x1

    :cond_1b
    const/4 v2, 0x0

    add-long v2, p1, v0

    move-wide p1, v2

    goto :goto_0

    :cond_20
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->defaultMark:J

    return-void
.end method

.method public final markSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget-wide v1, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    :cond_11
    return v0
.end method

.method public final read([B)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    int-to-long v2, p1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    :cond_10
    return p1
.end method

.method public final read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_10

    iget-wide p2, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    int-to-long v0, p1

    add-long v2, p2, v0

    iput-wide v2, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    :cond_10
    return p1
.end method

.method public final reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->defaultMark:J

    invoke-virtual {p0, v0, v1}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    return-void
.end method

.method public final reset(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    iget-wide v2, p0, Lcom/squareup/picasso/MarkableInputStream;->limit:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1c

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->reset:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_f

    goto :goto_1c

    :cond_f
    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->reset:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/squareup/picasso/MarkableInputStream;->skip(JJ)V

    iput-wide p1, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    return-void

    :cond_1c
    :goto_1c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot reset"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final savePosition(I)J
    .registers 8

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    int-to-long v2, p1

    add-long v4, v0, v2

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->limit:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_e

    invoke-direct {p0, v4, v5}, Lcom/squareup/picasso/MarkableInputStream;->setLimit(J)V

    :cond_e
    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    return-wide v0
.end method

.method public final skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/picasso/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/squareup/picasso/MarkableInputStream;->offset:J

    return-wide p1
.end method
