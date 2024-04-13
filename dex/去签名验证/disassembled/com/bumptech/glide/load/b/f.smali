.class public final Lcom/bumptech/glide/load/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/bumptech/glide/h;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public h:Lcom/bumptech/glide/load/b/g$d;

.field public i:Lcom/bumptech/glide/load/j;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field l:Z

.field m:Z

.field public n:Lcom/bumptech/glide/load/g;

.field public o:Lcom/bumptech/glide/l;

.field public p:Lcom/bumptech/glide/load/b/i;

.field public q:Z

.field public r:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->b:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;
    .registers 4
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

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object v0, v0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/e/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    new-instance v0, Lcom/bumptech/glide/m$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/m$e;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method private a(Lcom/bumptech/glide/h;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/b/i;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/j;Ljava/util/Map;ZZLcom/bumptech/glide/load/b/g$d;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Lcom/bumptech/glide/load/b/i;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/j;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/b/g$d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/f;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/load/g;

    iput p4, p0, Lcom/bumptech/glide/load/b/f;->e:I

    iput p5, p0, Lcom/bumptech/glide/load/b/f;->f:I

    iput-object p6, p0, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/i;

    iput-object p7, p0, Lcom/bumptech/glide/load/b/f;->g:Ljava/lang/Class;

    iput-object p14, p0, Lcom/bumptech/glide/load/b/f;->h:Lcom/bumptech/glide/load/b/g$d;

    iput-object p8, p0, Lcom/bumptech/glide/load/b/f;->k:Ljava/lang/Class;

    iput-object p9, p0, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/l;

    iput-object p10, p0, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    iput-object p11, p0, Lcom/bumptech/glide/load/b/f;->j:Ljava/util/Map;

    iput-boolean p12, p0, Lcom/bumptech/glide/load/b/f;->q:Z

    iput-boolean p13, p0, Lcom/bumptech/glide/load/b/f;->r:Z

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/u;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object v0, v0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/e/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/bumptech/glide/load/g;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_1f

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/c/n$a;

    iget-object v4, v4, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v4, p1}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1f
    return v2
.end method

.method private b(Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/l<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object v0, v0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/e/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    new-instance v0, Lcom/bumptech/glide/m$d;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/m$d;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method private d()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->g:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->k:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/l;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->j:Ljava/util/Map;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/i;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->l:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->m:Z

    return-void
.end method

.method private e()Lcom/bumptech/glide/load/b/i;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/i;

    return-object v0
.end method

.method private f()Lcom/bumptech/glide/l;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/l;

    return-object v0
.end method

.method private g()Lcom/bumptech/glide/load/j;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    return-object v0
.end method

.method private h()Lcom/bumptech/glide/load/g;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method private i()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/f;->e:I

    return v0
.end method

.method private j()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/f;->f:I

    return v0
.end method

.method private k()Lcom/bumptech/glide/load/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/load/b/a/b;

    return-object v0
.end method

.method private l()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->k:Ljava/lang/Class;

    return-object v0
.end method

.method private m()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private n()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->g:Ljava/lang/Class;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/f;->k:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/m;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->r:Z

    return v0
.end method


# virtual methods
.method final a()Lcom/bumptech/glide/load/b/b/a;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->h:Lcom/bumptech/glide/load/b/g$d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/g$d;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/io/File;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/m$c;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/f;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/s;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method final b(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/s;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/b/s<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->g:Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->k:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/s;

    move-result-object p1

    return-object p1
.end method

.method final b()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n$a<",
            "*>;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->l:Z

    if-nez v0, :cond_39

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->l:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1b
    if-ge v1, v2, :cond_39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/c/n;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/f;->d:Ljava/lang/Object;

    iget v5, p0, Lcom/bumptech/glide/load/b/f;->e:I

    iget v6, p0, Lcom/bumptech/glide/load/b/f;->f:I

    iget-object v7, p0, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object v3

    if-eqz v3, :cond_36

    iget-object v4, p0, Lcom/bumptech/glide/load/b/f;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_39
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->a:Ljava/util/List;

    return-object v0
.end method

.method final c(Ljava/lang/Class;)Lcom/bumptech/glide/load/m;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/m<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/m;

    if-nez v0, :cond_32

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

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

    check-cast v0, Lcom/bumptech/glide/load/m;

    :cond_32
    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->q:Z

    if-eqz v0, :cond_59

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing transformation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    invoke-static {}, Lcom/bumptech/glide/load/d/b;->a()Lcom/bumptech/glide/load/d/b;

    move-result-object p1

    return-object p1

    :cond_5e
    return-object v0
.end method

.method final c()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->m:Z

    if-nez v0, :cond_57

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->m:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_57

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/c/n$a;

    iget-object v5, p0, Lcom/bumptech/glide/load/b/f;->b:Ljava/util/List;

    iget-object v6, v4, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    iget-object v5, p0, Lcom/bumptech/glide/load/b/f;->b:Ljava/util/List;

    iget-object v6, v4, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    const/4 v5, 0x0

    :goto_30
    iget-object v6, v4, Lcom/bumptech/glide/load/c/n$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_54

    iget-object v6, p0, Lcom/bumptech/glide/load/b/f;->b:Ljava/util/List;

    iget-object v7, v4, Lcom/bumptech/glide/load/c/n$a;->b:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    iget-object v6, p0, Lcom/bumptech/glide/load/b/f;->b:Ljava/util/List;

    iget-object v7, v4, Lcom/bumptech/glide/load/c/n$a;->b:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_57
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->b:Ljava/util/List;

    return-object v0
.end method
