.class public final Lcom/bumptech/glide/load/b/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/b/h<",
            "TData;TResourceType;TTranscode;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/h<",
            "TData;TResourceType;TTranscode;>;>;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/s;->a:Ljava/lang/Class;

    iput-object p5, p0, Lcom/bumptech/glide/load/b/s;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-static {p4}, Lcom/bumptech/glide/util/i;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    iput-object p4, p0, Lcom/bumptech/glide/load/b/s;->c:Ljava/util/List;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed LoadPath{"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/b/s;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/a/e;Lcom/bumptech/glide/load/j;IILcom/bumptech/glide/load/b/h$a;Ljava/util/List;)Lcom/bumptech/glide/load/b/u;
    .registers 12
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a/e<",
            "TData;>;",
            "Lcom/bumptech/glide/load/j;",
            "II",
            "Lcom/bumptech/glide/load/b/h$a<",
            "TResourceType;>;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/bumptech/glide/load/b/u<",
            "TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/b/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_2b

    iget-object v3, p0, Lcom/bumptech/glide/load/b/s;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/b/h;

    :try_start_12
    invoke-virtual {v3, p1, p3, p4, p2}, Lcom/bumptech/glide/load/b/h;->a(Lcom/bumptech/glide/load/a/e;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;

    move-result-object v4

    invoke-interface {p5, v4}, Lcom/bumptech/glide/load/b/h$a;->a(Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;

    move-result-object v4

    iget-object v3, v3, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/d/f/e;

    invoke-interface {v3, v4, p2}, Lcom/bumptech/glide/load/d/f/e;->a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;

    move-result-object v3
    :try_end_20
    .catch Lcom/bumptech/glide/load/b/p; {:try_start_12 .. :try_end_20} :catch_22

    move-object v1, v3

    goto :goto_26

    :catch_22
    move-exception v3

    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_26
    if-nez v1, :cond_2b

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2b
    if-nez v1, :cond_3a

    new-instance p1, Lcom/bumptech/glide/load/b/p;

    iget-object p2, p0, Lcom/bumptech/glide/load/b/s;->d:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1

    :cond_3a
    return-object v1
.end method

.method private a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/s;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/a/e;Lcom/bumptech/glide/load/j;IILcom/bumptech/glide/load/b/h$a;)Lcom/bumptech/glide/load/b/u;
    .registers 14
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a/e<",
            "TData;>;",
            "Lcom/bumptech/glide/load/j;",
            "II",
            "Lcom/bumptech/glide/load/b/h$a<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/load/b/u<",
            "TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/b/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/s;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    :try_start_15
    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/b/s;->a(Lcom/bumptech/glide/load/a/e;Lcom/bumptech/glide/load/j;IILcom/bumptech/glide/load/b/h$a;Ljava/util/List;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1f

    iget-object p2, p0, Lcom/bumptech/glide/load/b/s;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-object p1

    :catchall_1f
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/b/s;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoadPath{decodePaths="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/s;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
