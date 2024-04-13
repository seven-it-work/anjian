.class public final Lcom/bumptech/glide/h;
.super Landroid/content/ContextWrapper;


# static fields
.field static final a:Lcom/bumptech/glide/p;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/p<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field final b:Landroid/os/Handler;

.field public final c:Lcom/bumptech/glide/load/b/a/b;

.field public final d:Lcom/bumptech/glide/m;

.field final e:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field final f:Lcom/bumptech/glide/request/g;

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/p<",
            "**>;>;"
        }
    .end annotation
.end field

.field final h:Lcom/bumptech/glide/load/b/j;

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/m;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/request/g;Ljava/util/Map;Lcom/bumptech/glide/load/b/j;I)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/request/target/ImageViewTargetFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/bumptech/glide/load/b/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/a/b;",
            "Lcom/bumptech/glide/m;",
            "Lcom/bumptech/glide/request/target/ImageViewTargetFactory;",
            "Lcom/bumptech/glide/request/g;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/p<",
            "**>;>;",
            "Lcom/bumptech/glide/load/b/j;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/load/b/a/b;

    iput-object p3, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iput-object p4, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    iput-object p5, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/request/g;

    iput-object p6, p0, Lcom/bumptech/glide/h;->g:Ljava/util/Map;

    iput-object p7, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/load/b/j;

    iput p8, p0, Lcom/bumptech/glide/h;->i:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bumptech/glide/h;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/bumptech/glide/p;
    .registers 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/p;

    if-nez v0, :cond_33

    iget-object v1, p0, Lcom/bumptech/glide/h;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/p;

    goto :goto_14

    :cond_33
    if-nez v0, :cond_37

    sget-object v0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/p;

    :cond_37
    return-object v0
.end method

.method private a()Lcom/bumptech/glide/request/g;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;
    .registers 4
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;->buildTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    return-object p1
.end method

.method private b()Landroid/os/Handler;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private c()Lcom/bumptech/glide/load/b/j;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/load/b/j;

    return-object v0
.end method

.method private d()Lcom/bumptech/glide/m;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    return-object v0
.end method

.method private e()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/h;->i:I

    return v0
.end method

.method private f()Lcom/bumptech/glide/load/b/a/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/load/b/a/b;

    return-object v0
.end method
