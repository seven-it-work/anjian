.class public Lcom/didi/virtualapk/internal/VAInstrumentation;
.super Landroid/app/Instrumentation;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final TAG:Ljava/lang/String; = "VA.VAInstrumentation"


# instance fields
.field protected final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mBase:Landroid/app/Instrumentation;

.field protected mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/Instrumentation;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iput-object p2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 14

    invoke-virtual {p0, p5}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 16

    invoke-virtual {p0, p5}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 16

    invoke-virtual {p0, p5}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 16

    invoke-virtual {p0, p5}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method getActivities()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_60

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_8
    invoke-static {p1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p1

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "activityInfo"

    invoke-virtual {p1, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isIntentFromPlugin(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    if-eqz v0, :cond_60

    const-string v1, "VA.VAInstrumentation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resolve theme, current theme:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  after :0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Landroid/content/pm/ActivityInfo;->theme:I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_59} :catch_5a

    goto :goto_60

    :catch_5a
    move-exception p1

    const-string v0, "VA.VAInstrumentation"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_60
    :goto_60
    const/4 p1, 0x0

    return p1
.end method

.method protected injectActivity(Landroid/app/Activity;)V
    .registers 7

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isIntentFromPlugin(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    :try_start_e
    iget-object v2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/Intent;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    const-string v3, "mResources"

    invoke-virtual {v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    invoke-virtual {v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    invoke-static {p1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    const-string v3, "mBase"

    invoke-virtual {v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createPluginContext(Landroid/content/Context;)Lcom/didi/virtualapk/internal/PluginContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    const-string v3, "mApplication"

    invoke-virtual {v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    invoke-virtual {v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    invoke-static {v0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_59

    iget v1, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_59
    invoke-static {v0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_77} :catch_78

    return-void

    :catch_78
    move-exception p1

    const-string v0, "VA.VAInstrumentation"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7e
    return-void
.end method

.method protected injectIntent(Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3c

    const-string v0, "VA.VAInstrumentation"

    const-string v1, "execStartActivity[%s : %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->markIntentIfNeeded(Landroid/content/Intent;)V

    :cond_3c
    return-void
.end method

.method protected newActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 5

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_23

    iget-object v2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_23
    iget-object v1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object p1

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "VA.VAInstrumentation"

    const-string v3, "newActivity[%s]"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_14} :catch_1f

    :goto_14
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    :goto_1a
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/internal/VAInstrumentation;->newActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p1

    return-object p1

    :catch_1f
    invoke-static {p3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_26

    goto :goto_14

    :cond_26
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VA.VAInstrumentation"

    const-string v5, "newActivity[%s : %s/%s]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v0

    const/4 p2, 0x2

    aput-object v3, v6, p2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v4, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    if-nez v2, :cond_97

    :try_start_4b
    iget-object v2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_57} :catch_5b

    and-int/2addr p2, v2

    if-eqz p2, :cond_5b

    const/4 v1, 0x1

    :catch_5b
    :cond_5b
    if-eqz v1, :cond_75

    new-instance p1, Landroid/content/ActivityNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error intent: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    const-string p2, "VA.VAInstrumentation"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not found. starting the stub activity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/didi/virtualapk/delegate/StubActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    const-class v0, Lcom/didi/virtualapk/delegate/StubActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_1a

    :cond_97
    iget-object p1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2, v3, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p2

    const-string p3, "mResources"

    invoke-virtual {p2, p3}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p2

    invoke-virtual {v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    goto/16 :goto_1a
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    return-object p1
.end method
