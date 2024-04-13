.class public Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;
.super Ljava/lang/Object;


# instance fields
.field private conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

.field private credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

.field private endpoint:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    return-void
.end method


# virtual methods
.method public presignConstrainedURL(Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getExpiration()J

    move-result-wide v4

    add-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v3

    goto :goto_26

    :cond_24
    sget-object v3, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    :goto_26
    new-instance v4, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    invoke-virtual {v4, v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {v4, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v5, "Date"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_65

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v5, "Content-Type"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_88

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v5, "Content-MD5"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_88
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getQueryParameter()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_c0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getQueryParameter()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_c0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getQueryParameter()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    :cond_c0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getProcess()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getProcess()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e3

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v3

    const-string v5, "x-oss-process"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getProcess()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e3
    const/4 p1, 0x0

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v3, v3, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    if-eqz v3, :cond_109

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast p1, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->getValidFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object p1

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v3

    const-string v5, "security-token"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_124

    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v0, "Can not get a federation token!"

    invoke-direct {p1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_109
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v3, v3, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    if-eqz v3, :cond_124

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast p1, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object p1

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v3

    const-string v5, "security-token"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_124
    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildCanonicalString(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v5, v5, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    if-nez v5, :cond_167

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v5, v5, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    if-eqz v5, :cond_135

    goto :goto_167

    :cond_135
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of p1, p1, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    if-eqz p1, :cond_150

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast p1, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeyId()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast v5, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeySecret()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_173

    :cond_150
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of p1, p1, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    if-eqz p1, :cond_15f

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast p1, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;->signContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_173

    :cond_15f
    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v0, "Unknown credentialProvider!"

    invoke-direct {p1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_167
    :goto_167
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempAK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempSK()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_173
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    aget-object p1, p1, v5

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isCname(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a2

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getCustomCnameExcludeList()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isInCustomCnameExcludeList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1b6

    :cond_1a2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1b6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, "Expires"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "OSSAccessKeyId"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Signature"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p1, "utf-8"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public presignConstrainedURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->setExpiration(J)V

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->presignConstrainedURL(Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public presignPublicURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isCname(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getCustomCnameExcludeList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isInCustomCnameExcludeList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "utf-8"

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
