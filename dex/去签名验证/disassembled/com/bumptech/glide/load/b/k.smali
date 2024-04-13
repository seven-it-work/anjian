.class public final Lcom/bumptech/glide/load/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/g$a;
.implements Lcom/bumptech/glide/util/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/k$b;,
        Lcom/bumptech/glide/load/b/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/g$a<",
        "TR;>;",
        "Lcom/bumptech/glide/util/a/a$c;"
    }
.end annotation


# static fields
.field private static final r:Lcom/bumptech/glide/load/b/k$a;

.field private static final s:Landroid/os/Handler;

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static final v:I = 0x3


# instance fields
.field private final A:Lcom/bumptech/glide/load/b/c/a;

.field private B:Lcom/bumptech/glide/load/b/p;

.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/h;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/bumptech/glide/util/a/c;

.field public final c:Lcom/bumptech/glide/load/b/l;

.field public final d:Lcom/bumptech/glide/load/b/c/a;

.field public e:Lcom/bumptech/glide/load/g;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field j:Lcom/bumptech/glide/load/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/u<",
            "*>;"
        }
    .end annotation
.end field

.field k:Lcom/bumptech/glide/load/a;

.field public l:Z

.field public m:Z

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/h;",
            ">;"
        }
    .end annotation
.end field

.field o:Lcom/bumptech/glide/load/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/o<",
            "*>;"
        }
    .end annotation
.end field

.field public p:Lcom/bumptech/glide/load/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile q:Z

.field private final w:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final x:Lcom/bumptech/glide/load/b/k$a;

.field private final y:Lcom/bumptech/glide/load/b/c/a;

.field private final z:Lcom/bumptech/glide/load/b/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/bumptech/glide/load/b/k$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/k$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/k;->r:Lcom/bumptech/glide/load/b/k$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/b/k$b;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/k$b;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/b/k;->s:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/l;Landroid/support/v4/util/Pools$Pool;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/l;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;>;)V"
        }
    .end annotation

    sget-object v7, Lcom/bumptech/glide/load/b/k;->r:Lcom/bumptech/glide/load/b/k$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/b/k;-><init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/l;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/b/k$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/l;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/b/k$a;)V
    .registers 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/l;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;>;",
            "Lcom/bumptech/glide/load/b/k$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    new-instance v0, Lcom/bumptech/glide/util/a/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/util/a/c$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/util/a/c;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/k;->d:Lcom/bumptech/glide/load/b/c/a;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/k;->y:Lcom/bumptech/glide/load/b/c/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/k;->z:Lcom/bumptech/glide/load/b/c/a;

    iput-object p4, p0, Lcom/bumptech/glide/load/b/k;->A:Lcom/bumptech/glide/load/b/c/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/b/k;->c:Lcom/bumptech/glide/load/b/l;

    iput-object p6, p0, Lcom/bumptech/glide/load/b/k;->w:Landroid/support/v4/util/Pools$Pool;

    iput-object p7, p0, Lcom/bumptech/glide/load/b/k;->x:Lcom/bumptech/glide/load/b/k$a;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/g;ZZZZ)Lcom/bumptech/glide/load/b/k;
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/b/k<",
            "TR;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/b/k;->f:Z

    iput-boolean p3, p0, Lcom/bumptech/glide/load/b/k;->g:Z

    iput-boolean p4, p0, Lcom/bumptech/glide/load/b/k;->h:Z

    iput-boolean p5, p0, Lcom/bumptech/glide/load/b/k;->i:Z

    return-object p0
.end method

.method private b(Lcom/bumptech/glide/load/b/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/g<",
            "TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/b/k;->p:Lcom/bumptech/glide/load/b/g;

    sget-object v0, Lcom/bumptech/glide/load/b/g$g;->INITIALIZE:Lcom/bumptech/glide/load/b/g$g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/b/g;->a(Lcom/bumptech/glide/load/b/g$g;)Lcom/bumptech/glide/load/b/g$g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/g$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/b/g$g;

    if-eq v0, v1, :cond_13

    sget-object v1, Lcom/bumptech/glide/load/b/g$g;->DATA_CACHE:Lcom/bumptech/glide/load/b/g$g;

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->d:Lcom/bumptech/glide/load/b/c/a;

    goto :goto_1d

    :cond_19
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/k;->a()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    :goto_1d
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/c/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/bumptech/glide/request/h;)V
    .registers 4

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/util/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->l:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->m:Z

    if-eqz v0, :cond_11

    goto :goto_42

    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_41

    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/k;->m:Z

    if-nez p1, :cond_41

    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/k;->l:Z

    if-nez p1, :cond_41

    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/k;->q:Z

    if-eqz p1, :cond_2b

    return-void

    :cond_2b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/load/b/k;->q:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->p:Lcom/bumptech/glide/load/b/g;

    iput-boolean p1, v0, Lcom/bumptech/glide/load/b/g;->t:Z

    iget-object p1, v0, Lcom/bumptech/glide/load/b/g;->s:Lcom/bumptech/glide/load/b/e;

    if-eqz p1, :cond_39

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/e;->b()V

    :cond_39
    iget-object p1, p0, Lcom/bumptech/glide/load/b/k;->c:Lcom/bumptech/glide/load/b/l;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    invoke-interface {p1, p0, v0}, Lcom/bumptech/glide/load/b/l;->a(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/g;)V

    return-void

    :cond_41
    return-void

    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    if-nez v0, :cond_4e

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    :cond_4e
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5b
    return-void
.end method

.method private d(Lcom/bumptech/glide/request/h;)V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->i:Z

    return v0
.end method

.method private f()V
    .registers 3

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->m:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->l:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->q:Z

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->q:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->p:Lcom/bumptech/glide/load/b/g;

    iput-boolean v0, v1, Lcom/bumptech/glide/load/b/g;->t:Z

    iget-object v0, v1, Lcom/bumptech/glide/load/b/g;->s:Lcom/bumptech/glide/load/b/e;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/e;->b()V

    :cond_1b
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->c:Lcom/bumptech/glide/load/b/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/b/l;->a(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/g;)V

    :cond_22
    return-void
.end method

.method private g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->q:Z

    return v0
.end method

.method private h()V
    .registers 6

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/util/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->q:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->j:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->d()V

    :goto_e
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/k;->c()V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->l:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->j:Lcom/bumptech/glide/load/b/u;

    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/k;->f:Z

    new-instance v2, Lcom/bumptech/glide/load/b/o;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bumptech/glide/load/b/o;-><init>(Lcom/bumptech/glide/load/b/u;ZZ)V

    iput-object v2, p0, Lcom/bumptech/glide/load/b/k;->o:Lcom/bumptech/glide/load/b/o;

    iput-boolean v3, p0, Lcom/bumptech/glide/load/b/k;->l:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->o:Lcom/bumptech/glide/load/b/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/o;->e()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->c:Lcom/bumptech/glide/load/b/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/k;->o:Lcom/bumptech/glide/load/b/o;

    invoke-interface {v0, p0, v1, v2}, Lcom/bumptech/glide/load/b/l;->a(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_51
    if-ge v0, v1, :cond_70

    iget-object v2, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/h;

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/b/k;->b(Lcom/bumptech/glide/request/h;)Z

    move-result v3

    if-nez v3, :cond_6d

    iget-object v3, p0, Lcom/bumptech/glide/load/b/k;->o:Lcom/bumptech/glide/load/b/o;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/o;->e()V

    iget-object v3, p0, Lcom/bumptech/glide/load/b/k;->o:Lcom/bumptech/glide/load/b/o;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/k;->k:Lcom/bumptech/glide/load/a;

    invoke-interface {v2, v3, v4}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/a;)V

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_70
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->o:Lcom/bumptech/glide/load/b/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/o;->f()V

    goto :goto_e
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/util/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->q:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->c:Lcom/bumptech/glide/load/b/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/b/l;->a(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/g;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/k;->c()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/load/b/c/a;
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->g:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->z:Lcom/bumptech/glide/load/b/c/a;

    return-object v0

    :cond_7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->h:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->A:Lcom/bumptech/glide/load/b/c/a;

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->y:Lcom/bumptech/glide/load/b/c/a;

    return-object v0
.end method

.method public final a(Lcom/bumptech/glide/load/b/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/g<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/k;->a()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/c/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/b/p;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/load/b/k;->B:Lcom/bumptech/glide/load/b/p;

    sget-object p1, Lcom/bumptech/glide/load/b/k;->s:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/b/k;->j:Lcom/bumptech/glide/load/b/u;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/k;->k:Lcom/bumptech/glide/load/a;

    sget-object p1, Lcom/bumptech/glide/load/b/k;->s:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/request/h;)V
    .registers 4

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/util/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->l:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->o:Lcom/bumptech/glide/load/b/o;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->k:Lcom/bumptech/glide/load/a;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/a;)V

    return-void

    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->m:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->B:Lcom/bumptech/glide/load/b/p;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/b/p;)V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b(Lcom/bumptech/glide/request/h;)Z
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method final c()V
    .registers 5

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->o:Lcom/bumptech/glide/load/b/o;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->j:Lcom/bumptech/glide/load/b/u;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/k;->m:Z

    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/k;->q:Z

    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/k;->l:Z

    iget-object v2, p0, Lcom/bumptech/glide/load/b/k;->p:Lcom/bumptech/glide/load/b/g;

    iget-object v3, v2, Lcom/bumptech/glide/load/b/g;->d:Lcom/bumptech/glide/load/b/g$e;

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/load/b/g$e;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/g;->a()V

    :cond_2c
    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->p:Lcom/bumptech/glide/load/b/g;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->B:Lcom/bumptech/glide/load/b/p;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->k:Lcom/bumptech/glide/load/a;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->w:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method final d()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/util/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->q:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/k;->c()V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->m:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/k;->m:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->c:Lcom/bumptech/glide/load/b/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/bumptech/glide/load/b/l;->a(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/h;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/b/k;->b(Lcom/bumptech/glide/request/h;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/bumptech/glide/load/b/k;->B:Lcom/bumptech/glide/load/b/p;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/b/p;)V

    goto :goto_3a

    :cond_52
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/k;->c()V

    return-void
.end method

.method public final g_()Lcom/bumptech/glide/util/a/c;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/util/a/c;

    return-object v0
.end method
