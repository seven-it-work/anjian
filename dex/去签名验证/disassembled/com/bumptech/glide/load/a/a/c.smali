.class public final Lcom/bumptech/glide/load/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/a/a/c$a;,
        Lcom/bumptech/glide/load/a/a/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Lcom/bumptech/glide/load/a/a/e;

.field private d:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/e;)V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/a/a/c;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/bumptech/glide/load/a/a/c;->c:Lcom/bumptech/glide/load/a/a/e;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/a/c;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/a/a/c$a;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/a/a/c$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/d;)Lcom/bumptech/glide/load/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/d;)Lcom/bumptech/glide/load/a/a/c;
    .registers 6

    invoke-static {p0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/load/b/a/b;

    new-instance v1, Lcom/bumptech/glide/load/a/a/e;

    invoke-static {p0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v2

    iget-object v2, v2, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    invoke-virtual {v2}, Lcom/bumptech/glide/m;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lcom/bumptech/glide/load/a/a/e;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/a/a/d;Lcom/bumptech/glide/load/b/a/b;Landroid/content/ContentResolver;)V

    new-instance p0, Lcom/bumptech/glide/load/a/a/c;

    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/load/a/a/c;-><init>(Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/e;)V

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/a/c;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/a/a/c$b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/a/a/c$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/d;)Lcom/bumptech/glide/load/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method private e()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/a/a/c;->c:Lcom/bumptech/glide/load/a/a/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/a/a/c;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/a/a/e;->b(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/bumptech/glide/load/a/a/c;->c:Lcom/bumptech/glide/load/a/a/e;

    iget-object v3, p0, Lcom/bumptech/glide/load/a/a/c;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/a/a/e;->a(Landroid/net/Uri;)I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, -0x1

    :goto_15
    if-eq v2, v1, :cond_1d

    new-instance v1, Lcom/bumptech/glide/load/a/g;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/a/g;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/a/d$a;)V
    .registers 6
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/a/a/c;->c:Lcom/bumptech/glide/load/a/a/e;

    iget-object v0, p0, Lcom/bumptech/glide/load/a/a/c;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/a/a/e;->b(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/bumptech/glide/load/a/a/c;->c:Lcom/bumptech/glide/load/a/a/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/a/a/c;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/a/a/e;->a(Landroid/net/Uri;)I

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, -0x1

    :goto_15
    if-eq v1, v0, :cond_1d

    new-instance v0, Lcom/bumptech/glide/load/a/g;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/a/g;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    :cond_1d
    iput-object p1, p0, Lcom/bumptech/glide/load/a/a/c;->d:Ljava/io/InputStream;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_1f} :catch_25

    iget-object p1, p0, Lcom/bumptech/glide/load/a/a/c;->d:Ljava/io/InputStream;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Object;)V

    return-void

    :catch_25
    move-exception p1

    const-string v0, "MediaStoreThumbFetcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "MediaStoreThumbFetcher"

    const-string v1, "Failed to find thumbnail file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/a/a/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/a/a/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()Lcom/bumptech/glide/load/a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/a;->LOCAL:Lcom/bumptech/glide/load/a;

    return-object v0
.end method
