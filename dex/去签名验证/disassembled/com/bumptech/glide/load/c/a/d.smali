.class public final Lcom/bumptech/glide/load/c/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/d;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/net/Uri;II)Lcom/bumptech/glide/load/c/n$a;
    .registers 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Lcom/bumptech/glide/load/c/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/bumptech/glide/load/a/a/b;->a(II)Z

    move-result p2

    if-eqz p2, :cond_20

    new-instance p2, Lcom/bumptech/glide/load/c/n$a;

    new-instance p3, Lcom/bumptech/glide/f/d;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/d;->a:Landroid/content/Context;

    new-instance v1, Lcom/bumptech/glide/load/a/a/c$a;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/a/a/c$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {v0, p1, v1}, Lcom/bumptech/glide/load/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/d;)Lcom/bumptech/glide/load/a/a/c;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

    return-object p2

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(Landroid/net/Uri;)Z
    .registers 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/bumptech/glide/load/a/a/b;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/bumptech/glide/load/a/a/b;->b(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-static {p2, p3}, Lcom/bumptech/glide/load/a/a/b;->a(II)Z

    move-result p2

    if-eqz p2, :cond_22

    new-instance p2, Lcom/bumptech/glide/load/c/n$a;

    new-instance p3, Lcom/bumptech/glide/f/d;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/bumptech/glide/load/c/a/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/bumptech/glide/load/a/a/c$a;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/a/a/c$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p4, p1, v0}, Lcom/bumptech/glide/load/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/d;)Lcom/bumptech/glide/load/a/a/c;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

    return-object p2

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lcom/bumptech/glide/load/a/a/b;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/bumptech/glide/load/a/a/b;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method
