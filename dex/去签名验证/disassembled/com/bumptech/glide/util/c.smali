.class public final Lcom/bumptech/glide/util/c;
.super Ljava/io/InputStream;


# static fields
.field private static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/util/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/io/IOException;

.field private c:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/k;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/c;->b:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/bumptech/glide/util/c;
    .registers 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/util/c;->b:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/util/c;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/util/c;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    if-nez v1, :cond_13

    new-instance v1, Lcom/bumptech/glide/util/c;

    invoke-direct {v1}, Lcom/bumptech/glide/util/c;-><init>()V

    :cond_13
    iput-object p0, v1, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    return-object v1

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private static b()V
    .registers 1

    :goto_0
    sget-object v0, Lcom/bumptech/glide/util/c;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/bumptech/glide/util/c;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_e
    return-void
.end method

.method private b(Ljava/io/InputStream;)V
    .registers 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    return-void
.end method

.method private c()Ljava/io/IOException;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/util/c;->a:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/util/c;->a:Ljava/io/IOException;

    iput-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    sget-object v0, Lcom/bumptech/glide/util/c;->b:Ljava/util/Queue;

    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/bumptech/glide/util/c;->b:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

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

    iget-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    iput-object v0, p0, Lcom/bumptech/glide/util/c;->a:Ljava/io/IOException;

    const/4 v0, -0x1

    return v0
.end method

.method public final read([B)I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    iput-object p1, p0, Lcom/bumptech/glide/util/c;->a:Ljava/io/IOException;

    const/4 p1, -0x1

    return p1
.end method

.method public final read([BII)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    iput-object p1, p0, Lcom/bumptech/glide/util/c;->a:Ljava/io/IOException;

    const/4 p1, -0x1

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
    iget-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p1

    :catch_7
    move-exception p1

    iput-object p1, p0, Lcom/bumptech/glide/util/c;->a:Ljava/io/IOException;

    const-wide/16 p1, 0x0

    return-wide p1
.end method
