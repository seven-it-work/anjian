.class public final Lcom/bumptech/glide/load/b/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "DecodePath"


# instance fields
.field final a:Lcom/bumptech/glide/load/d/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d/f/e<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/k<",
            "TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/d/f/e;Landroid/support/v4/util/Pools$Pool;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/k<",
            "TDataType;TResourceType;>;>;",
            "Lcom/bumptech/glide/load/d/f/e<",
            "TResourceType;TTranscode;>;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/h;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/load/b/h;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/d/f/e;

    iput-object p6, p0, Lcom/bumptech/glide/load/b/h;->e:Landroid/support/v4/util/Pools$Pool;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed DecodePath{"

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

    iput-object p1, p0, Lcom/bumptech/glide/load/b/h;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/a/e;IILcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/b/h$a;)Lcom/bumptech/glide/load/b/u;
    .registers 6
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a/e<",
            "TDataType;>;II",
            "Lcom/bumptech/glide/load/j;",
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/b/h;->a(Lcom/bumptech/glide/load/a/e;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/bumptech/glide/load/b/h$a;->a(Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/d/f/e;

    invoke-interface {p2, p1, p4}, Lcom/bumptech/glide/load/d/f/e;->a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/a/e;IILcom/bumptech/glide/load/j;Ljava/util/List;)Lcom/bumptech/glide/load/b/u;
    .registers 14
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a/e<",
            "TDataType;>;II",
            "Lcom/bumptech/glide/load/j;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/bumptech/glide/load/b/u<",
            "TResourceType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/b/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_4b

    iget-object v3, p0, Lcom/bumptech/glide/load/b/h;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/k;

    :try_start_12
    invoke-interface {p1}, Lcom/bumptech/glide/load/a/e;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p4}, Lcom/bumptech/glide/load/k;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/j;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/e;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Lcom/bumptech/glide/load/k;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;

    move-result-object v4
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_24} :catch_26
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_24} :catch_26

    move-object v1, v4

    goto :goto_46

    :catch_26
    move-exception v4

    const-string v5, "DecodePath"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_43

    const-string v5, "DecodePath"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to decode data for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_46
    if-nez v1, :cond_4b

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4b
    if-nez v1, :cond_5a

    new-instance p1, Lcom/bumptech/glide/load/b/p;

    iget-object p2, p0, Lcom/bumptech/glide/load/b/h;->f:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1

    :cond_5a
    return-object v1
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/load/a/e;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 12
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a/e<",
            "TDataType;>;II",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "TResourceType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/b/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->e:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, v0

    :try_start_14
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/b/h;->a(Lcom/bumptech/glide/load/a/e;IILcom/bumptech/glide/load/j;Ljava/util/List;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1e

    iget-object p2, p0, Lcom/bumptech/glide/load/b/h;->e:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-object p1

    :catchall_1e
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/b/h;->e:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecodePath{ dataClass="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/d/f/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
