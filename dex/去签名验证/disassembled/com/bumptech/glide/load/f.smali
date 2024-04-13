.class public final Lcom/bumptech/glide/load/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x500000


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 6
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/b/a/b;",
            ")",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/bumptech/glide/load/d/a/v;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/d/a/v;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)V

    move-object p1, v0

    :cond_11
    const/high16 p2, 0x500000

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    const/4 p2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1b
    if-ge p2, v0, :cond_3a

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/ImageHeaderParser;

    :try_start_23
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_35

    if-eq v1, v2, :cond_2f

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return-object v1

    :cond_2f
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :catchall_35
    move-exception p0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw p0

    :cond_3a
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method private static a(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 6
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_5
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_a
    if-ge v0, v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/ImageHeaderParser;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v2, v3, :cond_1b

    return-object v2

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public static b(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)I
    .registers 7
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/b/a/b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lcom/bumptech/glide/load/d/a/v;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/d/a/v;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)V

    move-object p1, v1

    :cond_10
    const/high16 v1, 0x500000

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1a
    if-ge v1, v2, :cond_37

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/ImageHeaderParser;

    :try_start_22
    invoke-interface {v3, p1, p2}, Lcom/bumptech/glide/load/ImageHeaderParser;->a(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)I

    move-result v3
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_32

    if-eq v3, v0, :cond_2c

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return v3

    :cond_2c
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :catchall_32
    move-exception p0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw p0

    :cond_37
    return v0
.end method
