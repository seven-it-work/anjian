.class Lcom/squareup/picasso/PicassoExecutorService;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_COUNT:I = 0x3


# direct methods
.method constructor <init>()V
    .registers 9

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lcom/squareup/picasso/Utils$PicassoThreadFactory;

    invoke-direct {v7}, Lcom/squareup/picasso/Utils$PicassoThreadFactory;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method private setThreadCount(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->setCorePoolSize(I)V

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->setMaximumPoolSize(I)V

    return-void
.end method


# virtual methods
.method adjustThreadCount(Landroid/net/NetworkInfo;)V
    .registers 5

    const/4 v0, 0x3

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_37

    :cond_a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_35

    const/16 v2, 0x9

    if-eq v1, v2, :cond_35

    packed-switch v1, :pswitch_data_3c

    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    return-void

    :pswitch_1c
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    packed-switch p1, :pswitch_data_44

    packed-switch p1, :pswitch_data_54

    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    return-void

    :pswitch_2a
    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    return-void

    :pswitch_2e
    const/4 p1, 0x2

    :goto_2f
    invoke-direct {p0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    return-void

    :pswitch_33
    const/4 p1, 0x1

    goto :goto_2f

    :cond_35
    :pswitch_35
    const/4 p1, 0x4

    goto :goto_2f

    :cond_37
    :goto_37
    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_35
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_33
        :pswitch_33
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0xc
        :pswitch_2e
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;

    check-cast p1, Lcom/squareup/picasso/BitmapHunter;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;-><init>(Lcom/squareup/picasso/BitmapHunter;)V

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
