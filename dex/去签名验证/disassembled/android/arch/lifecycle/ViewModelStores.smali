.class public Landroid/arch/lifecycle/ViewModelStores;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelStore;
    .registers 2
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    instance-of v0, p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    invoke-interface {p0}, Landroid/arch/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Landroid/arch/lifecycle/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/arch/lifecycle/HolderFragment;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;
    .registers 2
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    instance-of v0, p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    invoke-interface {p0}, Landroid/arch/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Landroid/arch/lifecycle/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/arch/lifecycle/HolderFragment;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method
