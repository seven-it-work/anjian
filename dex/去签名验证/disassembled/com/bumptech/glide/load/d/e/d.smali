.class public final Lcom/bumptech/glide/load/d/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/l<",
        "Lcom/bumptech/glide/load/d/e/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GifEncoder"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/b/u;Ljava/io/File;)Z
    .registers 3
    .param p0    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "Lcom/bumptech/glide/load/d/e/c;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/d/e/c;

    :try_start_6
    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->b()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/bumptech/glide/util/a;->a(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    move-exception p0

    const-string p1, "GifEncoder"

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "GifEncoder"

    const-string v0, "Failed to encode GIF drawable data"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object p1, Lcom/bumptech/glide/load/c;->SOURCE:Lcom/bumptech/glide/load/c;

    return-object p1
.end method

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

    check-cast p1, Lcom/bumptech/glide/load/b/u;

    invoke-static {p1, p2}, Lcom/bumptech/glide/load/d/e/d;->a(Lcom/bumptech/glide/load/b/u;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
