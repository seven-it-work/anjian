.class public final Lcom/bumptech/glide/load/b/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/k$b;,
        Lcom/bumptech/glide/load/b/a/k$c;,
        Lcom/bumptech/glide/load/b/a/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LruBitmapPool"

.field private static final b:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final c:Lcom/bumptech/glide/load/b/a/l;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J

.field private final f:Lcom/bumptech/glide/load/b/a/k$a;

.field private g:J

.field private h:J

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/b/a/k;->b:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 7

    invoke-static {}, Lcom/bumptech/glide/load/b/a/k;->f()Lcom/bumptech/glide/load/b/a/l;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1b

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_26

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_26
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/load/b/a/k;-><init>(JLcom/bumptech/glide/load/b/a/l;Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(JLcom/bumptech/glide/load/b/a/l;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/bumptech/glide/load/b/a/l;",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bumptech/glide/load/b/a/k;->e:J

    iput-wide p1, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    iput-object p3, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    iput-object p4, p0, Lcom/bumptech/glide/load/b/a/k;->d:Ljava/util/Set;

    new-instance p1, Lcom/bumptech/glide/load/b/a/k$b;

    invoke-direct {p1}, Lcom/bumptech/glide/load/b/a/k$b;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a/k;->f:Lcom/bumptech/glide/load/b/a/k$a;

    return-void
.end method

.method private constructor <init>(JLjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/load/b/a/k;->f()Lcom/bumptech/glide/load/b/a/l;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bumptech/glide/load/b/a/k;-><init>(JLcom/bumptech/glide/load/b/a/l;Ljava/util/Set;)V

    return-void
.end method

.method private declared-synchronized a(J)V
    .registers 10

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->h:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_69

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/l;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_28

    const-string p1, "LruBitmapPool"

    const/4 p2, 0x5

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, "LruBitmapPool"

    const-string p2, "Size mismatch, resetting"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->e()V

    :cond_22
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/bumptech/glide/load/b/a/k;->h:J
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_6b

    monitor-exit p0

    return-void

    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/k;->f:Lcom/bumptech/glide/load/b/a/k$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/b/a/k$a;->b(Landroid/graphics/Bitmap;)V

    iget-wide v1, p0, Lcom/bumptech/glide/load/b/a/k;->h:J

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/b/a/l;->c(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/bumptech/glide/load/b/a/k;->h:J

    iget v1, p0, Lcom/bumptech/glide/load/b/a/k;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/b/a/k;->l:I

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Evicting bitmap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/b/a/l;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->d()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_68
    .catchall {:try_start_28 .. :try_end_68} :catchall_6b

    goto :goto_1

    :cond_69
    monitor-exit p0

    return-void

    :catchall_6b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Landroid/graphics/Bitmap$Config;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create a mutable Bitmap with config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return-void
.end method

.method private static b(Landroid/graphics/Bitmap;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_d

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    :cond_d
    return-void
.end method

.method private static c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 3
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    sget-object p2, Lcom/bumptech/glide/load/b/a/k;->b:Landroid/graphics/Bitmap$Config;

    :goto_5
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .registers 3

    iget-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/a/k;->a(J)V

    return-void
.end method

.method private static c(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    :cond_a
    return-void
.end method

.method private declared-synchronized d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 12
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_24

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_24

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create a mutable Bitmap with config: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    if-eqz p3, :cond_2a

    move-object v1, p3

    goto :goto_2c

    :cond_2a
    sget-object v1, Lcom/bumptech/glide/load/b/a/k;->b:Landroid/graphics/Bitmap$Config;

    :goto_2c
    invoke-interface {v0, p1, p2, v1}, Lcom/bumptech/glide/load/b/a/l;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_5b

    const-string v2, "LruBitmapPool"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "LruBitmapPool"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing bitmap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v4, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/l;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->j:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bumptech/glide/load/b/a/k;->j:I

    goto :goto_7e

    :cond_5b
    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->i:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bumptech/glide/load/b/a/k;->i:I

    iget-wide v2, p0, Lcom/bumptech/glide/load/b/a/k;->h:J

    iget-object v4, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v4, v0}, Lcom/bumptech/glide/load/b/a/l;->c(Landroid/graphics/Bitmap;)I

    move-result v4

    int-to-long v4, v4

    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/bumptech/glide/load/b/a/k;->h:J

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->f:Lcom/bumptech/glide/load/b/a/k$a;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/b/a/k$a;->b(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_7e

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    :cond_7e
    :goto_7e
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a0

    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get bitmap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/l;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->d()V
    :try_end_a3
    .catchall {:try_start_1 .. :try_end_a3} :catchall_a5

    monitor-exit p0

    return-object v0

    :catchall_a5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d()V
    .registers 3

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->e()V

    :cond_c
    return-void
.end method

.method private e()V
    .registers 5

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hits="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", misses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", puts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", evictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bumptech/glide/load/b/a/k;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static f()Lcom/bumptech/glide/load/b/a/l;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    new-instance v0, Lcom/bumptech/glide/load/b/a/o;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/o;-><init>()V

    return-object v0

    :cond_c
    new-instance v0, Lcom/bumptech/glide/load/b/a/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/c;-><init>()V

    return-object v0
.end method

.method private static g()Ljava/util/Set;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_17

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_22

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    return-wide v0
.end method

.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/k;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object v0

    :cond_b
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/a/k;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(F)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->e:J

    long-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->c()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(I)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trimMemory, level="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/16 v0, 0x28

    if-lt p1, v0, :cond_24

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/a/k;->b()V

    return-void

    :cond_24
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2c

    const/16 v0, 0xf

    if-ne p1, v0, :cond_34

    :cond_2c
    iget-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/a/k;->a(J)V

    :cond_34
    return-void
.end method

.method public final declared-synchronized a(Landroid/graphics/Bitmap;)V
    .registers 10

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_b
    move-exception p1

    goto/16 :goto_c7

    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot pool recycled bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/l;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_83

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->d:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_83

    :cond_3d
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/l;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/b/a/l;->a(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->f:Lcom/bumptech/glide/load/b/a/k$a;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/b/a/k$a;->a(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/b/a/k;->k:I

    iget-wide v2, p0, Lcom/bumptech/glide/load/b/a/k;->h:J

    int-to-long v4, v0

    add-long v6, v2, v4

    iput-wide v6, p0, Lcom/bumptech/glide/load/b/a/k;->h:J

    const-string v0, "LruBitmapPool"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Put bitmap in pool="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/b/a/l;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->d()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->c()V
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_b

    monitor-exit p0

    return-void

    :cond_83
    :goto_83
    :try_start_83
    const-string v0, "LruBitmapPool"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c2

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->c:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/b/a/l;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->d:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_c5
    .catchall {:try_start_83 .. :try_end_c5} :catchall_b

    monitor-exit p0

    return-void

    :goto_c7
    monitor-exit p0

    throw p1
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/k;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/a/k;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public final b()V
    .registers 3

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "LruBitmapPool"

    const-string v1, "clearMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/a/k;->a(J)V

    return-void
.end method
