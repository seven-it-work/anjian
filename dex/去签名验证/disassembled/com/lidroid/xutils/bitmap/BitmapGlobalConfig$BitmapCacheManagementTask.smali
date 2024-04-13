.class Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCacheManagementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/task/PriorityAsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final MESSAGE_CLEAR:I = 0x4

.field public static final MESSAGE_CLEAR_BY_KEY:I = 0x7

.field public static final MESSAGE_CLEAR_DISK:I = 0x6

.field public static final MESSAGE_CLEAR_DISK_BY_KEY:I = 0x9

.field public static final MESSAGE_CLEAR_MEMORY:I = 0x5

.field public static final MESSAGE_CLEAR_MEMORY_BY_KEY:I = 0x8

.field public static final MESSAGE_CLOSE:I = 0x3

.field public static final MESSAGE_FLUSH:I = 0x2

.field public static final MESSAGE_INIT_DISK_CACHE:I = 0x1

.field public static final MESSAGE_INIT_MEMORY_CACHE:I


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V

    sget-object p1, Lcom/lidroid/xutils/task/Priority;->UI_TOP:Lcom/lidroid/xutils/task/Priority;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->setPriority(Lcom/lidroid/xutils/task/Priority;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    if-eqz p1, :cond_6f

    array-length v0, p1

    if-nez v0, :cond_6

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    if-nez v0, :cond_f

    return-object p1

    :cond_f
    const/4 v1, 0x0

    :try_start_10
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_70

    return-object p1

    :pswitch_1e
    array-length v1, p1

    if-eq v1, v3, :cond_22

    return-object p1

    :cond_22
    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    return-object p1

    :pswitch_2c
    array-length v1, p1

    if-eq v1, v3, :cond_30

    return-object p1

    :cond_30
    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    return-object p1

    :pswitch_3a
    array-length v1, p1

    if-eq v1, v3, :cond_3e

    return-object p1

    :cond_3e
    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearCache(Ljava/lang/String;)V

    return-object p1

    :pswitch_48
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache()V

    return-object p1

    :pswitch_4c
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    return-object p1

    :pswitch_50
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearCache()V

    return-object p1

    :pswitch_54
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->close()V

    return-object p1

    :pswitch_5b
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->flush()V

    return-object p1

    :pswitch_5f
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    return-object p1

    :pswitch_63
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initMemoryCache()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_66} :catch_67

    return-object p1

    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6f
    return-object p1

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_3a
        :pswitch_2c
        :pswitch_1e
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    if-eqz v0, :cond_a7

    if-eqz p1, :cond_a7

    array-length v0, p1

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_a8

    return-void

    :pswitch_1d
    array-length v0, p1

    if-eq v0, v2, :cond_21

    return-void

    :cond_21
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearDiskCacheFinished(Ljava/lang/String;)V

    return-void

    :pswitch_31
    array-length v0, p1

    if-eq v0, v2, :cond_35

    return-void

    :cond_35
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearMemoryCacheFinished(Ljava/lang/String;)V

    return-void

    :pswitch_45
    array-length v0, p1

    if-eq v0, v2, :cond_49

    return-void

    :cond_49
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearCacheFinished(Ljava/lang/String;)V

    return-void

    :pswitch_59
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearDiskCacheFinished()V

    return-void

    :pswitch_63
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearMemoryCacheFinished()V

    return-void

    :pswitch_6d
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearCacheFinished()V

    return-void

    :pswitch_77
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onCloseCacheFinished()V

    return-void

    :pswitch_81
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onFlushCacheFinished()V

    return-void

    :pswitch_8b
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onInitDiskFinished()V

    return-void

    :pswitch_95
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onInitMemoryCacheFinished()V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_9e} :catch_9f

    return-void

    :catch_9f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a7
    return-void

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_95
        :pswitch_8b
        :pswitch_81
        :pswitch_77
        :pswitch_6d
        :pswitch_63
        :pswitch_59
        :pswitch_45
        :pswitch_31
        :pswitch_1d
    .end packed-switch
.end method
