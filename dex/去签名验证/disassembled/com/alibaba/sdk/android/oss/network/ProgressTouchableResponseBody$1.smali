.class Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;
.super Lc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->source(Lc/y;)Lc/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

.field private totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;Lc/y;)V
    .registers 3

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-direct {p0, p2}, Lc/i;-><init>(Lc/y;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public read(Lc/c;J)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lc/i;->read(Lc/c;J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    const-wide/16 v4, 0x0

    if-eqz p3, :cond_10

    move-wide v6, p1

    goto :goto_11

    :cond_10
    move-wide v6, v4

    :goto_11
    const/4 p3, 0x0

    add-long v8, v0, v6

    iput-wide v8, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    # getter for: Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mProgressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$000(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p3

    if-eqz p3, :cond_45

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_45

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    cmp-long p3, v0, v4

    if-eqz p3, :cond_45

    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    # getter for: Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mProgressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$000(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v0

    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    # getter for: Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$100(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    # getter for: Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mResponseBody:Lb/af;
    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$200(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lb/af;

    move-result-object p3

    invoke-virtual {p3}, Lb/af;->contentLength()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_45
    return-wide p1
.end method
