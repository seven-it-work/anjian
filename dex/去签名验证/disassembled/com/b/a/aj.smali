.class final Lcom/b/a/aj;
.super Lcom/b/a/a/a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/b/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/at;)I
    .registers 2

    iget p1, p1, Lcom/b/a/at;->c:I

    return p1
.end method

.method public final a(Lcom/b/a/n;Lcom/b/a/a;Lcom/b/a/a/b/g;)Lcom/b/a/a/b/c;
    .registers 4

    invoke-virtual {p1, p2, p3}, Lcom/b/a/n;->a(Lcom/b/a/a;Lcom/b/a/a/b/g;)Lcom/b/a/a/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/b/a/n;)Lcom/b/a/a/b/d;
    .registers 2

    iget-object p1, p1, Lcom/b/a/n;->a:Lcom/b/a/a/b/d;

    return-object p1
.end method

.method public final a(Lcom/b/a/ab;Ljava/lang/String;)V
    .registers 6

    const-string v0, ":"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/b/a/ab;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;

    return-void

    :cond_18
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/b/a/ab;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;

    return-void

    :cond_2a
    const-string v0, ""

    invoke-virtual {p1, v0, p2}, Lcom/b/a/ab;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;

    return-void
.end method

.method public final a(Lcom/b/a/ab;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lcom/b/a/ab;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;

    return-void
.end method

.method public final a(Lcom/b/a/p;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 8

    iget-object v0, p1, Lcom/b/a/p;->f:[Ljava/lang/String;

    if-eqz v0, :cond_13

    const-class v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/b/a/p;->f:[Ljava/lang/String;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_17

    :cond_13
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_17
    iget-object v1, p1, Lcom/b/a/p;->g:[Ljava/lang/String;

    if-eqz v1, :cond_2a

    const-class v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/b/a/p;->g:[Ljava/lang/String;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/b/a/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_2e

    :cond_2a
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_2e
    if-eqz p3, :cond_43

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p3

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {p3, v2}, Lcom/b/a/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_43

    const-string p3, "TLS_FALLBACK_SCSV"

    invoke-static {v0, p3}, Lcom/b/a/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_43
    new-instance p3, Lcom/b/a/q;

    invoke-direct {p3, p1}, Lcom/b/a/q;-><init>(Lcom/b/a/p;)V

    invoke-virtual {p3, v0}, Lcom/b/a/q;->a([Ljava/lang/String;)Lcom/b/a/q;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/b/a/q;->b([Ljava/lang/String;)Lcom/b/a/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/q;->b()Lcom/b/a/p;

    move-result-object p1

    iget-object p3, p1, Lcom/b/a/p;->g:[Ljava/lang/String;

    if-eqz p3, :cond_5d

    iget-object p3, p1, Lcom/b/a/p;->g:[Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_5d
    iget-object p3, p1, Lcom/b/a/p;->f:[Ljava/lang/String;

    if-eqz p3, :cond_66

    iget-object p1, p1, Lcom/b/a/p;->f:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_66
    return-void
.end method

.method public final a(Lcom/b/a/n;Lcom/b/a/a/b/c;)Z
    .registers 3

    invoke-virtual {p1, p2}, Lcom/b/a/n;->b(Lcom/b/a/a/b/c;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/b/a/n;Lcom/b/a/a;Lcom/b/a/a/b/g;)Ljava/net/Socket;
    .registers 4

    invoke-virtual {p1, p2, p3}, Lcom/b/a/n;->b(Lcom/b/a/a;Lcom/b/a/a/b/g;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/b/a/n;Lcom/b/a/a/b/c;)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/b/a/n;->a(Lcom/b/a/a/b/c;)V

    return-void
.end method
