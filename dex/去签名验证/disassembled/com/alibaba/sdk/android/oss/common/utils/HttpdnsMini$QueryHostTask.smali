.class Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHostTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private hasRetryed:Z

.field private hostName:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hasRetryed:Z

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hostName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 11

    const-string v0, "203.107.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/181345/d?host="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[httpdnsmini] - buildUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_2c
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_5f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[httpdnsmini] - responseCodeNot 200, but: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_11c

    :cond_5f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_63} :catch_129
    .catchall {:try_start_2c .. :try_end_63} :catchall_124

    :try_start_63
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_74
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_7e
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "host"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ttl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "ips"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[httpdnsmini] - ips:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    if-eqz v3, :cond_11c

    if-eqz v2, :cond_11c

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_11c

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_c0

    const-wide/16 v4, 0x1e

    :cond_c0
    new-instance v6, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-direct {v6, v7}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;-><init>(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)V

    if-nez v2, :cond_cb

    move-object v2, v1

    goto :goto_d0

    :cond_cb
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_d0
    invoke-virtual {v6, v3}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setHostName(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setTtl(J)V

    invoke-virtual {v6, v2}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setIp(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-virtual {v6, v3, v4}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setQueryTime(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[httpdnsmini] - resolve result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    # getter for: Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->hostManager:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->access$000(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_111

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    # getter for: Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->hostManager:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->access$000(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hostName:Ljava/lang/String;

    invoke-interface {v3, v4, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_111} :catch_122
    .catchall {:try_start_63 .. :try_end_111} :catchall_14f

    :cond_111
    if-eqz v0, :cond_11b

    :try_start_113
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_117

    return-object v2

    :catch_117
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_11b
    return-object v2

    :cond_11c
    :goto_11c
    if-eqz v0, :cond_142

    :try_start_11e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_13e

    goto :goto_142

    :catch_122
    move-exception v2

    goto :goto_12c

    :catchall_124
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_150

    :catch_129
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_12c
    :try_start_12c
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v3

    if-eqz v3, :cond_138

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V
    :try_end_138
    .catchall {:try_start_12c .. :try_end_138} :catchall_14f

    :cond_138
    if-eqz v0, :cond_142

    :try_start_13a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13d} :catch_13e

    goto :goto_142

    :catch_13e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_142
    :goto_142
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hasRetryed:Z

    if-nez v0, :cond_14e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hasRetryed:Z

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14e
    return-object v1

    :catchall_14f
    move-exception v1

    :goto_150
    if-eqz v0, :cond_15a

    :try_start_152
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_156

    goto :goto_15a

    :catch_156
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_15a
    :goto_15a
    throw v1
.end method
