.class public final Lcom/cyjh/mobileanjian/ipc/utils/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "script"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/entity/Script4Run;
    .registers 12
    .param p1    # Lcom/cyjh/mq/sdk/entity/Script4Run;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "script"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_20

    :cond_1d
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    :goto_20
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/io/File;

    aput-object p0, v6, v1

    aput-object v3, v6, v2

    const/4 p0, 0x2

    aput-object v4, v6, p0

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-array v0, v5, [Ljava/io/File;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    aput-object v7, v0, p0

    const/4 p0, 0x0

    :goto_75
    if-ge p0, v5, :cond_93

    aget-object v8, v6, p0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8c

    aget-object v8, v6, p0

    aget-object v9, v0, p0

    invoke-static {v8, v9}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    aget-object v8, v0, p0

    invoke-virtual {v8, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_90

    :cond_8c
    aget-object v8, v6, p0

    aput-object v8, v0, p0

    :goto_90
    add-int/lit8 p0, p0, 0x1

    goto :goto_75

    :cond_93
    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->clone()Lcom/cyjh/mq/sdk/entity/Script4Run;

    move-result-object p0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setLcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    move-result-object p1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/mq/sdk/inf/IScript;->setAtcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    move-result-object p1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/mq/sdk/inf/IScript;->setConfigPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    return-object p0
.end method
