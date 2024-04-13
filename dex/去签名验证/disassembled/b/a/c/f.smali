.class public final Lb/a/c/f;
.super Ljava/lang/Object;


# instance fields
.field final a:Lb/a;

.field final b:Lb/a/c/d;

.field private c:Ljava/net/Proxy;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/ag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a;Lb/a/c/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a/c/f;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a/c/f;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/c/f;->i:Ljava/util/List;

    iput-object p1, p0, Lb/a/c/f;->a:Lb/a;

    iput-object p2, p0, Lb/a/c/f;->b:Lb/a/c/d;

    iget-object p2, p1, Lb/a;->a:Lb/v;

    iget-object p1, p1, Lb/a;->h:Ljava/net/Proxy;

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_4a

    :cond_26
    iget-object p1, p0, Lb/a/c/f;->a:Lb/a;

    iget-object p1, p1, Lb/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {p2}, Lb/v;->a()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3f

    invoke-static {p1}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_4a

    :cond_3f
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v0

    invoke-static {p1}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_4a
    iput-object p1, p0, Lb/a/c/f;->e:Ljava/util/List;

    iput v0, p0, Lb/a/c/f;->f:I

    return-void
.end method

.method private static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lb/ag;Ljava/io/IOException;)V
    .registers 6

    iget-object v0, p1, Lb/ag;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v0, v0, Lb/a;->g:Ljava/net/ProxySelector;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v0, v0, Lb/a;->g:Ljava/net/ProxySelector;

    iget-object v1, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v1, v1, Lb/a;->a:Lb/v;

    invoke-virtual {v1}, Lb/v;->a()Ljava/net/URI;

    move-result-object v1

    iget-object v2, p1, Lb/ag;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_25
    iget-object p2, p0, Lb/a/c/f;->b:Lb/a/c/d;

    invoke-virtual {p2, p1}, Lb/a/c/d;->a(Lb/ag;)V

    return-void
.end method

.method private a(Lb/v;Ljava/net/Proxy;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2c

    :cond_8
    iget-object p2, p0, Lb/a/c/f;->a:Lb/a;

    iget-object p2, p2, Lb/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {p1}, Lb/v;->a()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_21

    invoke-static {p1}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_2c

    :cond_21
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v0

    invoke-static {p1}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_2c
    iput-object p1, p0, Lb/a/c/f;->e:Ljava/util/List;

    iput v0, p0, Lb/a/c/f;->f:I

    return-void
.end method

.method private a(Ljava/net/Proxy;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/c/f;->g:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_4e

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_18

    goto :goto_4e

    :cond_18
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_38

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_45

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_45
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_5a

    :cond_4e
    :goto_4e
    iget-object v0, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v0, v0, Lb/a;->a:Lb/v;

    iget-object v1, v0, Lb/v;->l:Ljava/lang/String;

    iget-object v0, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v0, v0, Lb/a;->a:Lb/v;

    iget v0, v0, Lb/v;->m:I

    :goto_5a
    if-lez v0, :cond_be

    const v2, 0xffff

    if-le v0, v2, :cond_62

    goto :goto_be

    :cond_62
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_75

    iget-object p1, p0, Lb/a/c/f;->g:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    :cond_75
    iget-object p1, p0, Lb/a/c/f;->a:Lb/a;

    iget-object p1, p1, Lb/a;->b:Lb/q;

    invoke-interface {p1, v1}, Lb/q;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a1

    new-instance p1, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v2, v2, Lb/a;->b:Lb/q;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a6
    if-ge v2, v1, :cond_bb

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    iget-object v5, p0, Lb/a/c/f;->g:Ljava/util/List;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    :cond_bb
    :goto_bb
    iput v3, p0, Lb/a/c/f;->h:I

    return-void

    :cond_be
    :goto_be
    new-instance p1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No route to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e()Z
    .registers 2

    invoke-virtual {p0}, Lb/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lb/a/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lb/a/c/f;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method private f()Ljava/net/Proxy;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lb/a/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v2, v2, Lb/a;->a:Lb/v;

    iget-object v2, v2, Lb/v;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/c/f;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lb/a/c/f;->e:Ljava/util/List;

    iget v1, p0, Lb/a/c/f;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/c/f;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lb/a/c/f;->a(Ljava/net/Proxy;)V

    return-object v0
.end method

.method private g()Ljava/net/InetSocketAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lb/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v2, v2, Lb/a;->a:Lb/v;

    iget-object v2, v2, Lb/v;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/c/f;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lb/a/c/f;->g:Ljava/util/List;

    iget v1, p0, Lb/a/c/f;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/c/f;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private h()Lb/ag;
    .registers 3

    iget-object v0, p0, Lb/a/c/f;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ag;

    return-object v0
.end method


# virtual methods
.method public final a()Lb/ag;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lb/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-virtual {p0}, Lb/a/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lb/a/c/f;->d()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_18
    iget-object v0, p0, Lb/a/c/f;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ag;

    return-object v0

    :cond_22
    invoke-virtual {p0}, Lb/a/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_4c

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v2, v2, Lb/a;->a:Lb/v;

    iget-object v2, v2, Lb/v;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/c/f;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    iget-object v0, p0, Lb/a/c/f;->e:Ljava/util/List;

    iget v1, p0, Lb/a/c/f;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/c/f;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lb/a/c/f;->a(Ljava/net/Proxy;)V

    iput-object v0, p0, Lb/a/c/f;->c:Ljava/net/Proxy;

    :cond_5f
    invoke-virtual {p0}, Lb/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_89

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v2, v2, Lb/a;->a:Lb/v;

    iget-object v2, v2, Lb/v;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/c/f;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    iget-object v0, p0, Lb/a/c/f;->g:Ljava/util/List;

    iget v1, p0, Lb/a/c/f;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/c/f;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lb/a/c/f;->d:Ljava/net/InetSocketAddress;

    new-instance v0, Lb/ag;

    iget-object v1, p0, Lb/a/c/f;->a:Lb/a;

    iget-object v2, p0, Lb/a/c/f;->c:Ljava/net/Proxy;

    iget-object v3, p0, Lb/a/c/f;->d:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lb/ag;-><init>(Lb/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v1, p0, Lb/a/c/f;->b:Lb/a/c/d;

    invoke-virtual {v1, v0}, Lb/a/c/d;->c(Lb/ag;)Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lb/a/c/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b3
    return-object v0
.end method

.method public final b()Z
    .registers 3

    iget v0, p0, Lb/a/c/f;->f:I

    iget-object v1, p0, Lb/a/c/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .registers 3

    iget v0, p0, Lb/a/c/f;->h:I

    iget-object v1, p0, Lb/a/c/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lb/a/c/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
