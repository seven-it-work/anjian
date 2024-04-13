.class final Lcom/hlzn/socketclient/service/SocketService$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlzn/socketclient/service/SocketService;->i()V
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

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$8;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/f/b;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setRpcId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$8;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setAppId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$8;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->n(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setScriptId(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$8;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->m(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setDeviceId(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$8;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->l(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setIMToken(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$8;->a:Lcom/hlzn/socketclient/service/SocketService;

    iget-boolean v2, v2, Lcom/hlzn/socketclient/service/SocketService;->j:Z

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setScriptRunning(Z)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/a/a;->a()Lcom/hlzn/socketclient/a/a;

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$8;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->b(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hlzn/socketclient/a/a;->a(Ljava/net/Socket;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)V

    return-void
.end method
