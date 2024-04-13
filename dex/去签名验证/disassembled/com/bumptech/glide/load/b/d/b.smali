.class public final Lcom/bumptech/glide/load/b/d/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/bumptech/glide/load/b/b/j;

.field public final b:Lcom/bumptech/glide/load/b/a/e;

.field public final c:Lcom/bumptech/glide/load/b;

.field public final d:Landroid/os/Handler;

.field public e:Lcom/bumptech/glide/load/b/d/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/j;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/d/b;->b:Lcom/bumptech/glide/load/b/a/e;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/d/b;->c:Lcom/bumptech/glide/load/b;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/b/d/d;)I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/d/d;->b:I

    iget v1, p0, Lcom/bumptech/glide/load/b/d/d;->c:I

    iget-object p0, p0, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    return p0
.end method

.method private varargs a([Lcom/bumptech/glide/load/b/d/d;)Lcom/bumptech/glide/load/b/d/c;
    .registers 11
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/j;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/b/j;->a()J

    move-result-wide v2

    sub-long v4, v0, v2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->b:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/e;->a()J

    move-result-wide v0

    add-long v2, v4, v0

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1a
    if-ge v4, v0, :cond_24

    aget-object v6, p1, v4

    iget v6, v6, Lcom/bumptech/glide/load/b/d/d;->e:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_24
    long-to-float v0, v2

    int-to-float v2, v5

    div-float/2addr v0, v2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, p1

    :goto_2d
    if-ge v1, v3, :cond_4f

    aget-object v4, p1, v1

    iget v5, v4, Lcom/bumptech/glide/load/b/d/d;->e:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v4, Lcom/bumptech/glide/load/b/d/d;->b:I

    iget v7, v4, Lcom/bumptech/glide/load/b/d/d;->c:I

    iget-object v8, v4, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_4f
    new-instance p1, Lcom/bumptech/glide/load/b/d/c;

    invoke-direct {p1, v2}, Lcom/bumptech/glide/load/b/d/c;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method private varargs a([Lcom/bumptech/glide/load/b/d/d$a;)V
    .registers 11

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/load/b/d/a;->f:Z

    :cond_9
    array-length v0, p1

    new-array v0, v0, [Lcom/bumptech/glide/load/b/d/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    array-length v3, p1

    if-ge v2, v3, :cond_36

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/bumptech/glide/load/b/d/d$a;->c:Landroid/graphics/Bitmap$Config;

    if-nez v4, :cond_24

    iget-object v4, p0, Lcom/bumptech/glide/load/b/d/b;->c:Lcom/bumptech/glide/load/b;

    sget-object v5, Lcom/bumptech/glide/load/b;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/b;

    if-ne v4, v5, :cond_20

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_22

    :cond_20
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_22
    iput-object v4, v3, Lcom/bumptech/glide/load/b/d/d$a;->c:Landroid/graphics/Bitmap$Config;

    :cond_24
    new-instance v4, Lcom/bumptech/glide/load/b/d/d;

    iget v5, v3, Lcom/bumptech/glide/load/b/d/d$a;->a:I

    iget v6, v3, Lcom/bumptech/glide/load/b/d/d$a;->b:I

    iget-object v7, v3, Lcom/bumptech/glide/load/b/d/d$a;->c:Landroid/graphics/Bitmap$Config;

    iget v3, v3, Lcom/bumptech/glide/load/b/d/d$a;->d:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/bumptech/glide/load/b/d/d;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_36
    iget-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/b/j;->b()J

    move-result-wide v2

    iget-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/b/j;->a()J

    move-result-wide v4

    sub-long v6, v2, v4

    iget-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->b:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/a/e;->a()J

    move-result-wide v2

    add-long v4, v6, v2

    array-length p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4f
    if-ge v2, p1, :cond_59

    aget-object v6, v0, v2

    iget v6, v6, Lcom/bumptech/glide/load/b/d/d;->e:I

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_59
    long-to-float p1, v4

    int-to-float v2, v3

    div-float/2addr p1, v2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, v0

    :goto_62
    if-ge v1, v3, :cond_84

    aget-object v4, v0, v1

    iget v5, v4, Lcom/bumptech/glide/load/b/d/d;->e:I

    int-to-float v5, v5

    mul-float v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v4, Lcom/bumptech/glide/load/b/d/d;->b:I

    iget v7, v4, Lcom/bumptech/glide/load/b/d/d;->c:I

    iget-object v8, v4, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_84
    new-instance p1, Lcom/bumptech/glide/load/b/d/c;

    invoke-direct {p1, v2}, Lcom/bumptech/glide/load/b/d/c;-><init>(Ljava/util/Map;)V

    new-instance v0, Lcom/bumptech/glide/load/b/d/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/d/b;->b:Lcom/bumptech/glide/load/b/a/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/j;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/b/d/a;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/d/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    iget-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
