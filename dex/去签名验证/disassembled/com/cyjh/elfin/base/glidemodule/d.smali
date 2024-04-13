.class public final Lcom/cyjh/elfin/base/glidemodule/d;
.super Lcom/bumptech/glide/o;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/manager/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/graphics/Bitmap;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Landroid/net/Uri;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Landroid/net/Uri;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Ljava/io/File;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/io/File;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Ljava/lang/Class;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/c;

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/d;->a:Lcom/bumptech/glide/f;

    iget-object v2, p0, Lcom/cyjh/elfin/base/glidemodule/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/cyjh/elfin/base/glidemodule/c;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method private c(Ljava/lang/Integer;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Ljava/net/URL;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/net/URL;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c([B)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b([B)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private d(Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private d(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/d;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/o;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p1
.end method

.method private e(Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private e(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/d;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->c(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/o;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p1
.end method

.method private f()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->a()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method

.method private g()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Lcom/bumptech/glide/load/d/e/c;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->b()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method

.method private h()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method

.method private i()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->d()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method

.method private j()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->e()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/bumptech/glide/n;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->a()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Class;)Lcom/bumptech/glide/n;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/c;

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/d;->a:Lcom/bumptech/glide/f;

    iget-object v2, p0, Lcom/cyjh/elfin/base/glidemodule/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/cyjh/elfin/base/glidemodule/c;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public final synthetic a(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Landroid/graphics/Bitmap;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Landroid/net/Uri;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/io/File;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Ljava/io/File;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Ljava/lang/Integer;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->d(Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Ljava/lang/String;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Ljava/net/URL;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a([B)Ljava/lang/Object;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c([B)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/bumptech/glide/request/g;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_8

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/g;)V

    return-void

    :cond_8
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/g;)V

    return-void
.end method

.method public final bridge synthetic b()Lcom/bumptech/glide/n;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->b()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method

.method public final synthetic b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Landroid/graphics/Bitmap;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Landroid/net/Uri;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Landroid/net/Uri;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/io/File;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Ljava/io/File;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Ljava/lang/Integer;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->d(Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Ljava/lang/String;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/net/URL;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c(Ljava/net/URL;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b([B)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/d;->c([B)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/o;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/o;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p1
.end method

.method public final bridge synthetic c()Lcom/bumptech/glide/n;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method public final bridge synthetic c(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/o;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/o;->c(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/o;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p1
.end method

.method public final bridge synthetic d()Lcom/bumptech/glide/n;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->d()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/bumptech/glide/n;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/o;->e()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method
