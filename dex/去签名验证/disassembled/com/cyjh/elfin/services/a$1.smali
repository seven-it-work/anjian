.class final Lcom/cyjh/elfin/services/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/services/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/services/a;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/services/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/services/a$1;->a:Lcom/cyjh/elfin/services/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "ClientAppService"

    const-string v0, "\u4e0e\u670d\u52a1\u7aef\u8fde\u63a5\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/cyjh/elfin/services/a$1;->a:Lcom/cyjh/elfin/services/a;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/cyjh/elfin/services/a;->a(Lcom/cyjh/elfin/services/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "bindTypeKey"

    const/16 v1, 0x7530

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/cyjh/elfin/services/a$1;->a:Lcom/cyjh/elfin/services/a;

    invoke-static {p2}, Lcom/cyjh/elfin/services/a;->a(Lcom/cyjh/elfin/services/a;)Landroid/os/Messenger;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_2c
    iget-object p2, p0, Lcom/cyjh/elfin/services/a$1;->a:Lcom/cyjh/elfin/services/a;

    invoke-static {p2}, Lcom/cyjh/elfin/services/a;->b(Lcom/cyjh/elfin/services/a;)Landroid/os/Messenger;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
