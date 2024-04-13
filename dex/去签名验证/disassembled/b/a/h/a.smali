.class final Lb/a/h/a;
.super Lb/a/h/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/h/a$b;,
        Lb/a/h/a$a;
    }
.end annotation


# static fields
.field private static final a:I = 0xfa0


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:Lb/a/h/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/h/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lb/a/h/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/h/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lb/a/h/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/h/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lb/a/h/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/h/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lb/a/h/a$b;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lb/a/h/d;Lb/a/h/d;Lb/a/h/d;Lb/a/h/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/a/h/d<",
            "Ljava/net/Socket;",
            ">;",
            "Lb/a/h/d<",
            "Ljava/net/Socket;",
            ">;",
            "Lb/a/h/d<",
            "Ljava/net/Socket;",
            ">;",
            "Lb/a/h/d<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb/a/h/e;-><init>()V

    invoke-static {}, Lb/a/h/a$b;->a()Lb/a/h/a$b;

    move-result-object v0

    iput-object v0, p0, Lb/a/h/a;->j:Lb/a/h/a$b;

    iput-object p1, p0, Lb/a/h/a;->b:Ljava/lang/Class;

    iput-object p2, p0, Lb/a/h/a;->f:Lb/a/h/d;

    iput-object p3, p0, Lb/a/h/a;->g:Lb/a/h/d;

    iput-object p4, p0, Lb/a/h/a;->h:Lb/a/h/d;

    iput-object p5, p0, Lb/a/h/a;->i:Lb/a/h/d;

    return-void
.end method

.method public static a()Lb/a/h/e;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_9

    :goto_7
    move-object v3, v1

    goto :goto_10

    :catch_9
    :try_start_9
    const-string v1, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_7

    :goto_10
    new-instance v4, Lb/a/h/d;

    const-string v1, "setUseSessionTickets"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct {v4, v0, v1, v5}, Lb/a/h/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v5, Lb/a/h/d;

    const-string v1, "setHostname"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {v5, v0, v1, v6}, Lb/a/h/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_2c} :catch_55

    :try_start_2c
    const-string v1, "android.net.Network"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v1, Lb/a/h/d;

    const-class v6, [B

    const-string v8, "getAlpnSelectedProtocol"

    new-array v9, v7, [Ljava/lang/Class;

    invoke-direct {v1, v6, v8, v9}, Lb/a/h/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_3c} :catch_4b

    :try_start_3c
    new-instance v6, Lb/a/h/d;

    const-string v8, "setAlpnProtocols"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v9, [B

    aput-object v9, v2, v7

    invoke-direct {v6, v0, v8, v2}, Lb/a/h/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_49} :catch_4c

    move-object v7, v6

    goto :goto_4d

    :catch_4b
    move-object v1, v0

    :catch_4c
    move-object v7, v0

    :goto_4d
    move-object v6, v1

    :try_start_4e
    new-instance v1, Lb/a/h/a;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lb/a/h/a;-><init>(Ljava/lang/Class;Lb/a/h/d;Lb/a/h/d;Lb/a/h/d;Lb/a/h/d;)V
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4e .. :try_end_54} :catch_55

    return-object v1

    :catch_55
    return-object v0
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/b;
    .registers 9

    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkServerTrusted"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    const/4 v1, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Lb/a/h/a$a;

    invoke-direct {v1, v2, v0}, Lb/a/h/a$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    return-object v1

    :catch_36
    invoke-super {p0, p1}, Lb/a/h/e;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lb/a/h/a;->j:Lb/a/h/a$b;

    invoke-virtual {v0, p1}, Lb/a/h/a$b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lb/a/h/a;->h:Lb/a/h/d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lb/a/h/a;->h:Lb/a/h/d;

    invoke-virtual {v0, p1}, Lb/a/h/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    iget-object v0, p0, Lb/a/h/a;->h:Lb/a/h/d;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lb/a/h/d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_24

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lb/a/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_24
    return-object v1
.end method

.method public final a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 5

    iget-object v0, p0, Lb/a/h/a;->b:Ljava/lang/Class;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lb/a/h/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    :try_start_a
    const-string v0, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lb/a/h/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    invoke-super {p0, p1}, Lb/a/h/e;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    return-object p1

    :cond_25
    :goto_25
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "x509TrustManager"

    invoke-static {v0, p1, v1}, Lb/a/h/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    if-eqz p1, :cond_32

    return-object p1

    :cond_32
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "trustManager"

    invoke-static {v0, p1, v1}, Lb/a/h/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    :goto_5
    const/16 p1, 0xa

    if-eqz p3, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1f
    const/4 p3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_24
    if-ge p3, v1, :cond_45

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    add-int/lit16 v3, p3, 0xfa0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v4, "OkHttp"

    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v4, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_43

    add-int/lit8 p3, v3, 0x1

    goto :goto_24

    :cond_43
    move p3, v3

    goto :goto_2f

    :cond_45
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lb/a/h/a;->j:Lb/a/h/a$b;

    invoke-virtual {v0, p2}, Lb/a/h/a$b;->a(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lb/a/h/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_3} :catch_10
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in connect"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_10
    move-exception p1

    invoke-static {p1}, Lb/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_1d

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1d
    throw p1
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lb/aa;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1a

    iget-object v2, p0, Lb/a/h/a;->f:Lb/a/h/d;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lb/a/h/d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lb/a/h/a;->g:Lb/a/h/d;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lb/a/h/d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object p2, p0, Lb/a/h/a;->i:Lb/a/h/d;

    if-eqz p2, :cond_5e

    iget-object p2, p0, Lb/a/h/a;->i:Lb/a/h/d;

    invoke-virtual {p2, p1}, Lb/a/h/d;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5e

    new-array p2, v1, [Ljava/lang/Object;

    new-instance v1, Lc/c;

    invoke-direct {v1}, Lc/c;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v2, :cond_53

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/aa;

    sget-object v5, Lb/aa;->HTTP_1_0:Lb/aa;

    if-eq v4, v5, :cond_50

    invoke-virtual {v4}, Lb/aa;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Lc/c;->b(I)Lc/c;

    invoke-virtual {v4}, Lb/aa;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_53
    invoke-virtual {v1}, Lc/c;->v()[B

    move-result-object p3

    aput-object p3, p2, v0

    iget-object p3, p0, Lb/a/h/a;->i:Lb/a/h/d;

    invoke-virtual {p3, p1, p2}, Lb/a/h/d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 9

    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "isCleartextTrafficPermitted"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_31} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_31} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_31} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_31} :catch_32

    return v0

    :catch_32
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_38
    invoke-super {p0, p1}, Lb/a/h/e;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
