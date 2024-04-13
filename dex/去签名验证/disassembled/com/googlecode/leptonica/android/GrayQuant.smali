.class public Lcom/googlecode/leptonica/android/GrayQuant;
.super Ljava/lang/Object;


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

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;
    .registers 5

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1d

    if-eq v0, v1, :cond_1d

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 4 or 8 bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    if-ne v0, v2, :cond_2b

    const/16 v2, 0x10

    if-le p1, v2, :cond_2b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "4 bpp thresh not in {0-16}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    if-ne v0, v1, :cond_39

    const/16 v0, 0x100

    if-le p1, v0, :cond_39

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "8 bpp thresh not in {0-256}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/GrayQuant;->nativePixThresholdToBinary(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_4f

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform binarization"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0
.end method

.method private static native nativePixThresholdToBinary(JI)J
.end method
