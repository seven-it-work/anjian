.class Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;
.super Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)V
    .registers 2

    iput-object p1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;->this$0:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    iget-object p1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;->this$0:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    # getter for: Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;
    invoke-static {p1}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->access$100(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/HolderFragment;

    if-eqz p1, :cond_24

    const-string p1, "ViewModelStores"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to save a ViewModel for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method
