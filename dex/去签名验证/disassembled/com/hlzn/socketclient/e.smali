.class public Lcom/hlzn/socketclient/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hlzn/socketclient/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/hlzn/socketclient/service/SocketService;


# direct methods
.method public constructor <init>(Lcom/hlzn/socketclient/service/SocketService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/hlzn/socketclient/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hlzn/socketclient/e;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/hlzn/socketclient/e;->c:Lcom/hlzn/socketclient/service/SocketService;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/hlzn/socketclient/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Lcom/hlzn/socketclient/d;

    iget-object v1, p0, Lcom/hlzn/socketclient/e;->c:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {v0, v1, p1}, Lcom/hlzn/socketclient/d;-><init>(Lcom/hlzn/socketclient/service/SocketService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hlzn/socketclient/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v0, p0, Lcom/hlzn/socketclient/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add --> \u6dfb\u52a0\u6d88\u606f\u5230\u53d1\u9001\u8d85\u65f6\u7ba1\u7406\u5668 rpcId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hlzn/socketclient/f/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/hlzn/socketclient/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hlzn/socketclient/d;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/d;->cancel()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    goto :goto_b

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/hlzn/socketclient/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove --> \u4ece\u53d1\u9001\u6d88\u606f\u7ba1\u7406\u5668\u79fb\u9664\u6d88\u606f rpcId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hlzn/socketclient/f/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hlzn/socketclient/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hlzn/socketclient/d;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/hlzn/socketclient/d;->cancel()V

    :cond_27
    return-void
.end method
