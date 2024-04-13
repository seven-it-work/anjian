.class public final Lcom/cyjh/elfin/base/glidemodule/b;
.super Lcom/bumptech/glide/request/g;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static A:Lcom/cyjh/elfin/base/glidemodule/b;

.field private static B:Lcom/cyjh/elfin/base/glidemodule/b;

.field private static C:Lcom/cyjh/elfin/base/glidemodule/b;

.field private static x:Lcom/cyjh/elfin/base/glidemodule/b;

.field private static y:Lcom/cyjh/elfin/base/glidemodule/b;

.field private static z:Lcom/cyjh/elfin/base/glidemodule/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;-><init>()V

    return-void
.end method

.method private static B()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->x:Lcom/cyjh/elfin/base/glidemodule/b;

    if-nez v0, :cond_17

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    sput-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->x:Lcom/cyjh/elfin/base/glidemodule/b;

    :cond_17
    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->x:Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method private static C()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->y:Lcom/cyjh/elfin/base/glidemodule/b;

    if-nez v0, :cond_17

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->i()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    sput-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->y:Lcom/cyjh/elfin/base/glidemodule/b;

    :cond_17
    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->y:Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method private static D()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->z:Lcom/cyjh/elfin/base/glidemodule/b;

    if-nez v0, :cond_17

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->e()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    sput-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->z:Lcom/cyjh/elfin/base/glidemodule/b;

    :cond_17
    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->z:Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method private static E()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->A:Lcom/cyjh/elfin/base/glidemodule/b;

    if-nez v0, :cond_17

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->k()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    sput-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->A:Lcom/cyjh/elfin/base/glidemodule/b;

    :cond_17
    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->A:Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method private static F()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->B:Lcom/cyjh/elfin/base/glidemodule/b;

    if-nez v0, :cond_17

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->l()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    sput-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->B:Lcom/cyjh/elfin/base/glidemodule/b;

    :cond_17
    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->B:Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method private static G()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->C:Lcom/cyjh/elfin/base/glidemodule/b;

    if-nez v0, :cond_17

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-super {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    sput-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->C:Lcom/cyjh/elfin/base/glidemodule/b;

    :cond_17
    sget-object v0, Lcom/cyjh/elfin/base/glidemodule/b;->C:Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method private H()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method private I()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->n()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method private J()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method private static c(F)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->b(F)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static c(II)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(II)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static c(J)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 3
    .param p0    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(J)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap$CompressFormat;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Landroid/graphics/Bitmap$CompressFormat;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/bumptech/glide/l;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/l;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/bumptech/glide/load/b;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/load/b;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/bumptech/glide/load/d/a/n;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/load/d/a/n;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 3
    .param p0    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/bumptech/glide/load/b/i;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Lcom/bumptech/glide/load/b/i;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/bumptech/glide/load/g;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Lcom/bumptech/glide/load/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/Class;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Ljava/lang/Class;
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Ljava/lang/Class;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/m;
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static g(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->d(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->f(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static i(Z)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->h(Z)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static n(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->h(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static o(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->j(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static p(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->k(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static q(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->m(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method

.method private static r(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/glidemodule/b;->l(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final synthetic a(F)Lcom/bumptech/glide/request/g;
    .registers 2
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

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(F)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->h(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(II)Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->b(II)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(J)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->b(J)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Landroid/content/res/Resources$Theme;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Landroid/graphics/Bitmap$CompressFormat;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->d(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/l;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/load/b;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/bumptech/glide/load/d/a/n;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/load/d/a/n;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;
    .registers 3
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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 3
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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Z)Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->e(Z)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a([Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # [Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->b([Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final synthetic b(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->i(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->e(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Lcom/bumptech/glide/load/b/i;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Lcom/bumptech/glide/load/g;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->d(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->c(Ljava/lang/Class;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 3
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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/b;->d(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Z)Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->f(Z)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final b(F)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
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

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(F)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final b(II)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/g;->a(II)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final b(J)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 3
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/g;->a(J)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final b(Landroid/content/res/Resources$Theme;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final b(Landroid/graphics/Bitmap$CompressFormat;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final b(Lcom/bumptech/glide/l;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final b(Lcom/bumptech/glide/load/b;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final b(Lcom/bumptech/glide/load/d/a/n;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final b(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 3
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final b(Lcom/bumptech/glide/request/g;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final varargs b([Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a([Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic c()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->c()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final synthetic c(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->j(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->f(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Z)Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->g(Z)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/bumptech/glide/load/b/i;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final c(Lcom/bumptech/glide/load/g;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final c(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final c(Ljava/lang/Class;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final c(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 3
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

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

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final bridge synthetic d()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->d()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final synthetic d(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->k(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Z)Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->h(Z)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final d(Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final d(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 3
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
            "Lcom/cyjh/elfin/base/glidemodule/b;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/g;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic e()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->e()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final synthetic e(I)Lcom/bumptech/glide/request/g;
    .registers 2
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

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->l(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final e(Z)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic f()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->f()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final synthetic f(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/base/glidemodule/b;->m(I)Lcom/cyjh/elfin/base/glidemodule/b;

    move-result-object p1

    return-object p1
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final f(Z)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->b(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic g()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final g(Z)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->c(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic h()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->h()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final h(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->a(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final h(Z)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->d(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic i()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->i()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final i(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->b(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic j()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->j()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final j(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->c(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic k()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->k()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final k(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->d(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic l()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->l()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final l(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
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

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->e(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic m()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final m(I)Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/g;->f(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object p1
.end method

.method public final bridge synthetic n()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->n()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final q()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->c()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final r()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->d()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final s()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->e()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final t()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->f()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final u()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final v()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->h()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final w()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->i()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final x()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->j()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final y()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->k()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method

.method public final z()Lcom/cyjh/elfin/base/glidemodule/b;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/g;->l()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/glidemodule/b;

    return-object v0
.end method
