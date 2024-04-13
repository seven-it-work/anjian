.class public abstract Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;


# instance fields
.field private volatile cachedToken:Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getCachedToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->cachedToken:Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    return-object v0
.end method

.method public abstract getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
.end method

.method public declared-synchronized getValidFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->cachedToken:Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->cachedToken:Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getExpiration()J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    sub-long v9, v5, v7

    cmp-long v0, v3, v9

    if-lez v0, :cond_48

    :cond_1a
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->cachedToken:Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "token expired! current time: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " token expired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->cachedToken:Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getExpiration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    :cond_42
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->cachedToken:Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    :cond_48
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->cachedToken:Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return-object v0

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
