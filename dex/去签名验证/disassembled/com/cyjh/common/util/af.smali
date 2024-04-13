.class public Lcom/cyjh/common/util/af;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/lang/String; = "app_version"

.field public static final c:Ljava/lang/String; = "last_app_version"

.field private static final d:Ljava/lang/String; = "af"

.field private static e:Lcom/cyjh/common/util/af;


# instance fields
.field public a:Landroid/content/SharedPreferences;


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

.method public static a()Lcom/cyjh/common/util/af;
    .registers 2

    sget-object v0, Lcom/cyjh/common/util/af;->e:Lcom/cyjh/common/util/af;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/common/util/af;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/common/util/af;->e:Lcom/cyjh/common/util/af;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/common/util/af;

    invoke-direct {v1}, Lcom/cyjh/common/util/af;-><init>()V

    sput-object v1, Lcom/cyjh/common/util/af;->e:Lcom/cyjh/common/util/af;

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
    sget-object v0, Lcom/cyjh/common/util/af;->e:Lcom/cyjh/common/util/af;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static d()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "saveVersion "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appVersion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2b

    :try_start_17
    iget-object v0, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/cyjh/common/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    const-string v1, "app_version"

    invoke-static {}, Lcom/cyjh/common/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "setLastAppVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appVersion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2b

    :try_start_17
    iget-object v0, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_app_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/cyjh/common/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_app_version"

    invoke-static {}, Lcom/cyjh/common/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method
