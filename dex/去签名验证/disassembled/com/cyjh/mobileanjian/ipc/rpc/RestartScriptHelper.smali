.class public Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNeedRestart()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static setNeedRestart()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static setNeedRestartValue(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->a:Ljava/lang/Boolean;

    return-void
.end method
