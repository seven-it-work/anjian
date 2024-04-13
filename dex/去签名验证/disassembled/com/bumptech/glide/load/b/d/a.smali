.class public final Lcom/bumptech/glide/load/b/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/d/a$a;,
        Lcom/bumptech/glide/load/b/d/a$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "PreFillRunner"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final b:J = 0x20L

.field static final c:J = 0x28L

.field static final d:I = 0x4

.field static final e:J

.field private static final g:Lcom/bumptech/glide/load/b/d/a$a;


# instance fields
.field public f:Z

.field private final h:Lcom/bumptech/glide/load/b/a/e;

.field private final i:Lcom/bumptech/glide/load/b/b/j;

.field private final j:Lcom/bumptech/glide/load/b/d/c;

.field private final k:Lcom/bumptech/glide/load/b/d/a$a;

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/b/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/os/Handler;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/bumptech/glide/load/b/d/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/d/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/d/a;->g:Lcom/bumptech/glide/load/b/d/a$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/b/d/a;->e:J

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/d/c;)V
    .registers 10

    sget-object v4, Lcom/bumptech/glide/load/b/d/a;->g:Lcom/bumptech/glide/load/b/d/a$a;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/b/d/a;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/d/c;Lcom/bumptech/glide/load/b/d/a$a;Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/d/c;Lcom/bumptech/glide/load/b/d/a$a;Landroid/os/Handler;)V
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/d/a;->l:Ljava/util/Set;

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/bumptech/glide/load/b/d/a;->n:J

    iput-object p1, p0, Lcom/bumptech/glide/load/b/d/a;->h:Lcom/bumptech/glide/load/b/a/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/d/a;->i:Lcom/bumptech/glide/load/b/b/j;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/d/a;->j:Lcom/bumptech/glide/load/b/d/c;

    iput-object p4, p0, Lcom/bumptech/glide/load/b/d/a;->k:Lcom/bumptech/glide/load/b/d/a$a;

    iput-object p5, p0, Lcom/bumptech/glide/load/b/d/a;->m:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/d/a;->f:Z

    return-void
.end method

.method private static a(J)Z
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide/16 p0, 0x20

    cmp-long v0, v2, p0

    if-ltz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private b()Z
    .registers 13
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->j:Lcom/bumptech/glide/load/b/d/c;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/d/c;->a()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_fb

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v0

    const-wide/16 v5, 0x20

    cmp-long v2, v7, v5

    if-ltz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    if-nez v2, :cond_fb

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->j:Lcom/bumptech/glide/load/b/d/c;

    iget-object v5, v2, Lcom/bumptech/glide/load/b/d/c;->b:Ljava/util/List;

    iget v6, v2, Lcom/bumptech/glide/load/b/d/c;->d:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/b/d/d;

    iget-object v6, v2, Lcom/bumptech/glide/load/b/d/c;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_46

    iget-object v6, v2, Lcom/bumptech/glide/load/b/d/c;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v2, Lcom/bumptech/glide/load/b/d/c;->b:Ljava/util/List;

    iget v7, v2, Lcom/bumptech/glide/load/b/d/c;->d:I

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_54

    :cond_46
    iget-object v7, v2, Lcom/bumptech/glide/load/b/d/c;->a:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    iget v6, v2, Lcom/bumptech/glide/load/b/d/c;->c:I

    sub-int/2addr v6, v4

    iput v6, v2, Lcom/bumptech/glide/load/b/d/c;->c:I

    iget-object v6, v2, Lcom/bumptech/glide/load/b/d/c;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_62

    goto :goto_6c

    :cond_62
    iget v3, v2, Lcom/bumptech/glide/load/b/d/c;->d:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/bumptech/glide/load/b/d/c;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    :goto_6c
    iput v3, v2, Lcom/bumptech/glide/load/b/d/c;->d:I

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->l:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->l:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->h:Lcom/bumptech/glide/load/b/a/e;

    iget v3, v5, Lcom/bumptech/glide/load/b/d/d;->b:I

    iget v4, v5, Lcom/bumptech/glide/load/b/d/d;->c:I

    iget-object v6, v5, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-interface {v2, v3, v4, v6}, Lcom/bumptech/glide/load/b/a/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_92

    :cond_88
    iget v2, v5, Lcom/bumptech/glide/load/b/d/d;->b:I

    iget v3, v5, Lcom/bumptech/glide/load/b/d/d;->c:I

    iget-object v4, v5, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_92
    invoke-static {v2}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v3

    iget-object v4, p0, Lcom/bumptech/glide/load/b/d/a;->i:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v4}, Lcom/bumptech/glide/load/b/b/j;->b()J

    move-result-wide v6

    iget-object v4, p0, Lcom/bumptech/glide/load/b/d/a;->i:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v4}, Lcom/bumptech/glide/load/b/b/j;->a()J

    move-result-wide v8

    sub-long v10, v6, v8

    int-to-long v6, v3

    cmp-long v4, v10, v6

    if-ltz v4, :cond_ba

    new-instance v4, Lcom/bumptech/glide/load/b/d/a$b;

    invoke-direct {v4}, Lcom/bumptech/glide/load/b/d/a$b;-><init>()V

    iget-object v6, p0, Lcom/bumptech/glide/load/b/d/a;->i:Lcom/bumptech/glide/load/b/b/j;

    iget-object v7, p0, Lcom/bumptech/glide/load/b/d/a;->h:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {v2, v7}, Lcom/bumptech/glide/load/d/a/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;

    move-result-object v2

    invoke-interface {v6, v4, v2}, Lcom/bumptech/glide/load/b/b/j;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;

    goto :goto_bf

    :cond_ba
    iget-object v4, p0, Lcom/bumptech/glide/load/b/d/a;->h:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v4, v2}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    :goto_bf
    const-string v2, "PreFillRunner"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "PreFillRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "allocated ["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v5, Lcom/bumptech/glide/load/b/d/d;->b:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/bumptech/glide/load/b/d/d;->c:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_fb
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/d/a;->f:Z

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/a;->j:Lcom/bumptech/glide/load/b/d/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/d/c;->a()Z

    move-result v0

    if-nez v0, :cond_108

    return v4

    :cond_108
    return v3
.end method

.method private c()J
    .registers 7

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/a;->i:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/j;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->i:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/b/j;->a()J

    move-result-wide v2

    sub-long v4, v0, v2

    return-wide v4
.end method

.method private d()J
    .registers 7

    iget-wide v0, p0, Lcom/bumptech/glide/load/b/d/a;->n:J

    iget-wide v2, p0, Lcom/bumptech/glide/load/b/d/a;->n:J

    const-wide/16 v4, 0x4

    mul-long v2, v2, v4

    sget-wide v4, Lcom/bumptech/glide/load/b/d/a;->e:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bumptech/glide/load/b/d/a;->n:J

    return-wide v0
.end method


# virtual methods
.method public final run()V
    .registers 13

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->j:Lcom/bumptech/glide/load/b/d/c;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/d/c;->a()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_fb

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v0

    const-wide/16 v5, 0x20

    cmp-long v2, v7, v5

    if-ltz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    if-nez v2, :cond_fb

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->j:Lcom/bumptech/glide/load/b/d/c;

    iget-object v5, v2, Lcom/bumptech/glide/load/b/d/c;->b:Ljava/util/List;

    iget v6, v2, Lcom/bumptech/glide/load/b/d/c;->d:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/b/d/d;

    iget-object v6, v2, Lcom/bumptech/glide/load/b/d/c;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_46

    iget-object v6, v2, Lcom/bumptech/glide/load/b/d/c;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v2, Lcom/bumptech/glide/load/b/d/c;->b:Ljava/util/List;

    iget v7, v2, Lcom/bumptech/glide/load/b/d/c;->d:I

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_54

    :cond_46
    iget-object v7, v2, Lcom/bumptech/glide/load/b/d/c;->a:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    iget v6, v2, Lcom/bumptech/glide/load/b/d/c;->c:I

    sub-int/2addr v6, v4

    iput v6, v2, Lcom/bumptech/glide/load/b/d/c;->c:I

    iget-object v6, v2, Lcom/bumptech/glide/load/b/d/c;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_62

    goto :goto_6c

    :cond_62
    iget v3, v2, Lcom/bumptech/glide/load/b/d/c;->d:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/bumptech/glide/load/b/d/c;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    :goto_6c
    iput v3, v2, Lcom/bumptech/glide/load/b/d/c;->d:I

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->l:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->l:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->h:Lcom/bumptech/glide/load/b/a/e;

    iget v3, v5, Lcom/bumptech/glide/load/b/d/d;->b:I

    iget v4, v5, Lcom/bumptech/glide/load/b/d/d;->c:I

    iget-object v6, v5, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-interface {v2, v3, v4, v6}, Lcom/bumptech/glide/load/b/a/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_92

    :cond_88
    iget v2, v5, Lcom/bumptech/glide/load/b/d/d;->b:I

    iget v3, v5, Lcom/bumptech/glide/load/b/d/d;->c:I

    iget-object v4, v5, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_92
    invoke-static {v2}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v3

    iget-object v4, p0, Lcom/bumptech/glide/load/b/d/a;->i:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v4}, Lcom/bumptech/glide/load/b/b/j;->b()J

    move-result-wide v6

    iget-object v4, p0, Lcom/bumptech/glide/load/b/d/a;->i:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v4}, Lcom/bumptech/glide/load/b/b/j;->a()J

    move-result-wide v8

    sub-long v10, v6, v8

    int-to-long v6, v3

    cmp-long v4, v10, v6

    if-ltz v4, :cond_ba

    new-instance v4, Lcom/bumptech/glide/load/b/d/a$b;

    invoke-direct {v4}, Lcom/bumptech/glide/load/b/d/a$b;-><init>()V

    iget-object v6, p0, Lcom/bumptech/glide/load/b/d/a;->i:Lcom/bumptech/glide/load/b/b/j;

    iget-object v7, p0, Lcom/bumptech/glide/load/b/d/a;->h:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {v2, v7}, Lcom/bumptech/glide/load/d/a/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;

    move-result-object v2

    invoke-interface {v6, v4, v2}, Lcom/bumptech/glide/load/b/b/j;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;

    goto :goto_bf

    :cond_ba
    iget-object v4, p0, Lcom/bumptech/glide/load/b/d/a;->h:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v4, v2}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    :goto_bf
    const-string v2, "PreFillRunner"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "PreFillRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "allocated ["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v5, Lcom/bumptech/glide/load/b/d/d;->b:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/bumptech/glide/load/b/d/d;->c:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_fb
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/d/a;->f:Z

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/a;->j:Lcom/bumptech/glide/load/b/d/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/d/c;->a()Z

    move-result v0

    if-nez v0, :cond_108

    const/4 v3, 0x1

    :cond_108
    if-eqz v3, :cond_11f

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/a;->m:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/bumptech/glide/load/b/d/a;->n:J

    iget-wide v3, p0, Lcom/bumptech/glide/load/b/d/a;->n:J

    const-wide/16 v5, 0x4

    mul-long v3, v3, v5

    sget-wide v5, Lcom/bumptech/glide/load/b/d/a;->e:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bumptech/glide/load/b/d/a;->n:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11f
    return-void
.end method
