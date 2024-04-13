.class final Lcom/bumptech/glide/manager/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/c;


# static fields
.field private static final c:Ljava/lang/String; = "ConnectivityMonitor"


# instance fields
.field final a:Lcom/bumptech/glide/manager/c$a;

.field b:Z

.field private final d:Landroid/content/Context;

.field private e:Z

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/e$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/e$1;-><init>(Lcom/bumptech/glide/manager/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/e;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/manager/e;->a:Lcom/bumptech/glide/manager/c$a;

    return-void
.end method

.method private a()V
    .registers 5

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/e;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/manager/e;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/e;->b:Z

    :try_start_d
    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/manager/e;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/e;->e:Z
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "ConnectivityMonitor"

    const-string v2, "Failed to register"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const-string v0, "Argument must not be null"

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    :try_start_11
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_15} :catch_20

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1e

    return v0

    :cond_1e
    const/4 p0, 0x0

    return p0

    :catch_20
    move-exception p0

    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "ConnectivityMonitor"

    const-string v2, "Failed to determine connectivity status when connectivity changed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    return v0
.end method

.method private b()V
    .registers 3

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/e;->e:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/manager/e;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/e;->e:Z

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .registers 1

    return-void
.end method

.method public final onStart()V
    .registers 5

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/e;->e:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/manager/e;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/e;->b:Z

    :try_start_c
    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/manager/e;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/e;->e:Z
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception v0

    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "ConnectivityMonitor"

    const-string v2, "Failed to register"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    return-void
.end method

.method public final onStop()V
    .registers 3

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/e;->e:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/manager/e;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/e;->e:Z

    :cond_e
    return-void
.end method
