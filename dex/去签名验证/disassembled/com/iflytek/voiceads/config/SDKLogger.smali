.class public Lcom/iflytek/voiceads/config/SDKLogger;
.super Ljava/lang/Object;


# static fields
.field public static dev:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/iflytek/voiceads/config/SDKLogger;->dev:Z

    if-eqz v0, :cond_9

    const-string v0, "IFLY_AD_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/iflytek/voiceads/config/SDKLogger;->dev:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/iflytek/voiceads/config/SDKLogger;->dev:Z

    if-eqz v0, :cond_9

    const-string v0, "IFLY_AD_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/iflytek/voiceads/config/SDKLogger;->dev:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1

    sput-boolean p0, Lcom/iflytek/voiceads/config/SDKLogger;->dev:Z

    return-void
.end method
