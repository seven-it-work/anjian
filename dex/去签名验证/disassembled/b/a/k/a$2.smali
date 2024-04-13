.class public final Lb/a/k/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lb/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/k/a;->a(Lb/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/ac;

.field final synthetic b:I

.field final synthetic c:Lb/a/k/a;


# direct methods
.method public constructor <init>(Lb/a/k/a;Lb/ac;I)V
    .registers 4

    iput-object p1, p0, Lb/a/k/a$2;->c:Lb/a/k/a;

    iput-object p2, p0, Lb/a/k/a$2;->a:Lb/ac;

    iput p3, p0, Lb/a/k/a$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/e;Lb/ae;)V
    .registers 14

    :try_start_0
    iget-object v0, p0, Lb/a/k/a$2;->c:Lb/a/k/a;

    iget v1, p2, Lb/ae;->c:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_2d

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected HTTP 101 response but was \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lb/ae;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lb/ae;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    const-string v1, "Connection"

    invoke-virtual {p2, v1}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Upgrade"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    const-string v1, "Upgrade"

    invoke-virtual {p2, v1}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "websocket"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7b
    const-string v1, "Sec-WebSocket-Accept"

    invoke-virtual {p2, v1}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lb/a/k/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    invoke-virtual {v0}, Lc/f;->sha1()Lc/f;

    move-result-object v0

    invoke-virtual {v0}, Lc/f;->base64()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' but was \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c7
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_c7} :catch_15b

    :cond_c7
    sget-object p2, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {p2, p1}, Lb/a/a;->a(Lb/e;)Lb/a/c/g;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/c/g;->d()V

    invoke-virtual {p1}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object p2

    new-instance v0, Lb/a/c/c$1;

    iget-object v1, p2, Lb/a/c/c;->f:Lc/e;

    iget-object v2, p2, Lb/a/c/c;->g:Lc/d;

    invoke-direct {v0, p2, v1, v2, p1}, Lb/a/c/c$1;-><init>(Lb/a/c/c;Lc/e;Lc/d;Lb/a/c/g;)V

    :try_start_dd
    iget-object p2, p0, Lb/a/k/a$2;->c:Lb/a/k/a;

    iget-object p2, p2, Lb/a/k/a;->c:Lb/aj;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "OkHttp WebSocket "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/k/a$2;->a:Lb/ac;

    iget-object v1, v1, Lb/ac;->a:Lb/v;

    invoke-virtual {v1}, Lb/v;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lb/a/k/a$2;->c:Lb/a/k/a;

    iget v2, p0, Lb/a/k/a$2;->b:I

    int-to-long v7, v2

    monitor-enter v1
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_fd} :catch_155

    :try_start_fd
    iput-object v0, v1, Lb/a/k/a;->j:Lb/a/k/a$e;

    new-instance v2, Lb/a/k/d;

    iget-boolean v3, v0, Lb/a/k/a$e;->c:Z

    iget-object v4, v0, Lb/a/k/a$e;->e:Lc/d;

    iget-object v5, v1, Lb/a/k/a;->d:Ljava/util/Random;

    invoke-direct {v2, v3, v4, v5}, Lb/a/k/d;-><init>(ZLc/d;Ljava/util/Random;)V

    iput-object v2, v1, Lb/a/k/a;->h:Lb/a/k/d;

    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v10, 0x0

    invoke-static {p2, v10}, Lb/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v2, v1, Lb/a/k/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    cmp-long p2, v7, v2

    if-eqz p2, :cond_12c

    iget-object v3, v1, Lb/a/k/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lb/a/k/a$d;

    invoke-direct {v4, v1}, Lb/a/k/a$d;-><init>(Lb/a/k/a;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, v7

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_12c
    iget-object p2, v1, Lb/a/k/a;->k:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_137

    invoke-virtual {v1}, Lb/a/k/a;->i()V

    :cond_137
    monitor-exit v1
    :try_end_138
    .catchall {:try_start_fd .. :try_end_138} :catchall_152

    :try_start_138
    new-instance p2, Lb/a/k/c;

    iget-boolean v2, v0, Lb/a/k/a$e;->c:Z

    iget-object v0, v0, Lb/a/k/a$e;->d:Lc/e;

    invoke-direct {p2, v2, v0, v1}, Lb/a/k/c;-><init>(ZLc/e;Lb/a/k/c$a;)V

    iput-object p2, v1, Lb/a/k/a;->g:Lb/a/k/c;

    invoke-virtual {p1}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object p1

    iget-object p1, p1, Lb/a/c/c;->c:Ljava/net/Socket;

    invoke-virtual {p1, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object p1, p0, Lb/a/k/a$2;->c:Lb/a/k/a;

    invoke-virtual {p1}, Lb/a/k/a;->e()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_151} :catch_155

    return-void

    :catchall_152
    move-exception p1

    :try_start_153
    monitor-exit v1
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    :try_start_154
    throw p1
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_155} :catch_155

    :catch_155
    iget-object p1, p0, Lb/a/k/a$2;->c:Lb/a/k/a;

    invoke-virtual {p1}, Lb/a/k/a;->k()V

    return-void

    :catch_15b
    iget-object p1, p0, Lb/a/k/a$2;->c:Lb/a/k/a;

    invoke-virtual {p1}, Lb/a/k/a;->k()V

    invoke-static {p2}, Lb/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .registers 2

    iget-object p1, p0, Lb/a/k/a$2;->c:Lb/a/k/a;

    invoke-virtual {p1}, Lb/a/k/a;->k()V

    return-void
.end method
