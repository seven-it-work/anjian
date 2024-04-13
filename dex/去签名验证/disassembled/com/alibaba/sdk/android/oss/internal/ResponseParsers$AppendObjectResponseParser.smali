.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;
.super Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppendObjectResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser<",
        "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "x-oss-next-append-position"

    invoke-virtual {p1, v0}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->setNextPosition(Ljava/lang/Long;)V

    :cond_f
    const-string v0, "x-oss-hash-crc64ecma"

    invoke-virtual {p1, v0}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->setObjectCRC64(Ljava/lang/String;)V

    return-object p2
.end method

.method public final bridge synthetic parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;->parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    move-result-object p1

    return-object p1
.end method
