.class Lcom/lidroid/xutils/task/PriorityAsyncTask$2;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3

    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->get()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/lidroid/xutils/task/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$3(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_1e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    const/4 v1, 0x0

    # invokes: Lcom/lidroid/xutils/task/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$3(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V

    return-void

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method
