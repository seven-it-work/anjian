.class final Lcom/cyjh/mq/sdk/MqRunnerLite$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/sdk/MqRunnerLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/cyjh/mq/sdk/MqRunnerLite;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cyjh/mq/sdk/MqRunnerLite;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cyjh/mq/sdk/MqRunnerLite;-><init>(B)V

    sput-object v0, Lcom/cyjh/mq/sdk/MqRunnerLite$a;->a:Lcom/cyjh/mq/sdk/MqRunnerLite;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/cyjh/mq/sdk/MqRunnerLite;
    .registers 1

    sget-object v0, Lcom/cyjh/mq/sdk/MqRunnerLite$a;->a:Lcom/cyjh/mq/sdk/MqRunnerLite;

    return-object v0
.end method
