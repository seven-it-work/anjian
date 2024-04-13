.class public Lcom/googlecode/leptonica/android/Skew;
.super Ljava/lang/Object;


# static fields
.field public static final a:F = 30.0f

.field public static final b:F = 5.0f

.field public static final c:I = 0x8

.field public static final d:I = 0x4

.field public static final e:F = 0.01f


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

.method private static a(Lcom/googlecode/leptonica/android/Pix;)F
    .registers 9

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/16 v5, 0x8

    const/4 v6, 0x4

    const v7, 0x3c23d70a    # 0.01f

    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/Skew;->nativeFindSkew(JFFIIF)F

    move-result p0

    return p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)F
    .registers 9

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/16 v5, 0x8

    const/4 v6, 0x4

    const v7, 0x3c23d70a    # 0.01f

    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/Skew;->nativeFindSkew(JFFIIF)F

    move-result p0

    return p0
.end method

.method private static native nativeFindSkew(JFFIIF)F
.end method
