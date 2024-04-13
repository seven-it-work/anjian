.class public final Lcom/bumptech/glide/load/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/a$b;,
        Lcom/bumptech/glide/load/c/a$c;,
        Lcom/bumptech/glide/load/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "android_asset"

.field private static final b:Ljava/lang/String; = "file:///android_asset/"

.field private static final c:I = 0x16


# instance fields
.field private final d:Landroid/content/res/AssetManager;

.field private final e:Lcom/bumptech/glide/load/c/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/a$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/bumptech/glide/load/c/a$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Lcom/bumptech/glide/load/c/a$a<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/c/a;->d:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/bumptech/glide/load/c/a;->e:Lcom/bumptech/glide/load/c/a$a;

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
            "TData;>;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/bumptech/glide/load/c/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/c/n$a;

    new-instance v2, Lcom/bumptech/glide/f/d;

    invoke-direct {v2, p1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/c/a;->e:Lcom/bumptech/glide/load/c/a$a;

    iget-object v3, p0, Lcom/bumptech/glide/load/c/a;->d:Landroid/content/res/AssetManager;

    invoke-interface {p1, v3, v0}, Lcom/bumptech/glide/load/c/a$a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/bumptech/glide/load/a/d;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

    return-object v1
.end method

.method private static b(Landroid/net/Uri;)Z
    .registers 3
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "android_asset"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    return v1
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

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/bumptech/glide/load/c/a;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/bumptech/glide/load/c/n$a;

    new-instance p4, Lcom/bumptech/glide/f/d;

    invoke-direct {p4, p1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/c/a;->e:Lcom/bumptech/glide/load/c/a$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a;->d:Landroid/content/res/AssetManager;

    invoke-interface {p1, v0, p2}, Lcom/bumptech/glide/load/c/a$a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/bumptech/glide/load/a/d;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

    return-object p3
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "android_asset"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    return v1
.end method
