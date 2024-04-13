.class public final Lcom/bumptech/glide/load/a/c;
.super Ljava/io/OutputStream;


# instance fields
.field private final a:Ljava/io/OutputStream;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:[B

.field private c:Lcom/bumptech/glide/load/b/a/b;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/b/a/b;)V
    .registers 4
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/a/c;-><init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/b/a/b;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/b/a/b;B)V
    .registers 4
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/a/c;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/bumptech/glide/load/a/c;->c:Lcom/bumptech/glide/load/b/a/b;

    const-class p1, [B

    const/high16 p3, 0x10000

    invoke-interface {p2, p3, p1}, Lcom/bumptech/glide/load/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    return-void
.end method

.method private a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/load/a/c;->d:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/load/a/c;->a:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    iget v2, p0, Lcom/bumptech/glide/load/a/c;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/bumptech/glide/load/a/c;->d:I

    :cond_10
    return-void
.end method

.method private b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/load/a/c;->d:I

    iget-object v1, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    array-length v1, v1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/bumptech/glide/load/a/c;->a()V

    :cond_a
    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/a/c;->c:Lcom/bumptech/glide/load/b/a/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    :cond_e
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/a/c;->flush()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_17

    iget-object v0, p0, Lcom/bumptech/glide/load/a/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bumptech/glide/load/a/c;->c:Lcom/bumptech/glide/load/b/a/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/a/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public final flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/a/c;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/a/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    iget v1, p0, Lcom/bumptech/glide/load/a/c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/a/c;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-direct {p0}, Lcom/bumptech/glide/load/a/c;->b()V

    return-void
.end method

.method public final write([B)V
    .registers 4
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/load/a/c;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 9
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_1
    sub-int v1, p3, v0

    add-int v2, p2, v0

    iget v3, p0, Lcom/bumptech/glide/load/a/c;->d:I

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    array-length v3, v3

    if-lt v1, v3, :cond_14

    iget-object p2, p0, Lcom/bumptech/glide/load/a/c;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_14
    iget-object v3, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    array-length v3, v3

    iget v4, p0, Lcom/bumptech/glide/load/a/c;->d:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/bumptech/glide/load/a/c;->b:[B

    iget v4, p0, Lcom/bumptech/glide/load/a/c;->d:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/bumptech/glide/load/a/c;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bumptech/glide/load/a/c;->d:I

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/bumptech/glide/load/a/c;->b()V

    if-lt v0, p3, :cond_1

    return-void
.end method
