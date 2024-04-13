.class final Lcom/cyjh/mq/sdk/MqRunner$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/sdk/MqRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/cyjh/mq/sdk/MqRunner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/mq/sdk/MqRunner;

    invoke-direct {v0}, Lcom/cyjh/mq/sdk/MqRunner;-><init>()V

    sput-object v0, Lcom/cyjh/mq/sdk/MqRunner$a;->a:Lcom/cyjh/mq/sdk/MqRunner;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/cyjh/mq/sdk/MqRunner;
    .registers 1

    sget-object v0, Lcom/cyjh/mq/sdk/MqRunner$a;->a:Lcom/cyjh/mq/sdk/MqRunner;

    return-object v0
.end method
