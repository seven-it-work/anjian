.class public Lcom/googlecode/leptonica/android/MorphApp;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x7

.field public static final d:I = 0x7


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
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/MorphApp;->a(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
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

    if-eq v0, v1, :cond_1a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    if-ltz p1, :cond_3d

    const/4 v0, 0x1

    if-le p1, v0, :cond_20

    goto :goto_3d

    :cond_20
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    const/4 p0, 0x7

    invoke-static {v0, v1, p0, p0, p1}, Lcom/googlecode/leptonica/android/MorphApp;->nativePixFastTophat(JIII)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_37

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform pixFastTophat on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    :cond_3d
    :goto_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;III)Lcom/googlecode/leptonica/android/Pix;
    .registers 6

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    if-lez p1, :cond_49

    if-gtz p2, :cond_1f

    goto :goto_49

    :cond_1f
    if-ltz p3, :cond_41

    const/4 v0, 0x1

    if-le p3, v0, :cond_25

    goto :goto_41

    :cond_25
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/MorphApp;->nativePixTophat(JIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-nez v0, :cond_3b

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform Tophat on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    :cond_41
    :goto_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    :goto_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hsize or vsize < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/MorphApp;->a(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method private static native nativePixFastTophat(JIII)J
.end method

.method private static native nativePixTophat(JIII)J
.end method
