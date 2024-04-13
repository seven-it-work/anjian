.class public Lcom/didi/virtualapk/delegate/RemoteService;
.super Lcom/didi/virtualapk/delegate/LocalService;


# static fields
.field private static final TAG:Ljava/lang/String; = "VA.RemoteService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/didi/virtualapk/delegate/LocalService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    if-nez p1, :cond_7

    invoke-super {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/LocalService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_7
    const-string v0, "target"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_3a

    const-string v1, "plugin_location"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-nez v0, :cond_3a

    if-eqz v1, :cond_3a

    :try_start_27
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/didi/virtualapk/PluginManager;->loadPlugin(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_34

    goto :goto_3a

    :catch_34
    move-exception v0

    const-string v1, "VA.RemoteService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :goto_3a
    invoke-super {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/LocalService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
