.class public Lcom/b/a/a/g/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/b/a/a/g/h;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/b/a/a/g/a;->a()Lcom/b/a/a/g/h;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1a

    :cond_7
    invoke-static {}, Lcom/b/a/a/g/d;->a()Lcom/b/a/a/g/d;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_1a

    :cond_e
    invoke-static {}, Lcom/b/a/a/g/e;->a()Lcom/b/a/a/g/h;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_1a

    :cond_15
    new-instance v0, Lcom/b/a/a/g/h;

    invoke-direct {v0}, Lcom/b/a/a/g/h;-><init>()V

    :goto_1a
    sput-object v0, Lcom/b/a/a/g/h;->a:Lcom/b/a/a/g/h;

    const-class v0, Lcom/b/a/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/g/h;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/al;",
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

    check-cast v3, Lcom/b/a/al;

    sget-object v4, Lcom/b/a/al;->a:Lcom/b/a/al;

    if-eq v3, v4, :cond_21

    invoke-virtual {v3}, Lcom/b/a/al;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    return-object v0
.end method

.method public static b()Lcom/b/a/a/g/h;
    .registers 1

    sget-object v0, Lcom/b/a/a/g/h;->a:Lcom/b/a/a/g/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lcom/b/a/a/h/b;
    .registers 3

    new-instance v0, Lcom/b/a/a/h/a;

    invoke-static {p1}, Lcom/b/a/a/h/e;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/b/a/a/h/e;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/b/a/a/h/a;-><init>(Lcom/b/a/a/h/e;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/b/a/a/g/h;->b:Ljava/util/logging/Logger;

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

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_8

    :cond_6
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_8
    sget-object v0, Lcom/b/a/a/g/h;->b:Ljava/util/logging/Logger;

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

    invoke-virtual {p0, v0, p1, p2}, Lcom/b/a/a/g/h;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4

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
            "Lcom/b/a/al;",
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
