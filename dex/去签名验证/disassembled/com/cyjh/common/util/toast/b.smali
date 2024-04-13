.class public final Lcom/cyjh/common/util/toast/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(F)I
    .registers 5

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float p0, p0, v0

    const/high16 v0, 0x42900000    # 72.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method private static a(Landroid/content/res/Resources;)I
    .registers 4
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/res/Resources;I)Landroid/content/res/Resources;
    .registers 4
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x42900000    # 72.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/b;->a(Landroid/content/res/Resources;F)V

    return-object p0
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/reflect/Field;)Landroid/util/DisplayMetrics;
    .registers 2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()Ljava/lang/Runnable;
    .registers 1

    new-instance v0, Lcom/cyjh/common/util/toast/b$1;

    invoke-direct {v0}, Lcom/cyjh/common/util/toast/b$1;-><init>()V

    return-object v0
.end method

.method static a(Landroid/content/res/Resources;F)V
    .registers 9
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    sget-object v0, Lcom/cyjh/common/util/toast/b;->a:Ljava/util/List;

    if-nez v0, :cond_5a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/b;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_59

    array-length v2, v1

    if-lez v2, :cond_59

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v2, :cond_52

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p0, v4}, Lcom/cyjh/common/util/toast/b;->a(Landroid/content/res/Resources;Ljava/lang/reflect/Field;)Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz v5, :cond_4f

    sget-object v6, Lcom/cyjh/common/util/toast/b;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p1, v5, Landroid/util/DisplayMetrics;->xdpi:F

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_52
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_59

    goto :goto_23

    :cond_59
    return-void

    :cond_5a
    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/b;->c(Landroid/content/res/Resources;F)V

    return-void
.end method

.method private static b(F)I
    .registers 5

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42900000    # 72.0f

    mul-float p0, p0, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method private static b(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .registers 3
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42900000    # 72.0f

    mul-float v0, v0, v1

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/b;->a(Landroid/content/res/Resources;F)V

    return-object p0
.end method

.method private static b(Landroid/content/res/Resources;I)Landroid/content/res/Resources;
    .registers 4
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    const/high16 v1, 0x42900000    # 72.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/b;->a(Landroid/content/res/Resources;F)V

    return-object p0
.end method

.method private static b()V
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/b;->a(Landroid/content/res/Resources;F)V

    return-void
.end method

.method private static b(Landroid/content/res/Resources;F)V
    .registers 9

    sget-object v0, Lcom/cyjh/common/util/toast/b;->a:Ljava/util/List;

    if-nez v0, :cond_46

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/b;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_45

    array-length v2, v1

    if-lez v2, :cond_45

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_3e

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p0, v4}, Lcom/cyjh/common/util/toast/b;->a(Landroid/content/res/Resources;Ljava/lang/reflect/Field;)Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz v5, :cond_3b

    sget-object v6, Lcom/cyjh/common/util/toast/b;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p1, v5, Landroid/util/DisplayMetrics;->xdpi:F

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_45

    goto :goto_f

    :cond_45
    return-void

    :cond_46
    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/b;->c(Landroid/content/res/Resources;F)V

    return-void
.end method

.method private static c(Landroid/content/res/Resources;I)Landroid/content/res/Resources;
    .registers 4
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    const/high16 v1, 0x42900000    # 72.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/b;->a(Landroid/content/res/Resources;F)V

    return-object p0
.end method

.method private static synthetic c()V
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/b;->a(Landroid/content/res/Resources;F)V

    return-void
.end method

.method private static c(Landroid/content/res/Resources;F)V
    .registers 4

    sget-object v0, Lcom/cyjh/common/util/toast/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    :try_start_12
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_6

    iput p1, v1, Landroid/util/DisplayMetrics;->xdpi:F
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_6

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_22
    return-void
.end method
