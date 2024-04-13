.class public final Lcom/b/a/aw;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/b/a/a;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lcom/b/a/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-nez p2, :cond_17

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxy == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    if-nez p3, :cond_21

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inetSocketAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    iput-object p1, p0, Lcom/b/a/aw;->a:Lcom/b/a/a;

    iput-object p2, p0, Lcom/b/a/aw;->b:Ljava/net/Proxy;

    iput-object p3, p0, Lcom/b/a/aw;->c:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/a;
    .registers 2

    iget-object v0, p0, Lcom/b/a/aw;->a:Lcom/b/a/a;

    return-object v0
.end method

.method public final b()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lcom/b/a/aw;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public final c()Ljava/net/InetSocketAddress;
    .registers 2

    iget-object v0, p0, Lcom/b/a/aw;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Lcom/b/a/aw;->a:Lcom/b/a/a;

    iget-object v0, v0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/b/a/aw;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/b/a/aw;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    check-cast p1, Lcom/b/a/aw;

    iget-object v0, p0, Lcom/b/a/aw;->a:Lcom/b/a/a;

    iget-object v2, p1, Lcom/b/a/aw;->a:Lcom/b/a/a;

    invoke-virtual {v0, v2}, Lcom/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/b/a/aw;->b:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/b/a/aw;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/b/a/aw;->c:Ljava/net/InetSocketAddress;

    iget-object p1, p1, Lcom/b/a/aw;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_27
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/b/a/aw;->a:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/aw;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/aw;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Route{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/aw;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
