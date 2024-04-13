.class public final Lcom/cyjh/elfin/base/glidemodule/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;)Lcom/cyjh/elfin/base/glidemodule/d;
    .registers 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/app/Activity;)Lcom/bumptech/glide/o;

    move-result-object p0

    check-cast p0, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p0
.end method

.method private static a(Landroid/app/Fragment;)Lcom/cyjh/elfin/base/glidemodule/d;
    .registers 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object p0

    check-cast p0, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/Fragment;)Lcom/cyjh/elfin/base/glidemodule/d;
    .registers 1
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object p0

    check-cast p0, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/FragmentActivity;)Lcom/cyjh/elfin/base/glidemodule/d;
    .registers 1
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object p0

    check-cast p0, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p0
.end method

.method private static a(Landroid/view/View;)Lcom/cyjh/elfin/base/glidemodule/d;
    .registers 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/view/View;)Lcom/bumptech/glide/o;

    move-result-object p0

    check-cast p0, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .registers 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/bumptech/glide/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static a()V
    .registers 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/f;->a()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0, p1}, Lcom/bumptech/glide/f;->a(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    return-void
.end method

.method private static a(Lcom/bumptech/glide/f;)V
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/f;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/bumptech/glide/f;
    .registers 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Lcom/cyjh/elfin/base/glidemodule/d;
    .registers 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    check-cast p0, Lcom/cyjh/elfin/base/glidemodule/d;

    return-object p0
.end method
