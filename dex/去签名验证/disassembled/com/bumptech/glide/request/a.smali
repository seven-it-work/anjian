.class public final Lcom/bumptech/glide/request/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/c;
.implements Lcom/bumptech/glide/request/d;


# instance fields
.field public a:Lcom/bumptech/glide/request/c;

.field public b:Lcom/bumptech/glide/request/c;

.field private final c:Lcom/bumptech/glide/request/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/d;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method private a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    iput-object p2, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    return-void
.end method

.method private g(Lcom/bumptech/glide/request/c;)Z
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method private j()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private k()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->d(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private l()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->c(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private m()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {v0}, Lcom/bumptech/glide/request/d;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->a()V

    :cond_d
    return-void
.end method

.method public final a(Lcom/bumptech/glide/request/c;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/request/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/bumptech/glide/request/a;

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    iget-object p1, p1, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    return v1
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    :cond_12
    return-void
.end method

.method public final b(Lcom/bumptech/glide/request/c;)Z
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a;->g(Lcom/bumptech/glide/request/c;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v1

    :cond_1b
    return v2
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    :goto_a
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    goto :goto_a
.end method

.method public final c(Lcom/bumptech/glide/request/c;)Z
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->c(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a;->g(Lcom/bumptech/glide/request/c;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v1

    :cond_1b
    return v2
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    :goto_a
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    goto :goto_a
.end method

.method public final d(Lcom/bumptech/glide/request/c;)Z
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->d(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a;->g(Lcom/bumptech/glide/request/c;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v1

    :cond_1b
    return v2
.end method

.method public final e(Lcom/bumptech/glide/request/c;)V
    .registers 2

    iget-object p1, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->e(Lcom/bumptech/glide/request/c;)V

    :cond_9
    return-void
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    :goto_a
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->e()Z

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    goto :goto_a
.end method

.method public final f(Lcom/bumptech/glide/request/c;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->c()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->a()V

    :cond_15
    return-void

    :cond_16
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->f(Lcom/bumptech/glide/request/c;)V

    :cond_1f
    return-void
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    :goto_a
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->f()Z

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    goto :goto_a
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->h()V

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->h()V

    return-void
.end method

.method public final i()Z
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/d;

    invoke-interface {v0}, Lcom/bumptech/glide/request/d;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    :cond_1a
    return v1

    :cond_1b
    return v2
.end method
