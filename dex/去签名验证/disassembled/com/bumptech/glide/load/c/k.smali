.class public final Lcom/bumptech/glide/load/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/k$a;,
        Lcom/bumptech/glide/load/c/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/c/k;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/net/Uri;)Lcom/bumptech/glide/load/c/n$a;
    .registers 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/c/n$a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/c/n$a;

    new-instance v1, Lcom/bumptech/glide/f/d;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/bumptech/glide/load/c/k$b;

    iget-object v3, p0, Lcom/bumptech/glide/load/c/k;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/bumptech/glide/load/c/k$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

    return-object v0
.end method

.method private static b(Landroid/net/Uri;)Z
    .registers 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/bumptech/glide/load/a/a/b;->a(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    new-instance p2, Lcom/bumptech/glide/load/c/n$a;

    new-instance p3, Lcom/bumptech/glide/f/d;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/c/k$b;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/k;->a:Landroid/content/Context;

    invoke-direct {p4, v0, p1}, Lcom/bumptech/glide/load/c/k$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

    return-object p2
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lcom/bumptech/glide/load/a/a/b;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
