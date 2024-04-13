.class final Lcom/b/b/d;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/b/b/d;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :catch_0
    :goto_0
    :try_start_0
    const-class v0, Lcom/b/b/a;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    :try_start_3
    invoke-static {}, Lcom/b/b/a;->e()Lcom/b/b/a;

    move-result-object v1

    if-nez v1, :cond_b

    monitor-exit v0

    goto :goto_0

    :cond_b
    invoke-static {}, Lcom/b/b/a;->f()Lcom/b/b/a;

    move-result-object v2

    if-ne v1, v2, :cond_16

    invoke-static {}, Lcom/b/b/a;->g()Lcom/b/b/a;

    monitor-exit v0

    return-void

    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    :try_start_17
    invoke-virtual {v1}, Lcom/b/b/a;->a()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_0

    goto :goto_0

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1e} :catch_0
.end method
