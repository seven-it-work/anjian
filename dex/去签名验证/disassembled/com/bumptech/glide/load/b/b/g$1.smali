.class final Lcom/bumptech/glide/load/b/b/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/b/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/g$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/b/g$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/io/File;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/g$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/g$1;->b:Ljava/lang/String;

    if-eqz v1, :cond_16

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/b/g$1;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_16
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/g$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_16

    :cond_a
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/g$1;->b:Ljava/lang/String;

    if-eqz v1, :cond_16

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/b/g$1;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :cond_16
    :goto_16
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    return-object v0

    :cond_1f
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/g$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2e

    return-object v0

    :cond_2e
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/g$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/b/g$1;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_3a
    return-object v1

    :cond_3b
    return-object v0
.end method
