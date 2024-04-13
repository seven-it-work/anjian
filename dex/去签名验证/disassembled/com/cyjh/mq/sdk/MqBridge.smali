.class public Lcom/cyjh/mq/sdk/MqBridge;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit()V
    .registers 3

    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    if-eqz v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-class v2, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    :cond_12
    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V
    .registers 7

    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    if-nez v0, :cond_20

    sput-object p0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    sput-object p3, Lcom/cyjh/mq/a/a;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    sput-object p4, Lcom/cyjh/mq/a/a;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    sput-object p5, Lcom/cyjh/mq/a/a;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/cyjh/event/Injector;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->init(Landroid/content/Context;)V

    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {p3, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p3}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_20
    invoke-static {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/log/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
