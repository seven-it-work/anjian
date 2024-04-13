.class public final Lcom/android/volley/toolbox/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/k$a;,
        Lcom/android/volley/toolbox/k$c;,
        Lcom/android/volley/toolbox/k$d;,
        Lcom/android/volley/toolbox/k$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/k$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/k$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Runnable;

.field private final d:Lcom/android/volley/m;

.field private e:I

.field private final f:Lcom/android/volley/toolbox/k$b;

.field private final g:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/android/volley/m;Lcom/android/volley/toolbox/k$b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/volley/toolbox/k;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/k;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/k;->b:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/k;->g:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/volley/toolbox/k;->d:Lcom/android/volley/m;

    iput-object p2, p0, Lcom/android/volley/toolbox/k;->f:Lcom/android/volley/toolbox/k$b;

    return-void
.end method

.method private a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;Lcom/android/volley/toolbox/l$a;)Lcom/android/volley/l;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/l$a;",
            ")",
            "Lcom/android/volley/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    new-instance v10, Lcom/android/volley/toolbox/l;

    new-instance v3, Lcom/android/volley/toolbox/k$2;

    invoke-direct {v3, v0, v1}, Lcom/android/volley/toolbox/k$2;-><init>(Lcom/android/volley/toolbox/k;Ljava/lang/String;)V

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v9, Lcom/android/volley/toolbox/k$3;

    invoke-direct {v9, v0, v1}, Lcom/android/volley/toolbox/k$3;-><init>(Lcom/android/volley/toolbox/k;Ljava/lang/String;)V

    move-object v1, v10

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/volley/toolbox/l;-><init>(Ljava/lang/String;Lcom/android/volley/n$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/toolbox/l$a;Lcom/android/volley/n$a;)V

    return-object v10
.end method

.method private a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;)Lcom/android/volley/toolbox/k$c;
    .registers 10

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;IILandroid/widget/ImageView$ScaleType;Lcom/android/volley/toolbox/l$a;)Lcom/android/volley/toolbox/k$c;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;II)Lcom/android/volley/toolbox/k$c;
    .registers 12

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;IILandroid/widget/ImageView$ScaleType;Lcom/android/volley/toolbox/l$a;)Lcom/android/volley/toolbox/k$c;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;Landroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/k$c;
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;IILandroid/widget/ImageView$ScaleType;Lcom/android/volley/toolbox/l$a;)Lcom/android/volley/toolbox/k$c;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/k$d;
    .registers 4

    new-instance v0, Lcom/android/volley/toolbox/k$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/volley/toolbox/k$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Lcom/android/volley/toolbox/l$a;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#W"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "#H"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "#S"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_32

    const-string p0, "#T"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/volley/toolbox/l$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/volley/toolbox/k;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private static a()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/android/volley/toolbox/k;->e:I

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/android/volley/toolbox/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k$a;

    if-eqz v0, :cond_f

    iput-object p2, v0, Lcom/android/volley/toolbox/k$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$a;)V

    :cond_f
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/volley/s;)V
    .registers 4

    iget-object v0, p0, Lcom/android/volley/toolbox/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k$a;

    if-eqz v0, :cond_f

    iput-object p2, v0, Lcom/android/volley/toolbox/k$a;->b:Lcom/android/volley/s;

    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$a;)V

    :cond_f
    return-void
.end method

.method private a(Ljava/lang/String;II)Z
    .registers 5

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/toolbox/k;->b(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/volley/toolbox/k;->b(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z

    move-result p1

    return p1
.end method

.method private static synthetic b(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/volley/toolbox/k;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method private b(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .registers 6

    invoke-static {}, Lcom/android/volley/toolbox/k;->a()V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Lcom/android/volley/toolbox/l$a;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/volley/toolbox/k;->f:Lcom/android/volley/toolbox/k$b;

    invoke-interface {p1}, Lcom/android/volley/toolbox/k$b;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic c(Lcom/android/volley/toolbox/k;)Ljava/lang/Runnable;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/k;->c:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/volley/toolbox/k$d;IILandroid/widget/ImageView$ScaleType;Lcom/android/volley/toolbox/l$a;)Lcom/android/volley/toolbox/k$c;
    .registers 23

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-static {}, Lcom/android/volley/toolbox/k;->a()V

    move-object/from16 v8, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-static {v8, v10, v11, v12, v14}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Lcom/android/volley/toolbox/l$a;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v6, Lcom/android/volley/toolbox/k;->f:Lcom/android/volley/toolbox/k$b;

    invoke-interface {v0}, Lcom/android/volley/toolbox/k$b;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v9, 0x1

    if-eqz v2, :cond_2c

    new-instance v10, Lcom/android/volley/toolbox/k$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, v6

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/k$c;-><init>(Lcom/android/volley/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/k$d;)V

    invoke-interface {v7, v10, v9}, Lcom/android/volley/toolbox/k$d;->a(Lcom/android/volley/toolbox/k$c;Z)V

    return-object v10

    :cond_2c
    new-instance v13, Lcom/android/volley/toolbox/k$c;

    const/4 v2, 0x0

    move-object v0, v13

    move-object v1, v6

    move-object v3, v8

    move-object v4, v15

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/k$c;-><init>(Lcom/android/volley/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/k$d;)V

    invoke-interface {v7, v13, v9}, Lcom/android/volley/toolbox/k$d;->a(Lcom/android/volley/toolbox/k$c;Z)V

    iget-object v0, v6, Lcom/android/volley/toolbox/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k$a;

    if-eqz v0, :cond_4a

    iget-object v0, v0, Lcom/android/volley/toolbox/k$a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v13

    :cond_4a
    new-instance v0, Lcom/android/volley/toolbox/l;

    new-instance v9, Lcom/android/volley/toolbox/k$2;

    invoke-direct {v9, v6, v15}, Lcom/android/volley/toolbox/k$2;-><init>(Lcom/android/volley/toolbox/k;Ljava/lang/String;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v2, Lcom/android/volley/toolbox/k$3;

    invoke-direct {v2, v6, v15}, Lcom/android/volley/toolbox/k$3;-><init>(Lcom/android/volley/toolbox/k;Ljava/lang/String;)V

    move-object v7, v0

    move-object v3, v13

    move-object v13, v1

    move-object v1, v15

    move-object v15, v2

    invoke-direct/range {v7 .. v15}, Lcom/android/volley/toolbox/l;-><init>(Ljava/lang/String;Lcom/android/volley/n$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/toolbox/l$a;Lcom/android/volley/n$a;)V

    iget-object v2, v6, Lcom/android/volley/toolbox/k;->d:Lcom/android/volley/m;

    invoke-virtual {v2, v0}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    iget-object v2, v6, Lcom/android/volley/toolbox/k;->a:Ljava/util/HashMap;

    new-instance v4, Lcom/android/volley/toolbox/k$a;

    invoke-direct {v4, v6, v0, v3}, Lcom/android/volley/toolbox/k$a;-><init>(Lcom/android/volley/toolbox/k;Lcom/android/volley/l;Lcom/android/volley/toolbox/k$c;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method final a(Ljava/lang/String;Lcom/android/volley/toolbox/k$a;)V
    .registers 5

    iget-object v0, p0, Lcom/android/volley/toolbox/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/volley/toolbox/k;->c:Ljava/lang/Runnable;

    if-nez p1, :cond_1a

    new-instance p1, Lcom/android/volley/toolbox/k$4;

    invoke-direct {p1, p0}, Lcom/android/volley/toolbox/k$4;-><init>(Lcom/android/volley/toolbox/k;)V

    iput-object p1, p0, Lcom/android/volley/toolbox/k;->c:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/volley/toolbox/k;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/volley/toolbox/k;->c:Ljava/lang/Runnable;

    iget v0, p0, Lcom/android/volley/toolbox/k;->e:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method
