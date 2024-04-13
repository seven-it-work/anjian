.class public final Lcom/bumptech/glide/load/d/a/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d/a/o$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "Downsampler"

.field public static final b:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Lcom/bumptech/glide/load/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Lcom/bumptech/glide/load/d/a/n;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Lcom/bumptech/glide/load/d/a/o$a;

.field private static final g:Ljava/lang/String; = "image/vnd.wap.wbmp"

.field private static final h:Ljava/lang/String; = "image/x-ico"

.field private static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:I = 0xa00000


# instance fields
.field private final m:Lcom/bumptech/glide/load/b/a/e;

.field private final n:Landroid/util/DisplayMetrics;

.field private final o:Lcom/bumptech/glide/load/b/a/b;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/bumptech/glide/load/d/a/t;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    sget-object v1, Lcom/bumptech/glide/load/b;->DEFAULT:Lcom/bumptech/glide/load/b;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/o;->b:Lcom/bumptech/glide/load/i;

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->h:Lcom/bumptech/glide/load/i;

    sput-object v0, Lcom/bumptech/glide/load/d/a/o;->c:Lcom/bumptech/glide/load/i;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bumptech/glide/load/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/o;->d:Lcom/bumptech/glide/load/i;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bumptech/glide/load/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/o;->e:Lcom/bumptech/glide/load/i;

    new-instance v0, Ljava/util/HashSet;

    const-string v2, "image/vnd.wap.wbmp"

    const-string v3, "image/x-ico"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/o;->i:Ljava/util/Set;

    new-instance v0, Lcom/bumptech/glide/load/d/a/o$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/o$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/a/o;->f:Lcom/bumptech/glide/load/d/a/o$a;

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/o;->j:Ljava/util/Set;

    invoke-static {v1}, Lcom/bumptech/glide/util/k;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/o;->k:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/b/a/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/load/d/a/t;->a()Lcom/bumptech/glide/load/d/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/d/a/o;->q:Lcom/bumptech/glide/load/d/a/t;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/o;->p:Ljava/util/List;

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/DisplayMetrics;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/o;->n:Landroid/util/DisplayMetrics;

    const-string p1, "Argument must not be null"

    invoke-static {p3, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a/e;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    const-string p1, "Argument must not be null"

    invoke-static {p4, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a/b;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    return-void
.end method

.method private static a(D)I
    .registers 9

    invoke-static {p0, p1}, Lcom/bumptech/glide/load/d/a/o;->b(D)I

    move-result v0

    int-to-double v1, v0

    mul-double v1, v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v2, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-double v5, v2

    div-double/2addr p0, v5

    int-to-double v0, v1

    mul-double p0, p0, v0

    add-double/2addr p0, v3

    double-to-int p0, p0

    return p0
.end method

.method private a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/b;ZIIZLcom/bumptech/glide/load/d/a/o$a;)Landroid/graphics/Bitmap;
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p9

    invoke-static {}, Lcom/bumptech/glide/util/e;->a()J

    move-result-wide v9

    iget-object v11, v1, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {v2, v3, v8, v11}, Lcom/bumptech/glide/load/d/a/o;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v13, v11, v12

    const/4 v14, 0x1

    aget v11, v11, v14

    iget-object v15, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v12, -0x1

    if-eq v13, v12, :cond_2b

    if-ne v11, v12, :cond_28

    goto :goto_2b

    :cond_28
    move/from16 v12, p5

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v12, 0x0

    :goto_2c
    iget-object v14, v1, Lcom/bumptech/glide/load/d/a/o;->p:Ljava/util/List;

    move-wide/from16 v16, v9

    iget-object v9, v1, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    invoke-static {v14, v2, v9}, Lcom/bumptech/glide/load/f;->b(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)I

    move-result v9

    invoke-static {v9}, Lcom/bumptech/glide/load/d/a/z;->a(I)I

    move-result v10

    invoke-static {v9}, Lcom/bumptech/glide/load/d/a/z;->b(I)Z

    move-result v14

    move/from16 v18, v9

    const/high16 v9, -0x80000000

    if-ne v6, v9, :cond_45

    move v6, v13

    :cond_45
    if-ne v7, v9, :cond_49

    move v9, v11

    goto :goto_4a

    :cond_49
    move v9, v7

    :goto_4a
    iget-object v7, v1, Lcom/bumptech/glide/load/d/a/o;->p:Ljava/util/List;

    move-object/from16 v19, v15

    iget-object v15, v1, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    invoke-static {v7, v2, v15}, Lcom/bumptech/glide/load/f;->a(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v7

    iget-object v15, v1, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    const/high16 v20, 0x3f800000    # 1.0f

    if-lez v13, :cond_24b

    if-gtz v11, :cond_5e

    goto/16 :goto_24b

    :cond_5e
    const/16 v5, 0x5a

    if-eq v10, v5, :cond_6c

    const/16 v5, 0x10e

    if-ne v10, v5, :cond_67

    goto :goto_6c

    :cond_67
    invoke-virtual {v4, v13, v11, v6, v9}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result v5

    goto :goto_70

    :cond_6c
    :goto_6c
    invoke-virtual {v4, v11, v13, v6, v9}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result v5

    :goto_70
    const/4 v10, 0x0

    cmpg-float v10, v5, v10

    if-gtz v10, :cond_b6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Cannot scale with factor: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " from: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", source: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], target: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b6
    invoke-virtual/range {p3 .. p3}, Lcom/bumptech/glide/load/d/a/n;->a()I

    move-result v10

    if-nez v10, :cond_c4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot round with null rounding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c4
    move/from16 v21, v14

    int-to-float v14, v13

    move/from16 v22, v12

    mul-float v12, v5, v14

    float-to-double v1, v12

    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    add-double v1, v1, v23

    double-to-int v1, v1

    int-to-float v2, v11

    mul-float v12, v5, v2

    move/from16 v25, v9

    float-to-double v8, v12

    add-double v8, v8, v23

    double-to-int v8, v8

    div-int v1, v13, v1

    div-int v8, v11, v8

    sget v9, Lcom/bumptech/glide/load/d/a/n$g;->MEMORY$3973276c:I

    if-ne v10, v9, :cond_e7

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_eb

    :cond_e7
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_eb
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-gt v8, v9, :cond_fd

    sget-object v8, Lcom/bumptech/glide/load/d/a/o;->i:Ljava/util/Set;

    iget-object v9, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fd

    const/4 v1, 0x1

    goto :goto_113

    :cond_fd
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v8, 0x1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v8, Lcom/bumptech/glide/load/d/a/n$g;->MEMORY$3973276c:I

    if-ne v10, v8, :cond_113

    int-to-float v8, v1

    div-float v9, v20, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_113

    shl-int/lit8 v1, v1, 0x1

    :cond_113
    :goto_113
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v7, v8, :cond_13d

    const/16 v8, 0x8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v14, v8

    float-to-double v9, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    div-float/2addr v2, v8

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v2, v14

    div-int/lit8 v8, v1, 0x8

    if-lez v8, :cond_134

    div-int/2addr v9, v8

    div-int/2addr v2, v8

    :cond_134
    :goto_134
    move v10, v2

    move v12, v9

    move/from16 v2, v25

    move-object/from16 v8, p1

    move-object/from16 v9, p9

    goto :goto_198

    :cond_13d
    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v7, v8, :cond_182

    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v7, v8, :cond_146

    goto :goto_182

    :cond_146
    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v7, v8, :cond_16c

    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v7, v8, :cond_14f

    goto :goto_16c

    :cond_14f
    rem-int v2, v13, v1

    if-nez v2, :cond_15d

    rem-int v2, v11, v1

    if-eqz v2, :cond_158

    goto :goto_15d

    :cond_158
    div-int v9, v13, v1

    div-int v2, v11, v1

    goto :goto_134

    :cond_15d
    :goto_15d
    move-object/from16 v8, p1

    move-object/from16 v9, p9

    invoke-static {v8, v3, v9, v15}, Lcom/bumptech/glide/load/d/a/o;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)[I

    move-result-object v2

    const/4 v10, 0x0

    aget v12, v2, v10

    const/4 v10, 0x1

    aget v2, v2, v10

    goto :goto_195

    :cond_16c
    :goto_16c
    move-object/from16 v8, p1

    move-object/from16 v9, p9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x18

    if-lt v10, v12, :cond_186

    int-to-float v10, v1

    div-float/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v12

    div-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_195

    :cond_182
    :goto_182
    move-object/from16 v8, p1

    move-object/from16 v9, p9

    :cond_186
    int-to-float v10, v1

    div-float/2addr v14, v10

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v12, v14

    div-float/2addr v2, v10

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v2, v14

    :goto_195
    move v10, v2

    move/from16 v2, v25

    :goto_198
    invoke-virtual {v4, v12, v10, v6, v2}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result v4

    float-to-double v14, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v4, v9, :cond_1c4

    invoke-static {v14, v15}, Lcom/bumptech/glide/load/d/a/o;->b(D)I

    move-result v4

    int-to-double v8, v4

    mul-double v8, v8, v14

    add-double v8, v8, v23

    double-to-int v8, v8

    int-to-float v9, v8

    int-to-float v4, v4

    div-float/2addr v9, v4

    move/from16 v26, v5

    float-to-double v4, v9

    div-double v4, v14, v4

    int-to-double v8, v8

    mul-double v4, v4, v8

    add-double v4, v4, v23

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-static {v14, v15}, Lcom/bumptech/glide/load/d/a/o;->b(D)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_1c6

    :cond_1c4
    move/from16 v26, v5

    :goto_1c6
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-eqz v4, :cond_1d0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_1d5

    :cond_1d0
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_1d5
    const-string v4, "Downsampler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_247

    const-string v4, "Downsampler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Calculate scaling, source: ["

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], target: ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], power of two scaled: ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], exact scale factor: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v26

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", power of 2 sample size: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjusted scale factor: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", target density: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", density: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_247
    move-object/from16 v1, p0

    const/4 v4, 0x3

    goto :goto_283

    :cond_24b
    :goto_24b
    move v2, v9

    move/from16 v22, v12

    move/from16 v21, v14

    const-string v1, "Downsampler"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_281

    const-string v1, "Downsampler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unable to determine dimensions for: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with target ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_281
    move-object/from16 v1, p0

    :goto_283
    iget-object v5, v1, Lcom/bumptech/glide/load/d/a/o;->q:Lcom/bumptech/glide/load/d/a/t;

    const/16 v8, 0x1a

    if-eqz v22, :cond_2ab

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v8, :cond_2ab

    if-eqz v21, :cond_290

    goto :goto_2ab

    :cond_290
    const/16 v9, 0x80

    if-lt v6, v9, :cond_29e

    if-lt v2, v9, :cond_29e

    invoke-virtual {v5}, Lcom/bumptech/glide/load/d/a/t;->b()Z

    move-result v5

    if-eqz v5, :cond_29e

    const/4 v12, 0x1

    goto :goto_29f

    :cond_29e
    const/4 v12, 0x0

    :goto_29f
    if-eqz v12, :cond_2a9

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_2ad

    :cond_2a9
    const/4 v5, 0x0

    goto :goto_2ad

    :cond_2ab
    :goto_2ab
    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_2ad
    if-nez v12, :cond_308

    sget-object v9, Lcom/bumptech/glide/load/b;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/b;

    move-object/from16 v4, p4

    const/4 v10, 0x3

    if-eq v4, v9, :cond_301

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-ne v9, v12, :cond_2bd

    goto :goto_301

    :cond_2bd
    :try_start_2bd
    iget-object v9, v1, Lcom/bumptech/glide/load/d/a/o;->p:Ljava/util/List;

    iget-object v12, v1, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;
    :try_end_2c1
    .catch Ljava/io/IOException; {:try_start_2bd .. :try_end_2c1} :catch_2ce

    move-object/from16 v14, p1

    :try_start_2c3
    invoke-static {v9, v14, v12}, Lcom/bumptech/glide/load/f;->a(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v12
    :try_end_2cb
    .catch Ljava/io/IOException; {:try_start_2c3 .. :try_end_2cb} :catch_2cc

    goto :goto_2ee

    :catch_2cc
    move-exception v0

    goto :goto_2d1

    :catch_2ce
    move-exception v0

    move-object/from16 v14, p1

    :goto_2d1
    move-object v9, v0

    const-string v12, "Downsampler"

    invoke-static {v12, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2ed

    const-string v10, "Downsampler"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2ed
    const/4 v12, 0x0

    :goto_2ee
    if-eqz v12, :cond_2f3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2f5

    :cond_2f3
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_2f5
    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v9, :cond_30a

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_30a

    :cond_301
    :goto_301
    move-object/from16 v14, p1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_30a

    :cond_308
    move-object/from16 v14, p1

    :cond_30a
    :goto_30a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v4, v9, :cond_311

    const/4 v5, 0x1

    :cond_311
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v10, 0x0

    const/4 v12, 0x1

    if-eq v4, v12, :cond_319

    if-eqz v5, :cond_3df

    :cond_319
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_31f

    const/4 v4, 0x1

    goto :goto_325

    :cond_31f
    sget-object v4, Lcom/bumptech/glide/load/d/a/o;->j:Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_325
    if-eqz v4, :cond_3df

    if-ltz v13, :cond_333

    if-ltz v11, :cond_333

    if-eqz p8, :cond_333

    if-eqz v5, :cond_333

    move v9, v2

    move v5, v6

    goto/16 :goto_3bf

    :cond_333
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-eqz v2, :cond_344

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v4, v4

    div-float v20, v2, v4

    move/from16 v2, v20

    goto :goto_346

    :cond_344
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_346
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v13

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    int-to-float v7, v11

    div-float/2addr v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v5, v5

    mul-float v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v6, v6

    mul-float v6, v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    const-string v6, "Downsampler"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3bf

    const-string v6, "Downsampler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Calculated target ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] for source ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], sampleSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", targetDensity: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", density: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", density multiplier: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3bf
    :goto_3bf
    if-lez v5, :cond_3df

    if-lez v9, :cond_3df

    iget-object v2, v1, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v4, v6, :cond_3d4

    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v4, v6, :cond_3df

    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_3d5

    :cond_3d4
    move-object v4, v10

    :goto_3d5
    if-nez v4, :cond_3d9

    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_3d9
    invoke-interface {v2, v5, v9, v4}, Lcom/bumptech/glide/load/b/a/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_3df
    iget-object v2, v1, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    move-object/from16 v4, p9

    invoke-static {v14, v3, v4, v2}, Lcom/bumptech/glide/load/d/a/o;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, v1, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v4, v5, v2}, Lcom/bumptech/glide/load/d/a/o$a;->a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)V

    const-string v4, "Downsampler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_484

    const-string v4, "Downsampler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Decoded "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with inBitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], sample size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", target density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", thread: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", duration: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v16

    invoke-static {v6, v7}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_484
    if-eqz v2, :cond_4a0

    iget-object v3, v1, Lcom/bumptech/glide/load/d/a/o;->n:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v3, v1, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    move/from16 v4, v18

    invoke-static {v3, v2, v4}, Lcom/bumptech/glide/load/d/a/z;->a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a0

    iget-object v3, v1, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v3, v2}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    :cond_4a0
    return-object v10
.end method

.method private a(Ljava/io/InputStream;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v5, Lcom/bumptech/glide/load/d/a/o;->f:Lcom/bumptech/glide/load/d/a/o$a;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/d/a/o;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/d/a/o$a;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .registers 8

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception decoding bitmap, outWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outHeight: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outMimeType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", inBitmap: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_22
    const-string v0, ""

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V
    .registers 12

    const-string v0, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decoded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " from ["

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with inBitmap "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], sample size: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", density: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", target density: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", thread: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", duration: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7, p8}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/b/a/e;II)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_15
    invoke-interface {p1, p2, p3, v0}, Lcom/bumptech/glide/load/b/a/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Ljava/io/InputStream;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/d/a/n;IIIIILandroid/graphics/BitmapFactory$Options;)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    if-lez v3, :cond_1e4

    if-gtz v4, :cond_16

    goto/16 :goto_1e4

    :cond_16
    const/16 v8, 0x5a

    if-eq v2, v8, :cond_24

    const/16 v8, 0x10e

    if-ne v2, v8, :cond_1f

    goto :goto_24

    :cond_1f
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result v2

    goto :goto_28

    :cond_24
    :goto_24
    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result v2

    :goto_28
    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_6e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot scale with factor: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source: ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], target: ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    invoke-virtual/range {p4 .. p4}, Lcom/bumptech/glide/load/d/a/n;->a()I

    move-result v8

    if-nez v8, :cond_7c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    int-to-float v9, v3

    mul-float v10, v2, v9

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v10, v10

    int-to-float v11, v4

    mul-float v14, v2, v11

    float-to-double v14, v14

    add-double/2addr v14, v12

    double-to-int v14, v14

    div-int v10, v3, v10

    div-int v14, v4, v14

    sget v15, Lcom/bumptech/glide/load/d/a/n$g;->MEMORY$3973276c:I

    if-ne v8, v15, :cond_97

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_9b

    :cond_97
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_9b
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    const/4 v12, 0x1

    if-gt v14, v15, :cond_ae

    sget-object v13, Lcom/bumptech/glide/load/d/a/o;->i:Ljava/util/Set;

    iget-object v14, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ae

    const/4 v8, 0x1

    goto :goto_c6

    :cond_ae
    invoke-static {v10}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    sget v13, Lcom/bumptech/glide/load/d/a/n$g;->MEMORY$3973276c:I

    if-ne v8, v13, :cond_c5

    int-to-float v8, v10

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v2

    cmpg-float v8, v8, v13

    if-gez v8, :cond_c5

    shl-int/lit8 v8, v10, 0x1

    goto :goto_c6

    :cond_c5
    move v8, v10

    :goto_c6
    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v13, 0x0

    if-ne v0, v10, :cond_e9

    const/16 v0, 0x8

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v9, v0

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    div-float/2addr v11, v0

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    div-int/lit8 v10, v8, 0x8

    if-lez v10, :cond_139

    div-int/2addr v9, v10

    div-int/2addr v0, v10

    goto :goto_139

    :cond_e9
    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v0, v10, :cond_12a

    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v0, v10, :cond_f2

    goto :goto_12a

    :cond_f2
    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v0, v10, :cond_118

    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v0, v10, :cond_fb

    goto :goto_118

    :cond_fb
    rem-int v0, v3, v8

    if-nez v0, :cond_109

    rem-int v0, v4, v8

    if-eqz v0, :cond_104

    goto :goto_109

    :cond_104
    div-int v9, v3, v8

    div-int v0, v4, v8

    goto :goto_139

    :cond_109
    :goto_109
    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static {v0, v7, v9, v10}, Lcom/bumptech/glide/load/d/a/o;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)[I

    move-result-object v0

    aget v9, v0, v13

    aget v0, v0, v12

    goto :goto_139

    :cond_118
    :goto_118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v0, v10, :cond_12a

    int-to-float v0, v8

    div-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    div-float/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_139

    :cond_12a
    :goto_12a
    int-to-float v0, v8

    div-float/2addr v9, v0

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    div-float/2addr v11, v0

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v0, v10

    :cond_139
    :goto_139
    invoke-virtual {v1, v9, v0, v5, v6}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result v1

    float-to-double v10, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x13

    if-lt v1, v14, :cond_164

    invoke-static {v10, v11}, Lcom/bumptech/glide/load/d/a/o;->b(D)I

    move-result v1

    int-to-double v14, v1

    mul-double v14, v14, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v14, v14

    int-to-float v15, v14

    int-to-float v1, v1

    div-float/2addr v15, v1

    float-to-double v12, v15

    div-double v12, v10, v12

    int-to-double v14, v14

    mul-double v12, v12, v14

    add-double v12, v12, v16

    double-to-int v1, v12

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-static {v10, v11}, Lcom/bumptech/glide/load/d/a/o;->b(D)I

    move-result v1

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :cond_164
    invoke-static/range {p10 .. p10}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    if-eqz v1, :cond_16e

    const/4 v1, 0x1

    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_173

    :cond_16e
    const/4 v1, 0x0

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_173
    const-string v1, "Downsampler"

    const/4 v12, 0x2

    invoke-static {v1, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1e3

    const-string v1, "Downsampler"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Calculate scaling, source: ["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], target: ["

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], power of two scaled: ["

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], exact scale factor: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", power of 2 sample size: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", adjusted scale factor: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", target density: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", density: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e3
    return-void

    :cond_1e4
    :goto_1e4
    const-string v1, "Downsampler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_215

    const-string v1, "Downsampler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to determine dimensions for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with target ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_215
    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/bumptech/glide/load/b;ZZLandroid/graphics/BitmapFactory$Options;II)V
    .registers 12

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/o;->q:Lcom/bumptech/glide/load/d/a/t;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_27

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p3, v3, :cond_27

    if-eqz p4, :cond_f

    goto :goto_27

    :cond_f
    const/16 p3, 0x80

    if-lt p6, p3, :cond_1d

    if-lt p7, p3, :cond_1d

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/a/t;->b()Z

    move-result p3

    if-eqz p3, :cond_1d

    const/4 p3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p3, 0x0

    :goto_1e
    if-eqz p3, :cond_28

    sget-object p4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object p4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p3, 0x0

    :cond_28
    :goto_28
    if-eqz p3, :cond_2b

    return-void

    :cond_2b
    sget-object p3, Lcom/bumptech/glide/load/b;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/b;

    if-eq p2, p3, :cond_73

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x10

    if-ne p3, p4, :cond_36

    goto :goto_73

    :cond_36
    :try_start_36
    iget-object p3, p0, Lcom/bumptech/glide/load/d/a/o;->p:Ljava/util/List;

    iget-object p4, p0, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    invoke-static {p3, p1, p4}, Lcom/bumptech/glide/load/f;->a(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result p1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_42} :catch_43

    goto :goto_61

    :catch_43
    move-exception p1

    const-string p3, "Downsampler"

    const/4 p4, 0x3

    invoke-static {p3, p4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_60

    const-string p3, "Downsampler"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p6, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_60
    const/4 p1, 0x0

    :goto_61
    if-eqz p1, :cond_66

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_68

    :cond_66
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_68
    iput-object p1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object p1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, p2, :cond_72

    iput-boolean v1, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    :cond_72
    return-void

    :cond_73
    :goto_73
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public static a()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;)Z
    .registers 2

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_10

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v0, :cond_10

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v0, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    sget-object v0, Lcom/bumptech/glide/load/d/a/o;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/d/a/o;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p3, p2, p0

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, p2, v0

    return-object p2
.end method

.method private static b(D)I
    .registers 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_7

    goto :goto_9

    :cond_7
    div-double p0, v0, p0

    :goto_9
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private static b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)Landroid/graphics/Bitmap;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_a

    const/high16 v0, 0xa00000

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    goto :goto_d

    :cond_a
    invoke-interface {p2}, Lcom/bumptech/glide/load/d/a/o$a;->a()V

    :goto_d
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {}, Lcom/bumptech/glide/load/d/a/z;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    :try_start_1b
    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1f} :catch_30
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2e

    invoke-static {}, Lcom/bumptech/glide/load/d/a/z;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_2d
    return-object v4

    :catchall_2e
    move-exception p0

    goto :goto_8e

    :catch_30
    move-exception v4

    :try_start_31
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception decoding bitmap, outWidth: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", outHeight: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", outMimeType: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", inBitmap: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Downsampler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "Downsampler"

    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_72
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_74
    .catchall {:try_start_31 .. :try_end_74} :catchall_2e

    if-eqz v0, :cond_8d

    :try_start_76
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v0}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    iput-object v3, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/d/a/o;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_84} :catch_8c
    .catchall {:try_start_76 .. :try_end_84} :catchall_2e

    invoke-static {}, Lcom/bumptech/glide/load/d/a/z;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catch_8c
    :try_start_8c
    throw v5

    :cond_8d
    throw v5
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_2e

    :goto_8e
    invoke-static {}, Lcom/bumptech/glide/load/d/a/z;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private static c(D)I
    .registers 4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private static declared-synchronized c()Landroid/graphics/BitmapFactory$Options;
    .registers 3

    const-class v0, Lcom/bumptech/glide/load/d/a/o;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/d/a/o;->k:Ljava/util/Queue;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    :try_start_6
    sget-object v2, Lcom/bumptech/glide/load/d/a/o;->k:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1b

    if-nez v2, :cond_19

    :try_start_11
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2}, Lcom/bumptech/glide/load/d/a/o;->d(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    :cond_19
    monitor-exit v0

    return-object v2

    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3

    invoke-static {p0}, Lcom/bumptech/glide/load/d/a/o;->d(Landroid/graphics/BitmapFactory$Options;)V

    sget-object v0, Lcom/bumptech/glide/load/d/a/o;->k:Ljava/util/Queue;

    monitor-enter v0

    :try_start_6
    sget-object v1, Lcom/bumptech/glide/load/d/a/o;->k:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private static d(Landroid/graphics/BitmapFactory$Options;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;IILcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/d/a/o$a;)Lcom/bumptech/glide/load/b/u;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/j;",
            "Lcom/bumptech/glide/load/d/a/o$a;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    const-string v8, "You must provide an InputStream that supports mark()"

    invoke-static {v7, v8}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iget-object v7, v1, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    const-class v8, [B

    const/high16 v9, 0x10000

    invoke-interface {v7, v9, v8}, Lcom/bumptech/glide/load/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {}, Lcom/bumptech/glide/load/d/a/o;->c()Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    iput-object v7, v8, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v9, Lcom/bumptech/glide/load/d/a/o;->b:Lcom/bumptech/glide/load/i;

    invoke-virtual {v5, v9}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/load/b;

    sget-object v10, Lcom/bumptech/glide/load/d/a/n;->h:Lcom/bumptech/glide/load/i;

    invoke-virtual {v5, v10}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bumptech/glide/load/d/a/n;

    sget-object v11, Lcom/bumptech/glide/load/d/a/o;->d:Lcom/bumptech/glide/load/i;

    invoke-virtual {v5, v11}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    sget-object v12, Lcom/bumptech/glide/load/d/a/o;->e:Lcom/bumptech/glide/load/i;

    invoke-virtual {v5, v12}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_5c

    sget-object v12, Lcom/bumptech/glide/load/d/a/o;->e:Lcom/bumptech/glide/load/i;

    invoke-virtual {v5, v12}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5c

    const/4 v5, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v5, 0x0

    :goto_5d
    :try_start_5d
    invoke-static {}, Lcom/bumptech/glide/util/e;->a()J

    move-result-wide v14

    iget-object v12, v1, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {v2, v8, v6, v12}, Lcom/bumptech/glide/load/d/a/o;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)[I

    move-result-object v12

    move/from16 v17, v5

    aget v5, v12, v13

    const/16 v16, 0x1

    aget v12, v12, v16

    iget-object v13, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_5d .. :try_end_71} :catchall_532

    move-object/from16 v18, v7

    const/4 v7, -0x1

    if-eq v5, v7, :cond_78

    if-ne v12, v7, :cond_7a

    :cond_78
    const/16 v17, 0x0

    :cond_7a
    :try_start_7a
    iget-object v7, v1, Lcom/bumptech/glide/load/d/a/o;->p:Ljava/util/List;

    move-wide/from16 v19, v14

    iget-object v14, v1, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    invoke-static {v7, v2, v14}, Lcom/bumptech/glide/load/f;->b(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)I

    move-result v7

    invoke-static {v7}, Lcom/bumptech/glide/load/d/a/z;->a(I)I

    move-result v14

    invoke-static {v7}, Lcom/bumptech/glide/load/d/a/z;->b(I)Z

    move-result v15

    move/from16 v21, v7

    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_93

    move v3, v5

    :cond_93
    if-ne v4, v7, :cond_97

    move v7, v12

    goto :goto_98

    :cond_97
    move v7, v4

    :goto_98
    iget-object v4, v1, Lcom/bumptech/glide/load/d/a/o;->p:Ljava/util/List;

    move-object/from16 v22, v13

    iget-object v13, v1, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    invoke-static {v4, v2, v13}, Lcom/bumptech/glide/load/f;->a(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v4

    iget-object v13, v1, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    move/from16 v23, v11

    const/high16 v24, 0x3f800000    # 1.0f

    if-lez v5, :cond_2b9

    if-gtz v12, :cond_ae

    goto/16 :goto_2b9

    :cond_ae
    const/16 v11, 0x5a

    if-eq v14, v11, :cond_bc

    const/16 v11, 0x10e

    if-ne v14, v11, :cond_b7

    goto :goto_bc

    :cond_b7
    invoke-virtual {v10, v5, v12, v3, v7}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result v11

    goto :goto_c0

    :cond_bc
    :goto_bc
    invoke-virtual {v10, v12, v5, v3, v7}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result v11

    :goto_c0
    const/4 v14, 0x0

    cmpg-float v14, v11, v14

    if-gtz v14, :cond_106

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Cannot scale with factor: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " from: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", source: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], target: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_106
    invoke-virtual {v10}, Lcom/bumptech/glide/load/d/a/n;->a()I

    move-result v14

    if-nez v14, :cond_114

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot round with null rounding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_114
    .catchall {:try_start_7a .. :try_end_114} :catchall_52d

    :cond_114
    move-object/from16 v25, v9

    int-to-float v9, v5

    move/from16 v26, v15

    mul-float v15, v11, v9

    float-to-double v1, v15

    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    add-double v1, v1, v27

    double-to-int v1, v1

    int-to-float v2, v12

    mul-float v15, v11, v2

    move/from16 v29, v7

    float-to-double v6, v15

    add-double v6, v6, v27

    double-to-int v6, v6

    :try_start_12a
    div-int v1, v5, v1

    div-int v6, v12, v6

    sget v7, Lcom/bumptech/glide/load/d/a/n$g;->MEMORY$3973276c:I

    if-ne v14, v7, :cond_137

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_13b

    :cond_137
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_13b
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-gt v6, v7, :cond_14d

    sget-object v6, Lcom/bumptech/glide/load/d/a/o;->i:Ljava/util/Set;

    iget-object v7, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14d

    const/4 v14, 0x1

    goto :goto_165

    :cond_14d
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v6, 0x1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v6, Lcom/bumptech/glide/load/d/a/n$g;->MEMORY$3973276c:I

    if-ne v14, v6, :cond_164

    int-to-float v6, v1

    div-float v7, v24, v11

    cmpg-float v6, v6, v7

    if-gez v6, :cond_164

    shl-int/lit8 v14, v1, 0x1

    goto :goto_165

    :cond_164
    move v14, v1

    :goto_165
    iput v14, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v4, v1, :cond_194

    const/16 v1, 0x8

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v9, v1

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v2, v14, 0x8

    if-lez v2, :cond_186

    div-int/2addr v6, v2

    div-int/2addr v1, v2

    :cond_186
    :goto_186
    move v2, v1

    move v9, v6

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v12, v29

    move-object/from16 v1, p1

    move-object/from16 v6, p5

    goto/16 :goto_202

    :cond_194
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v4, v1, :cond_1e9

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v4, v1, :cond_19d

    goto :goto_1e9

    :cond_19d
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v4, v1, :cond_1c3

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v4, v1, :cond_1a6

    goto :goto_1c3

    :cond_1a6
    rem-int v1, v5, v14

    if-nez v1, :cond_1b4

    rem-int v1, v12, v14

    if-eqz v1, :cond_1af

    goto :goto_1b4

    :cond_1af
    div-int v6, v5, v14

    div-int v1, v12, v14

    goto :goto_186

    :cond_1b4
    :goto_1b4
    move-object/from16 v1, p1

    move-object/from16 v6, p5

    invoke-static {v1, v8, v6, v13}, Lcom/bumptech/glide/load/d/a/o;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)[I

    move-result-object v2

    const/4 v7, 0x0

    aget v9, v2, v7

    const/4 v7, 0x1

    aget v2, v2, v7

    goto :goto_1d8

    :cond_1c3
    :goto_1c3
    move-object/from16 v1, p1

    move-object/from16 v6, p5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    if-lt v7, v13, :cond_1dd

    int-to-float v7, v14

    div-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    :goto_1d8
    move/from16 v30, v11

    move/from16 v31, v12

    goto :goto_200

    :cond_1dd
    int-to-float v7, v14

    div-float/2addr v9, v7

    move/from16 v30, v11

    move/from16 v31, v12

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    goto :goto_1f8

    :cond_1e9
    :goto_1e9
    move/from16 v30, v11

    move/from16 v31, v12

    move-object/from16 v1, p1

    move-object/from16 v6, p5

    int-to-float v7, v14

    div-float/2addr v9, v7

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    :goto_1f8
    double-to-int v9, v11

    div-float/2addr v2, v7

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v2, v11

    :goto_200
    move/from16 v12, v29

    :goto_202
    invoke-virtual {v10, v9, v2, v3, v12}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result v7

    float-to-double v10, v7

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v7, v13, :cond_22e

    invoke-static {v10, v11}, Lcom/bumptech/glide/load/d/a/o;->b(D)I

    move-result v7

    move/from16 v32, v14

    int-to-double v13, v7

    mul-double v13, v13, v10

    add-double v13, v13, v27

    double-to-int v13, v13

    int-to-float v14, v13

    int-to-float v7, v7

    div-float/2addr v14, v7

    float-to-double v14, v14

    div-double v14, v10, v14

    int-to-double v6, v13

    mul-double v14, v14, v6

    add-double v14, v14, v27

    double-to-int v6, v14

    iput v6, v8, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-static {v10, v11}, Lcom/bumptech/glide/load/d/a/o;->b(D)I

    move-result v6

    iput v6, v8, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_230

    :cond_22e
    move/from16 v32, v14

    :goto_230
    invoke-static {v8}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v6

    if-eqz v6, :cond_23a

    const/4 v6, 0x1

    iput-boolean v6, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_23f

    :cond_23a
    const/4 v6, 0x0

    iput v6, v8, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v6, v8, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_23f
    const-string v6, "Downsampler"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2b6

    const-string v6, "Downsampler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "Calculate scaling, source: ["

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "x"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v31

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "], target: ["

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "], power of two scaled: ["

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], exact scale factor: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v30

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", power of 2 sample size: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v32

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adjusted scale factor: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", target density: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", density: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b5
    .catchall {:try_start_12a .. :try_end_2b5} :catchall_2f2

    goto :goto_2fa

    :cond_2b6
    move/from16 v13, v31

    goto :goto_2fa

    :cond_2b9
    :goto_2b9
    move-object v1, v2

    move-object/from16 v25, v9

    move v13, v12

    move/from16 v26, v15

    move v12, v7

    :try_start_2c0
    const-string v2, "Downsampler"

    const/4 v6, 0x3

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2
    :try_end_2c7
    .catchall {:try_start_2c0 .. :try_end_2c7} :catchall_527

    if-eqz v2, :cond_2fa

    :try_start_2c9
    const-string v2, "Downsampler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to determine dimensions for: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with target ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f1
    .catchall {:try_start_2c9 .. :try_end_2f1} :catchall_2f2

    goto :goto_2fa

    :catchall_2f2
    move-exception v0

    move-object v1, v0

    move-object/from16 v7, v18

    move-object/from16 v2, p0

    goto/16 :goto_535

    :cond_2fa
    :goto_2fa
    move-object/from16 v2, p0

    :try_start_2fc
    iget-object v6, v2, Lcom/bumptech/glide/load/d/a/o;->q:Lcom/bumptech/glide/load/d/a/t;
    :try_end_2fe
    .catchall {:try_start_2fc .. :try_end_2fe} :catchall_525

    const/16 v7, 0x1a

    if-eqz v17, :cond_32a

    :try_start_302
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v7, :cond_32a

    if-eqz v26, :cond_309

    goto :goto_32a

    :cond_309
    const/16 v9, 0x80

    if-lt v3, v9, :cond_317

    if-lt v12, v9, :cond_317

    invoke-virtual {v6}, Lcom/bumptech/glide/load/d/a/t;->b()Z

    move-result v6

    if-eqz v6, :cond_317

    const/4 v6, 0x1

    goto :goto_318

    :cond_317
    const/4 v6, 0x0

    :goto_318
    if-eqz v6, :cond_322

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v9, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_32c

    :cond_322
    const/4 v9, 0x0

    goto :goto_32c

    :catchall_324
    move-exception v0

    move-object v1, v0

    move-object/from16 v7, v18

    goto/16 :goto_535

    :cond_32a
    :goto_32a
    const/4 v9, 0x0

    const/4 v6, 0x0

    :goto_32c
    if-nez v6, :cond_37e

    sget-object v6, Lcom/bumptech/glide/load/b;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/b;

    move-object/from16 v10, v25

    if-eq v10, v6, :cond_37a

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_336
    .catchall {:try_start_302 .. :try_end_336} :catchall_324

    const/16 v11, 0x10

    if-ne v6, v11, :cond_33b

    goto :goto_37a

    :cond_33b
    :try_start_33b
    iget-object v6, v2, Lcom/bumptech/glide/load/d/a/o;->p:Ljava/util/List;

    iget-object v11, v2, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    invoke-static {v6, v1, v11}, Lcom/bumptech/glide/load/f;->a(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v6
    :try_end_347
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_347} :catch_348
    .catchall {:try_start_33b .. :try_end_347} :catchall_324

    goto :goto_367

    :catch_348
    move-exception v0

    move-object v6, v0

    :try_start_34a
    const-string v11, "Downsampler"

    const/4 v14, 0x3

    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_366

    const-string v11, "Downsampler"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_366
    const/4 v6, 0x0

    :goto_367
    if-eqz v6, :cond_36c

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_36e

    :cond_36c
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_36e
    iput-object v6, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v6, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v6, v10, :cond_37e

    const/4 v6, 0x1

    iput-boolean v6, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_37e

    :cond_37a
    :goto_37a
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_37e
    .catchall {:try_start_34a .. :try_end_37e} :catchall_324

    :cond_37e
    :goto_37e
    :try_start_37e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v6, v10, :cond_385

    const/4 v9, 0x1

    :cond_385
    iget v6, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v6, v11, :cond_38d

    if-eqz v9, :cond_453

    :cond_38d
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x13

    if-lt v6, v14, :cond_394

    goto :goto_39b

    :cond_394
    sget-object v6, Lcom/bumptech/glide/load/d/a/o;->j:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14
    :try_end_39a
    .catchall {:try_start_37e .. :try_end_39a} :catchall_525

    move v11, v14

    :goto_39b
    if-eqz v11, :cond_453

    if-ltz v5, :cond_3a8

    if-ltz v13, :cond_3a8

    if-eqz v23, :cond_3a8

    if-eqz v9, :cond_3a8

    move v9, v12

    goto/16 :goto_435

    :cond_3a8
    :try_start_3a8
    invoke-static {v8}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_3b9

    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v4, v4

    div-float v24, v3, v4

    move/from16 v3, v24

    goto :goto_3bb

    :cond_3b9
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3bb
    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v5

    int-to-float v9, v4

    div-float/2addr v6, v9

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v6, v11

    int-to-float v11, v13

    div-float/2addr v11, v9

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v9, v11

    int-to-float v6, v6

    mul-float v6, v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v9, v9

    mul-float v9, v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    const-string v11, "Downsampler"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_434

    const-string v11, "Downsampler"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Calculated target ["

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] for source ["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "], sampleSize: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", targetDensity: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", density: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", density multiplier: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_434
    move v3, v6

    :goto_435
    if-lez v3, :cond_453

    if-lez v9, :cond_453

    iget-object v4, v2, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_448

    iget-object v6, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v6, v7, :cond_453

    iget-object v6, v8, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_449

    :cond_448
    move-object v6, v10

    :goto_449
    if-nez v6, :cond_44d

    iget-object v6, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_44d
    invoke-interface {v4, v3, v9, v6}, Lcom/bumptech/glide/load/b/a/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v8, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_453
    .catchall {:try_start_3a8 .. :try_end_453} :catchall_324

    :cond_453
    :try_start_453
    iget-object v3, v2, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    move-object/from16 v4, p5

    invoke-static {v1, v8, v4, v3}, Lcom/bumptech/glide/load/d/a/o;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/d/a/o$a;Lcom/bumptech/glide/load/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, v2, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v4, v3, v1}, Lcom/bumptech/glide/load/d/a/o$a;->a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)V

    const-string v3, "Downsampler"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3
    :try_end_467
    .catchall {:try_start_453 .. :try_end_467} :catchall_525

    if-eqz v3, :cond_4f8

    :try_start_469
    const-string v3, "Downsampler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Decoded "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with inBitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], sample size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", target density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v19

    invoke-static {v5, v6}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f8
    if-eqz v1, :cond_514

    iget-object v3, v2, Lcom/bumptech/glide/load/d/a/o;->n:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v3, v2, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    move/from16 v4, v21

    invoke-static {v3, v1, v4}, Lcom/bumptech/glide/load/d/a/z;->a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_514

    iget-object v3, v2, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v3, v1}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V
    :try_end_514
    .catchall {:try_start_469 .. :try_end_514} :catchall_324

    :cond_514
    :try_start_514
    iget-object v1, v2, Lcom/bumptech/glide/load/d/a/o;->m:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {v10, v1}, Lcom/bumptech/glide/load/d/a/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;

    move-result-object v1
    :try_end_51a
    .catchall {:try_start_514 .. :try_end_51a} :catchall_525

    invoke-static {v8}, Lcom/bumptech/glide/load/d/a/o;->c(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v3, v2, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    move-object/from16 v7, v18

    invoke-interface {v3, v7}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    return-object v1

    :catchall_525
    move-exception v0

    goto :goto_52f

    :catchall_527
    move-exception v0

    move-object/from16 v7, v18

    move-object/from16 v2, p0

    goto :goto_534

    :catchall_52d
    move-exception v0

    move-object v2, v1

    :goto_52f
    move-object/from16 v7, v18

    goto :goto_534

    :catchall_532
    move-exception v0

    move-object v2, v1

    :goto_534
    move-object v1, v0

    :goto_535
    invoke-static {v8}, Lcom/bumptech/glide/load/d/a/o;->c(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v3, v2, Lcom/bumptech/glide/load/d/a/o;->o:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v3, v7}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    throw v1
.end method
