.class public Lcom/googlecode/leptonica/android/WriteFile;
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

.method private static a(Lcom/googlecode/leptonica/android/Pix;[B)I
    .registers 4

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v1

    mul-int v0, v0, v1

    array-length v1, p1

    if-ge v1, v0, :cond_1f

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data array must be large enough to hold image bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteBytes8(J[B)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/googlecode/leptonica/android/Pix;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_14

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_14
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget-boolean v1, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v1, :cond_21

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_21
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v1, v2, v0}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDimensions(J[I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object v0, v2

    :goto_2c
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v3

    invoke-static {v3, v4, v0}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_43

    return-object v0

    :cond_43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;Ljava/io/File;)Z
    .registers 4

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez p1, :cond_14

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteImpliedFormat(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)[B
    .registers 4

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v1

    mul-int v0, v0, v1

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_29

    invoke-static {p0}, Lcom/googlecode/leptonica/android/Convert;->a(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/WriteFile;->a(Lcom/googlecode/leptonica/android/Pix;[B)I

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->b()V

    return-object v0

    :cond_29
    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/WriteFile;->a(Lcom/googlecode/leptonica/android/Pix;[B)I

    return-object v0
.end method

.method private static native nativeWriteBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native nativeWriteBytes8(J[B)I
.end method

.method private static native nativeWriteImpliedFormat(JLjava/lang/String;)Z
.end method
