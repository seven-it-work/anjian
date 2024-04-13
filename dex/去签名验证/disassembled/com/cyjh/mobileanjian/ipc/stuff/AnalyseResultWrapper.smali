.class public Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .registers 5

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "status"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_21
    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .registers 5

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "status"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static resultBuilder(Landroid/content/Context;)Lcom/goldcoast/sdk/domain/AnalyseResult;
    .registers 1

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a:Landroid/content/Context;

    new-instance p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$2;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$2;-><init>()V

    return-object p0
.end method

.method public static resultBuilder(Landroid/content/Context;Landroid/os/Handler;)Lcom/goldcoast/sdk/domain/AnalyseResult;
    .registers 3

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a:Landroid/content/Context;

    const/4 v0, 0x0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    sput-object p1, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->resultBuilder(Landroid/content/Context;)Lcom/goldcoast/sdk/domain/AnalyseResult;

    move-result-object p0

    return-object p0
.end method
