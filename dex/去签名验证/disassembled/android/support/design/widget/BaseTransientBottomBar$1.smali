.class final Landroid/support/design/widget/BaseTransientBottomBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1a

    const/4 p1, 0x0

    return p1

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/design/widget/BaseTransientBottomBar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->hideView(I)V

    return v1

    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {p1}, Landroid/support/design/widget/BaseTransientBottomBar;->showView()V

    return v1

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_8
    .end packed-switch
.end method
