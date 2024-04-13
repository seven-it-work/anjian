.class public Lcom/alibaba/sdk/android/oss/ClientConfiguration;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_MAX_RETRIES:I = 0x2


# instance fields
.field private connectionTimeout:I

.field private customCnameExcludeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpDnsEnable:Z

.field private mUserAgentMark:Ljava/lang/String;

.field private maxConcurrentRequest:I

.field private maxErrorRetry:I

.field private max_log_size:J

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private socketTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpDnsEnable:Z

    return-void
.end method

.method public static getDefaultConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    .registers 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getConnectionTimeout()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    return v0
.end method

.method public getCustomCnameExcludeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomUserMark()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->mUserAgentMark:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxConcurrentRequest()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    return v0
.end method

.method public getMaxErrorRetry()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    return v0
.end method

.method public getMaxLogSize()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    return-wide v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyPort:I

    return v0
.end method

.method public getSocketTimeout()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    return v0
.end method

.method public isHttpDnsEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpDnsEnable:Z

    return v0
.end method

.method public setConnectionTimeout(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    return-void
.end method

.method public setCustomCnameExcludeList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3c

    :cond_9
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_34
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_38
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    goto :goto_34

    :cond_3b
    return-void

    :cond_3c
    :goto_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cname exclude list should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHttpDnsEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpDnsEnable:Z

    return-void
.end method

.method public setMaxConcurrentRequest(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    return-void
.end method

.method public setMaxErrorRetry(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    return-void
.end method

.method public setMaxLogSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyPort:I

    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    return-void
.end method

.method public setUserAgentMark(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->mUserAgentMark:Ljava/lang/String;

    return-void
.end method
