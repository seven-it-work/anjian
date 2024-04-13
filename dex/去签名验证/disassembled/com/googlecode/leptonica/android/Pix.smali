.class public Lcom/googlecode/leptonica/android/Pix;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field final d:J

.field e:Z


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

.method private constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_33

    if-gtz p2, :cond_8

    goto :goto_33

    :cond_8
    const/4 v0, 0x1

    if-eq p3, v0, :cond_29

    const/4 v0, 0x2

    if-eq p3, v0, :cond_29

    const/4 v0, 0x4

    if-eq p3, v0, :cond_29

    const/16 v0, 0x8

    if-eq p3, v0, :cond_29

    const/16 v0, 0x10

    if-eq p3, v0, :cond_29

    const/16 v0, 0x18

    if-eq p3, v0, :cond_29

    const/16 v0, 0x20

    if-eq p3, v0, :cond_29

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Depth must be one of 1, 2, 4, 8, 16, or 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    invoke-static {p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeCreatePix(III)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    return-void

    :cond_33
    :goto_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pix width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    return-void
.end method

.method private a(II)I
    .registers 5

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_a
    if-ltz p1, :cond_2b

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    if-lt p1, v0, :cond_13

    goto :goto_2b

    :cond_13
    if-ltz p2, :cond_23

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v0

    if-lt p2, v0, :cond_1c

    goto :goto_23

    :cond_1c
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Pix;->nativeGetPixel(JII)I

    move-result p1

    return p1

    :cond_23
    :goto_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied y coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    :goto_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied x coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a([BIII)Lcom/googlecode/leptonica/android/Pix;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeCreateFromData([BIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-nez v0, :cond_10

    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    :cond_10
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2
.end method

.method private a(III)V
    .registers 6

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_a
    if-ltz p1, :cond_2a

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    if-lt p1, v0, :cond_13

    goto :goto_2a

    :cond_13
    if-ltz p2, :cond_22

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v0

    if-lt p2, v0, :cond_1c

    goto :goto_22

    :cond_1c
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeSetPixel(JIII)V

    return-void

    :cond_22
    :goto_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied y coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    :goto_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied x coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([I)Z
    .registers 4

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDimensions(J[I)Z

    move-result p1

    return p1
.end method

.method private f()[B
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetData(J)[B

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native getData failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    return-object v0
.end method

.method private g()[I
    .registers 4

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget-boolean v1, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v1, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_17
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v1, v2, v0}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDimensions(J[I)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object v0

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private h()Lcom/googlecode/leptonica/android/Pix;
    .registers 6

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeClone(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_1c
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method

.method private i()Lcom/googlecode/leptonica/android/Pix;
    .registers 6

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeCopy(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_1c
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method

.method private j()Z
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeInvert(J)Z

    move-result v0

    return v0
.end method

.method private k()Landroid/graphics/Rect;
    .registers 5

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private l()I
    .registers 3

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetRefCount(J)I

    move-result v0

    return v0
.end method

.method private static native nativeClone(J)J
.end method

.method private static native nativeCopy(J)J
.end method

.method private static native nativeCreateFromData([BIII)J
.end method

.method private static native nativeCreatePix(III)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetData(J)[B
.end method

.method private static native nativeGetDepth(J)I
.end method

.method static native nativeGetDimensions(J[I)Z
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetRefCount(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeInvert(J)Z
.end method

.method private static native nativeSetPixel(JIII)V
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    return-wide v0
.end method

.method public final b()V
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeDestroy(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    :cond_c
    return-void
.end method

.method public final c()I
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeClone(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_1c
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method

.method public final d()I
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDepth(J)I

    move-result v0

    return v0
.end method
