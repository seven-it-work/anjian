.class public Landroid/arch/lifecycle/HolderFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/arch/lifecycle/ViewModelStoreOwner;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;
    }
.end annotation


# static fields
.field public static final HOLDER_TAG:Ljava/lang/String; = "android.arch.lifecycle.state.StateProviderHolderFragment"
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ViewModelStores"

.field private static final sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;


# instance fields
.field private mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-direct {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Landroid/arch/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/HolderFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public static holderFragmentFor(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/HolderFragment;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->holderFragmentFor(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object p0

    return-object p0
.end method

.method public static holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->holderFragmentCreated(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ViewModelStore;->clear()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
