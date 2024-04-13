.class public final Lcom/elfin/engin/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elfin/engin/b/a/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/elfin/engin/b/c;->b:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/elfin/engin/b/c;->c:Ljava/io/File;

    iput-object p1, p0, Lcom/elfin/engin/b/c;->a:Landroid/content/Context;

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-direct {p3, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    const-string p1, "a111111"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ScriptUipModel "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    return-void

    :cond_19
    :try_start_19
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_29
    return-void
.end method

.method private b(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    :cond_9
    iget-object v0, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a()Landroid/widget/LinearLayout;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/elfin/engin/b/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/cyjh/mqm/MiscUtilities;

    invoke-direct {v0}, Lcom/cyjh/mqm/MiscUtilities;-><init>()V

    iget-object v1, p0, Lcom/elfin/engin/b/c;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mqm/MiscUtilities;->LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->parseLayoutFromJson(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    :cond_20
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/elfin/engin/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveConfigToJson()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final c()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/elfin/engin/b/c;->c:Ljava/io/File;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_2c

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1b

    return-void

    :cond_1b
    :try_start_1b
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_2c

    return-void

    :catch_27
    move-exception v0

    :try_start_28
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    :cond_2b
    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/elfin/engin/b/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/elfin/engin/b/c;->c:Ljava/io/File;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_14

    return-object v1

    :cond_14
    iget-object v1, p0, Lcom/elfin/engin/b/c;->d:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    return-object v1
.end method
