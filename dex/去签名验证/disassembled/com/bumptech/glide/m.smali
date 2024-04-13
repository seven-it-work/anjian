.class public final Lcom/bumptech/glide/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/m$b;,
        Lcom/bumptech/glide/m$a;,
        Lcom/bumptech/glide/m$e;,
        Lcom/bumptech/glide/m$d;,
        Lcom/bumptech/glide/m$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "Gif"

.field public static final b:Ljava/lang/String; = "Bitmap"

.field public static final c:Ljava/lang/String; = "BitmapDrawable"

.field private static final g:Ljava/lang/String; = "legacy_prepend_all"

.field private static final h:Ljava/lang/String; = "legacy_append"


# instance fields
.field public final d:Lcom/bumptech/glide/e/a;

.field public final e:Lcom/bumptech/glide/e/f;

.field public final f:Lcom/bumptech/glide/load/a/f;

.field private final i:Lcom/bumptech/glide/load/c/p;

.field private final j:Lcom/bumptech/glide/e/e;

.field private final k:Lcom/bumptech/glide/load/d/f/f;

.field private final l:Lcom/bumptech/glide/e/b;

.field private final m:Lcom/bumptech/glide/e/d;

.field private final n:Lcom/bumptech/glide/e/c;

.field private final o:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/e/d;

    invoke-direct {v0}, Lcom/bumptech/glide/e/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->m:Lcom/bumptech/glide/e/d;

    new-instance v0, Lcom/bumptech/glide/e/c;

    invoke-direct {v0}, Lcom/bumptech/glide/e/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->n:Lcom/bumptech/glide/e/c;

    invoke-static {}, Lcom/bumptech/glide/util/a/a;->a()Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/m;->o:Landroid/support/v4/util/Pools$Pool;

    new-instance v0, Lcom/bumptech/glide/load/c/p;

    iget-object v1, p0, Lcom/bumptech/glide/m;->o:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/p;-><init>(Landroid/support/v4/util/Pools$Pool;)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/load/c/p;

    new-instance v0, Lcom/bumptech/glide/e/a;

    invoke-direct {v0}, Lcom/bumptech/glide/e/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/e/a;

    new-instance v0, Lcom/bumptech/glide/e/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    new-instance v0, Lcom/bumptech/glide/e/f;

    invoke-direct {v0}, Lcom/bumptech/glide/e/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/e/f;

    new-instance v0, Lcom/bumptech/glide/load/a/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/a/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->f:Lcom/bumptech/glide/load/a/f;

    new-instance v0, Lcom/bumptech/glide/load/d/f/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/f/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->k:Lcom/bumptech/glide/load/d/f/f;

    new-instance v0, Lcom/bumptech/glide/e/b;

    invoke-direct {v0}, Lcom/bumptech/glide/e/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->l:Lcom/bumptech/glide/e/b;

    const-string v0, "Gif"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "legacy_prepend_all"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v0, "legacy_append"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/e;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/bumptech/glide/m;
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "legacy_prepend_all"

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, "legacy_append"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/e/e;->a(Ljava/util/List;)V

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/u;)Z
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/e/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/d<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/m$e;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/e/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Lcom/bumptech/glide/m$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/m$e;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method private b(Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/l;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/b/u;
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
            "Lcom/bumptech/glide/load/b/u<",
            "TX;>;)",
            "Lcom/bumptech/glide/load/l<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/m$d;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/e/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Lcom/bumptech/glide/m$d;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/m$d;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method private b(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/m;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/d<",
            "TData;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/m;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/l<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/c/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/c/o<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/p;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V

    return-object p0
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;
    .registers 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    const-string v0, "legacy_prepend_all"

    iget-object v1, p0, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {v1, v0, p3, p1, p2}, Lcom/bumptech/glide/e/e;->b(Ljava/lang/String;Lcom/bumptech/glide/load/k;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/bumptech/glide/e/e;->b(Ljava/lang/String;Lcom/bumptech/glide/load/k;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method private c(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/e;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/a/e<",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->f:Lcom/bumptech/glide/load/a/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/a/f;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/e;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/m;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/d<",
            "TData;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/a;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)V

    return-object p0
.end method

.method private c(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/m;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/l<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/e/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/f;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)V

    return-object p0
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/c/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/c/o<",
            "+TModel;+TData;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/p;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V

    return-object p0
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 15
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/h<",
            "TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {v1, p1, p2}, Lcom/bumptech/glide/e/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/m;->k:Lcom/bumptech/glide/load/d/f/f;

    invoke-virtual {v2, v1, p3}, Lcom/bumptech/glide/load/d/f/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_25
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {v2, p1, v1}, Lcom/bumptech/glide/e/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    iget-object v2, p0, Lcom/bumptech/glide/m;->k:Lcom/bumptech/glide/load/d/f/f;

    invoke-virtual {v2, v1, v5}, Lcom/bumptech/glide/load/d/f/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/d/f/e;

    move-result-object v7

    new-instance v10, Lcom/bumptech/glide/load/b/h;

    iget-object v8, p0, Lcom/bumptech/glide/m;->o:Landroid/support/v4/util/Pools$Pool;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/bumptech/glide/load/b/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/d/f/e;Landroid/support/v4/util/Pools$Pool;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_4c
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/s;
    .registers 22
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/bumptech/glide/load/b/s<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v2, v1, Lcom/bumptech/glide/m;->n:Lcom/bumptech/glide/e/c;

    invoke-virtual {v2, v9, v10, v11}, Lcom/bumptech/glide/e/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/s;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/e/c;->a(Lcom/bumptech/glide/load/b/s;)Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_16

    return-object v12

    :cond_16
    if-nez v2, :cond_9e

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {v2, v9, v10}, Lcom/bumptech/glide/e/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_27
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/Class;

    iget-object v2, v1, Lcom/bumptech/glide/m;->k:Lcom/bumptech/glide/load/d/f/f;

    invoke-virtual {v2, v15, v11}, Lcom/bumptech/glide/load/d/f/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    iget-object v2, v1, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {v2, v9, v15}, Lcom/bumptech/glide/e/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    iget-object v2, v1, Lcom/bumptech/glide/m;->k:Lcom/bumptech/glide/load/d/f/f;

    invoke-virtual {v2, v15, v5}, Lcom/bumptech/glide/load/d/f/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/d/f/e;

    move-result-object v7

    new-instance v4, Lcom/bumptech/glide/load/b/h;

    iget-object v3, v1, Lcom/bumptech/glide/m;->o:Landroid/support/v4/util/Pools$Pool;

    move-object v2, v4

    move-object/from16 v16, v3

    move-object v3, v9

    move-object v12, v4

    move-object v4, v15

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/bumptech/glide/load/b/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/d/f/e;Landroid/support/v4/util/Pools$Pool;)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v17

    const/4 v12, 0x0

    goto :goto_3e

    :cond_6f
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_77

    const/4 v2, 0x0

    goto :goto_83

    :cond_77
    new-instance v8, Lcom/bumptech/glide/load/b/s;

    iget-object v7, v1, Lcom/bumptech/glide/m;->o:Landroid/support/v4/util/Pools$Pool;

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v13

    invoke-direct/range {v2 .. v7}, Lcom/bumptech/glide/load/b/s;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V

    :goto_83
    iget-object v3, v1, Lcom/bumptech/glide/m;->n:Lcom/bumptech/glide/e/c;

    iget-object v4, v3, Lcom/bumptech/glide/e/c;->b:Landroid/support/v4/util/ArrayMap;

    monitor-enter v4

    :try_start_88
    iget-object v3, v3, Lcom/bumptech/glide/e/c;->b:Landroid/support/v4/util/ArrayMap;

    new-instance v5, Lcom/bumptech/glide/util/h;

    invoke-direct {v5, v9, v10, v11}, Lcom/bumptech/glide/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    if-eqz v2, :cond_93

    move-object v6, v2

    goto :goto_95

    :cond_93
    sget-object v6, Lcom/bumptech/glide/e/c;->a:Lcom/bumptech/glide/load/b/s;

    :goto_95
    invoke-virtual {v3, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    return-object v2

    :catchall_9a
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_88 .. :try_end_9d} :catchall_9a

    throw v2

    :cond_9e
    return-object v2
.end method

.method public final a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/m;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/ImageHeaderParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->l:Lcom/bumptech/glide/e/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/b;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    return-object p0
.end method

.method public final a(Lcom/bumptech/glide/load/a/e$a;)Lcom/bumptech/glide/m;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/a/e$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a/e$a<",
            "*>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->f:Lcom/bumptech/glide/load/a/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/a/f;->a(Lcom/bumptech/glide/load/a/e$a;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/m;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/d<",
            "TData;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/m;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/l<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/e/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/c/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/c/o<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/e;)Lcom/bumptech/glide/m;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/d/f/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lcom/bumptech/glide/load/d/f/e<",
            "TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->k:Lcom/bumptech/glide/load/d/f/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/d/f/f;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/e;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/bumptech/glide/e/e;->a(Ljava/lang/String;Lcom/bumptech/glide/load/k;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->l:Lcom/bumptech/glide/e/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lcom/bumptech/glide/m$b;

    invoke-direct {v0}, Lcom/bumptech/glide/m$b;-><init>()V

    throw v0

    :cond_12
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/util/List;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "TModel;*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/c/p;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_17
    if-ge v2, v1, :cond_35

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/c/n;

    invoke-interface {v6, p1}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    if-eqz v5, :cond_2f

    new-instance v4, Ljava/util/ArrayList;

    sub-int v5, v1, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :cond_2f
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_35
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Lcom/bumptech/glide/m$c;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/m$c;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_41
    return-object v4
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 9
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->m:Lcom/bumptech/glide/e/d;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_67

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/c/p;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v3, p0, Lcom/bumptech/glide/m;->j:Lcom/bumptech/glide/e/e;

    invoke-virtual {v3, v2, p2}, Lcom/bumptech/glide/e/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/m;->k:Lcom/bumptech/glide/load/d/f/f;

    invoke-virtual {v4, v3, p3}, Lcom/bumptech/glide/load/d/f/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_4f
    iget-object p3, p0, Lcom/bumptech/glide/m;->m:Lcom/bumptech/glide/e/d;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p3, Lcom/bumptech/glide/e/d;->a:Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    :try_start_58
    iget-object p3, p3, Lcom/bumptech/glide/e/d;->a:Landroid/support/v4/util/ArrayMap;

    new-instance v3, Lcom/bumptech/glide/util/h;

    invoke-direct {v3, p1, p2}, Lcom/bumptech/glide/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p3, v3, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v0

    :catchall_64
    move-exception p1

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_64

    throw p1

    :cond_67
    return-object v0
.end method
