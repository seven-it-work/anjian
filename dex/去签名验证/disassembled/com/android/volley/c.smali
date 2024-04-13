.class public final Lcom/android/volley/c;
.super Ljava/lang/Thread;


# static fields
.field private static final b:Z


# instance fields
.field volatile a:Z

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/android/volley/b;

.field private final f:Lcom/android/volley/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/volley/t;->b:Z

    sput-boolean v0, Lcom/android/volley/c;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/b;Lcom/android/volley/o;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/l<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/l<",
            "*>;>;",
            "Lcom/android/volley/b;",
            "Lcom/android/volley/o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/c;->a:Z

    iput-object p1, p0, Lcom/android/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/android/volley/c;->d:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/android/volley/c;->e:Lcom/android/volley/b;

    iput-object p4, p0, Lcom/android/volley/c;->f:Lcom/android/volley/o;

    return-void
.end method

.method static synthetic a(Lcom/android/volley/c;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/volley/c;->d:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/c;->a:Z

    invoke-virtual {p0}, Lcom/android/volley/c;->interrupt()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    sget-boolean v0, Lcom/android/volley/c;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const-string v0, "start new dispatcher"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/volley/c;->e:Lcom/android/volley/b;

    invoke-interface {v0}, Lcom/android/volley/b;->a()V

    :cond_16
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/android/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/l;

    const-string v2, "cache-queue-take"

    invoke-virtual {v0, v2}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/volley/l;->a()Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "cache-discard-canceled"

    invoke-virtual {v0, v2}, Lcom/android/volley/l;->b(Ljava/lang/String;)V

    goto :goto_16

    :cond_2f
    iget-object v2, p0, Lcom/android/volley/c;->e:Lcom/android/volley/b;

    iget-object v3, v0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/volley/b;->a(Ljava/lang/String;)Lcom/android/volley/b$a;

    move-result-object v2

    if-nez v2, :cond_44

    const-string v2, "cache-miss"

    invoke-virtual {v0, v2}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    :goto_3e
    iget-object v2, p0, Lcom/android/volley/c;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_16

    :cond_44
    iget-wide v3, v2, Lcom/android/volley/b$a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    const/4 v3, 0x1

    if-gez v7, :cond_51

    const/4 v4, 0x1

    goto :goto_52

    :cond_51
    const/4 v4, 0x0

    :goto_52
    if-eqz v4, :cond_5c

    const-string v3, "cache-hit-expired"

    invoke-virtual {v0, v3}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/volley/l;->k:Lcom/android/volley/b$a;

    goto :goto_3e

    :cond_5c
    const-string v4, "cache-hit"

    invoke-virtual {v0, v4}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    new-instance v4, Lcom/android/volley/i;

    iget-object v5, v2, Lcom/android/volley/b$a;->a:[B

    iget-object v6, v2, Lcom/android/volley/b$a;->g:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lcom/android/volley/i;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v4}, Lcom/android/volley/l;->a(Lcom/android/volley/i;)Lcom/android/volley/n;

    move-result-object v4

    const-string v5, "cache-hit-parsed"

    invoke-virtual {v0, v5}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/volley/b$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_7f

    const/4 v5, 0x1

    goto :goto_80

    :cond_7f
    const/4 v5, 0x0

    :goto_80
    if-nez v5, :cond_88

    iget-object v2, p0, Lcom/android/volley/c;->f:Lcom/android/volley/o;

    invoke-interface {v2, v0, v4}, Lcom/android/volley/o;->a(Lcom/android/volley/l;Lcom/android/volley/n;)V

    goto :goto_16

    :cond_88
    const-string v5, "cache-hit-refresh-needed"

    invoke-virtual {v0, v5}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/volley/l;->k:Lcom/android/volley/b$a;

    iput-boolean v3, v4, Lcom/android/volley/n;->d:Z

    iget-object v2, p0, Lcom/android/volley/c;->f:Lcom/android/volley/o;

    new-instance v3, Lcom/android/volley/c$1;

    invoke-direct {v3, p0, v0}, Lcom/android/volley/c$1;-><init>(Lcom/android/volley/c;Lcom/android/volley/l;)V

    invoke-interface {v2, v0, v4, v3}, Lcom/android/volley/o;->a(Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V
    :try_end_9b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_9b} :catch_9d

    goto/16 :goto_16

    :catch_9d
    iget-boolean v0, p0, Lcom/android/volley/c;->a:Z

    if-eqz v0, :cond_16

    return-void
.end method
