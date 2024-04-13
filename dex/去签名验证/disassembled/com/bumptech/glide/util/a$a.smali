.class final Lcom/bumptech/glide/util/a$a;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:I = -0x1


# instance fields
.field private final b:Ljava/nio/ByteBuffer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/util/a$a;->c:I

    iput-object p1, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/util/a$a;->c:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 5
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    invoke-virtual {p0}, Lcom/bumptech/glide/util/a$a;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public final declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/util/a$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset to unset mark position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/bumptech/glide/util/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_b
    invoke-virtual {p0}, Lcom/bumptech/glide/util/a$a;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/bumptech/glide/util/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    add-long v3, v1, p1

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1
.end method
