.class public Lcom/googlecode/leptonica/android/Scale;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/leptonica/android/Scale$a;
    }
.end annotation


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

.method private static a(Lcom/googlecode/leptonica/android/Pix;F)Lcom/googlecode/leptonica/android/Pix;
    .registers 2

    invoke-static {p0, p1, p1}, Lcom/googlecode/leptonica/android/Scale;->a(Lcom/googlecode/leptonica/android/Pix;FF)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;FF)Lcom/googlecode/leptonica/android/Pix;
    .registers 5

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_17

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "X scaling factor must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    cmpg-float v0, p2, v0

    if-gtz v0, :cond_23

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Y scaling factor must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Scale;->nativeScale(JFF)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_39

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to natively scale pix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;III)Lcom/googlecode/leptonica/android/Pix;
    .registers 6

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

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v1

    div-float/2addr p2, v0

    sget-object v0, Lcom/googlecode/leptonica/android/Scale$1;->a:[I

    add-int/lit8 p3, p3, -0x1

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_38

    goto :goto_32

    :pswitch_22
    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_31

    :pswitch_2d
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_31
    move p2, p1

    :goto_32
    :pswitch_32
    invoke-static {p0, p1, p2}, Lcom/googlecode/leptonica/android/Scale;->a(Lcom/googlecode/leptonica/android/Pix;FF)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2d
        :pswitch_22
    .end packed-switch
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;F)Lcom/googlecode/leptonica/android/Pix;
    .registers 9

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_17

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scaling factor must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move v4, p1

    invoke-static/range {v1 .. v6}, Lcom/googlecode/leptonica/android/Scale;->nativeScaleGeneral(JFFFI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0
.end method

.method private static native nativeScale(JFF)J
.end method

.method private static native nativeScaleGeneral(JFFFI)J
.end method
