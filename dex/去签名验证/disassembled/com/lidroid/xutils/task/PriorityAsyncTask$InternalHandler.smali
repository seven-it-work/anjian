.class Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;)V
    .registers 2

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_1e

    return-void

    :pswitch_a
    iget-object p1, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    iget-object v0, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void

    :pswitch_12
    iget-object p1, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    iget-object v0, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    # invokes: Lcom/lidroid/xutils/task/PriorityAsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {p1, v0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$0(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method
