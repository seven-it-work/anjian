.class public Lcom/googlecode/leptonica/android/ReadFile;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ReadFile"


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

.method public static a(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_b

    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Bitmap must be non-null"

    :goto_7
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_18

    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Bitmap config must be ARGB_8888"

    goto :goto_7

    :cond_18
    invoke-static {p0}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReadBitmap(Landroid/graphics/Bitmap;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_27

    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Failed to read pix from bitmap"

    goto :goto_7

    :cond_27
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method public static a(Ljava/io/File;)Lcom/googlecode/leptonica/android/Pix;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_b

    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "File must be non-null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_19

    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "File does not exist"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_19
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_27

    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Cannot read file"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_27
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReadFile(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3b

    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    :cond_3b
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_56

    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Cannot decode bitmap"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_56
    invoke-static {p0}, Lcom/googlecode/leptonica/android/ReadFile;->a(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private static a([B)Lcom/googlecode/leptonica/android/Pix;
    .registers 4

    if-nez p0, :cond_b

    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v0, "Image data byte array must be non-null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_b
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/googlecode/leptonica/android/ReadFile;->a(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private static a([BII)Lcom/googlecode/leptonica/android/Pix;
    .registers 5

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Byte array must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-gtz p1, :cond_14

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image width must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    if-gtz p2, :cond_1e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image height must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    array-length v0, p0

    mul-int v1, p1, p2

    if-ge v0, v1, :cond_2b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array length does not match dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    invoke-static {p0, p1, p2}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReadBytes8([BII)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_3d

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to read pix from memory"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;[BII)Z
    .registers 6

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez p1, :cond_14

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Byte array must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    if-gtz p2, :cond_1e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image width must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    if-gtz p3, :cond_28

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image height must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    array-length v0, p1

    mul-int v1, p2, p3

    if-ge v0, v1, :cond_35

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array length does not match dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    if-eq v0, p2, :cond_43

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix width does not match image width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v0

    if-eq v0, p3, :cond_51

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix height does not match image height"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReplaceBytes8(J[BII)Z

    move-result p0

    return p0
.end method

.method private static native nativeReadBitmap(Landroid/graphics/Bitmap;)J
.end method

.method private static native nativeReadBytes8([BII)J
.end method

.method private static native nativeReadFile(Ljava/lang/String;)J
.end method

.method private static native nativeReadMem([BI)J
.end method

.method private static native nativeReplaceBytes8(J[BII)Z
.end method
