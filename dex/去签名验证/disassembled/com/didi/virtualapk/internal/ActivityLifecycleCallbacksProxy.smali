.class Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    const-string v1, "mActivityLifecycleCallbacks"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v2, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    iget-object v1, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method
