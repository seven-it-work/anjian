.class public final Lcom/cyjh/elfin/services/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/services/a$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "ClientAppService"

.field private static final f:Lcom/cyjh/elfin/services/a;


# instance fields
.field public a:Landroid/os/Messenger;

.field public b:Landroid/content/ServiceConnection;

.field public c:Lcom/cyjh/elfin/services/a$a;

.field public d:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/services/a;

    invoke-direct {v0}, Lcom/cyjh/elfin/services/a;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/services/a;->f:Lcom/cyjh/elfin/services/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/services/a$a;

    invoke-direct {v0}, Lcom/cyjh/elfin/services/a$a;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/services/a;->c:Lcom/cyjh/elfin/services/a$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/cyjh/elfin/services/a;->c:Lcom/cyjh/elfin/services/a$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cyjh/elfin/services/a;->d:Landroid/os/Messenger;

    new-instance v0, Lcom/cyjh/elfin/services/a$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/services/a$1;-><init>(Lcom/cyjh/elfin/services/a;)V

    iput-object v0, p0, Lcom/cyjh/elfin/services/a;->b:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/services/a;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/services/a;->d:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/elfin/services/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/services/a;->a:Landroid/os/Messenger;

    return-object p1
.end method

.method public static a()Lcom/cyjh/elfin/services/a;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/services/a;->f:Lcom/cyjh/elfin/services/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/cyjh/elfin/services/a;->b:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/cyjh/elfin/services/a;->b:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_11
    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/services/a;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/services/a;->a:Landroid/os/Messenger;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/services/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyjh/elfin/services/a;->c:Lcom/cyjh/elfin/services/a$a;

    iput-object p1, p0, Lcom/cyjh/elfin/services/a;->d:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/cyjh/elfin/services/a;->a:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bindTypeKey"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cyjh/elfin/services/a;->d:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_15
    iget-object p1, p0, Lcom/cyjh/elfin/services/a;->a:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
