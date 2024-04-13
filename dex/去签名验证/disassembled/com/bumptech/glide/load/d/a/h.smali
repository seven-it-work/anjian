.class public final Lcom/bumptech/glide/load/d/a/h;
.super Lcom/bumptech/glide/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/p<",
        "Lcom/bumptech/glide/load/d/a/h;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/p;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/bumptech/glide/load/d/a/h;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/h;-><init>()V

    new-instance v1, Lcom/bumptech/glide/request/a/c$a;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/request/a/c$a;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/d/a/h;->b(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/d/a/h;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/d/a/h;
    .registers 2
    .param p0    # Lcom/bumptech/glide/request/a/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/h;-><init>()V

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/d/a/h;->b(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/d/a/h;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bumptech/glide/request/a/c;)Lcom/bumptech/glide/load/d/a/h;
    .registers 2
    .param p0    # Lcom/bumptech/glide/request/a/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/h;-><init>()V

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/d/a/h;->d(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/d/a/h;

    move-result-object p0

    return-object p0
.end method

.method private static b()Lcom/bumptech/glide/load/d/a/h;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/h;-><init>()V

    new-instance v1, Lcom/bumptech/glide/request/a/c$a;

    invoke-direct {v1}, Lcom/bumptech/glide/request/a/c$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/d/a/h;->b(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/d/a/h;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Lcom/bumptech/glide/load/d/a/h;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/c$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/c$a;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/d/a/h;->b(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/d/a/h;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/d/a/h;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/a/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a/c$a;->a()Lcom/bumptech/glide/request/a/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/d/a/h;->d(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/d/a/h;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/bumptech/glide/request/a/c;)Lcom/bumptech/glide/load/d/a/h;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/a/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/d/a/h;->d(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/d/a/h;

    move-result-object p1

    return-object p1
.end method

.method private static b(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/d/a/h;
    .registers 2
    .param p0    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/d/a/h;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/h;-><init>()V

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/d/a/h;->d(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/d/a/h;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/bumptech/glide/load/d/a/h;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/c$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/d/a/h;->b(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/d/a/h;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/d/a/h;
    .registers 2
    .param p0    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/g<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/d/a/h;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/d/a/h;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/d/a/h;

    return-object p0
.end method

.method private d(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/d/a/h;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/d/a/h;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/b;-><init>(Lcom/bumptech/glide/request/a/g;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/d/a/h;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/d/a/h;

    return-object p1
.end method
