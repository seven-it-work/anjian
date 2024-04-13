.class public final Lcom/android/volley/g;
.super Ljava/lang/Thread;


# instance fields
.field volatile a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/android/volley/f;

.field private final d:Lcom/android/volley/b;

.field private final e:Lcom/android/volley/o;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/f;Lcom/android/volley/b;Lcom/android/volley/o;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/l<",
            "*>;>;",
            "Lcom/android/volley/f;",
            "Lcom/android/volley/b;",
            "Lcom/android/volley/o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/g;->a:Z

    iput-object p1, p0, Lcom/android/volley/g;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/android/volley/g;->c:Lcom/android/volley/f;

    iput-object p3, p0, Lcom/android/volley/g;->d:Lcom/android/volley/b;

    iput-object p4, p0, Lcom/android/volley/g;->e:Lcom/android/volley/o;

    return-void
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/g;->a:Z

    invoke-virtual {p0}, Lcom/android/volley/g;->interrupt()V

    return-void
.end method

.method private static a(Lcom/android/volley/l;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_b

    iget p0, p0, Lcom/android/volley/l;->c:I

    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_b
    return-void
.end method

.method private a(Lcom/android/volley/l;Lcom/android/volley/s;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;",
            "Lcom/android/volley/s;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/volley/l;->a(Lcom/android/volley/s;)Lcom/android/volley/s;

    move-result-object p2

    iget-object v0, p0, Lcom/android/volley/g;->e:Lcom/android/volley/o;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/o;->a(Lcom/android/volley/l;Lcom/android/volley/s;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_5
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/volley/g;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/l;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_11} :catch_a4

    const/4 v3, 0x1

    :try_start_12
    const-string v4, "network-queue-take"

    invoke-virtual {v2, v4}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/volley/l;->a()Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "network-discard-cancelled"

    :goto_1f
    invoke-virtual {v2, v4}, Lcom/android/volley/l;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_23
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_2e

    iget v4, v2, Lcom/android/volley/l;->c:I

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_2e
    iget-object v4, p0, Lcom/android/volley/g;->c:Lcom/android/volley/f;

    invoke-interface {v4, v2}, Lcom/android/volley/f;->a(Lcom/android/volley/l;)Lcom/android/volley/i;

    move-result-object v4

    const-string v5, "network-http-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    iget-boolean v5, v4, Lcom/android/volley/i;->d:Z

    if-eqz v5, :cond_44

    iget-boolean v5, v2, Lcom/android/volley/l;->i:Z

    if-eqz v5, :cond_44

    const-string v4, "not-modified"

    goto :goto_1f

    :cond_44
    invoke-virtual {v2, v4}, Lcom/android/volley/l;->a(Lcom/android/volley/i;)Lcom/android/volley/n;

    move-result-object v4

    const-string v5, "network-parse-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/android/volley/l;->g:Z

    if-eqz v5, :cond_63

    iget-object v5, v4, Lcom/android/volley/n;->b:Lcom/android/volley/b$a;

    if-eqz v5, :cond_63

    iget-object v5, p0, Lcom/android/volley/g;->d:Lcom/android/volley/b;

    iget-object v6, v2, Lcom/android/volley/l;->b:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/volley/n;->b:Lcom/android/volley/b$a;

    invoke-interface {v5, v6, v7}, Lcom/android/volley/b;->a(Ljava/lang/String;Lcom/android/volley/b$a;)V

    const-string v5, "network-cache-written"

    invoke-virtual {v2, v5}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    :cond_63
    iput-boolean v3, v2, Lcom/android/volley/l;->i:Z

    iget-object v5, p0, Lcom/android/volley/g;->e:Lcom/android/volley/o;

    invoke-interface {v5, v2, v4}, Lcom/android/volley/o;->a(Lcom/android/volley/l;Lcom/android/volley/n;)V
    :try_end_6a
    .catch Lcom/android/volley/s; {:try_start_12 .. :try_end_6a} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6a} :catch_6b

    goto :goto_5

    :catch_6b
    move-exception v4

    const-string v5, "Unhandled exception %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v5, v3}, Lcom/android/volley/t;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/android/volley/s;

    invoke-direct {v3, v4}, Lcom/android/volley/s;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Lcom/android/volley/s;->setNetworkTimeMs(J)V

    iget-object v0, p0, Lcom/android/volley/g;->e:Lcom/android/volley/o;

    invoke-interface {v0, v2, v3}, Lcom/android/volley/o;->a(Lcom/android/volley/l;Lcom/android/volley/s;)V

    goto/16 :goto_5

    :catch_8f
    move-exception v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Lcom/android/volley/s;->setNetworkTimeMs(J)V

    invoke-static {v3}, Lcom/android/volley/l;->a(Lcom/android/volley/s;)Lcom/android/volley/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/g;->e:Lcom/android/volley/o;

    invoke-interface {v1, v2, v0}, Lcom/android/volley/o;->a(Lcom/android/volley/l;Lcom/android/volley/s;)V

    goto/16 :goto_5

    :catch_a4
    iget-boolean v0, p0, Lcom/android/volley/g;->a:Z

    if-eqz v0, :cond_5

    return-void
.end method
