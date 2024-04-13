.class final Lcom/bumptech/glide/c;
.super Lcom/bumptech/glide/b;


# instance fields
.field private final a:Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/bumptech/glide/b;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;

    const-string v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Glide"

    const-string v1, "Discovered AppGlideModule from annotation: com.cyjh.elfin.base.glidemodule.CustomGlideModule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method private static e()Lcom/bumptech/glide/d;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;

    invoke-virtual {v0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;->a(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    return-void
.end method

.method final synthetic b()Lcom/bumptech/glide/manager/k$a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d;-><init>()V

    return-object v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
