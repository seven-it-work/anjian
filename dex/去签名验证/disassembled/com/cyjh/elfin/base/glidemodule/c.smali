.class public final Lcom/cyjh/elfin/base/glidemodule/c;
.super Lcom/bumptech/glide/n;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/n<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/o;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/n;)V
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/n<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/n;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/n;)V

    return-void
.end method

.method private a(I)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->h(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(II)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 5
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->b(II)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(J)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 5
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->b(J)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Landroid/content/res/Resources$Theme;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # Landroid/content/res/Resources$Theme;
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
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Landroid/content/res/Resources$Theme;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Landroid/graphics/Bitmap$CompressFormat;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/l;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/l;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/i;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/i;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Lcom/bumptech/glide/load/b/i;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/load/b;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/d/a/n;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/n;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/load/d/a/n;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/g;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Lcom/bumptech/glide/load/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;TT;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Ljava/lang/Class;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
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
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Ljava/lang/Class;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/m<",
            "TT;>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private a(Z)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->e(Z)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private varargs a([Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # [Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b([Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private b(F)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(F)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private b(I)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->i(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private b(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->d(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private b(Lcom/bumptech/glide/p;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Lcom/bumptech/glide/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/p<",
            "*-TTranscodeType;>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/p;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private b(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/m<",
            "TT;>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->d(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private b(Z)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->f(Z)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private varargs b([Lcom/bumptech/glide/n;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # [Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a([Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(F)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a(F)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(I)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->j(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->d(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Landroid/net/Uri;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Lcom/bumptech/glide/n;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Lcom/bumptech/glide/request/f;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/f;
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
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;

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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/io/File;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/c;
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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/Object;)Lcom/bumptech/glide/n;

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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

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
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/net/URL;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private c(Z)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->g(Z)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b([B)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private d(I)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->k(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private d(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->e(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private d(Lcom/bumptech/glide/n;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Lcom/bumptech/glide/n;
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
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private d(Lcom/bumptech/glide/request/f;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/f;
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
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private d(Z)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->h(Z)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private e()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
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

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/c;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/cyjh/elfin/base/glidemodule/c;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/n;)V

    sget-object v1, Lcom/cyjh/elfin/base/glidemodule/c;->a:Lcom/bumptech/glide/request/g;

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/c;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object v0

    return-object v0
.end method

.method private e(I)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->l(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private e(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->f(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private f()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->q()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private f(I)Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->m(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private f(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/c;
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
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method private g()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->r()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private h()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->s()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private i()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->t()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private j()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->u()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private k()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->v()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private l()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->w()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private m()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->x()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private n()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->y()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private o()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->z()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private p()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/base/glidemodule/b;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/glidemodule/c;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    :goto_e
    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/b;->A()Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    return-object p0

    :cond_15
    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/base/glidemodule/c;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object v0

    goto :goto_e

    return-object p0
.end method

.method private q()Lcom/cyjh/elfin/base/glidemodule/c;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cyjh/elfin/base/glidemodule/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/n;->b()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(F)Lcom/bumptech/glide/n;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a(F)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/bumptech/glide/p;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Lcom/bumptech/glide/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/p;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method public final synthetic a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a([Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # [Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->a([Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Landroid/graphics/Bitmap;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->f(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Landroid/net/Uri;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/io/File;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/lang/Integer;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/lang/String;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/net/URL;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c([B)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b()Lcom/bumptech/glide/n;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/n;->b()Lcom/bumptech/glide/n;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Landroid/graphics/Bitmap;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->f(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Landroid/net/Uri;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/n;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/io/File;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/lang/Integer;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/lang/String;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c(Ljava/net/URL;)Lcom/cyjh/elfin/base/glidemodule/c;

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

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/c;->c([B)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/n;->b()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/c;

    return-object v0
.end method

.method protected final synthetic d()Lcom/bumptech/glide/n;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/c;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/cyjh/elfin/base/glidemodule/c;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/n;)V

    sget-object v1, Lcom/cyjh/elfin/base/glidemodule/c;->a:Lcom/bumptech/glide/request/g;

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/base/glidemodule/c;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/c;

    move-result-object v0

    return-object v0
.end method
