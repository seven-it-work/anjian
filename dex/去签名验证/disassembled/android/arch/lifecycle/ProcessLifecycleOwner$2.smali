.class Landroid/arch/lifecycle/ProcessLifecycleOwner$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ProcessLifecycleOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .registers 2

    iput-object p1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->activityResumed()V

    return-void
.end method

.method public onStart()V
    .registers 2

    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->activityStarted()V

    return-void
.end method
