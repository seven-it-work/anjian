.class public final Lcom/bumptech/glide/util/g;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final a:I = -0x80000000

.field private static final b:I = -0x1


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/bumptech/glide/util/g;->c:I

    return-void
.end method

.method private a(J)J
    .registers 6

    iget v0, p0, Lcom/bumptech/glide/util/g;->c:I

    if-nez v0, :cond_7

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_7
    iget v0, p0, Lcom/bumptech/glide/util/g;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/bumptech/glide/util/g;->c:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_17

    iget p1, p0, Lcom/bumptech/glide/util/g;->c:I

    int-to-long p1, p1

    :cond_17
    return-wide p1
.end method

.method private b(J)V
    .registers 7

    iget v0, p0, Lcom/bumptech/glide/util/g;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_14

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_14

    iget v0, p0, Lcom/bumptech/glide/util/g;->c:I

    int-to-long v0, v0

    sub-long v2, v0, p1

    long-to-int p1, v2

    iput p1, p0, Lcom/bumptech/glide/util/g;->c:I

    :cond_14
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/util/g;->c:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_b

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0

    :cond_b
    iget v0, p0, Lcom/bumptech/glide/util/g;->c:I

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iput p1, p0, Lcom/bumptech/glide/util/g;->c:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/util/g;->a(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_e

    const/4 v0, -0x1

    return v0

    :cond_e
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v2

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/util/g;->b(J)V

    return v2
.end method

.method public final read([BII)I
    .registers 6
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/util/g;->a(J)J

    move-result-wide v0

    long-to-int p3, v0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_a

    return v0

    :cond_a
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/util/g;->b(J)V

    return p1
.end method

.method public final declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/bumptech/glide/util/g;->c:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/util/g;->a(J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_d
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/util/g;->b(J)V

    return-wide p1
.end method
