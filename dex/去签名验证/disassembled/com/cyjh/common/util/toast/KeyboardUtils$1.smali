.class final Lcom/cyjh/common/util/toast/KeyboardUtils$1;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/g;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    :cond_6
    invoke-static {}, Lcom/cyjh/common/util/toast/g;->a()V

    :cond_9
    return-void
.end method
