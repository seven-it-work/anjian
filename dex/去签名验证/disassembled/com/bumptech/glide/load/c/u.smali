.class public final Lcom/bumptech/glide/load/c/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/u$a;,
        Lcom/bumptech/glide/load/c/u$b;,
        Lcom/bumptech/glide/load/c/u$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "Ljava/lang/String;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/n<",
            "Landroid/net/Uri;",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/c/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/n<",
            "Landroid/net/Uri;",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/c/u;->a:Lcom/bumptech/glide/load/c/n;

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_16

    :goto_11
    invoke-static {p0}, Lcom/bumptech/glide/load/c/u;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    goto :goto_11

    :cond_21
    move-object p0, v0

    return-object p0
.end method

.method private a(Ljava/lang/String;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/c/n$a<",
            "TData;>;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object p1, v1

    goto :goto_23

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_17

    :goto_12
    invoke-static {p1}, Lcom/bumptech/glide/load/c/u;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_23

    :cond_17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_22

    goto :goto_12

    :cond_22
    move-object p1, v0

    :goto_23
    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/bumptech/glide/load/c/u;->a:Lcom/bumptech/glide/load/c/n;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-object v1

    :cond_2e
    iget-object v0, p0, Lcom/bumptech/glide/load/c/u;->a:Lcom/bumptech/glide/load/c/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object p1

    return-object p1

    :cond_35
    return-object v1
.end method

.method private static a()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private static b(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object p1, v1

    goto :goto_25

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_19

    :goto_14
    invoke-static {p1}, Lcom/bumptech/glide/load/c/u;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_25

    :cond_19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_14

    :cond_24
    move-object p1, v0

    :goto_25
    if-eqz p1, :cond_37

    iget-object v0, p0, Lcom/bumptech/glide/load/c/u;->a:Lcom/bumptech/glide/load/c/n;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    return-object v1

    :cond_30
    iget-object v0, p0, Lcom/bumptech/glide/load/c/u;->a:Lcom/bumptech/glide/load/c/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object p1

    return-object p1

    :cond_37
    return-object v1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
