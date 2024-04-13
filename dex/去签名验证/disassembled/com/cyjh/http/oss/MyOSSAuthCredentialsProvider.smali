.class public Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider$AuthDecoder;
    }
.end annotation


# instance fields
.field private aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

.field private mDecoder:Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider$AuthDecoder;


# direct methods
.method public constructor <init>(Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V
    .registers 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;-><init>()V

    iput-object p1, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    return-void
.end method


# virtual methods
.method public getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    iget-object v1, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v2, v1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->AliCloundAccessKeyId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v3, v1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->AliCloundAccessKeySecret:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v4, v1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->AliCloundSecurityToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->AliCloundExpireTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    :cond_1f
    const-string v0, "Token\u4fe1\u606f\u4e3anull"

    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ErrorMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_35

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setDecoder(Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider$AuthDecoder;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->mDecoder:Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider$AuthDecoder;

    return-void
.end method
