.class public Lcom/bumptech/glide/load/d/e/c;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/bumptech/glide/load/d/e/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d/e/c$a;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field private static final e:I = 0x77


# instance fields
.field final c:Lcom/bumptech/glide/load/d/e/c$a;

.field d:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/c/b;Lcom/bumptech/glide/load/m;IILandroid/graphics/Bitmap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/c/b;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/d/e/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/c/b;Lcom/bumptech/glide/load/m;IILandroid/graphics/Bitmap;B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/c/b;Lcom/bumptech/glide/load/m;IILandroid/graphics/Bitmap;B)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/c/b;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            "B)V"
        }
    .end annotation

    new-instance p7, Lcom/bumptech/glide/load/d/e/c$a;

    new-instance v7, Lcom/bumptech/glide/load/d/e/g;

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v1

    move-object v0, v7

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/d/e/g;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/c/b;IILcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    invoke-direct {p7, v7}, Lcom/bumptech/glide/load/d/e/c$a;-><init>(Lcom/bumptech/glide/load/d/e/g;)V

    invoke-direct {p0, p7}, Lcom/bumptech/glide/load/d/e/c;-><init>(Lcom/bumptech/glide/load/d/e/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/d/e/c$a;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/d/e/c;->j:I

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/d/e/c$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/d/e/g;Landroid/graphics/Paint;)V
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/e/c$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/d/e/c$a;-><init>(Lcom/bumptech/glide/load/d/e/g;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/d/e/c;-><init>(Lcom/bumptech/glide/load/d/e/c$a;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/d/e/c;->l:Landroid/graphics/Paint;

    return-void
.end method

.method private a(I)V
    .registers 3

    const/4 v0, -0x1

    if-gtz p1, :cond_f

    if-eq p1, v0, :cond_f

    if-eqz p1, :cond_f

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object p1, p1, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {p1}, Lcom/bumptech/glide/c/b;->l()I

    move-result p1

    if-nez p1, :cond_1e

    const/4 p1, -0x1

    :cond_1e
    iput p1, p0, Lcom/bumptech/glide/load/d/e/c;->j:I

    return-void

    :cond_21
    iput p1, p0, Lcom/bumptech/glide/load/d/e/c;->j:I

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
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

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/d/e/g;->a(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bumptech/glide/load/d/e/c;->f:Z

    return-void
.end method

.method private d()I
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v1, v0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v1}, Lcom/bumptech/glide/c/b;->m()I

    move-result v1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
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

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/g;->j:Lcom/bumptech/glide/load/m;

    return-object v0
.end method

.method private f()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->a()I

    move-result v0

    return v0
.end method

.method private g()I
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v1, v0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    iget v0, v0, Lcom/bumptech/glide/load/d/e/g$a;->a:I

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method private h()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/d/e/c;->i:I

    return-void
.end method

.method private i()V
    .registers 5

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot restart a currently running animation."

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-boolean v2, v0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    xor-int/2addr v2, v1

    const-string v3, "Can\'t restart a running animation"

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput-boolean v1, v0, Lcom/bumptech/glide/load/d/e/g;->e:Z

    iget-object v1, v0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_25
    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->start()V

    return-void
.end method

.method private j()V
    .registers 5

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->a()I

    move-result v0

    if-eq v0, v1, :cond_52

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->f:Z

    if-nez v0, :cond_55

    iput-boolean v1, p0, Lcom/bumptech/glide/load/d/e/c;->f:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-boolean v2, v0, Lcom/bumptech/glide/load/d/e/g;->g:Z

    if-eqz v2, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe twice in a row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v3, v0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_52

    iget-boolean v2, v0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    if-nez v2, :cond_52

    iput-boolean v1, v0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/load/d/e/g;->g:Z

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->c()V

    :cond_52
    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->invalidateSelf()V

    :cond_55
    return-void
.end method

.method private k()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->f:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    iput-boolean v0, v1, Lcom/bumptech/glide/load/d/e/g;->d:Z

    :cond_16
    return-void
.end method

.method private l()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->m:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->m:Landroid/graphics/Rect;

    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->m:Landroid/graphics/Rect;

    return-object v0
.end method

.method private m()Landroid/graphics/Paint;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->l:Landroid/graphics/Paint;

    :cond_c
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->l:Landroid/graphics/Paint;

    return-object v0
.end method

.method private n()Landroid/graphics/drawable/Drawable$Callback;
    .registers 3

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    :goto_4
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method private o()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->d:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/d/e/g;->d()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/load/d/e/g;->d:Z

    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v4, v1, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v3, v1, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_20
    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v4, v1, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v3, v1, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_2d
    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v2, :cond_3a

    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v4, v1, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v3, v1, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_3a
    iget-object v2, v1, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v2}, Lcom/bumptech/glide/c/b;->o()V

    iput-boolean v0, v1, Lcom/bumptech/glide/load/d/e/g;->g:Z

    return-void
.end method

.method private p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/g;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    :goto_4
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_4

    :cond_f
    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->stop()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->invalidateSelf()V

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->invalidateSelf()V

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v1, v0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    const/4 v2, -0x1

    if-eqz v1, :cond_29

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    iget v0, v0, Lcom/bumptech/glide/load/d/e/g$a;->a:I

    goto :goto_2a

    :cond_29
    const/4 v0, -0x1

    :goto_2a
    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/d/e/g;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3c

    iget v0, p0, Lcom/bumptech/glide/load/d/e/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/d/e/c;->i:I

    :cond_3c
    iget v0, p0, Lcom/bumptech/glide/load/d/e/c;->j:I

    if-eq v0, v2, :cond_49

    iget v0, p0, Lcom/bumptech/glide/load/d/e/c;->i:I

    iget v1, p0, Lcom/bumptech/glide/load/d/e/c;->j:I

    if-lt v0, v1, :cond_49

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->stop()V

    :cond_49
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->k:Z

    if-eqz v0, :cond_21

    const/16 v0, 0x77

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/e/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/e/c;->l()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->k:Z

    :cond_21
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/e/c;->l()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/e/c;->m()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->f:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/load/d/e/c;->k:Z

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/e/c;->m()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/e/c;->m()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/bumptech/glide/load/d/e/c;->h:Z

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/e/c;->k()V

    goto :goto_18

    :cond_11
    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->g:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/e/c;->j()V

    :cond_18
    :goto_18
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/d/e/c;->i:I

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->h:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/e/c;->j()V

    :cond_d
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/e/c;->g:Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/e/c;->k()V

    return-void
.end method
