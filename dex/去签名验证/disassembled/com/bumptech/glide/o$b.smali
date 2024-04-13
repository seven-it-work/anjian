.class final Lcom/bumptech/glide/o$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/manager/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/m;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/manager/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/manager/m;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/manager/m;

    iget-object v0, p1, Lcom/bumptech/glide/manager/m;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/c;

    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->f()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->b()V

    iget-boolean v2, p1, Lcom/bumptech/glide/manager/m;->c:Z

    if-nez v2, :cond_31

    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->a()V

    goto :goto_e

    :cond_31
    iget-object v2, p1, Lcom/bumptech/glide/manager/m;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_37
    return-void
.end method
