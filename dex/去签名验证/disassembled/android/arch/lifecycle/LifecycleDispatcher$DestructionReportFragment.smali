.class public Landroid/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DestructionReportFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 3

    invoke-virtual {p0}, Landroid/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    # invokes: Landroid/arch/lifecycle/LifecycleDispatcher;->dispatchIfLifecycleOwner(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/Lifecycle$Event;)V
    invoke-static {v0, p1}, Landroid/arch/lifecycle/LifecycleDispatcher;->access$100(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
