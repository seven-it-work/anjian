.class public abstract Lcom/bumptech/glide/load/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/n<",
            "Lcom/bumptech/glide/load/c/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/c/m;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/m<",
            "TModel;",
            "Lcom/bumptech/glide/load/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/c/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/n<",
            "Lcom/bumptech/glide/load/c/g;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/c/a/a;-><init>(Lcom/bumptech/glide/load/c/n;B)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/c/n;B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/n<",
            "Lcom/bumptech/glide/load/c/g;",
            "Ljava/io/InputStream;",
            ">;B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/a;->a:Lcom/bumptech/glide/load/c/n;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/a;->b:Lcom/bumptech/glide/load/c/m;

    return-void
.end method

.method private static a(Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/bumptech/glide/load/c/g;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/c/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_22
    return-object v0
.end method

.method private static b()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/bumptech/glide/load/c/h;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/c/h;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/c/h;->b:Lcom/bumptech/glide/load/c/h;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/c/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/a;->b:Lcom/bumptech/glide/load/c/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/a;->b:Lcom/bumptech/glide/load/c/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/m;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/g;

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/bumptech/glide/load/c/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    new-instance v1, Lcom/bumptech/glide/load/c/g;

    sget-object v2, Lcom/bumptech/glide/load/c/h;->b:Lcom/bumptech/glide/load/c/h;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/c/g;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/c/h;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/a;->b:Lcom/bumptech/glide/load/c/m;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/a;->b:Lcom/bumptech/glide/load/c/m;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/bumptech/glide/load/c/m;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_2c
    move-object v0, v1

    :cond_2d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/bumptech/glide/load/c/a/a;->a:Lcom/bumptech/glide/load/c/n;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object p2

    if-eqz p2, :cond_4e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_40

    return-object p2

    :cond_40
    new-instance p3, Lcom/bumptech/glide/load/c/n$a;

    iget-object p4, p2, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    invoke-static {p1}, Lcom/bumptech/glide/load/c/a/a;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-direct {p3, p4, p1, p2}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Ljava/util/List;Lcom/bumptech/glide/load/a/d;)V

    return-object p3

    :cond_4e
    return-object p2
.end method

.method protected abstract a()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
