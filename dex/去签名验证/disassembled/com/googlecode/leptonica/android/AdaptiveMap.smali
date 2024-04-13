.class public Lcom/googlecode/leptonica/android/AdaptiveMap;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0xa

.field public static final b:I = 0xf

.field public static final c:I = 0x28

.field public static final d:I = 0x2

.field public static final e:I = 0x1

.field private static final f:I = 0x10

.field private static final g:I = 0x3

.field private static final h:I = 0xc8


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
    .registers 5

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    const/16 p0, 0x10

    const/4 v2, 0x3

    const/16 v3, 0xc8

    invoke-static {v0, v1, p0, v2, v3}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativeBackgroundNormMorph(JIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_25

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to normalize image background"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .registers 5

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    const/16 p0, 0x10

    const/4 v2, 0x3

    const/16 v3, 0xc8

    invoke-static {v0, v1, p0, v2, v3}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativeBackgroundNormMorph(JIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_25

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to normalize image background"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static c(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .registers 9

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0xa

    const/16 v4, 0xf

    const/16 v5, 0x28

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativePixContrastNorm(JIIIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_28

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to normalize image contrast"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static d(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .registers 9

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0xa

    const/16 v4, 0xf

    const/16 v5, 0x28

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativePixContrastNorm(JIIIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_28

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to normalize image contrast"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static native nativeBackgroundNormMorph(JIII)J
.end method

.method private static native nativePixContrastNorm(JIIIII)J
.end method
