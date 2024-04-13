.class public final Lcom/elfin/engin/f;
.super Lcom/elfin/engin/b;


# static fields
.field private static final a:Ljava/lang/String; = "MqRunnerApi"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/elfin/engin/b;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mq/sdk/MqRunner;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/cyjh/mq/sdk/inf/IRunner;
    .registers 2

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
    .registers 6

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cyjh/mq/sdk/MqRunner;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    return-void
.end method

.method public final a(ZIIII)V
    .registers 6

    return-void
.end method
