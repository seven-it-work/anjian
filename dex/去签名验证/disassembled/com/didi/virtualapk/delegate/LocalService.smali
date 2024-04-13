.class public Lcom/didi/virtualapk/delegate/LocalService;
.super Landroid/app/Service;


# static fields
.field public static final EXTRA_COMMAND:Ljava/lang/String; = "command"

.field public static final EXTRA_COMMAND_BIND_SERVICE:I = 0x3

.field public static final EXTRA_COMMAND_START_SERVICE:I = 0x1

.field public static final EXTRA_COMMAND_STOP_SERVICE:I = 0x2

.field public static final EXTRA_COMMAND_UNBIND_SERVICE:I = 0x4

.field public static final EXTRA_PLUGIN_LOCATION:Ljava/lang/String; = "plugin_location"

.field public static final EXTRA_TARGET:Ljava/lang/String; = "target"

.field private static final TAG:Ljava/lang/String; = "VA.LocalService"


# instance fields
.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_270

    const-string v4, "target"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_270

    const-string v4, "command"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    return v3

    :cond_18
    const-string v4, "target"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    const-string v5, "command"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v4, :cond_270

    if-gtz v5, :cond_2c

    return v3

    :cond_2c
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v8, v7}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v8

    if-nez v8, :cond_50

    const-string v2, "VA.LocalService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error target: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_50
    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v12, 0x6

    packed-switch v5, :pswitch_data_272

    return v3

    :pswitch_5c
    iget-object v2, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v2

    if-eqz v2, :cond_91

    :try_start_68
    invoke-virtual {v2, v4}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6e} :catch_6f

    return v3

    :catch_6f
    move-exception v0

    move-object v4, v0

    const-string v5, "VA.LocalService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to unbind service "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_91
    const-string v2, "VA.LocalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1b9

    :pswitch_9a
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v14

    iget-object v15, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v15}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v15

    if-eqz v15, :cond_bb

    iget-object v5, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v5

    move-object v15, v5

    goto/16 :goto_13d

    :cond_bb
    :try_start_bb
    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Landroid/app/Service;
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_ce} :catch_135

    :try_start_ce
    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-interface {v14}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "attach"

    new-array v13, v12, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    aput-object v16, v13, v6

    const-class v16, Landroid/app/ActivityThread;

    aput-object v16, v13, v3

    const-class v16, Ljava/lang/String;

    const/16 v20, 0x2

    aput-object v16, v13, v20

    const-class v16, Landroid/os/IBinder;

    const/16 v19, 0x3

    aput-object v16, v13, v19

    const-class v16, Landroid/app/Application;

    const/16 v18, 0x4

    aput-object v16, v13, v18

    const-class v16, Ljava/lang/Object;

    const/16 v17, 0x5

    aput-object v16, v13, v17

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget-object v11, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v11}, Lcom/didi/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v11

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v12, v6

    aput-object v5, v12, v3

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v12, v8

    const/4 v5, 0x3

    aput-object v14, v12, v5

    const/4 v5, 0x4

    aput-object v9, v12, v5

    const/4 v5, 0x5

    aput-object v11, v12, v5

    invoke-virtual {v10, v15, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroid/app/Service;->onCreate()V

    iget-object v5, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v7, v15}, Lcom/didi/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_131} :catch_132

    goto :goto_13d

    :catch_132
    move-exception v0

    move-object v5, v0

    goto :goto_138

    :catch_135
    move-exception v0

    move-object v5, v0

    const/4 v15, 0x0

    :goto_138
    const-string v8, "VA.LocalService"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13d
    :try_start_13d
    invoke-virtual {v15, v4}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "sc"

    invoke-static {v2, v5}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v5, v8, :cond_159

    invoke-interface {v2, v7, v4, v6}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    return v3

    :cond_159
    invoke-static {v2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v2

    const-string v5, "connected"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/ComponentName;

    aput-object v8, v9, v6

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v9, v3

    invoke-virtual {v2, v5, v9}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v6

    aput-object v4, v5, v3

    invoke-virtual {v2, v5}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_178} :catch_179

    return v3

    :catch_179
    move-exception v0

    move-object v2, v0

    const-string v4, "VA.LocalService"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :pswitch_181
    iget-object v2, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v2

    if-eqz v2, :cond_1b2

    :try_start_18d
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_190} :catch_191

    return v3

    :catch_191
    move-exception v0

    const-string v4, "VA.LocalService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to stop service "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1b2
    const-string v2, "VA.LocalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1b9
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_1c9
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    iget-object v9, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v9}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_1e8

    iget-object v2, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v2

    goto :goto_25e

    :cond_1e8
    :try_start_1e8
    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Service;

    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-interface {v5}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v13, "attach"

    new-array v14, v12, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    aput-object v15, v14, v6

    const-class v15, Landroid/app/ActivityThread;

    aput-object v15, v14, v3

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const-class v15, Landroid/os/IBinder;

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const-class v15, Landroid/app/Application;

    const/16 v16, 0x4

    aput-object v15, v14, v16

    const-class v15, Ljava/lang/Object;

    const/16 v16, 0x5

    aput-object v15, v14, v16

    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iget-object v13, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v13}, Lcom/didi/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v13

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v12, v6

    aput-object v2, v12, v3

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v12, v8

    const/4 v2, 0x3

    aput-object v5, v12, v2

    const/4 v2, 0x4

    aput-object v10, v12, v2

    const/4 v2, 0x5

    aput-object v13, v12, v2

    invoke-virtual {v11, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/app/Service;->onCreate()V

    iget-object v2, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v2

    invoke-virtual {v2, v7, v9}, Lcom/didi/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_25d
    .catch Ljava/lang/Throwable; {:try_start_1e8 .. :try_end_25d} :catch_270

    move-object v2, v9

    :goto_25e
    iget-object v5, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getServiceCounter(Landroid/app/Service;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-virtual {v2, v4, v6, v5}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    return v3

    :catch_270
    :cond_270
    return v3

    nop

    :pswitch_data_272
    .packed-switch 0x1
        :pswitch_1c9
        :pswitch_181
        :pswitch_9a
        :pswitch_5c
    .end packed-switch
.end method
