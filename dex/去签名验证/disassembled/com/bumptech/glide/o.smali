.class public Lcom/bumptech/glide/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/k;
.implements Lcom/bumptech/glide/manager/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/o$a;,
        Lcom/bumptech/glide/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/k<",
        "Lcom/bumptech/glide/n<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;",
        "Lcom/bumptech/glide/manager/i;"
    }
.end annotation


# static fields
.field private static final g:Lcom/bumptech/glide/request/g;

.field private static final h:Lcom/bumptech/glide/request/g;

.field private static final i:Lcom/bumptech/glide/request/g;


# instance fields
.field protected final a:Lcom/bumptech/glide/f;

.field protected final b:Landroid/content/Context;

.field final c:Lcom/bumptech/glide/manager/h;

.field final d:Lcom/bumptech/glide/manager/m;

.field final e:Lcom/bumptech/glide/manager/n;

.field f:Lcom/bumptech/glide/request/g;

.field private final j:Lcom/bumptech/glide/manager/l;

.field private final k:Ljava/lang/Runnable;

.field private final l:Landroid/os/Handler;

.field private final m:Lcom/bumptech/glide/manager/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->n()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/o;->g:Lcom/bumptech/glide/request/g;

    const-class v0, Lcom/bumptech/glide/load/d/e/c;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->n()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/o;->h:Lcom/bumptech/glide/request/g;

    sget-object v0, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/i;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/l;->LOW:Lcom/bumptech/glide/l;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->d(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/o;->i:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)V
    .registers 12
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/manager/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v4, Lcom/bumptech/glide/manager/m;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/m;-><init>()V

    iget-object v5, p1, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/manager/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/m;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/m;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/n;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/n;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/n;

    new-instance v0, Lcom/bumptech/glide/o$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/o$1;-><init>(Lcom/bumptech/glide/o;)V

    iput-object v0, p0, Lcom/bumptech/glide/o;->k:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/o;->l:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/f;

    iput-object p2, p0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/manager/h;

    iput-object p3, p0, Lcom/bumptech/glide/o;->j:Lcom/bumptech/glide/manager/l;

    iput-object p4, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    iput-object p6, p0, Lcom/bumptech/glide/o;->b:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/o$b;

    invoke-direct {p6, p4}, Lcom/bumptech/glide/o$b;-><init>(Lcom/bumptech/glide/manager/m;)V

    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/manager/d;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)Lcom/bumptech/glide/manager/c;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/o;->m:Lcom/bumptech/glide/manager/c;

    invoke-static {}, Lcom/bumptech/glide/util/k;->d()Z

    move-result p3

    if-eqz p3, :cond_43

    iget-object p3, p0, Lcom/bumptech/glide/o;->l:Landroid/os/Handler;

    iget-object p4, p0, Lcom/bumptech/glide/o;->k:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_46

    :cond_43
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    :goto_46
    iget-object p3, p0, Lcom/bumptech/glide/o;->m:Lcom/bumptech/glide/manager/c;

    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    iget-object p2, p1, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/h;

    iget-object p2, p2, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/request/g;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/g;)V

    iget-object p2, p1, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    monitor-enter p2

    :try_start_55
    iget-object p3, p1, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_65

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot register already registered manager"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_65
    iget-object p1, p1, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_6c
    move-exception p1

    monitor-exit p2
    :try_end_6e
    .catchall {:try_start_55 .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method private a(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/bumptech/glide/o$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/o$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method private a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/c;)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;",
            "Lcom/bumptech/glide/request/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/n;

    iget-object v0, v0, Lcom/bumptech/glide/manager/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    iget-object v0, p1, Lcom/bumptech/glide/manager/m;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/bumptech/glide/manager/m;->c:Z

    if-nez v0, :cond_16

    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->a()V

    return-void

    :cond_16
    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->b()V

    const-string v0, "RequestTracker"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "RequestTracker"

    const-string v1, "Paused, delaying request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object p1, p1, Lcom/bumptech/glide/manager/m;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(Lcom/bumptech/glide/request/target/Target;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/c;)V

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    :cond_1f
    return-void
.end method

.method private d(Lcom/bumptech/glide/request/g;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method private f()Z
    .registers 2

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    iget-boolean v0, v0, Lcom/bumptech/glide/manager/m;->c:Z

    return v0
.end method

.method private g()V
    .registers 5

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/m;->c:Z

    iget-object v1, v0, Lcom/bumptech/glide/manager/m;->a:Ljava/util/Set;

    invoke-static {v1}, Lcom/bumptech/glide/util/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/c;

    invoke-interface {v2}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Lcom/bumptech/glide/request/c;->b()V

    iget-object v3, v0, Lcom/bumptech/glide/manager/m;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2d
    return-void
.end method

.method private h()V
    .registers 5

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/m;->c:Z

    iget-object v1, v0, Lcom/bumptech/glide/manager/m;->a:Ljava/util/Set;

    invoke-static {v1}, Lcom/bumptech/glide/util/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/c;

    invoke-interface {v2}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-interface {v2}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_2a
    invoke-interface {v2}, Lcom/bumptech/glide/request/c;->b()V

    iget-object v3, v0, Lcom/bumptech/glide/manager/m;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_33
    return-void
.end method

.method private i()V
    .registers 3

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    invoke-direct {p0}, Lcom/bumptech/glide/o;->g()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->j:Lcom/bumptech/glide/manager/l;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/l;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/o;

    invoke-direct {v1}, Lcom/bumptech/glide/o;->g()V

    goto :goto_10

    :cond_20
    return-void
.end method

.method private j()V
    .registers 5

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/m;->c:Z

    iget-object v1, v0, Lcom/bumptech/glide/manager/m;->a:Ljava/util/Set;

    invoke-static {v1}, Lcom/bumptech/glide/util/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/c;

    invoke-interface {v2}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v2}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v2}, Lcom/bumptech/glide/request/c;->a()V

    goto :goto_12

    :cond_2e
    iget-object v0, v0, Lcom/bumptech/glide/manager/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private k()V
    .registers 3

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    invoke-direct {p0}, Lcom/bumptech/glide/o;->j()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->j:Lcom/bumptech/glide/manager/l;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/l;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/o;

    invoke-direct {v1}, Lcom/bumptech/glide/o;->j()V

    goto :goto_10

    :cond_20
    return-void
.end method

.method private l()Lcom/bumptech/glide/request/g;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/request/g;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/n;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/o;->a(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/o;->g:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/n;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/n<",
            "TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/n;

    iget-object v1, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/f;

    iget-object v2, p0, Lcom/bumptech/glide/o;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic a(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Landroid/net/Uri;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/io/File;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/io/File;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/net/URL;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a([B)Ljava/lang/Object;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b([B)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/bumptech/glide/request/g;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method public final a(Lcom/bumptech/glide/request/target/Target;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/bumptech/glide/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/c;)V

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    :cond_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/bumptech/glide/o;->l:Landroid/os/Handler;

    new-instance v1, Lcom/bumptech/glide/o$2;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/o$2;-><init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/request/target/Target;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()Lcom/bumptech/glide/n;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/n<",
            "Lcom/bumptech/glide/load/d/e/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/d/e/c;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/o;->a(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/o;->h:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/net/Uri;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Landroid/net/Uri;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/File;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Ljava/io/File;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/net/URL;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Ljava/net/URL;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b([B)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->c()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b([B)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/o;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/request/g;

    return-object p0
.end method

.method final b(Ljava/lang/Class;)Lcom/bumptech/glide/p;
    .registers 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/p<",
            "*TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/h;

    iget-object v1, v0, Lcom/bumptech/glide/h;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/p;

    if-nez v1, :cond_37

    iget-object v0, v0, Lcom/bumptech/glide/h;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/p;

    goto :goto_18

    :cond_37
    if-nez v1, :cond_3b

    sget-object v1, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/p;

    :cond_3b
    return-object v1
.end method

.method final b(Lcom/bumptech/glide/request/target/Target;)Z
    .registers 5
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v2, v0, v1}, Lcom/bumptech/glide/manager/m;->a(Lcom/bumptech/glide/request/c;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/n;

    iget-object v0, v0, Lcom/bumptech/glide/manager/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/c;)V

    return v1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public c()Lcom/bumptech/glide/n;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/o;->a(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/n<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->d()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/o;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/g;)V

    return-object p0
.end method

.method public d()Lcom/bumptech/glide/n;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/n<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/o;->a(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/o;->i:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bumptech/glide/n;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/n<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/o;->a(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/request/g;->a()Lcom/bumptech/glide/request/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/n;

    iget-object v0, v0, Lcom/bumptech/glide/manager/n;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    goto :goto_11

    :cond_21
    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/n;

    iget-object v0, v0, Lcom/bumptech/glide/manager/n;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    iget-object v1, v0, Lcom/bumptech/glide/manager/m;->a:Ljava/util/Set;

    invoke-static {v1}, Lcom/bumptech/glide/util/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/c;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/manager/m;->a(Lcom/bumptech/glide/request/c;Z)Z

    goto :goto_34

    :cond_45
    iget-object v0, v0, Lcom/bumptech/glide/manager/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/manager/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    iget-object v0, p0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/manager/h;

    iget-object v1, p0, Lcom/bumptech/glide/o;->m:Lcom/bumptech/glide/manager/c;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    iget-object v0, p0, Lcom/bumptech/glide/o;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/o;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/f;

    iget-object v1, v0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    monitor-enter v1

    :try_start_62
    iget-object v2, v0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    iget-object v0, v0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_79
    move-exception v0

    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_79

    throw v0
.end method

.method public onStart()V
    .registers 2

    invoke-direct {p0}, Lcom/bumptech/glide/o;->j()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-direct {p0}, Lcom/bumptech/glide/o;->g()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->onStop()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/o;->j:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
