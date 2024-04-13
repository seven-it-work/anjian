.class public Lcom/sun/mail/iap/Protocol;
.super Ljava/lang/Object;


# static fields
.field private static final CRLF:[B


# instance fields
.field private connected:Z

.field protected debug:Z

.field private volatile handlers:Ljava/util/Vector;

.field protected host:Ljava/lang/String;

.field private volatile input:Lcom/sun/mail/iap/ResponseInputStream;

.field protected out:Ljava/io/PrintStream;

.field private volatile output:Ljava/io/DataOutputStream;

.field protected prefix:Ljava/lang/String;

.field protected props:Ljava/util/Properties;

.field protected quote:Z

.field private socket:Ljava/net/Socket;

.field private tagCounter:I

.field private volatile timestamp:J

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/iap/Protocol;->CRLF:[B

    return-void

    nop

    :array_a
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->connected:Z

    iput v0, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    const-string v1, "localhost"

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->host:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sun/mail/iap/Protocol;->debug:Z

    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/sun/mail/util/TraceInputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, v1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-virtual {p1, p3}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    iget-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    new-instance p1, Lcom/sun/mail/iap/ResponseInputStream;

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ResponseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    new-instance p1, Lcom/sun/mail/util/TraceOutputStream;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p1, p2, v0}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {p1, p3}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    iget-boolean p2, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {p1, p2}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    new-instance p1, Ljava/io/DataOutputStream;

    new-instance p2, Ljava/io/BufferedOutputStream;

    iget-object p3, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {p2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->connected:Z

    iput v0, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    :try_start_b
    iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->host:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sun/mail/iap/Protocol;->debug:Z

    iput-object p4, p0, Lcom/sun/mail/iap/Protocol;->out:Ljava/io/PrintStream;

    iput-object p5, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;

    iput-object p6, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;

    invoke-static {p1, p2, p5, p6, p7}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    const-string p1, "mail.debug.quote"

    invoke-virtual {p5, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2d

    const-string p3, "true"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-direct {p0, p4}, Lcom/sun/mail/iap/Protocol;->initStreams(Ljava/io/PrintStream;)V

    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    iput-boolean p2, p0, Lcom/sun/mail/iap/Protocol;->connected:Z
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_49

    iget-boolean p1, p0, Lcom/sun/mail/iap/Protocol;->connected:Z

    if-nez p1, :cond_48

    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    :cond_48
    return-void

    :catchall_49
    move-exception p1

    iget-boolean p2, p0, Lcom/sun/mail/iap/Protocol;->connected:Z

    if-nez p2, :cond_51

    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    :cond_51
    throw p1
.end method

.method private initStreams(Ljava/io/PrintStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/util/TraceInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->debug:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    new-instance v0, Lcom/sun/mail/iap/ResponseInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ResponseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    new-instance v0, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    iget-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->debug:Z

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    iget-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    new-instance p1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public declared-synchronized addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_56

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/iap/Protocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catch Lcom/sun/mail/iap/LiteralException; {:try_start_9 .. :try_end_d} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_f
    .catchall {:try_start_9 .. :try_end_d} :catchall_56

    move-object v2, p1

    goto :goto_1e

    :catch_f
    move-exception p1

    :try_start_10
    invoke-static {p1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object p1

    goto :goto_1a

    :catch_15
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object p1

    :goto_1a
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1d
    const/4 v1, 0x1

    :catch_1e
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_31

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/mail/iap/Response;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_56

    monitor-exit p0

    return-object p1

    :cond_31
    :try_start_31
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object p1
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_36
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_31 .. :try_end_35} :catch_1e
    .catchall {:try_start_31 .. :try_end_35} :catchall_56

    goto :goto_3b

    :catch_36
    move-exception p1

    :try_start_37
    invoke-static {p1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object p1

    :goto_3b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result p2

    if-eqz p2, :cond_45

    const/4 v1, 0x1

    :cond_45
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_56

    if-eqz p1, :cond_1e

    goto :goto_1d

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    :catch_a
    const/4 v0, 0x0

    :try_start_b
    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    return-void
.end method

.method protected getInputStream()Lcom/sun/mail/iap/ResponseInputStream;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method public getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    return-wide v0
.end method

.method public handleResult(Lcom/sun/mail/iap/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/sun/mail/iap/CommandFailedException;

    invoke-direct {v0, p1}, Lcom/sun/mail/iap/CommandFailedException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v0

    :cond_13
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    invoke-direct {v0, p1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v0

    :cond_1f
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v0

    :cond_2e
    return-void
.end method

.method public notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
    .registers 9

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    array-length v2, p1

    if-lt v1, v2, :cond_b

    return-void

    :cond_b
    aget-object v2, p1, v1

    if-eqz v2, :cond_2d

    iget-object v3, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_18

    return-void

    :cond_18
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_20
    if-lt v5, v3, :cond_23

    goto :goto_2d

    :cond_23
    aget-object v6, v4, v5

    check-cast v6, Lcom/sun/mail/iap/ResponseHandler;

    invoke-interface {v6, v2}, Lcom/sun/mail/iap/ResponseHandler;->handleResponse(Lcom/sun/mail/iap/Response;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public processGreeting(Lcom/sun/mail/iap/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v0

    :cond_c
    return-void
.end method

.method public readResponse()Lcom/sun/mail/iap/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Response;

    invoke-direct {v0, p0}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Protocol;)V

    return-object v0
.end method

.method public declared-synchronized removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/iap/Protocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Protocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Protocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-void
.end method

.method public declared-synchronized startTLS(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/iap/Protocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->out:Ljava/io/PrintStream;

    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Protocol;->initStreams(Ljava/io/PrintStream;)V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized supportsNonSyncLiterals()Z
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    if-eqz p2, :cond_40

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p2, p0}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    :cond_40
    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    sget-object p2, Lcom/sun/mail/iap/Protocol;->CRLF:[B

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    return-object v0
.end method
