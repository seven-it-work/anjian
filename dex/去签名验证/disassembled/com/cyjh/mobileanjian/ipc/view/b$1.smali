.class final Lcom/cyjh/mobileanjian/ipc/view/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/view/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/view/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b$1;->a:Lcom/cyjh/mobileanjian/ipc/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b$1;->a:Lcom/cyjh/mobileanjian/ipc/view/b;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/view/b;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/b$1;->a:Lcom/cyjh/mobileanjian/ipc/view/b;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/view/b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method
