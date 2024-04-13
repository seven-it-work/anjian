.class public final Lcom/cyjh/elfin/floatingwindowprocess/service/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "ServerAppService"

.field private static final e:Lcom/cyjh/elfin/floatingwindowprocess/service/a;


# instance fields
.field a:Landroid/os/Messenger;

.field public b:Landroid/os/Messenger;

.field private d:Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    invoke-direct {v0}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->e:Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;-><init>(B)V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->d:Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->d:Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a:Landroid/os/Messenger;

    return-void
.end method

.method public static a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->e:Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    return-object v0
.end method

.method private a(Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a:Landroid/os/Messenger;

    return-void
.end method

.method private a(Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->d:Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;

    return-void
.end method

.method private b()Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->d:Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;

    return-object v0
.end method

.method private b(Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->b:Landroid/os/Messenger;

    return-void
.end method

.method private c()Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a:Landroid/os/Messenger;

    return-object v0
.end method

.method private d()Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->b:Landroid/os/Messenger;

    return-object v0
.end method

.method private e()V
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bindActionKey"

    const/16 v3, 0x44d

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_13
    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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

    :try_start_11
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->b:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .registers 7

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bindTypeKey"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bindMsgKey"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bindActionKey"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1b
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->b:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
