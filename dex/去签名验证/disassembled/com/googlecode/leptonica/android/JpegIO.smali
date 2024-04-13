.class public Lcom/googlecode/leptonica/android/JpegIO;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x55

.field public static final b:Z


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

.method private static a(Lcom/googlecode/leptonica/android/Pix;)[B
    .registers 1

    invoke-static {p0}, Lcom/googlecode/leptonica/android/JpegIO;->b(Lcom/googlecode/leptonica/android/Pix;)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)[B
    .registers 4

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/googlecode/leptonica/android/WriteFile;->a(Lcom/googlecode/leptonica/android/Pix;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    :try_start_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method

.method private static native nativeCompressToJpeg(JIZ)[B
.end method
