.class public Lb/a/h/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field static final c:Lb/a/h/e;

.field public static final d:I = 0x4

.field public static final e:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lb/a/h/a;->a()Lb/a/h/e;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1a

    :cond_7
    invoke-static {}, Lb/a/h/b;->a()Lb/a/h/b;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_1a

    :cond_e
    invoke-static {}, Lb/a/h/c;->a()Lb/a/h/e;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_1a

    :cond_15
    new-instance v0, Lb/a/h/e;

    invoke-direct {v0}, Lb/a/h/e;-><init>()V

    :goto_1a
    sput-object v0, Lb/a/h/e;->c:Lb/a/h/e;

    const-class v0, Lb/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lb/a/h/e;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lb/a/h/e;
    .registers 1

    invoke-static {}, Lb/a/h/a;->a()Lb/a/h/e;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-static {}, Lb/a/h/b;->a()Lb/a/h/b;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    invoke-static {}, Lb/a/h/c;->a()Lb/a/h/e;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    new-instance v0, Lb/a/h/e;

    invoke-direct {v0}, Lb/a/h/e;-><init>()V

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2f

    :try_start_9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    return-object v2

    :cond_1e
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_22} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_22} :catch_24

    return-object v1

    :cond_23
    return-object v2

    :catch_24
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_2a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_2f
    const-string v0, "delegate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-class v0, Ljava/lang/Object;

    const-string v1, "delegate"

    invoke-static {p0, v0, v1}, Lb/a/h/e;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_42

    goto :goto_0

    :cond_42
    return-object v2
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/aa;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_24

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/aa;

    sget-object v4, Lb/aa;->HTTP_1_0:Lb/aa;

    if-eq v3, v4, :cond_21

    invoke-virtual {v3}, Lb/aa;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    return-object v0
.end method

.method public static b()Lb/a/h/e;
    .registers 1

    sget-object v0, Lb/a/h/e;->c:Lb/a/h/e;

    return-object v0
.end method

.method private static b(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/aa;",
            ">;)[B"
        }
    .end annotation

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2b

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/aa;

    sget-object v4, Lb/aa;->HTTP_1_0:Lb/aa;

    if-eq v3, v4, :cond_28

    invoke-virtual {v3}, Lb/aa;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lc/c;->b(I)Lc/c;

    invoke-virtual {v3}, Lb/aa;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2b
    invoke-virtual {v0}, Lc/c;->v()[B

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    const-string v0, "OkHttp"

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/b;
    .registers 3

    new-instance v0, Lb/a/j/a;

    invoke-static {p1}, Lb/a/j/e;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/e;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/j/a;-><init>(Lb/a/j/e;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lb/a/h/e;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.security.ssl.SSLContextImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "context"

    invoke-static {p1, v1, v2}, Lb/a/h/e;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    return-object v0

    :cond_10
    const-class v1, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "trustManager"

    invoke-static {p1, v1, v2}, Lb/a/h/e;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_8

    :cond_6
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_8
    sget-object v0, Lb/a/h/e;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_13
    const/4 v0, 0x5

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, p2}, Lb/a/h/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
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

    return-void
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .registers 2

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
