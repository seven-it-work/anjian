.class final Lcom/didi/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/internal/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdaptationResourcesCompat"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/didi/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;->createResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private static createResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/res/AssetManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/util/DisplayMetrics;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/content/res/Configuration;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lcom/didi/virtualapk/utils/Reflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method
