.class public Lcom/cyjh/mq/service/IpcService;
.super Landroid/app/Service;


# static fields
.field private static final f:Ljava/lang/String; = "mqm_engine"

.field private static final g:Ljava/lang/String; = "ipc_server_port"

.field private static final h:Ljava/lang/String; = "/system/bin/app_process32"

.field private static final i:Ljava/lang/String; = "elfinject"

.field private static final j:Ljava/lang/String; = "model"

.field private static final k:Ljava/lang/String; = "code_cache"

.field private static final l:Ljava/lang/String; = "secondary-dexes"

.field private static final m:Ljava/lang/String; = "mycache"

.field private static final n:Ljava/lang/String; = "dalvik-cache"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/cyjh/mq/c/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mq/service/IpcService;)Lcom/cyjh/mq/c/c;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/service/IpcService;->e:Lcom/cyjh/mq/c/c;

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/mq/service/IpcService;Lcom/cyjh/mq/c/c;)Lcom/cyjh/mq/c/c;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/service/IpcService;->e:Lcom/cyjh/mq/c/c;

    return-object p1
.end method

.method private a()V
    .registers 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mq/service/IpcService;->g()I

    move-result v2

    iput v2, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DaemonClient.zip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "lib"

    const-string v7, "libmqm.so"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_process"

    new-instance v7, Ljava/io/File;

    const-string v8, "/system/bin/app_process32"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_69

    const-string v6, "/system/bin/app_process32"

    :cond_69
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v9, "mycache"

    const-string v10, "dalvik-cache"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v7, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v7, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v7, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "export CLASSPATH="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "exec %s %s %s %s %s %s &\n"

    const/4 v10, 0x6

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v3

    aput-object v1, v11, v4

    const-string v12, "com.cyjh.mobileanjian.ipc.ClientService"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    iget-object v12, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v12, v11, v14

    const/4 v12, 0x4

    aput-object v5, v11, v12

    iget v15, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x5

    aput-object v15, v11, v16

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isOppoR9S()Z

    move-result v8

    if-eqz v8, :cond_119

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "export CLASSPATH="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "exec %s -Xnodex2oat %s %s %s %s %s &\n"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v6, v9, v3

    aput-object v1, v9, v4

    const-string v1, "com.cyjh.mobileanjian.ipc.ClientService"

    aput-object v1, v9, v13

    iget-object v1, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    aput-object v1, v9, v14

    aput-object v5, v9, v12

    iget v1, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v16

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    :cond_119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "export ANDROID_DATA="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\necho Okay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/cyjh/mq/service/IpcService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .registers 11

    const-string v0, "model"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mq/service/IpcService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_20
    const/4 v5, 0x1

    if-ge v4, v3, :cond_48

    aget-object v6, v2, v4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v9, "model"

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v6, v8}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_48
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "DaemonClient.zip"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "DaemonClient.zip"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/mq/service/IpcService;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/mq/service/IpcService;->b:I

    return p0
.end method

.method private c()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "elfinject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/r;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_x86:I

    :goto_26
    invoke-static {p0, v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyRawFile(Landroid/content/Context;ILjava/lang/String;)Z

    return-void

    :cond_2a
    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_arm:I

    goto :goto_26
.end method

.method private d()V
    .registers 6

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "execute command mRootScriptContent: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    const-string v4, "start_eventsrvR"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/mq/a/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_56

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/service/IpcService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_56
    return-void
.end method

.method static synthetic d(Lcom/cyjh/mq/service/IpcService;)V
    .registers 11

    const-string v0, "model"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mq/service/IpcService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_20
    const/4 v5, 0x1

    if-ge v4, v3, :cond_48

    aget-object v6, v2, v4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v9, "model"

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v6, v8}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_48
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "DaemonClient.zip"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "DaemonClient.zip"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private e()V
    .registers 3

    new-instance v0, Lcom/cyjh/mq/service/IpcService$1;

    const-string v1, "ipcserver_thread"

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/service/IpcService$1;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/mq/service/IpcService$1;->start()V

    return-void
.end method

.method static synthetic e(Lcom/cyjh/mq/service/IpcService;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "elfinject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/r;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_x86:I

    :goto_26
    invoke-static {p0, v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyRawFile(Landroid/content/Context;ILjava/lang/String;)Z

    return-void

    :cond_2a
    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_arm:I

    goto :goto_26
.end method

.method private f()V
    .registers 3

    new-instance v0, Lcom/cyjh/mq/service/IpcService$2;

    const-string v1, "startRootRequest"

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/service/IpcService$2;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/mq/service/IpcService$2;->start()V

    return-void
.end method

.method static synthetic f(Lcom/cyjh/mq/service/IpcService;)V
    .registers 6

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "execute command mRootScriptContent: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    const-string v4, "start_eventsrvR"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/mq/a/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_56

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/service/IpcService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_56
    return-void
.end method

.method private static g()I
    .registers 3

    const/16 v0, 0x2efe

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x9

    if-ge v1, v2, :cond_20

    :try_start_7
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, v0}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_f} :catch_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    :catch_17
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_20
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->notifyRotationStatus()V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunnerLite;->notifyRotationStatus()V

    invoke-static {}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->getInstance()Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->updateScreenSize()V

    return-void
.end method

.method public onCreate()V
    .registers 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->init(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/event/Injector;->init(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mq/service/IpcService;->g()I

    move-result v2

    iput v2, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DaemonClient.zip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "lib"

    const-string v7, "libmqm.so"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_process"

    new-instance v7, Ljava/io/File;

    const-string v8, "/system/bin/app_process32"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7a

    const-string v6, "/system/bin/app_process32"

    :cond_7a
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v9, "mycache"

    const-string v10, "dalvik-cache"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v7, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v7, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v7, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "export CLASSPATH="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "exec %s %s %s %s %s %s &\n"

    const/4 v10, 0x6

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v3

    aput-object v1, v11, v4

    const-string v12, "com.cyjh.mobileanjian.ipc.ClientService"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    iget-object v12, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v12, v11, v14

    const/4 v12, 0x4

    aput-object v5, v11, v12

    iget v15, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x5

    aput-object v15, v11, v16

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isOppoR9S()Z

    move-result v8

    if-eqz v8, :cond_12a

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "export CLASSPATH="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "exec %s -Xnodex2oat %s %s %s %s %s &\n"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v6, v9, v3

    aput-object v1, v9, v4

    const-string v1, "com.cyjh.mobileanjian.ipc.ClientService"

    aput-object v1, v9, v13

    iget-object v1, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    aput-object v1, v9, v14

    aput-object v5, v9, v12

    iget v1, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v16

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    :cond_12a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "export ANDROID_DATA="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\necho Okay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    new-instance v1, Lcom/cyjh/mq/service/IpcService$1;

    const-string v2, "ipcserver_thread"

    invoke-direct {v1, v0, v2}, Lcom/cyjh/mq/service/IpcService$1;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/mq/service/IpcService$1;->start()V

    new-instance v1, Lcom/cyjh/mq/service/IpcService$2;

    const-string v2, "startRootRequest"

    invoke-direct {v1, v0, v2}, Lcom/cyjh/mq/service/IpcService$2;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/mq/service/IpcService$2;->start()V

    const-string v1, "VERSION"

    const-string v2, "build info: build on 2023-05-17 13:36:07"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->e:Lcom/cyjh/mq/c/c;

    invoke-virtual {v0}, Lcom/cyjh/mq/c/c;->onAppQuit()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v0

    iget-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    if-eqz v1, :cond_2c

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/d$a;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/d$a;->interrupt()V

    :cond_22
    :try_start_22
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/d;->a:Lcom/cyjh/mobileanjian/ipc/d;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x2

    return p1
.end method
