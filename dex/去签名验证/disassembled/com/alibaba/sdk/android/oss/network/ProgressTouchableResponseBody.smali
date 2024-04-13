.class public Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;
.super Lb/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
        ">",
        "Lb/af;"
    }
.end annotation


# instance fields
.field private mBufferedSource:Lc/e;

.field private mProgressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field private final mResponseBody:Lb/af;

.field private request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/af;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .registers 3

    invoke-direct {p0}, Lb/af;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mResponseBody:Lb/af;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mProgressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .registers 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mProgressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .registers 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lb/af;
    .registers 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mResponseBody:Lb/af;

    return-object p0
.end method

.method private source(Lc/y;)Lc/y;
    .registers 3

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;-><init>(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;Lc/y;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mResponseBody:Lb/af;

    invoke-virtual {v0}, Lb/af;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lb/x;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mResponseBody:Lb/af;

    invoke-virtual {v0}, Lb/af;->contentType()Lb/x;

    move-result-object v0

    return-object v0
.end method

.method public source()Lc/e;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mBufferedSource:Lc/e;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mResponseBody:Lb/af;

    invoke-virtual {v0}, Lb/af;->source()Lc/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->source(Lc/y;)Lc/y;

    move-result-object v0

    invoke-static {v0}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mBufferedSource:Lc/e;

    :cond_14
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->mBufferedSource:Lc/e;

    return-object v0
.end method
