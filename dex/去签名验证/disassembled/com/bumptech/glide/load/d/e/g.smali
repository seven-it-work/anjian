.class final Lcom/bumptech/glide/load/d/e/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d/e/g$d;,
        Lcom/bumptech/glide/load/d/e/g$a;,
        Lcom/bumptech/glide/load/d/e/g$c;,
        Lcom/bumptech/glide/load/d/e/g$b;
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/c/b;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/d/e/g$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/bumptech/glide/o;

.field d:Z

.field e:Z

.field f:Lcom/bumptech/glide/load/d/e/g$a;

.field g:Z

.field h:Lcom/bumptech/glide/load/d/e/g$a;

.field i:Landroid/graphics/Bitmap;

.field j:Lcom/bumptech/glide/load/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/bumptech/glide/load/d/e/g$a;

.field private final l:Landroid/os/Handler;

.field private final m:Lcom/bumptech/glide/load/b/a/e;

.field private n:Z

.field private o:Lcom/bumptech/glide/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/bumptech/glide/load/d/e/g$d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/c/b;IILcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/c/b;",
            "II",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iget-object v1, p1, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    iget-object v0, p1, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v2

    iget-object p1, p1, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/h;

    invoke-virtual {p1}, Lcom/bumptech/glide/h;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/o;->a()Lcom/bumptech/glide/n;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/request/g;->b(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/request/g;->d(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/bumptech/glide/request/g;->a(II)Lcom/bumptech/glide/request/g;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object v4

    move-object v0, p0

    move-object v3, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/d/e/g;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/o;Lcom/bumptech/glide/c/b;Lcom/bumptech/glide/n;Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/o;Lcom/bumptech/glide/c/b;Lcom/bumptech/glide/n;Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/o;",
            "Lcom/bumptech/glide/c/b;",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/d/e/g$c;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/d/e/g$c;-><init>(Lcom/bumptech/glide/load/d/e/g;)V

    invoke-direct {p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/g;->m:Lcom/bumptech/glide/load/b/a/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/e/g;->l:Landroid/os/Handler;

    iput-object p4, p0, Lcom/bumptech/glide/load/d/e/g;->o:Lcom/bumptech/glide/n;

    iput-object p3, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-virtual {p0, p5, p6}, Lcom/bumptech/glide/load/d/e/g;->a(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static a(Lcom/bumptech/glide/o;II)Lcom/bumptech/glide/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/o;",
            "II)",
            "Lcom/bumptech/glide/n<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->a()Lcom/bumptech/glide/n;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->d(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/g;->a(II)Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/d/e/g$b;)V
    .registers 4

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->g:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_36

    iget-boolean p1, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    if-nez p1, :cond_36

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/load/d/e/g;->g:Z

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->c()V

    :cond_36
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/d/e/g$d;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/d/e/g$d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/g;->p:Lcom/bumptech/glide/load/d/e/g$d;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/d/e/g$b;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    :cond_10
    return-void
.end method

.method private e()Lcom/bumptech/glide/load/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->j:Lcom/bumptech/glide/load/m;

    return-object v0
.end method

.method private f()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private g()I
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method private h()I
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method private i()I
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->m()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private j()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    iget v0, v0, Lcom/bumptech/glide/load/d/e/g$a;->a:I

    return v0

    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method private k()I
    .registers 4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method

.method private l()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private m()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->l()I

    move-result v0

    return v0
.end method

.method private n()V
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->g:Z

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->c()V

    return-void
.end method

.method private o()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    return-void
.end method

.method private p()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v2, p0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_19
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v2, p0, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_26
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v2, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_33
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->g:Z

    return-void
.end method

.method private q()V
    .registers 4

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t restart a running animation"

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/bumptech/glide/load/d/e/g;->e:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_19
    return-void
.end method

.method private static r()Lcom/bumptech/glide/load/g;
    .registers 3

    new-instance v0, Lcom/bumptech/glide/f/d;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final a()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->g()I

    move-result v0

    return v0
.end method

.method final a(Lcom/bumptech/glide/load/d/e/g$a;)V
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->n:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->g:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    if-nez v0, :cond_19

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    return-void

    :cond_19
    iget-object v0, p1, Lcom/bumptech/glide/load/d/e/g$a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->d()V

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    iget-object p1, p0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2c
    if-ltz p1, :cond_3c

    iget-object v2, p0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/d/e/g$b;

    invoke-interface {v2}, Lcom/bumptech/glide/load/d/e/g$b;->c()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    :cond_3c
    if-eqz v0, :cond_47

    iget-object p1, p0, Lcom/bumptech/glide/load/d/e/g;->l:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_47
    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/g;->c()V

    return-void
.end method

.method final a(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/m;

    iput-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->j:Lcom/bumptech/glide/load/m;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/e/g;->i:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/bumptech/glide/load/d/e/g;->o:Lcom/bumptech/glide/n;

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/g;->o:Lcom/bumptech/glide/n;

    return-void
.end method

.method final b()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/g$a;->b:Landroid/graphics/Bitmap;

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method final c()V
    .registers 8

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    if-eqz v0, :cond_74

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->n:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/g;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    const/4 v2, 0x0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->i()V

    iput-boolean v2, p0, Lcom/bumptech/glide/load/d/e/g;->e:Z

    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/d/e/g;->a(Lcom/bumptech/glide/load/d/e/g$a;)V

    return-void

    :cond_2f
    iput-boolean v1, p0, Lcom/bumptech/glide/load/d/e/g;->n:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->f()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long v5, v1, v3

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->e()V

    new-instance v0, Lcom/bumptech/glide/load/d/e/g$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v2}, Lcom/bumptech/glide/c/b;->h()I

    move-result v2

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/bumptech/glide/load/d/e/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->o:Lcom/bumptech/glide/n;

    new-instance v1, Lcom/bumptech/glide/f/d;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/request/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->b(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_74
    return-void
.end method

.method final d()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->m:Lcom/bumptech/glide/load/b/a/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/g;->i:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/d/e/g;->i:Landroid/graphics/Bitmap;

    :cond_e
    return-void
.end method
