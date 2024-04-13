.class public Lcom/didi/virtualapk/delegate/ActivityManagerProxy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VA.IActivityManagerProxy"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/IActivityManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iput-object p2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    return-void
.end method


# virtual methods
.method protected bindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x2

    aget-object p1, p3, p1

    check-cast p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_13

    goto :goto_3b

    :cond_13
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sc"

    const/4 v2, 0x4

    aget-object v3, p3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-static {p2, v1, v3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object p2

    aget-object p3, p3, v2

    check-cast p3, Landroid/os/IBinder;

    invoke-virtual {p2, p3, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->remberIServiceConnection(Landroid/os/IBinder;Landroid/content/Intent;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getIntentSender(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 8

    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const/4 p1, 0x5

    aget-object v1, p2, p1

    check-cast v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->markIntentIfNeeded(Landroid/content/Intent;)V

    return-void

    :cond_33
    const/4 v4, 0x4

    if-ne v3, v4, :cond_4f

    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3, v1, v2}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_4f

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v0

    aget-object p1, p2, p1

    check-cast p1, [Landroid/content/Intent;

    aput-object v0, p1, v2

    :cond_4f
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "startService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    const-string v1, "Start service error"

    :goto_16
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_91

    :cond_1b
    const-string v0, "stopService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :try_start_27
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->stopService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    const-string v1, "Stop Service error"

    goto :goto_16

    :cond_32
    const-string v0, "stopServiceToken"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :try_start_3e
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->stopServiceToken(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    const-string v1, "Stop service token error"

    goto :goto_16

    :cond_49
    const-string v0, "bindService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    :try_start_55
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->bindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_59} :catch_5a

    return-object p1

    :catch_5a
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_91

    :cond_61
    const-string v0, "unbindService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    :try_start_6d
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->unbindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_71} :catch_5a

    return-object p1

    :cond_72
    const-string p1, "getIntentSender"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    :try_start_7e
    invoke-virtual {p0, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->getIntentSender(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_5a

    goto :goto_91

    :cond_82
    const-string p1, "overridePendingTransition"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    :try_start_8e
    invoke-virtual {p0, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->overridePendingTransition(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_5a

    :cond_91
    :goto_91
    :try_start_91
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_97} :catch_98

    return-object p1

    :catch_98
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_b1

    instance-of p3, p2, Landroid/os/DeadObjectException;

    if-eqz p3, :cond_b1

    const-string p3, "activity"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_b1

    invoke-static {p3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object p3

    iput-object p3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    :cond_b1
    move-object p3, p1

    :cond_b2
    instance-of v0, p3, Landroid/os/RemoteException;

    if-eqz v0, :cond_b7

    throw p3

    :cond_b7
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_b2

    if-eqz p2, :cond_c0

    move-object p1, p2

    :cond_c0
    throw p1
.end method

.method protected overridePendingTransition(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 4

    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    return-void
.end method

.method protected startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p2}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method protected startService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x1

    aget-object v0, p3, p1

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_13

    goto :goto_1b

    :cond_13
    iget-object p2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 p3, 0x0

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    :cond_1b
    :goto_1b
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected stopService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x1

    aget-object v0, p3, p1

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_13

    goto :goto_1f

    :cond_13
    iget-object p2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 p3, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected stopServiceToken(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    aget-object v0, p3, p1

    check-cast v0, Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, v0, p1}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1b

    goto :goto_28

    :cond_1b
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected unbindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    aget-object v0, p3, p1

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetIServiceConnection(Landroid/os/IBinder;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_18
    iget-object p2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p2, v0, p1}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 p2, 0x0

    const/4 p3, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;
    .registers 8

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isLocalService(Landroid/content/pm/ServiceInfo;)Z

    move-result p2

    if-eqz p2, :cond_23

    const-class p2, Lcom/didi/virtualapk/delegate/LocalService;

    goto :goto_25

    :cond_23
    const-class p2, Lcom/didi/virtualapk/delegate/RemoteService;

    :goto_25
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "target"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "command"

    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "plugin_location"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_47

    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_47
    return-object v1
.end method
