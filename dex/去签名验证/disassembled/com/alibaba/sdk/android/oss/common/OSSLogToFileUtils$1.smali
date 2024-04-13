.class final Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->init(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogFilePath is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFileSize(Ljava/io/File;)J

    move-result-wide v2

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$100()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_3c

    const-string v0, "init reset log file"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$200()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->resetLogFile()V

    :cond_3c
    return-void
.end method
