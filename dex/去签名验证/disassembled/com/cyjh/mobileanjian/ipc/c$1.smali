.class final Lcom/cyjh/mobileanjian/ipc/c$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/c;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/c;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/c$1;->a:Lcom/cyjh/mobileanjian/ipc/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    sget-object v0, Lcom/cyjh/mq/a/a;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/cyjh/mq/a/a;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;->onRootProgress(Ljava/lang/String;I)V

    :cond_f
    return-void
.end method
