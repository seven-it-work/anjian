.class public Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/lidroid/xutils/task/PriorityAsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROGRESS_LOADING:I = 0x1

.field private static final PROGRESS_LOAD_STARTED:I


# instance fields
.field private final callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final containerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

.field private from:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

.field final synthetic this$0:Lcom/lidroid/xutils/BitmapUtils;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/BitmapUtils;Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V

    sget-object p1, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->DISK_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->from:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    if-eqz p2, :cond_20

    if-eqz p3, :cond_20

    if-eqz p4, :cond_20

    if-nez p5, :cond_12

    goto :goto_20

    :cond_12
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->containerReference:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    iput-object p3, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    return-void

    :cond_20
    :goto_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "args may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 4

    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    # getter for: Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/lidroid/xutils/BitmapUtils;->access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :catch_7
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    # getter for: Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z
    invoke-static {v0}, Lcom/lidroid/xutils/BitmapUtils;->access$1(Lcom/lidroid/xutils/BitmapUtils;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_7b

    if-eqz v0, :cond_17

    goto :goto_2a

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    # getter for: Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lidroid/xutils/BitmapUtils;->access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    # getter for: Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z
    invoke-static {v0}, Lcom/lidroid/xutils/BitmapUtils;->access$2(Lcom/lidroid/xutils/BitmapUtils;)Z

    move-result v0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_26} :catch_7
    .catchall {:try_start_17 .. :try_end_26} :catchall_7b

    if-eqz v0, :cond_7

    :try_start_28
    monitor-exit p1

    return-object v1

    :cond_2a
    :goto_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_7b

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_56

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_56

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->publishProgress([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    # getter for: Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    invoke-static {p1}, Lcom/lidroid/xutils/BitmapUtils;->access$3(Lcom/lidroid/xutils/BitmapUtils;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object p1

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {p1, v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_56
    if-nez v1, :cond_7a

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_7a

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    # getter for: Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    invoke-static {p1}, Lcom/lidroid/xutils/BitmapUtils;->access$3(Lcom/lidroid/xutils/BitmapUtils;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object p1

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {p1, v0, v1, p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->downloadBitmap(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object p1, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->URI:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->from:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    :cond_7a
    return-object v1

    :catchall_7b
    move-exception v0

    :try_start_7c
    monitor-exit p1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getTargetContainer()Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->containerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    # invokes: Lcom/lidroid/xutils/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    invoke-static {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->access$4(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v1

    if-ne p0, v1, :cond_11

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    # getter for: Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/lidroid/xutils/BitmapUtils;->access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->this$0:Lcom/lidroid/xutils/BitmapUtils;

    # getter for: Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lidroid/xutils/BitmapUtils;->access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 8

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_22

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v4, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    iget-object v5, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->from:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V

    return-void

    :cond_15
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_22
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 11

    if-eqz p1, :cond_44

    array-length v0, p1

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    return-void

    :pswitch_1a
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    return-void

    :cond_1f
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    iget-object v3, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v4, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v0, 0x2

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual/range {v1 .. v8}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoading(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;JJ)V

    return-void

    :pswitch_3b
    iget-object p1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->callBack:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {p1, v2, v0, v1}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    :cond_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_1a
    .end packed-switch
.end method

.method public updateProgress(JJ)V
    .registers 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
