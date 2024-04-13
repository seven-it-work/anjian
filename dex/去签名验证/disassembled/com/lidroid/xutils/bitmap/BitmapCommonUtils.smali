.class public Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;
.super Ljava/lang/Object;


# static fields
.field private static screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 3

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    :try_start_4
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_18} :catch_20

    if-lez p0, :cond_20

    const p1, 0x7fffffff

    if-ge p0, p1, :cond_20

    return p0

    :catch_20
    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .registers 3

    sget-object v0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, p0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    sput-object v0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    :cond_17
    sget-object p0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    return-object p0
.end method

.method public static optimizeMaxSizeByView(Landroid/view/View;II)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .registers 6

    if-lez p1, :cond_a

    if-lez p2, :cond_a

    new-instance p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    return-object p0

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-lez v1, :cond_18

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_20

    :cond_18
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v2, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    :cond_20
    :goto_20
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_27

    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2f

    :cond_27
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_2f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    :cond_2f
    :goto_2f
    if-gtz p1, :cond_37

    const-string p1, "mMaxWidth"

    invoke-static {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    :cond_37
    if-gtz p2, :cond_3f

    const-string p2, "mMaxHeight"

    invoke-static {p0, p2}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p2

    :cond_3f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getScreenSize(Landroid/content/Context;)Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object p0

    if-gtz p1, :cond_4d

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result p1

    :cond_4d
    if-gtz p2, :cond_53

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result p2

    :cond_53
    new-instance p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    return-object p0
.end method
