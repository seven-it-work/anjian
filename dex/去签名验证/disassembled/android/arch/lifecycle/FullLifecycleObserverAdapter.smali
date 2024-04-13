.class Landroid/arch/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mObserver:Landroid/arch/lifecycle/FullLifecycleObserver;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/FullLifecycleObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroid/arch/lifecycle/FullLifecycleObserver;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 4

    sget-object v0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_38

    return-void

    :pswitch_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_14
    iget-object p2, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->onDestroy(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void

    :pswitch_1a
    iget-object p2, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->onStop(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void

    :pswitch_20
    iget-object p2, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->onPause(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void

    :pswitch_26
    iget-object p2, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->onResume(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void

    :pswitch_2c
    iget-object p2, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->onStart(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void

    :pswitch_32
    iget-object p2, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
        :pswitch_c
    .end packed-switch
.end method
