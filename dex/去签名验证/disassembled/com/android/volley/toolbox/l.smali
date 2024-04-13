.class public final Lcom/android/volley/toolbox/l;
.super Lcom/android/volley/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/l<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final m:I = 0x3e8

.field private static final n:I = 0x2

.field private static final o:F = 2.0f

.field private static final v:Ljava/lang/Object;


# instance fields
.field private final p:Lcom/android/volley/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/n$b<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/graphics/Bitmap$Config;

.field private final r:I

.field private final s:I

.field private t:Landroid/widget/ImageView$ScaleType;

.field private u:Lcom/android/volley/toolbox/l$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/l;->v:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/volley/n$b;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/n$a;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/n$b<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/n$a;",
            ")V"
        }
    .end annotation

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/volley/toolbox/l;-><init>(Ljava/lang/String;Lcom/android/volley/n$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/toolbox/l$a;Lcom/android/volley/n$a;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/volley/n$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/n$a;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/n$b<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/n$a;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/volley/toolbox/l;-><init>(Ljava/lang/String;Lcom/android/volley/n$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/toolbox/l$a;Lcom/android/volley/n$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/n$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/toolbox/l$a;Lcom/android/volley/n$a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/n$b<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/toolbox/l$a;",
            "Lcom/android/volley/n$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p8}, Lcom/android/volley/l;-><init>(ILjava/lang/String;Lcom/android/volley/n$a;)V

    new-instance p1, Lcom/android/volley/d;

    const/16 p8, 0x3e8

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, p8, v0, v1}, Lcom/android/volley/d;-><init>(IIF)V

    iput-object p1, p0, Lcom/android/volley/l;->j:Lcom/android/volley/p;

    iput-object p2, p0, Lcom/android/volley/toolbox/l;->p:Lcom/android/volley/n$b;

    iput-object p6, p0, Lcom/android/volley/toolbox/l;->q:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lcom/android/volley/toolbox/l;->r:I

    iput p4, p0, Lcom/android/volley/toolbox/l;->s:I

    iput-object p5, p0, Lcom/android/volley/toolbox/l;->t:Landroid/widget/ImageView$ScaleType;

    iput-object p7, p0, Lcom/android/volley/toolbox/l;->u:Lcom/android/volley/toolbox/l$a;

    return-void
.end method

.method private static a(IIII)I
    .registers 8

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_c
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_17

    move p2, p3

    goto :goto_c

    :cond_17
    float-to-int p0, p2

    return p0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 9

    if-nez p0, :cond_5

    if-nez p1, :cond_5

    return p2

    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_d

    if-nez p0, :cond_c

    return p2

    :cond_c
    return p0

    :cond_d
    if-nez p0, :cond_17

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_17
    if-nez p1, :cond_1a

    return p0

    :cond_1a
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_2c

    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_2b

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_2b
    return p0

    :cond_2c
    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_36

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_36
    return p0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/android/volley/toolbox/l;->p:Lcom/android/volley/n$b;

    invoke-interface {v0, p1}, Lcom/android/volley/n$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/android/volley/i;)Lcom/android/volley/n;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/n<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/volley/i;->b:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p0, Lcom/android/volley/toolbox/l;->r:I

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    iget v2, p0, Lcom/android/volley/toolbox/l;->s:I

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/volley/toolbox/l;->q:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_60

    :cond_1a
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, p0, Lcom/android/volley/toolbox/l;->r:I

    iget v7, p0, Lcom/android/volley/toolbox/l;->s:I

    iget-object v8, p0, Lcom/android/volley/toolbox/l;->t:Landroid/widget/ImageView$ScaleType;

    invoke-static {v6, v7, v4, v5, v8}, Lcom/android/volley/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    iget v7, p0, Lcom/android/volley/toolbox/l;->s:I

    iget v8, p0, Lcom/android/volley/toolbox/l;->r:I

    iget-object v9, p0, Lcom/android/volley/toolbox/l;->t:Landroid/widget/ImageView$ScaleType;

    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/volley/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4, v5, v6, v7}, Lcom/android/volley/toolbox/l;->a(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_60

    if-lez v6, :cond_60

    if-lez v7, :cond_60

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_58

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v7, :cond_60

    :cond_58
    invoke-static {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_60
    :goto_60
    if-nez v0, :cond_6c

    new-instance v0, Lcom/android/volley/k;

    invoke-direct {v0, p1}, Lcom/android/volley/k;-><init>(Lcom/android/volley/i;)V

    invoke-static {v0}, Lcom/android/volley/n;->a(Lcom/android/volley/s;)Lcom/android/volley/n;

    move-result-object p1

    return-object p1

    :cond_6c
    iget-object v1, p0, Lcom/android/volley/toolbox/l;->u:Lcom/android/volley/toolbox/l$a;

    if-eqz v1, :cond_76

    iget-object v0, p0, Lcom/android/volley/toolbox/l;->u:Lcom/android/volley/toolbox/l$a;

    invoke-interface {v0}, Lcom/android/volley/toolbox/l$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_76
    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/i;)Lcom/android/volley/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/n;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/n;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final a(Lcom/android/volley/i;)Lcom/android/volley/n;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/n<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/volley/toolbox/l;->v:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p1, Lcom/android/volley/i;->b:[B

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v5, p0, Lcom/android/volley/toolbox/l;->r:I

    if-nez v5, :cond_1e

    iget v5, p0, Lcom/android/volley/toolbox/l;->s:I

    if-nez v5, :cond_1e

    iget-object v5, p0, Lcom/android/volley/toolbox/l;->q:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v5, v3

    invoke-static {v3, v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_63

    :cond_1e
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v5, v3

    invoke-static {v3, v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, p0, Lcom/android/volley/toolbox/l;->r:I

    iget v8, p0, Lcom/android/volley/toolbox/l;->s:I

    iget-object v9, p0, Lcom/android/volley/toolbox/l;->t:Landroid/widget/ImageView$ScaleType;

    invoke-static {v7, v8, v5, v6, v9}, Lcom/android/volley/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    iget v8, p0, Lcom/android/volley/toolbox/l;->s:I

    iget v9, p0, Lcom/android/volley/toolbox/l;->r:I

    iget-object v10, p0, Lcom/android/volley/toolbox/l;->t:Landroid/widget/ImageView$ScaleType;

    invoke-static {v8, v9, v6, v5, v10}, Lcom/android/volley/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v8

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v5, v6, v7, v8}, Lcom/android/volley/toolbox/l;->a(IIII)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v5, v3

    invoke-static {v3, v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_63

    if-lez v7, :cond_63

    if-lez v8, :cond_63

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, v7, :cond_5b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v8, :cond_63

    :cond_5b
    invoke-static {v3, v7, v8, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v4

    :cond_63
    :goto_63
    if-nez v3, :cond_6f

    new-instance v3, Lcom/android/volley/k;

    invoke-direct {v3, p1}, Lcom/android/volley/k;-><init>(Lcom/android/volley/i;)V

    invoke-static {v3}, Lcom/android/volley/n;->a(Lcom/android/volley/s;)Lcom/android/volley/n;

    move-result-object v3

    goto :goto_81

    :cond_6f
    iget-object v4, p0, Lcom/android/volley/toolbox/l;->u:Lcom/android/volley/toolbox/l$a;

    if-eqz v4, :cond_79

    iget-object v3, p0, Lcom/android/volley/toolbox/l;->u:Lcom/android/volley/toolbox/l$a;

    invoke-interface {v3}, Lcom/android/volley/toolbox/l$a;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_79
    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/i;)Lcom/android/volley/b$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/volley/n;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/n;

    move-result-object v3
    :try_end_81
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_81} :catch_85
    .catchall {:try_start_5 .. :try_end_81} :catchall_83

    :goto_81
    :try_start_81
    monitor-exit v0

    return-object v3

    :catchall_83
    move-exception p1

    goto :goto_a6

    :catch_85
    move-exception v3

    const-string v4, "Caught OOM for %d byte image, url=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/volley/i;->b:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    iget-object p1, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Lcom/android/volley/t;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/android/volley/k;

    invoke-direct {p1, v3}, Lcom/android/volley/k;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/android/volley/n;->a(Lcom/android/volley/s;)Lcom/android/volley/n;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_81 .. :try_end_a7} :catchall_83

    throw p1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/volley/toolbox/l;->p:Lcom/android/volley/n$b;

    invoke-interface {v0, p1}, Lcom/android/volley/n$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Lcom/android/volley/l$b;
    .registers 2

    sget-object v0, Lcom/android/volley/l$b;->LOW:Lcom/android/volley/l$b;

    return-object v0
.end method
