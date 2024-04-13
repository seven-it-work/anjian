.class Landroid/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;
.super Landroid/arch/lifecycle/EmptyActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatcherActivityCallback"
.end annotation


# instance fields
.field private final mFragmentCallback:Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/arch/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    new-instance v0, Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    invoke-direct {v0}, Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;->mFragmentCallback:Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    instance-of p2, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_11

    move-object p2, p1

    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;->mFragmentCallback:Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_11
    invoke-static {p1}, Landroid/arch/lifecycle/ReportFragment;->injectIfNeededIn(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    instance-of p2, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_b

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    sget-object p2, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    # invokes: Landroid/arch/lifecycle/LifecycleDispatcher;->markState(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/Lifecycle$State;)V
    invoke-static {p1, p2}, Landroid/arch/lifecycle/LifecycleDispatcher;->access$000(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/Lifecycle$State;)V

    :cond_b
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    # invokes: Landroid/arch/lifecycle/LifecycleDispatcher;->markState(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/Lifecycle$State;)V
    invoke-static {p1, v0}, Landroid/arch/lifecycle/LifecycleDispatcher;->access$000(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/Lifecycle$State;)V

    :cond_b
    return-void
.end method
