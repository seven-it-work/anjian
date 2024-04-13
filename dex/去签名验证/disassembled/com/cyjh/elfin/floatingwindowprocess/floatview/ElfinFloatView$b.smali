.class final Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_38

    return-void

    :pswitch_11
    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    return-void

    :pswitch_15
    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ElfinFloatView handleMessage --> isScriptStopRunning="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iget-boolean v2, v2, Lcom/cyjh/elfin/base/AppContext;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x3e8
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method
