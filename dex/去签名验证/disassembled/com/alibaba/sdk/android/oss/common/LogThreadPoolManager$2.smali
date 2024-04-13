.class Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$2;->this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$2;->this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    # invokes: Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->hasMoreAcquire()Z
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->access$100(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$2;->this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    # getter for: Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->access$200(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$2;->this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    # getter for: Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mTaskQueue:Ljava/util/Queue;
    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->access$000(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method
