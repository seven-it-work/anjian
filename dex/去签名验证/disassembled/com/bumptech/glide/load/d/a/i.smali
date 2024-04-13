.class public final Lcom/bumptech/glide/load/d/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d/a/o;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d/a/o;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/i;->a:Lcom/bumptech/glide/load/d/a/o;

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 11
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/a;->b(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/i;->a:Lcom/bumptech/glide/load/d/a/o;

    sget-object v5, Lcom/bumptech/glide/load/d/a/o;->f:Lcom/bumptech/glide/load/d/a/o$a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/d/a/o;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/d/a/o$a;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1
.end method

.method private static a()Z
    .registers 1

    invoke-static {}, Lcom/bumptech/glide/load/d/a/o;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/bumptech/glide/util/a;->b(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/i;->a:Lcom/bumptech/glide/load/d/a/o;

    sget-object v5, Lcom/bumptech/glide/load/d/a/o;->f:Lcom/bumptech/glide/load/d/a/o$a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/d/a/o;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/d/a/o$a;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/j;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/load/d/a/o;->b()Z

    move-result p1

    return p1
.end method
