.class public final Lcom/king/sdk/i;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/king/sdk/i;


# instance fields
.field private a:Lcom/king/sdk/b;


# direct methods
.method private constructor <init>(Lcom/king/sdk/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/king/sdk/i;->a:Lcom/king/sdk/b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/king/sdk/i;
    .registers 5

    const-class v0, Lcom/king/sdk/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/king/sdk/i;->b:Lcom/king/sdk/i;

    if-eqz v1, :cond_b

    sget-object p0, Lcom/king/sdk/i;->b:Lcom/king/sdk/i;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3e

    monitor-exit v0

    return-object p0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/king/sdk/a;->a()Lcom/king/sdk/b;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance p0, Lcom/king/sdk/i;

    invoke-direct {p0, v1}, Lcom/king/sdk/i;-><init>(Lcom/king/sdk/b;)V

    sput-object p0, Lcom/king/sdk/i;->b:Lcom/king/sdk/i;

    goto :goto_3a

    :cond_19
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "GET_KING_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3a

    const-string v1, "GET_KING_SERVICE"

    invoke-static {p0, v1}, Lcom/king/sdk/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/king/sdk/c;->a(Landroid/os/IBinder;)Lcom/king/sdk/b;

    move-result-object p0

    if-eqz p0, :cond_3a

    new-instance v1, Lcom/king/sdk/i;

    invoke-direct {v1, p0}, Lcom/king/sdk/i;-><init>(Lcom/king/sdk/b;)V

    sput-object v1, Lcom/king/sdk/i;->b:Lcom/king/sdk/i;

    :cond_3a
    :goto_3a
    sget-object p0, Lcom/king/sdk/i;->b:Lcom/king/sdk/i;
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3e

    monitor-exit v0

    return-object p0

    :catchall_3e
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/king/sdk/IDFEE16B42C8B2890D8FF2860AF5562B1;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/king/sdk/i;->a:Lcom/king/sdk/b;

    invoke-interface {v0, p1}, Lcom/king/sdk/b;->a(Lcom/king/sdk/IDFEE16B42C8B2890D8FF2860AF5562B1;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final a(Lcom/king/sdk/KingListener;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/king/sdk/i;->a:Lcom/king/sdk/b;

    invoke-interface {v0, p1}, Lcom/king/sdk/b;->b(Lcom/king/sdk/IDFEE16B42C8B2890D8FF2860AF5562B1;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final a([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/king/sdk/i;->a:Lcom/king/sdk/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/king/sdk/b;->a([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final a(Ljava/lang/String;I[B)Z
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/king/sdk/i;->a:Lcom/king/sdk/b;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/king/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/king/sdk/i;->a:Lcom/king/sdk/b;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/king/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return p1

    :catch_c
    const/4 p1, 0x0

    return p1
.end method
