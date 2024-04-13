.class public Lcom/didi/virtualapk/PluginManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/PluginManager$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.PluginManager"

.field private static volatile sInstance:Lcom/didi/virtualapk/PluginManager;


# instance fields
.field protected mActivityManager:Landroid/app/IActivityManager;

.field protected final mApplication:Landroid/app/Application;

.field protected final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/didi/virtualapk/PluginManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected mComponentsHandler:Lcom/didi/virtualapk/internal/ComponentsHandler;

.field protected final mContext:Landroid/content/Context;

.field protected mIContentProvider:Landroid/content/IContentProvider;

.field protected mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

.field protected final mPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/didi/virtualapk/internal/LoadedPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_22

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    :goto_19
    iget-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    goto :goto_36

    :cond_22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_31

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    goto :goto_36

    :cond_31
    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    goto :goto_19

    :goto_36
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->createComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mComponentsHandler:Lcom/didi/virtualapk/internal/ComponentsHandler;

    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookCurrentProcess()V

    return-void
.end method

.method private static createInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_18

    new-instance v0, Lcom/didi/virtualapk/PluginManager;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/PluginManager;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_18
    const-string v1, "VA_FACTORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    new-instance v0, Lcom/didi/virtualapk/PluginManager;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/PluginManager;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_26
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "create"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/PluginManager;

    if-eqz v0, :cond_64

    const-string v1, "VA.PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created a instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    return-object v0

    :catch_5c
    move-exception v0

    const-string v1, "VA.PluginManager"

    const-string v2, "Created the instance error!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_64
    new-instance v0, Lcom/didi/virtualapk/PluginManager;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/PluginManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;
    .registers 3

    sget-object v0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    if-nez v0, :cond_16

    const-class v0, Lcom/didi/virtualapk/PluginManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    if-nez v1, :cond_11

    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->createInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object p0

    sput-object p0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0

    :cond_16
    :goto_16
    sget-object p0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/didi/virtualapk/PluginManager$Callback;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already added "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method protected createActivityManagerProxy(Landroid/app/IActivityManager;)Lcom/didi/virtualapk/delegate/ActivityManagerProxy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;

    invoke-direct {v0, p0, p1}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;-><init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/IActivityManager;)V

    return-object v0
.end method

.method protected createComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;
    .registers 2

    new-instance v0, Lcom/didi/virtualapk/internal/ComponentsHandler;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/internal/ComponentsHandler;-><init>(Lcom/didi/virtualapk/PluginManager;)V

    return-object v0
.end method

.method protected createInstrumentation(Landroid/app/Instrumentation;)Lcom/didi/virtualapk/internal/VAInstrumentation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/didi/virtualapk/internal/VAInstrumentation;

    invoke-direct {v0, p0, p1}, Lcom/didi/virtualapk/internal/VAInstrumentation;-><init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/Instrumentation;)V

    return-object v0
.end method

.method protected createLoadedPlugin(Ljava/io/File;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;-><init>(Lcom/didi/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method protected doInWorkThread()V
    .registers 1

    return-void
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAllLoadedPlugins()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/didi/virtualapk/internal/LoadedPlugin;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mComponentsHandler:Lcom/didi/virtualapk/internal/ComponentsHandler;

    return-object v0
.end method

.method public getHostApplication()Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getIContentProvider()Landroid/content/IContentProvider;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookIContentProviderAsNeeded()V

    :cond_8
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstrumentation()Lcom/didi/virtualapk/internal/VAInstrumentation;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

    return-object v0
.end method

.method public getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    return-object p1
.end method

.method public getLoadedPlugin(Landroid/content/Intent;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .registers 2

    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    return-object p1
.end method

.method public getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .registers 3

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/didi/virtualapk/internal/LoadedPlugin;

    return-object p1
.end method

.method protected hookCurrentProcess()V
    .registers 1

    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookInstrumentationAndHandler()V

    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookSystemServices()V

    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookDataBindingUtil()V

    return-void
.end method

.method protected hookDataBindingUtil()V
    .registers 5

    const-string v0, "android.databinding.DataBindingUtil"

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    const-string v1, "sMapper"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    :try_start_12
    const-string v1, "android.databinding.DataBinderMapperProxy"

    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/virtualapk/PluginManager$Callback;

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-virtual {p0, v1}, Lcom/didi/virtualapk/PluginManager;->addCallback(Lcom/didi/virtualapk/PluginManager$Callback;)V

    const-string v0, "VA.PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hookDataBindingUtil succeed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Lcom/didi/virtualapk/utils/Reflector$ReflectedException; {:try_start_12 .. :try_end_40} :catch_40

    :catch_40
    :cond_40
    return-void
.end method

.method protected hookIContentProviderAsNeeded()V
    .registers 7

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wakeup"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :try_start_16
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "mProviderMap"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v2, Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_4e

    :goto_4b
    check-cast v2, Ljava/lang/String;

    goto :goto_62

    :cond_4e
    if-nez v3, :cond_5d

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "authority"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_5d
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4b

    :goto_62
    iget-object v4, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mProvider"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->newInstance(Landroid/content/Context;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    const-string v0, "VA.PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hookIContentProvider succeed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_9e} :catch_9f

    :cond_9e
    return-void

    :catch_9f
    move-exception v0

    const-string v1, "VA.PluginManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected hookInstrumentationAndHandler()V
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/didi/virtualapk/PluginManager;->createInstrumentation(Landroid/app/Instrumentation;)Lcom/didi/virtualapk/internal/VAInstrumentation;

    move-result-object v1

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    const-string v3, "mInstrumentation"

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v2, "getHandler"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v2, "mCallback"

    invoke-virtual {v0, v2}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

    const-string v0, "VA.PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hookInstrumentationAndHandler succeed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v0

    const-string v1, "VA.PluginManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected hookSystemServices()V
    .registers 7

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_19

    const-class v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "IActivityManagerSingleton"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_16
    check-cast v0, Landroid/util/Singleton;

    goto :goto_2a

    :cond_19
    const-class v0, Landroid/app/ActivityManagerNative;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "gDefault"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    :goto_2a
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/IActivityManager;

    aput-object v5, v3, v4

    invoke-virtual {p0, v1}, Lcom/didi/virtualapk/PluginManager;->createActivityManagerProxy(Landroid/app/IActivityManager;)Lcom/didi/virtualapk/delegate/ActivityManagerProxy;

    move-result-object v1

    invoke-static {v2, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    const-string v3, "mInstance"

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_72

    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    const-string v0, "VA.PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hookSystemServices succeed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    :cond_72
    return-void

    :catch_73
    move-exception v0

    const-string v1, "VA.PluginManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public init()V
    .registers 3

    invoke-static {}, Lcom/didi/virtualapk/utils/RunUtil;->getThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/didi/virtualapk/PluginManager$1;

    invoke-direct {v1, p0}, Lcom/didi/virtualapk/PluginManager$1;-><init>(Lcom/didi/virtualapk/PluginManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadPlugin(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : apk is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_18
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/PluginManager;->createLoadedPlugin(Ljava/io/File;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t load plugin which is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter p1

    const/4 v1, 0x0

    :goto_43
    :try_start_43
    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/virtualapk/PluginManager$Callback;

    invoke-interface {v2, v0}, Lcom/didi/virtualapk/PluginManager$Callback;->onAddedLoadedPlugin(Lcom/didi/virtualapk/internal/LoadedPlugin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_59
    monitor-exit p1

    return-void

    :catchall_5b
    move-exception v0

    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 7
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v2, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_2b
    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 7
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v2, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_2b
    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .registers 7
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v2, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_2b
    return-object v0
.end method

.method public removeCallback(Lcom/didi/virtualapk/PluginManager$Callback;)V
    .registers 4

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 5

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method
