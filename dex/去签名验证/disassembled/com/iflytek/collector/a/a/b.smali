.class public Lcom/iflytek/collector/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/iflytek/collector/a/a/b;


# instance fields
.field private b:Lcom/iflytek/collector/device/IDeviceInfo;

.field private c:Landroid/content/Context;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Z

.field private volatile f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    new-instance p1, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0}, Lcom/iflytek/collector/a/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/iflytek/collector/a/a/b;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {p1, v1, v2, v0, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v1, "com.iflytek.collector.device.DeviceInfo"

    invoke-virtual {p1, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/collector/device/IDeviceInfo;

    iput-object p1, p0, Lcom/iflytek/collector/a/a/b;->b:Lcom/iflytek/collector/device/IDeviceInfo;

    new-instance p1, Lcom/iflytek/collector/a/a/c;

    invoke-direct {p1, p0}, Lcom/iflytek/collector/a/a/c;-><init>(Lcom/iflytek/collector/a/a/b;)V

    invoke-virtual {p1}, Lcom/iflytek/collector/a/a/c;->start()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_33} :catch_35

    const/4 p1, 0x0

    goto :goto_38

    :catch_35
    iput-object v0, p0, Lcom/iflytek/collector/a/a/b;->b:Lcom/iflytek/collector/device/IDeviceInfo;

    const/4 p1, 0x1

    :goto_38
    invoke-direct {p0, p1}, Lcom/iflytek/collector/a/a/b;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/collector/a/a/b;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/collector/a/a/b;
    .registers 3

    sget-object v0, Lcom/iflytek/collector/a/a/b;->a:Lcom/iflytek/collector/a/a/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/iflytek/collector/a/a/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/iflytek/collector/a/a/b;->a:Lcom/iflytek/collector/a/a/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/iflytek/collector/a/a/b;

    invoke-direct {v1, p0}, Lcom/iflytek/collector/a/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/iflytek/collector/a/a/b;->a:Lcom/iflytek/collector/a/a/b;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/iflytek/collector/a/a/b;->a:Lcom/iflytek/collector/a/a/b;

    return-object p0
.end method

.method private static a(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/iflytek/collector/a/a/b;->a(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private a(Z)V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/collector/a/a/b;->e:Z

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/collector/a/a/d;

    iget-object v2, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/iflytek/collector/a/a/d;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/iflytek/collector/a/a/b;->e:Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2a

    array-length v0, p1

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    :goto_1b
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    aget-object v1, p1, v0

    if-eqz v1, :cond_27

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/iflytek/collector/a/a/b;->a(Ljava/io/File;)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dex/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2e
    return-object v0
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->b:Lcom/iflytek/collector/device/IDeviceInfo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->b:Lcom/iflytek/collector/device/IDeviceInfo;

    iget-object v1, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/iflytek/collector/device/IDeviceInfo;->getHeart(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iput-object p1, p0, Lcom/iflytek/collector/a/a/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/collector/a/a/k;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v1, "appid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2a
    return-void
.end method

.method b()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->b:Lcom/iflytek/collector/device/IDeviceInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->b:Lcom/iflytek/collector/device/IDeviceInfo;

    invoke-interface {v0}, Lcom/iflytek/collector/device/IDeviceInfo;->getVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    :cond_b
    const-string v0, "-1"

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iput-object p1, p0, Lcom/iflytek/collector/a/a/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/collector/a/a/k;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2c

    const-string v1, "subid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/collector/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2c
    return-void
.end method

.method c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "jar/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "iflytek_device_info.zip"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "jar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/collector/a/a/b;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dex/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/collector/a/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/collector/a/a/b;->f:Ljava/lang/String;

    return-object v0
.end method
