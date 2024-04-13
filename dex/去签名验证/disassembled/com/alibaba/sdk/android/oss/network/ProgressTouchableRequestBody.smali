.class public Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;
.super Lb/ad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
        ">",
        "Lb/ad;"
    }
.end annotation


# static fields
.field private static final SEGMENT_SIZE:I = 0x800


# instance fields
.field private callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .registers 6

    invoke-direct {p0}, Lb/ad;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->inputStream:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    iput-wide p2, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    invoke-virtual {p5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    invoke-virtual {p5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lb/x;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lc/d;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lc/p;->a(Ljava/io/InputStream;)Lc/y;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_b
    iget-wide v6, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_43

    iget-wide v6, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    sub-long v8, v6, v4

    const-wide/16 v6, 0x800

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lc/d;->a()Lc/c;

    move-result-object v8

    invoke-interface {v1, v8, v6, v7}, Lc/y;->read(Lc/c;J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_43

    add-long v8, v4, v6

    invoke-interface/range {p1 .. p1}, Lc/d;->flush()V

    iget-object v4, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v4, :cond_41

    cmp-long v4, v8, v2

    if-eqz v4, :cond_41

    iget-object v11, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    iget-object v12, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    iget-wide v4, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    move-wide v13, v8

    move-wide v15, v4

    invoke-interface/range {v11 .. v16}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_41
    move-wide v4, v8

    goto :goto_b

    :cond_43
    if-eqz v1, :cond_48

    invoke-interface {v1}, Lc/y;->close()V

    :cond_48
    return-void
.end method
