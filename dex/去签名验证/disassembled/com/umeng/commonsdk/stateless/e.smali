.class public Lcom/umeng/commonsdk/stateless/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->a:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/commonsdk/stateless/e;->b:I

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    return-void
.end method

.method private a()Z
    .registers 5

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v3, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    return v1

    :cond_2f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_61

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_58} :catch_5b

    if-eqz v0, :cond_61

    :cond_5a
    return v3

    :catch_5b
    move-exception v0

    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_61
    return v1
.end method


# virtual methods
.method public a([BLjava/lang/String;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e0

    if-nez p2, :cond_8

    goto/16 :goto_e0

    :cond_8
    const/4 v2, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/e;->a()Z

    move-result v3

    if-eqz v3, :cond_39

    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/umeng/commonsdk/stateless/e;->a:Ljava/lang/String;

    iget v7, p0, Lcom/umeng/commonsdk/stateless/e;->b:I

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://plbslog.umeng.com/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p2

    :goto_36
    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_51

    :cond_39
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://plbslog.umeng.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_50} :catch_c4
    .catchall {:try_start_9 .. :try_end_50} :catchall_c1

    goto :goto_36

    :goto_51
    :try_start_51
    new-instance v3, Lcom/umeng/commonsdk/stateless/e$1;

    invoke-direct {v3, p0}, Lcom/umeng/commonsdk/stateless/e$1;-><init>(Lcom/umeng/commonsdk/stateless/e;)V

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    const-string v3, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Msg-Type"

    const-string v4, "envelope/json"

    invoke-virtual {p2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x7530

    invoke-virtual {p2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v3, "POST"

    invoke-virtual {p2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {p2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_9c} :catch_bf
    .catchall {:try_start_51 .. :try_end_9c} :catchall_d4

    :try_start_9c
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_a9} :catch_bc
    .catchall {:try_start_9c .. :try_end_a9} :catchall_b9

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_ae

    const/4 v1, 0x1

    :cond_ae
    if-eqz v3, :cond_b3

    :try_start_b0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_b3

    :catch_b3
    :cond_b3
    if-eqz p2, :cond_d3

    :goto_b5
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return v1

    :catchall_b9
    move-exception p1

    move-object v2, v3

    goto :goto_d5

    :catch_bc
    move-exception p1

    move-object v2, v3

    goto :goto_c6

    :catch_bf
    move-exception p1

    goto :goto_c6

    :catchall_c1
    move-exception p1

    move-object p2, v2

    goto :goto_d5

    :catch_c4
    move-exception p1

    move-object p2, v2

    :goto_c6
    :try_start_c6
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_cb
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_d4

    if-eqz v2, :cond_d0

    :try_start_cd
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d0

    :catch_d0
    :cond_d0
    if-eqz p2, :cond_d3

    goto :goto_b5

    :cond_d3
    return v1

    :catchall_d4
    move-exception p1

    :goto_d5
    if-eqz v2, :cond_da

    :try_start_d7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_da

    :catch_da
    :cond_da
    if-eqz p2, :cond_df

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_df
    throw p1

    :cond_e0
    :goto_e0
    const-string p1, "walle"

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "[stateless] sendMessage, envelopeByte == null || path == null "

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public b([BLjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_c2

    if-nez p2, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    :try_start_7
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/e;->a()Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/umeng/commonsdk/stateless/e;->a:Ljava/lang/String;

    iget v6, p0, Lcom/umeng/commonsdk/stateless/e;->b:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://plbslog.umeng.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p2

    :goto_34
    check-cast p2, Ljava/net/HttpURLConnection;

    goto :goto_4f

    :cond_37
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://plbslog.umeng.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4e} :catch_a6
    .catchall {:try_start_7 .. :try_end_4e} :catchall_a3

    goto :goto_34

    :goto_4f
    :try_start_4f
    const-string v2, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Msg-Type"

    const-string v3, "envelope/json"

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x7530

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "POST"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_7e} :catch_a1
    .catchall {:try_start_4f .. :try_end_7e} :catchall_b6

    :try_start_7e
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_8b} :catch_9e
    .catchall {:try_start_7e .. :try_end_8b} :catchall_9b

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_90

    const/4 v0, 0x1

    :cond_90
    if-eqz v3, :cond_95

    :try_start_92
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_95

    :catch_95
    :cond_95
    if-eqz p2, :cond_b5

    :goto_97
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return v0

    :catchall_9b
    move-exception p1

    move-object v1, v3

    goto :goto_b7

    :catch_9e
    move-exception p1

    move-object v1, v3

    goto :goto_a8

    :catch_a1
    move-exception p1

    goto :goto_a8

    :catchall_a3
    move-exception p1

    move-object p2, v1

    goto :goto_b7

    :catch_a6
    move-exception p1

    move-object p2, v1

    :goto_a8
    :try_start_a8
    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_ad
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_b6

    if-eqz v1, :cond_b2

    :try_start_af
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b2

    :catch_b2
    :cond_b2
    if-eqz p2, :cond_b5

    goto :goto_97

    :cond_b5
    return v0

    :catchall_b6
    move-exception p1

    :goto_b7
    if-eqz v1, :cond_bc

    :try_start_b9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_bc

    :catch_bc
    :cond_bc
    if-eqz p2, :cond_c1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c1
    throw p1

    :cond_c2
    return v0
.end method
