.class public Lcom/lidroid/xutils/http/client/util/URIBuilder;
.super Ljava/lang/Object;


# instance fields
.field private encodedAuthority:Ljava/lang/String;

.field private encodedFragment:Ljava/lang/String;

.field private encodedPath:Ljava/lang/String;

.field private encodedQuery:Ljava/lang/String;

.field private encodedSchemeSpecificPart:Ljava/lang/String;

.field private encodedUserInfo:Ljava/lang/String;

.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private scheme:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->digestURI(Ljava/net/URI;)V
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->digestURI(Ljava/net/URI;)V

    return-void
.end method

.method private buildString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b4

    :cond_1e
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedAuthority:Ljava/lang/String;

    if-eqz v1, :cond_2d

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79

    :cond_2d
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->host:Ljava/lang/String;

    if-eqz v1, :cond_79

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_45
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodeUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->host:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    :goto_64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    :cond_68
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->host:Ljava/lang/String;

    goto :goto_64

    :goto_6b
    iget v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->port:I

    if-ltz v1, :cond_79

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedPath:Ljava/lang/String;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_96

    :cond_87
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->path:Ljava/lang/String;

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodePath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    :cond_96
    :goto_96
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedQuery:Ljava/lang/String;

    if-eqz v1, :cond_a3

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedQuery:Ljava/lang/String;

    goto/16 :goto_19

    :cond_a3
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v1, :cond_b4

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodeQuery(Ljava/util/List;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_19

    :cond_b4
    :goto_b4
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_c3

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedFragment:Ljava/lang/String;

    :goto_bf
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d3

    :cond_c3
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_d3

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->fragment:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodeFragment(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    goto :goto_bf

    :cond_d3
    :goto_d3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private digestURI(Ljava/net/URI;)V
    .registers 3

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->scheme:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->port:I

    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->userInfo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->path:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->parseQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->fragment:Ljava/lang/String;

    return-void
.end method

.method private encodeFragment(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->encFragment(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodePath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "+"

    const-string v0, "20%"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeQuery(Ljava/util/List;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    goto :goto_17

    :cond_c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    :goto_17
    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method private parseQuery(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public build(Ljava/nio/charset/Charset;)Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/net/URI;

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->buildString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->port:I

    return v0
.end method

.method public getQueryParams()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setFragment(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->fragment:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedFragment:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->host:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_34

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->path:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedPath:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 2

    if-gez p1, :cond_3

    const/4 p1, -0x1

    :cond_3
    iput p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->port:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->parseQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->queryParams:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->userInfo:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedAuthority:Ljava/lang/String;

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/util/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->setUserInfo(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    move-result-object p1

    return-object p1
.end method
