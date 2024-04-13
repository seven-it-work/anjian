.class public abstract Lcom/cyjh/common/base/activity/BaseModelActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/arch/lifecycle/AndroidViewModel;",
        ">",
        "Lcom/cyjh/common/base/activity/BaseActivity;"
    }
.end annotation


# instance fields
.field protected b:Landroid/arch/lifecycle/AndroidViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cyjh/common/base/activity/BaseModelActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->d()V

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/AndroidViewModel;

    iput-object p1, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    invoke-virtual {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->c()V

    return-void
.end method
