.class public abstract Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/oss/internal/ResponseParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/internal/ResponseParser;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseResponseHeader(Lb/ae;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ae;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lb/ae;->c()Lb/u;

    move-result-object p1

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Lb/u;->a()I

    move-result v2

    if-ge v1, v2, :cond_1e

    invoke-virtual {p1, v1}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    return-object v0
.end method

.method public static safeCloseResponse(Lb/ae;)V
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Lb/ae;->d()Lb/af;

    move-result-object p0

    invoke-virtual {p0}, Lb/af;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method


# virtual methods
.method public needCloseResponse()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lb/ae;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ae;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/OSSResult;

    if-eqz v0, :cond_36

    const-string v1, "x-oss-request-id"

    invoke-virtual {p1, v1}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/ae;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->setStatusCode(I)V

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->parseResponseHeader(Lb/ae;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->setResponseHeader(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_42
    .catchall {:try_start_0 .. :try_end_36} :catchall_40

    :cond_36
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->needCloseResponse()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->safeCloseResponse(Lb/ae;)V

    :cond_3f
    return-object v0

    :catchall_40
    move-exception v0

    goto :goto_53

    :catch_42
    move-exception v0

    :try_start_43
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    throw v1
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_40

    :goto_53
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->needCloseResponse()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->safeCloseResponse(Lb/ae;)V

    :cond_5c
    throw v0
.end method

.method abstract parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ae;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
