.class public Lcom/googlecode/leptonica/android/Boxa;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "Boxa"


# instance fields
.field private final b:J

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "jpgt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    return-void
.end method

.method private a()J
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    return-wide v0
.end method

.method private a(I)Landroid/graphics/Rect;
    .registers 6

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_a
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-boolean v1, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v1, :cond_17

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_17
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v1, v2, p1, v0}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    add-int/2addr v2, p1

    const/4 v3, 0x3

    aget v0, v0, v3

    add-int/2addr v0, v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private a(I[I)Z
    .registers 5

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    return p1
.end method

.method private b()I
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetCount(J)I

    move-result v0

    return v0
.end method

.method private b(I)[I
    .registers 5

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_a
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-boolean v1, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v1, :cond_17

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_17
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v1, v2, p1, v0}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    if-eqz p1, :cond_20

    return-object v0

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeDestroy(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetCount(J)I
.end method

.method private static native nativeGetGeometry(JI[I)Z
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-nez v0, :cond_e

    sget-object v0, Lcom/googlecode/leptonica/android/Boxa;->a:Ljava/lang/String;

    const-string v1, "Boxa was not terminated using recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/googlecode/leptonica/android/Boxa;->c()V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    :cond_e
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
