.class final Lcom/hlzn/socketclient/service/SocketService$9;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlzn/socketclient/service/SocketService;->k()V
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

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$9;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStart;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStart$Builder;

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/a/a;->a()Lcom/hlzn/socketclient/a/a;

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$9;->a:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->b(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStart$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStart;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hlzn/socketclient/a/a;->a(Ljava/net/Socket;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStart;)V

    return-void
.end method
