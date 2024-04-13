.class final Lcom/cyjh/common/util/t$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/util/t;


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/t;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/common/util/t$1;->a:Lcom/cyjh/common/util/t;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/cyjh/common/util/t$1;->a:Lcom/cyjh/common/util/t;

    iget-object v0, v0, Lcom/cyjh/common/util/t;->b:Lcom/cyjh/common/util/t$a;

    if-eqz v0, :cond_14

    iget v0, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_14

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_14
    return-void
.end method
