.class public Lcom/lidroid/xutils/http/client/RetryHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static final RETRY_SLEEP_INTERVAL:I = 0x1f4

.field private static exceptionBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static exceptionWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lidroid/xutils/http/client/RetryHandler;->maxRetries:I

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_73

    if-nez p3, :cond_6

    return v0

    :cond_6
    const-string v1, "http.request_sent"

    invoke-interface {p3, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_16

    :cond_10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_16
    iget v2, p0, Lcom/lidroid/xutils/http/client/RetryHandler;->maxRetries:I

    const/4 v3, 0x1

    if-le p2, v2, :cond_1d

    :goto_1b
    const/4 v3, 0x0

    goto :goto_34

    :cond_1d
    sget-object p2, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    goto :goto_1b

    :cond_2a
    sget-object p2, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_34
    if-eqz v3, :cond_6a

    :try_start_36
    const-string p1, "http.request"

    invoke-interface {p3, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5c

    instance-of p2, p1, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz p2, :cond_4f

    check-cast p1, Lorg/apache/http/client/methods/HttpRequestBase;

    const-string p2, "GET"

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object p1

    :goto_4a
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_6b

    :cond_4f
    instance-of p2, p1, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz p2, :cond_6a

    check-cast p1, Lorg/apache/http/impl/client/RequestWrapper;

    const-string p2, "GET"

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object p1

    goto :goto_4a

    :cond_5c
    const-string p1, "retry error, curr request is null"

    invoke-static {p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-exception p1

    const-string p2, "retry error"

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_68
    const/4 p1, 0x0

    goto :goto_6b

    :cond_6a
    move p1, v3

    :goto_6b
    if-eqz p1, :cond_72

    const-wide/16 p2, 0x1f4

    invoke-static {p2, p3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_72
    return p1

    :cond_73
    return v0
.end method
