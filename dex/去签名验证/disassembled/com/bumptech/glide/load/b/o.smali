.class public final Lcom/bumptech/glide/load/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/u<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field final b:Lcom/bumptech/glide/load/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private d:Lcom/bumptech/glide/load/b/o$a;

.field private e:Lcom/bumptech/glide/load/g;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/u;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/u;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/o;->b:Lcom/bumptech/glide/load/b/u;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/b/o;->a:Z

    iput-boolean p3, p0, Lcom/bumptech/glide/load/b/o;->c:Z

    return-void
.end method

.method private g()Lcom/bumptech/glide/load/b/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/o;->b:Lcom/bumptech/glide/load/b/u;

    return-object v0
.end method

.method private h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/o;->a:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/o;->b:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o$a;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/load/b/o;->e:Lcom/bumptech/glide/load/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/o;->d:Lcom/bumptech/glide/load/b/o$a;

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/o;->b:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/o;->b:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->c()I

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/o;->f:I

    if-lez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/o;->g:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/o;->g:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/o;->c:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bumptech/glide/load/b/o;->b:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->d()V

    :cond_24
    return-void
.end method

.method public final e()V
    .registers 3

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/o;->g:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget v0, p0, Lcom/bumptech/glide/load/b/o;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/b/o;->f:I

    return-void
.end method

.method final f()V
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/o;->f:I

    if-gtz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget v0, p0, Lcom/bumptech/glide/load/b/o;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/b/o;->f:I

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/bumptech/glide/load/b/o;->d:Lcom/bumptech/glide/load/b/o$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/o;->e:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/b/o$a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V

    :cond_31
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngineResource{isCacheable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/o;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/o;->d:Lcom/bumptech/glide/load/b/o$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/o;->e:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/o;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/o;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/o;->b:Lcom/bumptech/glide/load/b/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
