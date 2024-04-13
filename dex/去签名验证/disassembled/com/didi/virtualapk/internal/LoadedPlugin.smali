.class public Lcom/didi/virtualapk/internal/LoadedPlugin;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.LoadedPlugin"


# instance fields
.field protected mActivityInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mApplication:Landroid/app/Application;

.field protected mClassLoader:Ljava/lang/ClassLoader;

.field protected mHostContext:Landroid/content/Context;

.field protected mInstrumentationInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLocation:Ljava/lang/String;

.field protected final mNativeLibDir:Ljava/io/File;

.field protected final mPackage:Landroid/content/pm/PackageParser$Package;

.field protected final mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageManager:Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

.field protected mPluginContext:Landroid/content/Context;

.field protected mPluginManager:Lcom/didi/virtualapk/PluginManager;

.field protected mProviderInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mReceiverInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mResources:Landroid/content/res/Resources;

.field protected mServiceInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mLocation:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p2, p3, v0}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_51

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_48

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v0, :cond_48

    goto :goto_51

    :cond_48
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_70

    :cond_51
    :goto_51
    :try_start_51
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5b} :catch_5c

    goto :goto_70

    :catch_5c
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_70
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    if-eqz p1, :cond_9a

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "plugin has already been loaded : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9a
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/PermissionInfo;

    iput-object v0, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createPluginPackageManager()Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageManager:Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createPluginContext(Landroid/content/Context;)Lcom/didi/virtualapk/internal/PluginContext;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    const-string p1, "valibs"

    invoke-virtual {p0, p2, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createClassLoader(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0, p3}, Lcom/didi/virtualapk/internal/LoadedPlugin;->tryToCopyNativeLib(Ljava/io/File;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p3, p3, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f8

    :cond_10e
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mInstrumentationInfos:Ljava/util/Map;

    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/InstrumentationInfo;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/InstrumentationInfo;

    iput-object p1, p2, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_135
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_151

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Activity;

    iget-object v0, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, p3, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p3, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_135

    :cond_151
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/ActivityInfo;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ActivityInfo;

    iput-object p1, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_178
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_18e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Service;

    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p3, p3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_178

    :cond_18e
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/ServiceInfo;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ServiceInfo;

    iput-object p1, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p3, p3, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1ba
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ba

    :cond_1d9
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviders:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/pm/ProviderInfo;

    invoke-interface {p3, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ProviderInfo;

    iput-object p2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_206
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_24f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    iget-object p3, p3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_23d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_206

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_23d

    :cond_24f
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/ActivityInfo;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ActivityInfo;

    iput-object p1, p2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->invokeApplication()V

    return-void
.end method


# virtual methods
.method protected chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method protected createAssetManager(Landroid/content/Context;Ljava/io/File;)Landroid/content/res/AssetManager;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class p1, Landroid/content/res/AssetManager;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetManager;

    invoke-static {p1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected createClassLoader(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "dex"

    invoke-virtual {p0, p1, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p1, v1, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v0, p4, p3}, Lcom/didi/virtualapk/internal/utils/DexUtil;->insertDex(Ldalvik/system/DexClassLoader;Ljava/lang/ClassLoader;Ljava/io/File;)V

    return-object p4
.end method

.method public createPluginContext(Landroid/content/Context;)Lcom/didi/virtualapk/internal/PluginContext;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Lcom/didi/virtualapk/internal/PluginContext;

    invoke-direct {p1, p0}, Lcom/didi/virtualapk/internal/PluginContext;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V

    return-object p1

    :cond_8
    new-instance v0, Lcom/didi/virtualapk/internal/PluginContext;

    invoke-direct {v0, p0, p1}, Lcom/didi/virtualapk/internal/PluginContext;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/content/Context;)V

    return-object v0
.end method

.method protected createPluginPackageManager()Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;
    .registers 2

    new-instance v0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V

    return-object v0
.end method

.method protected createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/didi/virtualapk/internal/ResourcesManager;->createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .registers 3

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    return-object p1
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method protected getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getHostContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .registers 9

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v6, 0x0

    const-string v7, "VA.LoadedPlugin"

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2d

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_4b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeanbackLaunchIntent()Landroid/content/Intent;
    .registers 9

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v6, 0x0

    const-string v7, "VA.LoadedPlugin"

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageManager:Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v0, :cond_f

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0

    :cond_f
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPluginManager()Lcom/didi/virtualapk/PluginManager;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;)Landroid/content/pm/ProviderInfo;
    .registers 3

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    return-object p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .registers 3

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    return-object p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 3

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ServiceInfo;

    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 4

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1, v2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->selectDefaultTheme(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-object v0
.end method

.method public invokeApplication()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Exception;

    new-instance v2, Lcom/didi/virtualapk/internal/LoadedPlugin$1;

    invoke-direct {v2, p0, v1}, Lcom/didi/virtualapk/internal/LoadedPlugin$1;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;[Ljava/lang/Exception;)V

    invoke-static {v2, v0}, Lcom/didi/virtualapk/utils/RunUtil;->runOnUiThread(Ljava/lang/Runnable;Z)V

    const/4 v0, 0x0

    aget-object v2, v1, v0

    if-eqz v2, :cond_13

    aget-object v0, v1, v0

    throw v0

    :cond_13
    return-void
.end method

.method protected makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-nez p1, :cond_11

    if-nez v0, :cond_13

    :cond_11
    const-string v0, "android.app.Application"

    :cond_13
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    new-instance v0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;

    invoke-direct {v0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    invoke-virtual {p2, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    return-object p1
.end method

.method protected match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Component;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_8

    return v0

    :cond_8
    if-eqz p1, :cond_39

    if-eqz p2, :cond_39

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_38
    return v0

    :cond_39
    const/4 p1, 0x0

    return p1
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    :goto_32
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_3a
    if-nez p2, :cond_17

    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v6, 0x1

    const-string v7, "VA.LoadedPlugin"

    invoke-virtual {v5, v1, p1, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_42

    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    goto :goto_32

    :cond_5d
    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {p0, v3, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_36

    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    :goto_2e
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_36
    if-nez p2, :cond_17

    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v6, 0x1

    const-string v7, "VA.LoadedPlugin"

    invoke-virtual {v5, v1, p1, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3e

    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    goto :goto_2e

    :cond_59
    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Service;

    invoke-virtual {p0, v3, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_36

    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    :goto_2e
    iget-object v3, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_36
    if-nez p2, :cond_17

    iget-object v4, v3, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    const/4 v6, 0x1

    const-string v7, "VA.LoadedPlugin"

    invoke-virtual {v5, v1, p1, v6, v7}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3e

    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    goto :goto_2e

    :cond_59
    return-object v0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1c

    :cond_d
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 3

    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1c

    :cond_d
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public setTheme(I)V
    .registers 4

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    const-string v1, "mThemeResId"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    return-void
.end method

.method protected tryToCopyNativeLib(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    invoke-static {p1, v0, v1, v2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->copyNativeLib(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .registers 2

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-void
.end method
