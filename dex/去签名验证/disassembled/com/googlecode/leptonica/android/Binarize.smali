.class public Lcom/googlecode/leptonica/android/Binarize;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x20

.field public static final b:I = 0x20

.field public static final c:I = 0x2

.field public static final d:I = 0x2

.field public static final e:F = 0.1f

.field public static final f:I = 0x8

.field public static final g:F = 0.35f

.field public static final h:I = 0x1

.field public static final i:I = 0x1


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

.method private static a(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .registers 9

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix depth must be 8bpp"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x2

    const v7, 0x3dcccccd    # 0.1f

    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/Binarize;->nativeOtsuAdaptiveThreshold(JIIIIF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_39

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to perform Otsu adaptive threshold on image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .registers 9

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix depth must be 8bpp"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x2

    const v7, 0x3dcccccd    # 0.1f

    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/Binarize;->nativeOtsuAdaptiveThreshold(JIIIIF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_39

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to perform Otsu adaptive threshold on image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static c(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .registers 8

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix depth must be 8bpp"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0x8

    const v4, 0x3eb33333    # 0.35f

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/googlecode/leptonica/android/Binarize;->nativeSauvolaBinarizeTiled(JIFII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_37

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to perform Sauvola binarization on image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static d(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .registers 8

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix depth must be 8bpp"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0x8

    const v4, 0x3eb33333    # 0.35f

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/googlecode/leptonica/android/Binarize;->nativeSauvolaBinarizeTiled(JIFII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_37

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to perform Sauvola binarization on image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static native nativeOtsuAdaptiveThreshold(JIIIIF)J
.end method

.method private static native nativeSauvolaBinarizeTiled(JIFII)J
.end method
