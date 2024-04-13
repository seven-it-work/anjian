.class final Lcom/cyjh/mq/sdk/a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/sdk/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/sdk/a;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/sdk/a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mq/sdk/a$1;->a:Lcom/cyjh/mq/sdk/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    return-void

    :cond_a
    sget-object v0, Lcom/cyjh/mq/a/a;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    if-eqz v0, :cond_43

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_38

    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    sget v2, Lcom/cyjh/mqsdk/R$string;->toast_failed_got_root:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cyjh/mq/d/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_38
    sget-object v0, Lcom/cyjh/mq/a/a;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;->onRootProgress(Ljava/lang/String;I)V

    :cond_43
    return-void
.end method
