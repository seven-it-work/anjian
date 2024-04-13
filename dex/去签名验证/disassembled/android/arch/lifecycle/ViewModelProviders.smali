.class public Landroid/arch/lifecycle/ViewModelProviders;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_e

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    return-object p0
.end method

.method private static checkApplication(Landroid/app/Activity;)Landroid/app/Application;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    if-nez p0, :cond_e

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    return-object p0
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;
    .registers 2
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p0

    return-object p0
.end method

.method public static of(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;
    .registers 3
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/lifecycle/ViewModelProvider$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_e

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object p1

    :cond_e
    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;
    .registers 2
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p0

    return-object p0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;
    .registers 3
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/lifecycle/ViewModelProvider$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_a

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object p1

    :cond_a
    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method
