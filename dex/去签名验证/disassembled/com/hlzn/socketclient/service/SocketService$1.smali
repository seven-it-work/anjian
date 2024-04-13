.class final Lcom/hlzn/socketclient/service/SocketService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlzn/socketclient/service/SocketService;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hlzn/socketclient/service/SocketService;


# direct methods
.method constructor <init>(Lcom/hlzn/socketclient/service/SocketService;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$1;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$1;->a:Lcom/hlzn/socketclient/service/SocketService;

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    invoke-static {v0, v1}, Lcom/hlzn/socketclient/service/SocketService;->a(Lcom/hlzn/socketclient/service/SocketService;Ljava/net/Socket;)Ljava/net/Socket;

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$1;->a:Lcom/hlzn/socketclient/service/SocketService;

    new-instance v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/hlzn/socketclient/b/a;->p:Ljava/lang/String;

    sget v3, Lcom/hlzn/socketclient/b/a;->q:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/hlzn/socketclient/service/SocketService;->a(Lcom/hlzn/socketclient/service/SocketService;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$1;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v0}, Lcom/hlzn/socketclient/service/SocketService;->b(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$1;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->a(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/InetSocketAddress;

    move-result-object v1

    const/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$1;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v0}, Lcom/hlzn/socketclient/service/SocketService;->b(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$1;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v0}, Lcom/hlzn/socketclient/service/SocketService;->b(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v0

    const/16 v2, 0x2800

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$1;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v0}, Lcom/hlzn/socketclient/service/SocketService;->b(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_47
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_47} :catch_7a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_47} :catch_66
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Landroid/os/NetworkOnMainThreadException;->printStackTrace()V

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createConnection --> exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/NetworkOnMainThreadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hlzn/socketclient/f/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createConnection --> exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createConnection --> exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b
.end method
