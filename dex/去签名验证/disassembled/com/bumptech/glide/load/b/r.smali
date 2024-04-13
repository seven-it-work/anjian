.class public final Lcom/bumptech/glide/load/b/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/r;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/r;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/g;Z)Lcom/bumptech/glide/load/b/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Z)",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/load/b/r;->a(Z)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/k;

    return-object p1
.end method

.method private a()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/r;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;)V"
        }
    .end annotation

    iget-boolean v0, p2, Lcom/bumptech/glide/load/b/k;->i:Z

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/b/r;->a(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bumptech/glide/load/b/r;->b:Ljava/util/Map;

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/b/r;->a:Ljava/util/Map;

    return-object p1
.end method

.method final a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/k;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;)V"
        }
    .end annotation

    iget-boolean v0, p2, Lcom/bumptech/glide/load/b/k;->i:Z

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/b/r;->a(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void
.end method
