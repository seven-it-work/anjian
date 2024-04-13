.class final Lcom/cyjh/mq/sdk/a$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/cyjh/mq/sdk/entity/Script4Run;",
        "Ljava/lang/Void;",
        "Lcom/cyjh/mq/sdk/entity/Script4Run;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/sdk/a;


# direct methods
.method private constructor <init>(Lcom/cyjh/mq/sdk/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/mq/sdk/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mq/sdk/a$a;-><init>(Lcom/cyjh/mq/sdk/a;)V

    return-void
.end method

.method private static varargs a([Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/entity/Script4Run;
    .registers 12

    const/4 v0, 0x0

    aget-object p0, p0, v0

    :try_start_3
    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "script"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_25

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2, v3, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v3, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_28

    :cond_25
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    :goto_28
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/io/File;

    aput-object v1, v7, v0

    aput-object v4, v7, v3

    const/4 v1, 0x2

    aput-object v5, v7, v1

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/io/File;

    aput-object v4, v2, v0

    aput-object v5, v2, v3

    aput-object v8, v2, v1

    const/4 v1, 0x0

    :goto_7d
    if-ge v1, v6, :cond_9b

    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_94

    aget-object v9, v7, v1

    aget-object v10, v2, v1

    invoke-static {v9, v10}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    aget-object v9, v2, v1

    invoke-virtual {v9, v3, v0}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_98

    :cond_94
    aget-object v9, v7, v1

    aput-object v9, v2, v1

    :goto_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_9b
    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->clone()Lcom/cyjh/mq/sdk/entity/Script4Run;

    move-result-object p0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setLcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cyjh/mq/sdk/inf/IScript;->setAtcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cyjh/mq/sdk/inf/IScript;->setConfigPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b6} :catch_b7

    return-object p0

    :catch_b7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V
    .registers 4

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_16
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-static {p1}, Lcom/cyjh/mq/sdk/a$a;->a([Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/entity/Script4Run;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/cyjh/mq/sdk/entity/Script4Run;

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_18
    return-void
.end method
