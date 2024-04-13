.class Lcom/didi/virtualapk/internal/ResourcesManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForP;,
        Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForN;,
        Lcom/didi/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;,
        Lcom/didi/virtualapk/internal/ResourcesManager$NubiaResourcesCompat;,
        Lcom/didi/virtualapk/internal/ResourcesManager$VivoResourcesCompat;,
        Lcom/didi/virtualapk/internal/ResourcesManager$MiUiResourcesCompat;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.LoadedPlugin"

.field private static mDefaultConfiguration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/didi/virtualapk/internal/ResourcesManager;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Landroid/content/res/Configuration;
    .registers 1

    sget-object v0, Lcom/didi/virtualapk/internal/ResourcesManager;->mDefaultConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$502(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 1

    sput-object p0, Lcom/didi/virtualapk/internal/ResourcesManager;->mDefaultConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method private static append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    invoke-static {p0, p1}, Lcom/didi/virtualapk/internal/ResourcesManager;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    array-length v1, p0

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    if-eqz p0, :cond_17

    array-length v3, p0

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    add-int/lit8 v1, v1, -0x1

    aput-object p1, v2, v1

    return-object v2
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_15

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public static declared-synchronized createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/didi/virtualapk/internal/ResourcesManager;

    monitor-enter v0

    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_f

    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/ResourcesManager;->createResourcesForN(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1c

    monitor-exit v0

    return-object p0

    :cond_f
    :try_start_f
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/didi/virtualapk/internal/ResourcesManager;->createResourcesSimple(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/didi/virtualapk/internal/ResourcesManager;->hookResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object p1

    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static createResourcesForN(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/didi/virtualapk/internal/ResourcesManager;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    const-string v4, "mPackageInfo"

    invoke-virtual {v2, v4}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    invoke-static {v2}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    const-string v5, "mSplitResDirs"

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v5, p2}, Lcom/didi/virtualapk/internal/ResourcesManager;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v5

    const-string v6, "mResourceImpls"

    invoke-virtual {v5, v6}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_52
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-ge v7, v8, :cond_6c

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_68

    sget v7, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v7, :cond_68

    goto :goto_6c

    :cond_68
    invoke-static {v5, v6, v3, p2}, Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForN;->resolveResourcesImplMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_6c
    :goto_6c
    invoke-static {v5, v6, p0, v2}, Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForP;->resolveResourcesImplMap(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Landroid/app/LoadedApk;)V

    :goto_6f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    monitor-exit v4
    :try_end_76
    .catchall {:try_start_52 .. :try_end_76} :catchall_cd

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".vastub"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/app/ResourcesManager;->appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->getAllLoadedPlugins()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ae

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {p2, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->updateResources(Landroid/content/res/Resources;)V

    goto :goto_9e

    :cond_ae
    const-string p0, "VA.LoadedPlugin"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "createResourcesForN cost time: +"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catchall_cd
    move-exception p0

    :try_start_ce
    monitor-exit v4
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw p0
.end method

.method private static createResourcesSimple(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-class v1, Landroid/content/res/AssetManager;

    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_59

    const-class v2, Landroid/content/res/AssetManager;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/AssetManager;

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v4}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_60

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createResources failed, can\'t addAssetPath for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    :cond_60
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v1, v4}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_84

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createResources failed, can\'t addAssetPath for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_84
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getAllLoadedPlugins()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_90
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/virtualapk/internal/LoadedPlugin;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v1, v7}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_90

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "createResources failed, can\'t addAssetPath for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c8
    invoke-static {v0}, Lcom/didi/virtualapk/internal/ResourcesManager;->isMiUi(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_d3

    # invokes: Lcom/didi/virtualapk/internal/ResourcesManager$MiUiResourcesCompat;->createResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    invoke-static {v0, v2}, Lcom/didi/virtualapk/internal/ResourcesManager$MiUiResourcesCompat;->access$000(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_101

    :cond_d3
    invoke-static {v0}, Lcom/didi/virtualapk/internal/ResourcesManager;->isVivo(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_de

    # invokes: Lcom/didi/virtualapk/internal/ResourcesManager$VivoResourcesCompat;->createResources(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    invoke-static {p0, v0, v2}, Lcom/didi/virtualapk/internal/ResourcesManager$VivoResourcesCompat;->access$100(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_101

    :cond_de
    invoke-static {v0}, Lcom/didi/virtualapk/internal/ResourcesManager;->isNubia(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_e9

    # invokes: Lcom/didi/virtualapk/internal/ResourcesManager$NubiaResourcesCompat;->createResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    invoke-static {v0, v2}, Lcom/didi/virtualapk/internal/ResourcesManager$NubiaResourcesCompat;->access$200(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_101

    :cond_e9
    invoke-static {v0}, Lcom/didi/virtualapk/internal/ResourcesManager;->isNotRawResources(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_f4

    # invokes: Lcom/didi/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;->createResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    invoke-static {v0, v2}, Lcom/didi/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;->access$300(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_101

    :cond_f4
    new-instance p0, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :goto_101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_105
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_115

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0, p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->updateResources(Landroid/content/res/Resources;)V

    goto :goto_105

    :cond_115
    return-object p0
.end method

.method public static hookResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    const-string v0, "mResources"

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    const-string v0, "mPackageInfo"

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    const-string v0, "mResources"

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3a

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object p0

    goto :goto_48

    :cond_3a
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    const-string v0, "mResourcesManager"

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_48
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    const-string v0, "mActiveResources"

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6c} :catch_6d

    return-void

    :catch_6d
    move-exception p0

    const-string p1, "VA.LoadedPlugin"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static isMiUi(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.MiuiResources"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isNotRawResources(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.Resources"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static isNubia(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.NubiaResources"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isVivo(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.VivoResources"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
