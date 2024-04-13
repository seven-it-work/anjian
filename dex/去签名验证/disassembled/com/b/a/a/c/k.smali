.class public final Lcom/b/a/a/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/af;


# instance fields
.field private final a:Lcom/b/a/ai;

.field private final b:Z

.field private c:Lcom/b/a/a/b/g;

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/b/a/ai;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    iput-boolean p2, p0, Lcom/b/a/a/c/k;->b:Z

    return-void
.end method

.method private a(Lcom/b/a/ac;)Lcom/b/a/a;
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v1}, Lcom/b/a/ai;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v1, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v1}, Lcom/b/a/ai;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v3, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v3}, Lcom/b/a/ai;->k()Lcom/b/a/i;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_22

    :cond_1f
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    :goto_22
    new-instance v1, Lcom/b/a/a;

    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/b/a/ac;->g()I

    move-result v6

    iget-object v2, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->g()Lcom/b/a/v;

    move-result-object v7

    iget-object v2, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->h()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->m()Lcom/b/a/b;

    move-result-object v12

    iget-object v2, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->d()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->r()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->s()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->e()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lcom/b/a/a;-><init>(Ljava/lang/String;ILcom/b/a/v;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/b/a/i;Lcom/b/a/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private static a(Lcom/b/a/as;Lcom/b/a/ac;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/b/a/ac;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/b/a/ac;->g()I

    move-result v1

    if-ne v0, v1, :cond_30

    invoke-virtual {p0}, Lcom/b/a/ac;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/b/a/ac;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/io/IOException;ZLcom/b/a/ao;)Z
    .registers 6

    iget-object v0, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {v0, p1}, Lcom/b/a/a/b/g;->a(Ljava/io/IOException;)V

    iget-object v0, p0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v0}, Lcom/b/a/ai;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-eqz p2, :cond_1a

    invoke-virtual {p3}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object p3

    instance-of p3, p3, Lcom/b/a/a/c/m;

    if-eqz p3, :cond_1a

    return v1

    :cond_1a
    instance-of p3, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x1

    if-eqz p3, :cond_21

    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    goto :goto_3f

    :cond_21
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_2c

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_3e

    goto :goto_1f

    :cond_2c
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_39

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_39

    goto :goto_1f

    :cond_39
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_3e

    goto :goto_1f

    :cond_3e
    const/4 p1, 0x1

    :goto_3f
    if-nez p1, :cond_42

    return v1

    :cond_42
    iget-object p1, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {p1}, Lcom/b/a/a/b/g;->e()Z

    move-result p1

    if-nez p1, :cond_4b

    return v1

    :cond_4b
    return v0
.end method


# virtual methods
.method public final a(Lcom/b/a/ag;)Lcom/b/a/as;
    .registers 12

    invoke-interface {p1}, Lcom/b/a/ag;->a()Lcom/b/a/ao;

    move-result-object v0

    new-instance v1, Lcom/b/a/a/b/g;

    iget-object v2, p0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->n()Lcom/b/a/n;

    move-result-object v2

    invoke-virtual {v0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/b/a/a/c/k;->a(Lcom/b/a/ac;)Lcom/b/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/b/a/a/c/k;->d:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lcom/b/a/a/b/g;-><init>(Lcom/b/a/n;Lcom/b/a/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :cond_1f
    :goto_1f
    iget-boolean v5, p0, Lcom/b/a/a/c/k;->e:Z

    if-eqz v5, :cond_30

    iget-object p1, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {p1}, Lcom/b/a/a/b/g;->c()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    const/4 v5, 0x1

    :try_start_31
    move-object v6, p1

    check-cast v6, Lcom/b/a/a/c/h;

    iget-object v7, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {v6, v0, v7, v2, v2}, Lcom/b/a/a/c/h;->a(Lcom/b/a/ao;Lcom/b/a/a/b/g;Lcom/b/a/a/c/c;Lcom/b/a/m;)Lcom/b/a/as;

    move-result-object v6
    :try_end_3a
    .catch Lcom/b/a/a/b/e; {:try_start_31 .. :try_end_3a} :catch_208
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_1fa
    .catchall {:try_start_31 .. :try_end_3a} :catchall_1f8

    if-eqz v3, :cond_56

    invoke-virtual {v6}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object v0

    invoke-virtual {v3}, Lcom/b/a/as;->f()Lcom/b/a/at;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/b/a/at;->a(Lcom/b/a/au;)Lcom/b/a/at;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/b/a/at;->c(Lcom/b/a/as;)Lcom/b/a/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object v0

    move-object v3, v0

    goto :goto_57

    :cond_56
    move-object v3, v6

    :goto_57
    if-nez v3, :cond_5f

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5f
    iget-object v0, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/a/b/g;->b()Lcom/b/a/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-interface {v0}, Lcom/b/a/m;->a()Lcom/b/a/aw;

    move-result-object v0

    goto :goto_6d

    :cond_6c
    move-object v0, v2

    :goto_6d
    invoke-virtual {v3}, Lcom/b/a/as;->b()I

    move-result v6

    invoke-virtual {v3}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v7

    invoke-virtual {v7}, Lcom/b/a/ao;->b()Ljava/lang/String;

    move-result-object v7

    sparse-switch v6, :sswitch_data_224

    goto/16 :goto_163

    :sswitch_7e
    invoke-virtual {v3}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object v0

    instance-of v0, v0, Lcom/b/a/a/c/m;

    if-nez v0, :cond_163

    invoke-virtual {v3}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v0

    goto/16 :goto_164

    :sswitch_90
    if-eqz v0, :cond_97

    invoke-virtual {v0}, Lcom/b/a/aw;->b()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_9d

    :cond_97
    iget-object v0, p0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v0}, Lcom/b/a/ai;->d()Ljava/net/Proxy;

    move-result-object v0

    :goto_9d
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v5, :cond_ad

    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ad
    iget-object v0, p0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v0}, Lcom/b/a/ai;->m()Lcom/b/a/b;

    move-result-object v0

    goto :goto_ba

    :sswitch_b4
    iget-object v0, p0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v0}, Lcom/b/a/ai;->l()Lcom/b/a/b;

    move-result-object v0

    :goto_ba
    invoke-interface {v0}, Lcom/b/a/b;->a()Lcom/b/a/ao;

    move-result-object v0

    goto/16 :goto_164

    :sswitch_c0
    const-string v0, "GET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "HEAD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    :cond_d0
    :sswitch_d0
    iget-object v0, p0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v0}, Lcom/b/a/ai;->p()Z

    move-result v0

    if-eqz v0, :cond_163

    const-string v0, "Location"

    invoke-virtual {v3, v0}, Lcom/b/a/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_163

    invoke-virtual {v3}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/b/a/ac;->c(Ljava/lang/String;)Lcom/b/a/ac;

    move-result-object v0

    if-eqz v0, :cond_163

    invoke-virtual {v0}, Lcom/b/a/ac;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v8

    invoke-virtual {v8}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v8

    invoke-virtual {v8}, Lcom/b/a/ac;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10c

    iget-object v6, p0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v6}, Lcom/b/a/ai;->o()Z

    move-result v6

    if-eqz v6, :cond_163

    :cond_10c
    invoke-virtual {v3}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/a/ao;->e()Lcom/b/a/ap;

    move-result-object v6

    invoke-static {v7}, Lcom/b/a/a/c/g;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14f

    const-string v8, "PROPFIND"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "PROPFIND"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v5, v9

    if-eqz v5, :cond_12f

    const-string v5, "GET"

    invoke-virtual {v6, v5, v2}, Lcom/b/a/ap;->a(Ljava/lang/String;Lcom/b/a/aq;)Lcom/b/a/ap;

    goto :goto_13e

    :cond_12f
    if-eqz v8, :cond_13a

    invoke-virtual {v3}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object v5

    goto :goto_13b

    :cond_13a
    move-object v5, v2

    :goto_13b
    invoke-virtual {v6, v7, v5}, Lcom/b/a/ap;->a(Ljava/lang/String;Lcom/b/a/aq;)Lcom/b/a/ap;

    :goto_13e
    if-nez v8, :cond_14f

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v6, v5}, Lcom/b/a/ap;->b(Ljava/lang/String;)Lcom/b/a/ap;

    const-string v5, "Content-Length"

    invoke-virtual {v6, v5}, Lcom/b/a/ap;->b(Ljava/lang/String;)Lcom/b/a/ap;

    const-string v5, "Content-Type"

    invoke-virtual {v6, v5}, Lcom/b/a/ap;->b(Ljava/lang/String;)Lcom/b/a/ap;

    :cond_14f
    invoke-static {v3, v0}, Lcom/b/a/a/c/k;->a(Lcom/b/a/as;Lcom/b/a/ac;)Z

    move-result v5

    if-nez v5, :cond_15a

    const-string v5, "Authorization"

    invoke-virtual {v6, v5}, Lcom/b/a/ap;->b(Ljava/lang/String;)Lcom/b/a/ap;

    :cond_15a
    invoke-virtual {v6, v0}, Lcom/b/a/ap;->a(Lcom/b/a/ac;)Lcom/b/a/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ap;->a()Lcom/b/a/ao;

    move-result-object v0

    goto :goto_164

    :cond_163
    :goto_163
    move-object v0, v2

    :goto_164
    if-nez v0, :cond_170

    iget-boolean p1, p0, Lcom/b/a/a/c/k;->b:Z

    if-nez p1, :cond_16f

    iget-object p1, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {p1}, Lcom/b/a/a/b/g;->c()V

    :cond_16f
    return-object v3

    :cond_170
    invoke-virtual {v3}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object v5

    invoke-static {v5}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14

    if-le v4, v5, :cond_196

    iget-object p1, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {p1}, Lcom/b/a/a/b/g;->c()V

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Too many follow-up requests: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_196
    invoke-virtual {v0}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object v5

    instance-of v5, v5, Lcom/b/a/a/c/m;

    if-eqz v5, :cond_1af

    iget-object p1, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {p1}, Lcom/b/a/a/b/g;->c()V

    new-instance p1, Ljava/net/HttpRetryException;

    const-string v0, "Cannot retry streamed HTTP body"

    invoke-virtual {v3}, Lcom/b/a/as;->b()I

    move-result v1

    invoke-direct {p1, v0, v1}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1af
    invoke-virtual {v0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/b/a/a/c/k;->a(Lcom/b/a/as;Lcom/b/a/ac;)Z

    move-result v5

    if-nez v5, :cond_1d7

    iget-object v5, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {v5}, Lcom/b/a/a/b/g;->c()V

    new-instance v5, Lcom/b/a/a/b/g;

    iget-object v6, p0, Lcom/b/a/a/c/k;->a:Lcom/b/a/ai;

    invoke-virtual {v6}, Lcom/b/a/ai;->n()Lcom/b/a/n;

    move-result-object v6

    invoke-virtual {v0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/b/a/a/c/k;->a(Lcom/b/a/ac;)Lcom/b/a/a;

    move-result-object v7

    iget-object v8, p0, Lcom/b/a/a/c/k;->d:Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v8}, Lcom/b/a/a/b/g;-><init>(Lcom/b/a/n;Lcom/b/a/a;Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    goto/16 :goto_1f

    :cond_1d7
    iget-object v5, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {v5}, Lcom/b/a/a/b/g;->a()Lcom/b/a/a/c/c;

    move-result-object v5

    if-eqz v5, :cond_1f

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Closing the body of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1f8
    move-exception p1

    goto :goto_218

    :catch_1fa
    move-exception v6

    :try_start_1fb
    instance-of v7, v6, Lcom/b/a/a/e/a;

    if-nez v7, :cond_200

    goto :goto_201

    :cond_200
    const/4 v5, 0x0

    :goto_201
    invoke-direct {p0, v6, v5, v0}, Lcom/b/a/a/c/k;->a(Ljava/io/IOException;ZLcom/b/a/ao;)Z

    move-result v5

    if-nez v5, :cond_1f

    throw v6

    :catch_208
    move-exception v5

    invoke-virtual {v5}, Lcom/b/a/a/b/e;->a()Ljava/io/IOException;

    move-result-object v6

    invoke-direct {p0, v6, v1, v0}, Lcom/b/a/a/c/k;->a(Ljava/io/IOException;ZLcom/b/a/ao;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v5}, Lcom/b/a/a/b/e;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_218
    .catchall {:try_start_1fb .. :try_end_218} :catchall_1f8

    :goto_218
    iget-object v0, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {v0, v2}, Lcom/b/a/a/b/g;->a(Ljava/io/IOException;)V

    iget-object v0, p0, Lcom/b/a/a/c/k;->c:Lcom/b/a/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/a/b/g;->c()V

    throw p1

    nop

    :sswitch_data_224
    .sparse-switch
        0x12c -> :sswitch_d0
        0x12d -> :sswitch_d0
        0x12e -> :sswitch_d0
        0x12f -> :sswitch_d0
        0x133 -> :sswitch_c0
        0x134 -> :sswitch_c0
        0x191 -> :sswitch_b4
        0x197 -> :sswitch_90
        0x198 -> :sswitch_7e
    .end sparse-switch
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/c/k;->d:Ljava/lang/Object;

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/a/c/k;->e:Z

    return v0
.end method
