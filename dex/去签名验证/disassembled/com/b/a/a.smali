.class public final Lcom/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/b/a/ac;

.field final b:Lcom/b/a/v;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lcom/b/a/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:Lcom/b/a/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/b/a/v;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/b/a/i;Lcom/b/a/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/b/a/v;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/b/a/i;",
            "Lcom/b/a/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;",
            "Ljava/util/List<",
            "Lcom/b/a/p;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/ad;

    invoke-direct {v0}, Lcom/b/a/ad;-><init>()V

    if-eqz p5, :cond_d

    const-string v1, "https"

    goto :goto_f

    :cond_d
    const-string v1, "http"

    :goto_f
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v1, "http"

    :goto_19
    iput-object v1, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    goto :goto_27

    :cond_1c
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const-string v1, "https"

    goto :goto_19

    :goto_27
    invoke-virtual {v0, p1}, Lcom/b/a/ad;->a(Ljava/lang/String;)Lcom/b/a/ad;

    move-result-object p1

    if-lez p2, :cond_94

    const v0, 0xffff

    if-le p2, v0, :cond_33

    goto :goto_94

    :cond_33
    iput p2, p1, Lcom/b/a/ad;->e:I

    invoke-virtual {p1}, Lcom/b/a/ad;->b()Lcom/b/a/ac;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    if-nez p3, :cond_45

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    iput-object p3, p0, Lcom/b/a/a;->b:Lcom/b/a/v;

    if-nez p4, :cond_51

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    iput-object p4, p0, Lcom/b/a/a;->c:Ljavax/net/SocketFactory;

    if-nez p8, :cond_5d

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    iput-object p8, p0, Lcom/b/a/a;->d:Lcom/b/a/b;

    if-nez p10, :cond_69

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    invoke-static {p10}, Lcom/b/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a;->e:Ljava/util/List;

    if-nez p11, :cond_79

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    invoke-static {p11}, Lcom/b/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a;->f:Ljava/util/List;

    if-nez p12, :cond_89

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_89
    iput-object p12, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    iput-object p9, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    iput-object p5, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    return-void

    :cond_94
    :goto_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "unexpected port: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unexpected scheme: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/b/a/ac;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    return-object v0
.end method

.method public final b()Lcom/b/a/v;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a;->b:Lcom/b/a/v;

    return-object v0
.end method

.method public final c()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final d()Lcom/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a;->d:Lcom/b/a/b;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/b/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    check-cast p1, Lcom/b/a/a;

    iget-object v0, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    iget-object v2, p1, Lcom/b/a/a;->a:Lcom/b/a/ac;

    invoke-virtual {v0, v2}, Lcom/b/a/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/b/a/a;->b:Lcom/b/a/v;

    iget-object v2, p1, Lcom/b/a/a;->b:Lcom/b/a/v;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/b/a/a;->d:Lcom/b/a/b;

    iget-object v2, p1, Lcom/b/a/a;->d:Lcom/b/a/b;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/b/a/a;->e:Ljava/util/List;

    iget-object v2, p1, Lcom/b/a/a;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/b/a/a;->f:Ljava/util/List;

    iget-object v2, p1, Lcom/b/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    iget-object v2, p1, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/b/a/a;->h:Ljava/net/Proxy;

    invoke-static {v0, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    iget-object p1, p1, Lcom/b/a/a;->k:Lcom/b/a/i;

    invoke-static {v0, p1}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    const/4 p1, 0x1

    return p1

    :cond_6d
    return v1
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final h()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    invoke-virtual {v0}, Lcom/b/a/ac;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->b:Lcom/b/a/v;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->d:Lcom/b/a/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_62

    :cond_61
    const/4 v1, 0x0

    :goto_62
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    invoke-virtual {v1}, Lcom/b/a/i;->hashCode()I

    move-result v2

    :cond_6f
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final j()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final k()Lcom/b/a/i;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a;->k:Lcom/b/a/i;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    iget-object v1, v1, Lcom/b/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a;->a:Lcom/b/a/ac;

    iget v1, v1, Lcom/b/a/ac;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_29

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a;->h:Ljava/net/Proxy;

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_29
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a;->g:Ljava/net/ProxySelector;

    goto :goto_25

    :goto_31
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
