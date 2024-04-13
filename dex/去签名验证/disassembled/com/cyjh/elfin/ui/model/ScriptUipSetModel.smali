.class public Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;
.super Landroid/arch/lifecycle/AndroidViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;,
        Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;,
        Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;
    }
.end annotation


# instance fields
.field public a:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;

.field public b:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

.field private d:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;)Landroid/arch/lifecycle/MutableLiveData;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private d()Landroid/arch/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private e()V
    .registers 18

    move-object/from16 v1, p0

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_50

    new-instance v2, Ljava/io/File;

    const-string v6, "/sdcard/elf11.txt"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "sdCardScriptFiles\n"

    const-string v7, "UTF-8"

    invoke-static {v2, v6, v7}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/elfin/e/c/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    const-string v7, "script.lc"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "script.uip"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_31
    new-instance v2, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;

    new-array v4, v4, [Ljava/io/File;

    aput-object v6, v4, v5

    aput-object v7, v4, v3

    invoke-direct {v2, v1, v4, v5}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;-><init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;[Ljava/io/File;B)V

    iput-object v2, v1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->d:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;

    iget-object v2, v1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->d:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_50
    new-instance v2, Ljava/io/File;

    const-string v6, "/sdcard/elf11.txt"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "copyScriptFiles\n"

    const-string v7, "UTF-8"

    invoke-static {v2, v6, v7}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/io/File;

    const-string v6, "/sdcard/elf11.txt"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "copyScriptFiles start\n"

    const-string v7, "UTF-8"

    invoke-static {v2, v6, v7}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v6

    iget-object v6, v6, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v6}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v6

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v7

    iget-object v7, v7, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v7}, Lcom/cyjh/elfin/entity/Script;->getPropFile()Ljava/io/File;

    move-result-object v7

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v8

    iget-object v8, v8, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v8}, Lcom/cyjh/elfin/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v8

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v9

    iget-object v9, v9, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v9}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v9

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v10

    iget-object v10, v10, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v10}, Lcom/cyjh/elfin/entity/Script;->getRtdFile()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    const-string v12, "/sdcard/elf11.txt"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "lcFile = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\npropFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\natcFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\nuipFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\nrtdFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v11, v12, v13}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    :try_start_f9
    const-string v11, "script.lc"

    invoke-virtual {v2, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "script.prop"

    invoke-virtual {v2, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "script.atc"

    invoke-virtual {v2, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    const-string v14, "script.uip"

    invoke-virtual {v2, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    const-string v15, "script.rtd"

    invoke-virtual {v2, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v15, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

    const/4 v4, 0x5

    new-array v3, v4, [Ljava/io/File;

    aput-object v6, v3, v5

    const/4 v6, 0x1

    aput-object v7, v3, v6

    const/4 v6, 0x2

    aput-object v8, v3, v6

    const/4 v6, 0x3

    aput-object v10, v3, v6

    const/4 v7, 0x4

    aput-object v9, v3, v7

    invoke-direct {v15, v1, v3, v5}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;-><init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;[Ljava/io/File;B)V

    iput-object v15, v1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

    iget-object v3, v1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-array v4, v4, [Ljava/io/InputStream;

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    const/4 v5, 0x2

    aput-object v13, v4, v5

    aput-object v2, v4, v6

    aput-object v14, v4, v7

    invoke-virtual {v3, v8, v4}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_146} :catch_147

    return-void

    :catch_147
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/elf11.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "copyScriptFiles error"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v3, v4, v5}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private static f()V
    .registers 0

    return-void
.end method

.method private g()V
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;-><init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;B)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "script.lc"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "script.uip"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_16
    new-instance v0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, p0, v3, v4}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;-><init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;[Ljava/io/File;B)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->d:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->d:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final b()V
    .registers 15

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/elf11.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "copyScriptFiles start\n"

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->getPropFile()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v4

    iget-object v4, v4, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v4}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v4

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v5

    iget-object v5, v5, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v5}, Lcom/cyjh/elfin/entity/Script;->getRtdFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    const-string v7, "/sdcard/elf11.txt"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lcFile = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\npropFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\natcFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\nuipFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\nrtdFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v6, v7, v8}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    :try_start_9b
    const-string v6, "script.lc"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "script.prop"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "script.atc"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "script.uip"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "script.rtd"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v10, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

    const/4 v11, 0x5

    new-array v12, v11, [Ljava/io/File;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v1, 0x1

    aput-object v2, v12, v1

    const/4 v2, 0x2

    aput-object v3, v12, v2

    const/4 v3, 0x3

    aput-object v5, v12, v3

    const/4 v5, 0x4

    aput-object v4, v12, v5

    invoke-direct {v10, p0, v12, v13}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;-><init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;[Ljava/io/File;B)V

    iput-object v10, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

    iget-object v4, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-array v11, v11, [Ljava/io/InputStream;

    aput-object v6, v11, v13

    aput-object v7, v11, v1

    aput-object v8, v11, v2

    aput-object v0, v11, v3

    aput-object v9, v11, v5

    invoke-virtual {v4, v10, v11}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_e7} :catch_e8

    return-void

    :catch_e8
    move-exception v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/elf11.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyScriptFiles error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v1, v2, v3}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public final c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method protected onCleared()V
    .registers 3

    invoke-super {p0}, Landroid/arch/lifecycle/AndroidViewModel;->onCleared()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;

    if-eqz v1, :cond_14

    iget-object v0, v0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_14
    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;

    :cond_21
    return-void
.end method
