.class public Lcom/alibaba/sdk/android/oss/common/OSSLog;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "OSS-Android-SDK"

.field private static enableLog:Z


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

.method public static disableLog()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    return-void
.end method

.method public static enableLog()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    return-void
.end method

.method public static isEnableLog()Z
    .registers 1

    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    return v0
.end method

.method private static log2Local(Ljava/lang/String;Z)V
    .registers 2

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->write(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .registers 2

    const-string v0, "OSS-Android-SDK"

    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_10

    const-string v0, "[Debug]: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_10
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Z)V
    .registers 3

    const-string v0, "OSS-Android-SDK"

    invoke-static {v0, p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .registers 2

    const-string v0, "OSS-Android-SDK"

    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_10

    const-string v0, "[Error]: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_10
    return-void
.end method

.method public static logError(Ljava/lang/String;Z)V
    .registers 3

    const-string v0, "OSS-Android-SDK"

    invoke-static {v0, p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;Z)V
    .registers 4

    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_12

    const-string v0, "OSS-Android-SDK"

    const-string v1, "[INFO]: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_12
    return-void
.end method

.method public static logThrowable2Local(Ljava/lang/Throwable;)V
    .registers 2

    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->write(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logVerbose(Ljava/lang/String;Z)V

    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Z)V
    .registers 4

    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_12

    const-string v0, "OSS-Android-SDK"

    const-string v1, "[Verbose]: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_12
    return-void
.end method

.method public static logWarn(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logWarn(Ljava/lang/String;Z)V

    return-void
.end method

.method public static logWarn(Ljava/lang/String;Z)V
    .registers 4

    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_12

    const-string v0, "OSS-Android-SDK"

    const-string v1, "[Warn]: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_12
    return-void
.end method
