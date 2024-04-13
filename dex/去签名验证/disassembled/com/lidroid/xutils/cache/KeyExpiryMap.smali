.class public Lcom/lidroid/xutils/cache/KeyExpiryMap;
.super Ljava/util/concurrent/ConcurrentHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "TK;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_18

    const/4 v0, 0x1

    goto :goto_1b

    :cond_18
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1d

    :goto_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_12

    monitor-exit p0

    return-object p1

    :cond_f
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->get(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    :cond_a
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
