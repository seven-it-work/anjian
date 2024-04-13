.class public final Lcom/elfin/engin/g;
.super Lcom/elfin/engin/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/elfin/engin/b;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mq/sdk/MqRunnerLite;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/cyjh/mq/sdk/inf/IRunner;
    .registers 2

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunnerLite;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
    .registers 6

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cyjh/mq/sdk/MqRunner;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cyjh/mq/sdk/MqRunnerLite;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    return-void
.end method

.method public final a(ZIIII)V
    .registers 12

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mq/sdk/MqRunnerLite;->setImageCrop(ZIIII)V

    return-void
.end method
