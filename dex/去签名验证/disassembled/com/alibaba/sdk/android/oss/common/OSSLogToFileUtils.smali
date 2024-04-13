.class public Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;
    }
.end annotation


# static fields
.field private static final LOG_DIR_NAME:Ljava/lang/String; = "OSSLog"

.field private static LOG_MAX_SIZE:J = 0x500000L

.field private static instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

.field private static logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

.field private static sContext:Landroid/content/Context;

.field private static sLogFile:Ljava/io/File;

.field private static sLogSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field private useSdCard:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->newInstance()Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->useSdCard:Z

    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100()J
    .registers 2

    sget-wide v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    return-wide v0
.end method

.method static synthetic access$200()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getFunctionInfo([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private getFunctionInfo([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_21

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
    .registers 2

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    return-object v0
.end method

.method public static getLocalLogFileSize()J
    .registers 2

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLogFile()Ljava/io/File;
    .registers 10

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->useSdCard:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x400

    if-eqz v0, :cond_44

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v5, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->readSDCardSpace()J

    move-result-wide v5

    sget-wide v7, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    div-long/2addr v7, v3

    cmp-long v0, v5, v7

    if-lez v0, :cond_20

    const/4 v1, 0x1

    :cond_20
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OSSLog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_75

    :cond_44
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->readSystemSpace()J

    move-result-wide v5

    sget-wide v7, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    div-long/2addr v7, v3

    cmp-long v0, v5, v7

    if-lez v0, :cond_50

    const/4 v1, 0x1

    :cond_50
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OSSLog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_75
    const/4 v2, 0x0

    if-eqz v1, :cond_a4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_81

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_81
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logs.csv"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a4

    invoke-virtual {p0, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->createNewFile(Ljava/io/File;)V

    :cond_a4
    return-object v2
.end method

.method public static getLogFileSize(Ljava/io/File;)J
    .registers 3

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static init(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .registers 4

    const-string v0, "init ..."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_21

    :cond_1b
    const-string p0, "LogToFileUtils has been init ..."

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    return-void

    :cond_21
    :goto_21
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxLogSize()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    :cond_2f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    sget-object p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFile()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    sget-object p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    new-instance p1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$1;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->addExecuteTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readSDCardSpace()J
    .registers 5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    goto :goto_28

    :cond_26
    const-wide/16 v0, 0x0

    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sd\u5361\u5b58\u50a8\u7a7a\u95f4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    return-wide v0
.end method

.method private readSystemSpace()J
    .registers 5

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5185\u90e8\u5b58\u50a8\u7a7a\u95f4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    return-wide v0
.end method

.method public static reset()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public createNewFile(Ljava/io/File;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create log file failure !!! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Z)V

    return-void
.end method

.method public deleteLogFile()V
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/logs.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "delete Log File ... "

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2b
    return-void
.end method

.method public deleteLogFileDir()V
    .registers 4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->deleteLogFile()V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OSSLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "delete Log FileDir ... "

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_35
    return-void
.end method

.method public resetLogFile()V
    .registers 4

    const-string v0, "Reset Log File ... "

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "Reset Log make File dir ... "

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_20
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/logs.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_45
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->createNewFile(Ljava/io/File;)V

    return-void
.end method

.method public setUseSdCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->useSdCard:Z

    return-void
.end method

.method public declared-synchronized write(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    if-nez v0, :cond_14

    goto :goto_2a

    :cond_14
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->resetLogFile()V

    :cond_1f
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->addExecuteTask(Ljava/lang/Runnable;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    goto :goto_2c

    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
