.class public Lcom/umeng/commonsdk/proguard/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "UM_PROBE_DATA"

.field public static final b:Ljava/lang/String; = "_dsk_s"

.field public static final c:Ljava/lang/String; = "_thm_z"

.field public static final d:Ljava/lang/String; = "_gdf_r"

.field private static e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/t;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    const-string v0, "unknown"

    const-string v1, "ls /sys/class/thermal"

    :try_start_4
    const-string v2, "thermal_zone"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_10

    const-string v0, "thermal_zone"

    :cond_10
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UM_PROBE_DATA"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_4b

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/umeng/commonsdk/proguard/t;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_47

    :try_start_16
    const-string v4, "_dsk_s"

    const-string v5, "_dsk_s"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "_thm_z"

    const-string v5, "_thm_z"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "_gdf_r"

    const-string v5, "_gdf_r"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_44

    :try_start_3e
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_47

    move-object v0, v1

    return-object v0

    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47

    :catch_47
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_4b
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/t;->b(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_28

    :catch_28
    return p1
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    const-string v0, "unknown"

    const-string v1, "ls /"

    :try_start_4
    const-string v2, "goldfish"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_10

    const-string v0, "goldfish"

    :cond_10
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/t;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "unknown"

    const-string v1, "unknown"

    const-string v2, "unknown"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/umeng/commonsdk/proguard/t$1;

    invoke-direct {v1, v0, p0}, Lcom/umeng/commonsdk/proguard/t$1;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_18
    return-void
.end method

.method private static b(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "UM_PROBE_DATA"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_39

    sget-object v0, Lcom/umeng/commonsdk/proguard/t;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "_dsk_s"

    aget-object v1, p1, v1

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "_thm_z"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "_gdf_r"

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_36

    throw p0

    :cond_39
    return-void
.end method

.method public static c()Ljava/lang/String;
    .registers 7

    const-string v0, "unknown"

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/diskstats"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_36

    :try_start_e
    const-string v2, "mmcblk"

    const-string v3, "sda"

    const-string v4, "mtd"

    :cond_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_37

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    const-string v2, "mmcblk"

    :goto_22
    move-object v0, v2

    goto :goto_37

    :cond_24
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string v2, "sda"

    goto :goto_22

    :cond_2d
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v2, "mtd"
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_35} :catch_37

    goto :goto_22

    :catch_36
    const/4 v1, 0x0

    :catch_37
    :cond_37
    :goto_37
    if-eqz v1, :cond_3c

    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "UM_PROBE_DATA"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1e

    const-string v1, "_dsk_s"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method
