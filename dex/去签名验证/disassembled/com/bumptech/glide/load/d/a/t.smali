.class final Lcom/bumptech/glide/load/d/a/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x80

.field private static final b:Ljava/io/File;

.field private static final c:I = 0x32

.field private static final d:I = 0x2bc

.field private static volatile g:Lcom/bumptech/glide/load/d/a/t;


# instance fields
.field private volatile e:I

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bumptech/glide/load/d/a/t;->b:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/a/t;->f:Z

    return-void
.end method

.method static a()Lcom/bumptech/glide/load/d/a/t;
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/d/a/t;->g:Lcom/bumptech/glide/load/d/a/t;

    if-nez v0, :cond_17

    const-class v0, Lcom/bumptech/glide/load/d/a/t;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bumptech/glide/load/d/a/t;->g:Lcom/bumptech/glide/load/d/a/t;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bumptech/glide/load/d/a/t;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/t;-><init>()V

    sput-object v1, Lcom/bumptech/glide/load/d/a/t;->g:Lcom/bumptech/glide/load/d/a/t;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/bumptech/glide/load/d/a/t;->g:Lcom/bumptech/glide/load/d/a/t;

    return-object v0
.end method

.method private a(IILandroid/graphics/BitmapFactory$Options;ZZ)Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_24

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p4, v1, :cond_24

    if-eqz p5, :cond_c

    return v0

    :cond_c
    const/16 p4, 0x80

    if-lt p1, p4, :cond_1a

    if-lt p2, p4, :cond_1a

    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/a/t;->b()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-eqz p1, :cond_23

    sget-object p2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object p2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_23
    return p1

    :cond_24
    return v0
.end method


# virtual methods
.method final declared-synchronized b()Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/d/a/t;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/d/a/t;->e:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_41

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/d/a/t;->e:I

    sget-object v2, Lcom/bumptech/glide/load/d/a/t;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x2bc

    if-ge v2, v3, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    iput-boolean v0, p0, Lcom/bumptech/glide/load/d/a/t;->f:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/a/t;->f:Z

    if-nez v0, :cond_41

    const-string v0, "Downsampler"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", limit 700"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-boolean v0, p0, Lcom/bumptech/glide/load/d/a/t;->f:Z
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return v0

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method
