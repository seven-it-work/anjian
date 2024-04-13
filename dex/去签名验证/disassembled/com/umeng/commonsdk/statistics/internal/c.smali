.class public Lcom/umeng/commonsdk/statistics/internal/c;
.super Ljava/lang/Object;


# static fields
.field private static e:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/umeng/commonsdk/statistics/internal/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->a:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->b:I

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v1, "domain_p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v2, "domain_s"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    :cond_20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    :cond_2c
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/umeng/commonsdk/statistics/b;->e:[Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_65

    if-nez v1, :cond_57

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/commonsdk/statistics/b;->e:[Ljava/lang/String;

    return-void

    :cond_57
    if-ne v1, v4, :cond_65

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/commonsdk/statistics/b;->e:[Ljava/lang/String;

    :cond_65
    return-void
.end method

.method private b()Z
    .registers 5

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_54} :catch_57

    if-eqz v0, :cond_5d

    :cond_56
    return v3

    :catch_57
    move-exception v0

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_5d
    return v1
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/statistics/internal/b;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    return-void
.end method

.method public a([BLjava/lang/String;)[B
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    invoke-interface {v1}, Lcom/umeng/commonsdk/statistics/internal/b;->onRequestStart()V

    :cond_a
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/internal/c;->a:Ljava/lang/String;

    iget v5, p0, Lcom/umeng/commonsdk/statistics/internal/c;->b:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p2

    :goto_29
    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_36

    :cond_2c
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_136
    .catchall {:try_start_1 .. :try_end_35} :catchall_133

    goto :goto_29

    :goto_36
    :try_start_36
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/internal/c;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_5a

    new-instance v1, Lcom/umeng/commonsdk/statistics/internal/c$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/internal/c$1;-><init>(Lcom/umeng/commonsdk/statistics/internal/c;)V

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sput-boolean v2, Lcom/umeng/commonsdk/statistics/internal/c;->e:Z

    :cond_5a
    const-string v1, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Umeng-Sdk"

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/internal/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/internal/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Msg-Type"

    const-string v3, "envelope/json"

    invoke-virtual {p2, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7530

    invoke-virtual {p2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {p2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {p2, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_a7} :catch_130
    .catchall {:try_start_36 .. :try_end_a7} :catchall_12e

    :try_start_a7
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    if-eqz p1, :cond_b9

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    invoke-interface {p1}, Lcom/umeng/commonsdk/statistics/internal/b;->onRequestEnd()V

    :cond_b9
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    const-string v4, "Content-Type"

    invoke-virtual {p2, v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d2

    const-string v5, "application/thrift"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d2

    const/4 v1, 0x1

    :cond_d2
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_ef

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "status code : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; isThrifit:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :cond_ef
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_121

    if-eqz v1, :cond_121

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Send message to server. status code is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_10a} :catch_12c
    .catchall {:try_start_a7 .. :try_end_10a} :catchall_14e

    :try_start_10a
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_10e
    .catchall {:try_start_10a .. :try_end_10e} :catchall_11c

    :try_start_10e
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_111} :catch_12c
    .catchall {:try_start_10e .. :try_end_111} :catchall_14e

    if-eqz v3, :cond_116

    :try_start_113
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_116

    :catch_116
    :cond_116
    if-eqz p2, :cond_11b

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_11b
    return-object v1

    :catchall_11c
    move-exception v1

    :try_start_11d
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    throw v1
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_121} :catch_12c
    .catchall {:try_start_11d .. :try_end_121} :catchall_14e

    :cond_121
    if-eqz v3, :cond_126

    :try_start_123
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_126} :catch_126

    :catch_126
    :cond_126
    if-eqz p2, :cond_12b

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_12b
    return-object v0

    :catch_12c
    move-exception p1

    goto :goto_139

    :catchall_12e
    move-exception p1

    goto :goto_150

    :catch_130
    move-exception p1

    move-object v3, v0

    goto :goto_139

    :catchall_133
    move-exception p1

    move-object p2, v0

    goto :goto_150

    :catch_136
    move-exception p1

    move-object p2, v0

    move-object v3, p2

    :goto_139
    :try_start_139
    const-string v1, "IOException,Failed to send message."

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_143
    .catchall {:try_start_139 .. :try_end_143} :catchall_14e

    if-eqz v3, :cond_148

    :try_start_145
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_148

    :catch_148
    :cond_148
    if-eqz p2, :cond_14d

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_14d
    return-object v0

    :catchall_14e
    move-exception p1

    move-object v0, v3

    :goto_150
    if-eqz v0, :cond_155

    :try_start_152
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_155} :catch_155

    :catch_155
    :cond_155
    if-eqz p2, :cond_15a

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_15a
    throw p1
.end method

.method public a([BZ)[B
    .registers 6

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/c;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    sget-object v2, Lcom/umeng/commonsdk/statistics/b;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2a

    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->e:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/umeng/commonsdk/statistics/internal/c;->a([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    invoke-interface {p1, p2}, Lcom/umeng/commonsdk/statistics/internal/b;->onRequestSucceed(Z)V

    return-object v0

    :cond_1e
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    invoke-interface {v2}, Lcom/umeng/commonsdk/statistics/internal/b;->onRequestFailed()V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    return-object v0
.end method
