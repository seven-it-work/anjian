.class public final Lcom/android/volley/toolbox/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/toolbox/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final b:Lcom/android/volley/toolbox/j$a;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/j;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/j;-><init>(C)V

    return-void
.end method

.method private constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/volley/toolbox/j;->b:Lcom/android/volley/toolbox/j$a;

    iput-object p1, p0, Lcom/android/volley/toolbox/j;->c:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method private a(Ljava/net/URL;Lcom/android/volley/l;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/l<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Lcom/android/volley/l;->i()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p2, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/volley/toolbox/j;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_30

    move-object p1, v0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object p2, p0, Lcom/android/volley/toolbox/j;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_30
    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .registers 4

    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_e
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/android/volley/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/l<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/a;
        }
    .end annotation

    iget v0, p1, Lcom/android/volley/l;->a:I

    packed-switch v0, :pswitch_data_6e

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/volley/toolbox/j;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/l;)V

    return-void

    :pswitch_16
    const-string p1, "TRACE"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    :pswitch_1c
    const-string p1, "OPTIONS"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    :pswitch_22
    const-string p1, "HEAD"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    :pswitch_28
    const-string p1, "DELETE"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    :pswitch_2e
    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/volley/toolbox/j;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/l;)V

    return-void

    :pswitch_37
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/volley/toolbox/j;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/l;)V

    return-void

    :pswitch_40
    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    :pswitch_46
    invoke-virtual {p1}, Lcom/android/volley/l;->d()[B

    move-result-object v0

    if-eqz v0, :cond_6d

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/l;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    :cond_6d
    return-void

    :pswitch_data_6e
    .packed-switch -0x1
        :pswitch_46
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method private static b(Ljava/net/HttpURLConnection;Lcom/android/volley/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/l<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/a;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/volley/l;->g()[B

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/l;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    :cond_22
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/l;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/a;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/l;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/android/volley/toolbox/j;->b:Lcom/android/volley/toolbox/j$a;

    if-eqz p2, :cond_31

    iget-object p2, p0, Lcom/android/volley/toolbox/j;->b:Lcom/android/volley/toolbox/j$a;

    invoke-interface {p2}, Lcom/android/volley/toolbox/j$a;->a()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_32

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "URL blocked by rewriter: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    move-object p2, v0

    :cond_32
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/android/volley/l;->i()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v4, "https"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/volley/toolbox/j;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_67

    move-object v0, p2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v4, p0, Lcom/android/volley/toolbox/j;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_67
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_85
    iget v0, p1, Lcom/android/volley/l;->a:I

    packed-switch v0, :pswitch_data_142

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown method type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_92
    const-string v0, "PATCH"

    goto :goto_a6

    :pswitch_95
    const-string p1, "TRACE"

    goto :goto_af

    :pswitch_98
    const-string p1, "OPTIONS"

    goto :goto_af

    :pswitch_9b
    const-string p1, "HEAD"

    goto :goto_af

    :pswitch_9e
    const-string p1, "DELETE"

    goto :goto_af

    :pswitch_a1
    const-string v0, "PUT"

    goto :goto_a6

    :pswitch_a4
    const-string v0, "POST"

    :goto_a6
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/android/volley/toolbox/j;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/l;)V

    goto :goto_d9

    :pswitch_ad
    const-string p1, "GET"

    :goto_af
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_d9

    :pswitch_b3
    invoke-virtual {p1}, Lcom/android/volley/l;->d()[B

    move-result-object v0

    if-eqz v0, :cond_d9

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/l;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    :cond_d9
    :goto_d9
    new-instance p1, Lorg/apache/http/ProtocolVersion;

    const-string v0, "HTTP"

    invoke-direct {p1, v0, v3, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ef

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ef
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    new-instance p1, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {p1, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    invoke-static {p2}, Lcom/android/volley/toolbox/j;->a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_114
    :goto_114
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_114

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_114

    :cond_141
    return-object p1

    :pswitch_data_142
    .packed-switch -0x1
        :pswitch_b3
        :pswitch_ad
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
    .end packed-switch
.end method
