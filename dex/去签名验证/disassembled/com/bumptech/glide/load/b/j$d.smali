.class public final Lcom/bumptech/glide/load/b/j$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/k<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/bumptech/glide/request/h;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/h;Lcom/bumptech/glide/load/b/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h;",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/j$d;->b:Lcom/bumptech/glide/request/h;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/j$d;->a:Lcom/bumptech/glide/load/b/k;

    return-void
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$d;->a:Lcom/bumptech/glide/load/b/k;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$d;->b:Lcom/bumptech/glide/request/h;

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v2, v0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/util/a/c;

    invoke-virtual {v2}, Lcom/bumptech/glide/util/a/c;->a()V

    iget-boolean v2, v0, Lcom/bumptech/glide/load/b/k;->l:Z

    if-nez v2, :cond_46

    iget-boolean v2, v0, Lcom/bumptech/glide/load/b/k;->m:Z

    if-eqz v2, :cond_15

    goto :goto_46

    :cond_15
    iget-object v2, v0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-boolean v1, v0, Lcom/bumptech/glide/load/b/k;->m:Z

    if-nez v1, :cond_45

    iget-boolean v1, v0, Lcom/bumptech/glide/load/b/k;->l:Z

    if-nez v1, :cond_45

    iget-boolean v1, v0, Lcom/bumptech/glide/load/b/k;->q:Z

    if-eqz v1, :cond_2f

    return-void

    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/load/b/k;->q:Z

    iget-object v2, v0, Lcom/bumptech/glide/load/b/k;->p:Lcom/bumptech/glide/load/b/g;

    iput-boolean v1, v2, Lcom/bumptech/glide/load/b/g;->t:Z

    iget-object v1, v2, Lcom/bumptech/glide/load/b/g;->s:Lcom/bumptech/glide/load/b/e;

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Lcom/bumptech/glide/load/b/e;->b()V

    :cond_3d
    iget-object v1, v0, Lcom/bumptech/glide/load/b/k;->c:Lcom/bumptech/glide/load/b/l;

    iget-object v2, v0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, v0, v2}, Lcom/bumptech/glide/load/b/l;->a(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/g;)V

    return-void

    :cond_45
    return-void

    :cond_46
    :goto_46
    iget-object v2, v0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    if-nez v2, :cond_52

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    :cond_52
    iget-object v2, v0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v0, v0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    return-void
.end method
