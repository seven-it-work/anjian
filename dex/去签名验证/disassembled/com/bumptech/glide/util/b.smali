.class public final Lcom/bumptech/glide/util/b;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final a:Ljava/lang/String; = "ContentLengthStream"

.field private static final b:I = -0x1


# instance fields
.field private final c:J

.field private d:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;J)V
    .registers 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lcom/bumptech/glide/util/b;->c:J

    return-void
.end method

.method private a(I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_8

    iget v0, p0, Lcom/bumptech/glide/util/b;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bumptech/glide/util/b;->d:I

    return p1

    :cond_8
    iget-wide v0, p0, Lcom/bumptech/glide/util/b;->c:J

    iget v2, p0, Lcom/bumptech/glide/util/b;->d:I

    int-to-long v2, v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_35

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to read all expected data, expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bumptech/glide/util/b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", but read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/util/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    return p1
.end method

.method private static a(Ljava/lang/String;)I
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    :try_start_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "ContentLengthStream"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "ContentLengthStream"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to parse content length header: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    const/4 v0, -0x1

    return v0
.end method

.method public static a(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .registers 4
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/util/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/util/b;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/b;->a(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/bumptech/glide/util/b;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized available()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/b;->c:J

    iget v2, p0, Lcom/bumptech/glide/util/b;->d:I

    int-to-long v2, v2

    sub-long v4, v0, v2

    iget-object v0, p0, Lcom/bumptech/glide/util/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, -0x1

    :goto_a
    invoke-direct {p0, v1}, Lcom/bumptech/glide/util/b;->a(I)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/util/b;->read([BII)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/util/b;->a(I)I

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
