.class public Lcom/googlecode/tesseract/android/TessPdfRenderer;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "jpgt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "tess"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-static {v0, v1, p2}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->nativeCreate(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->b:Z

    return-void
.end method

.method private b()V
    .registers 3

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->nativeRecycle(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->b:Z

    return-void
.end method

.method private static native nativeCreate(JLjava/lang/String;)J
.end method

.method private static native nativeRecycle(J)V
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->b:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a:J

    return-wide v0
.end method
