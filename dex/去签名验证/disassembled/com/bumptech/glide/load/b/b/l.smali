.class public final Lcom/bumptech/glide/load/b/b/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/l$b;,
        Lcom/bumptech/glide/load/b/b/l$a;,
        Lcom/bumptech/glide/load/b/b/l$c;
    }
.end annotation


# static fields
.field static final a:I = 0x4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final e:Ljava/lang/String; = "MemorySizeCalculator"

.field private static final f:I = 0x2


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field private final g:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/b/l$a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bumptech/glide/load/b/b/l$a;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/l;->g:Landroid/content/Context;

    iget-object v0, p1, Lcom/bumptech/glide/load/b/b/l$a;->g:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/b/b/l;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p1, Lcom/bumptech/glide/load/b/b/l$a;->m:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_16

    :cond_14
    iget v0, p1, Lcom/bumptech/glide/load/b/b/l$a;->m:I

    :goto_16
    iput v0, p0, Lcom/bumptech/glide/load/b/b/l;->d:I

    iget-object v0, p1, Lcom/bumptech/glide/load/b/b/l$a;->g:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/bumptech/glide/load/b/b/l$a;->k:F

    iget v2, p1, Lcom/bumptech/glide/load/b/b/l$a;->l:F

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    invoke-static {v0}, Lcom/bumptech/glide/load/b/b/l;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    int-to-float v3, v3

    if-eqz v0, :cond_2e

    move v1, v2

    :cond_2e
    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p1, Lcom/bumptech/glide/load/b/b/l$a;->h:Lcom/bumptech/glide/load/b/b/l$c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/b/b/l$c;->a()I

    move-result v1

    iget-object v2, p1, Lcom/bumptech/glide/load/b/b/l$a;->h:Lcom/bumptech/glide/load/b/b/l$c;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/b/l$c;->b()I

    move-result v2

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iget v2, p1, Lcom/bumptech/glide/load/b/b/l$a;->j:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p1, Lcom/bumptech/glide/load/b/b/l$a;->i:F

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v3, p0, Lcom/bumptech/glide/load/b/b/l;->d:I

    sub-int v3, v0, v3

    add-int v4, v1, v2

    if-gt v4, v3, :cond_62

    iput v1, p0, Lcom/bumptech/glide/load/b/b/l;->c:I

    iput v2, p0, Lcom/bumptech/glide/load/b/b/l;->b:I

    goto :goto_7d

    :cond_62
    int-to-float v1, v3

    iget v2, p1, Lcom/bumptech/glide/load/b/b/l$a;->j:F

    iget v3, p1, Lcom/bumptech/glide/load/b/b/l$a;->i:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p1, Lcom/bumptech/glide/load/b/b/l$a;->i:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/load/b/b/l;->c:I

    iget v2, p1, Lcom/bumptech/glide/load/b/b/l$a;->j:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/bumptech/glide/load/b/b/l;->b:I

    :goto_7d
    const-string v1, "MemorySizeCalculator"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f0

    const-string v1, "MemorySizeCalculator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calculation complete, Calculated memory cache size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bumptech/glide/load/b/b/l;->c:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/b/b/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/b/b/l;->b:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/b/b/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", byte array size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/b/b/l;->d:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/b/b/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", memory class limited? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v0, :cond_bd

    const/4 v3, 0x1

    goto :goto_be

    :cond_bd
    const/4 v3, 0x0

    :goto_be
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", max size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/b/l;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", memoryClass: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/bumptech/glide/load/b/b/l$a;->g:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isLowMemoryDevice: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/b/l$a;->g:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/bumptech/glide/load/b/b/l;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/b/l;->c:I

    return v0
.end method

.method private static a(Landroid/app/ActivityManager;FF)I
    .registers 4

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    invoke-static {p0}, Lcom/bumptech/glide/load/b/b/l;->a(Landroid/app/ActivityManager;)Z

    move-result p0

    int-to-float v0, v0

    if-eqz p0, :cond_10

    move p1, p2

    :cond_10
    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private a(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/l;->g:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(Landroid/app/ActivityManager;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/b/l;->b:I

    return v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/b/l;->d:I

    return v0
.end method
