.class public final Lcom/bumptech/glide/load/d/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d/a/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d/a/o;

.field private final b:Lcom/bumptech/glide/load/b/a/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d/a/o;Lcom/bumptech/glide/load/b/a/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/y;->a:Lcom/bumptech/glide/load/d/a/o;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/a/y;->b:Lcom/bumptech/glide/load/b/a/b;

    return-void
.end method

.method private a(Ljava/io/InputStream;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 13
    .param p1    # Ljava/io/InputStream;
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
            "Ljava/io/InputStream;",
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

    instance-of v0, p1, Lcom/bumptech/glide/load/d/a/v;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/bumptech/glide/load/d/a/v;

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    new-instance v0, Lcom/bumptech/glide/load/d/a/v;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/y;->b:Lcom/bumptech/glide/load/b/a/b;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/d/a/v;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    :goto_12
    invoke-static {p1}, Lcom/bumptech/glide/util/c;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/util/c;

    move-result-object v1

    new-instance v3, Lcom/bumptech/glide/util/g;

    invoke-direct {v3, v1}, Lcom/bumptech/glide/util/g;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Lcom/bumptech/glide/load/d/a/y$a;

    invoke-direct {v7, p1, v1}, Lcom/bumptech/glide/load/d/a/y$a;-><init>(Lcom/bumptech/glide/load/d/a/v;Lcom/bumptech/glide/util/c;)V

    :try_start_20
    iget-object v2, p0, Lcom/bumptech/glide/load/d/a/y;->a:Lcom/bumptech/glide/load/d/a/o;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/load/d/a/o;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/d/a/o$a;)Lcom/bumptech/glide/load/b/u;

    move-result-object p2
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_32

    invoke-virtual {v1}, Lcom/bumptech/glide/util/c;->a()V

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/bumptech/glide/load/d/a/v;->b()V

    :cond_31
    return-object p2

    :catchall_32
    move-exception p2

    invoke-virtual {v1}, Lcom/bumptech/glide/util/c;->a()V

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/bumptech/glide/load/d/a/v;->b()V

    :cond_3b
    throw p2
.end method

.method private static a()Z
    .registers 1

    invoke-static {}, Lcom/bumptech/glide/load/d/a/o;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 5
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

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/d/a/y;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/j;)Z
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

    invoke-static {}, Lcom/bumptech/glide/load/d/a/o;->a()Z

    move-result p1

    return p1
.end method
