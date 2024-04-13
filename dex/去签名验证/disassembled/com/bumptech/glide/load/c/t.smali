.class public final Lcom/bumptech/glide/load/c/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "StreamEncoder"


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/a/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/c/t;->b:Lcom/bumptech/glide/load/b/a/b;

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 7
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/c/t;->b:Lcom/bumptech/glide/load/b/a/b;

    const-class v1, [B

    const/high16 v2, 0x10000

    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_2e
    .catchall {:try_start_e .. :try_end_13} :catchall_2c

    :goto_13
    :try_start_13
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1e

    invoke-virtual {v3, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_13

    :cond_1e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_21} :catch_29
    .catchall {:try_start_13 .. :try_end_21} :catchall_26

    const/4 v1, 0x1

    :try_start_22
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_44

    goto :goto_44

    :catchall_26
    move-exception p1

    move-object v2, v3

    goto :goto_4a

    :catch_29
    move-exception p1

    move-object v2, v3

    goto :goto_2f

    :catchall_2c
    move-exception p1

    goto :goto_4a

    :catch_2e
    move-exception p1

    :goto_2f
    :try_start_2f
    const-string p2, "StreamEncoder"

    const/4 v3, 0x3

    invoke-static {p2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3f

    const-string p2, "StreamEncoder"

    const-string v3, "Failed to encode data onto the OutputStream"

    invoke-static {p2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_2c

    :cond_3f
    if-eqz v2, :cond_44

    :try_start_41
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/bumptech/glide/load/c/t;->b:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    return v1

    :goto_4a
    if-eqz v2, :cond_4f

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_4f

    :catch_4f
    :cond_4f
    iget-object p2, p0, Lcom/bumptech/glide/load/c/t;->b:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/j;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/c/t;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
