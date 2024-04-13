.class final Lcom/hlzn/socketclient/service/SocketService$5;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlzn/socketclient/service/SocketService;->g(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/hlzn/socketclient/service/SocketService;


# direct methods
.method constructor <init>(Lcom/hlzn/socketclient/service/SocketService;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$5;->c:Lcom/hlzn/socketclient/service/SocketService;

    iput p2, p0, Lcom/hlzn/socketclient/service/SocketService$5;->a:I

    iput-object p3, p0, Lcom/hlzn/socketclient/service/SocketService$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$5;->c:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->j(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult$Builder;->setRpcId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult$Builder;

    move-result-object v1

    iget v2, p0, Lcom/hlzn/socketclient/service/SocketService$5;->a:I

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult$Builder;->setError(I)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$5;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult$Builder;->setMessage(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult$Builder;

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cmdRenameDeviceNameSuccessOperate --> rpcId ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult$Builder;->getRpcId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hlzn/socketclient/service/SocketService$5;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$5;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hlzn/socketclient/f/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hlzn/socketclient/a/a;->a()Lcom/hlzn/socketclient/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$5;->c:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->b(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult;

    move-result-object v0

    const/16 v3, 0x2782

    invoke-static {v3}, Lcom/hlzn/socketclient/f/a;->b(I)[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceNameResult;->toByteArray()[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v4}, Lcom/hlzn/socketclient/f/a;->a(I)[B

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hlzn/socketclient/f/a;->a([B[B[B)[B

    move-result-object v0

    iget-object v1, v1, Lcom/hlzn/socketclient/a/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cmdRenameDeviceNameResult --> binary value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-byte v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hlzn/socketclient/f/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_a7

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_a7

    :try_start_98
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a2} :catch_a3

    return-void

    :catch_a3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a7
    return-void
.end method
