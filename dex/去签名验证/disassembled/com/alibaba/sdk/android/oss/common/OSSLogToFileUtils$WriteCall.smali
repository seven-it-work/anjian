.class Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteCall"
.end annotation


# instance fields
.field private mStr:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->mStr:Ljava/lang/Object;

    return-void
.end method

.method private printEx(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crash_time\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$400()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->mStr:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-object p1
.end method


# virtual methods
.method public run()V
    .registers 6

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFileSize(Ljava/io/File;)J

    move-result-wide v0

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$100()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_20

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->resetLogFile()V

    :cond_20
    :try_start_20
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    # getter for: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->mStr:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_39

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->printEx(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    goto :goto_5f

    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getFunctionInfo([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$300(Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->mStr:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5f
    const-string v1, "------>end of log"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_6a} :catch_6b

    return-void

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6f
    return-void
.end method
