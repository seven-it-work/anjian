.class public final Lcom/goldcoast/sdk/c/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/goldcoast/sdk/c/d;

.field private static b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/goldcoast/sdk/a/b;
    .registers 8

    new-instance v0, Lcom/goldcoast/sdk/a/b;

    invoke-direct {v0}, Lcom/goldcoast/sdk/a/b;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, ""

    const-string v4, ""

    invoke-static {}, Lcom/goldcoast/sdk/c/d;->c()Lcom/goldcoast/sdk/a/e;

    move-result-object v5

    :try_start_17
    const-string v6, "MemTotal"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/meminfo"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v2}, Lcom/goldcoast/sdk/c/f;->a(Ljava/io/InputStream;Ljava/util/Map;)Ljava/lang/String;

    const-string v6, "MemTotal"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_30} :catch_31

    goto :goto_36

    :catch_31
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v2, v3

    :goto_36
    const/4 v3, 0x0

    :try_start_37
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v3}, Lcom/goldcoast/sdk/c/f;->a(Ljava/io/InputStream;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_4b} :catch_4d

    move-object v4, v6

    goto :goto_51

    :catch_4d
    move-exception v6

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_51
    :try_start_51
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v1}, Lcom/goldcoast/sdk/c/f;->a(Ljava/io/InputStream;Ljava/util/Map;)Ljava/lang/String;

    new-instance v6, Lcom/goldcoast/sdk/a/a;

    invoke-direct {v6, v1}, Lcom/goldcoast/sdk/a/a;-><init>(Ljava/util/Map;)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_60} :catch_62

    move-object v3, v6

    goto :goto_66

    :catch_62
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_66
    invoke-virtual {v0, v3}, Lcom/goldcoast/sdk/a/b;->a(Lcom/goldcoast/sdk/a/a;)V

    invoke-virtual {v0, v5}, Lcom/goldcoast/sdk/a/b;->a(Lcom/goldcoast/sdk/a/e;)V

    invoke-virtual {v0, v4}, Lcom/goldcoast/sdk/a/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/goldcoast/sdk/a/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/goldcoast/sdk/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/goldcoast/sdk/c/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/goldcoast/sdk/c/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/goldcoast/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->g(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/a/b;->f(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/goldcoast/sdk/c/d;
    .registers 1

    sput-object p0, Lcom/goldcoast/sdk/c/d;->b:Landroid/content/Context;

    sget-object p0, Lcom/goldcoast/sdk/c/d;->a:Lcom/goldcoast/sdk/c/d;

    if-nez p0, :cond_d

    new-instance p0, Lcom/goldcoast/sdk/c/d;

    invoke-direct {p0}, Lcom/goldcoast/sdk/c/d;-><init>()V

    sput-object p0, Lcom/goldcoast/sdk/c/d;->a:Lcom/goldcoast/sdk/c/d;

    :cond_d
    sget-object p0, Lcom/goldcoast/sdk/c/d;->a:Lcom/goldcoast/sdk/c/d;

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    const-string v0, "0"

    :try_start_2
    sget-object v1, Lcom/goldcoast/sdk/c/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-object v0, v1

    return-object v0

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static c()Lcom/goldcoast/sdk/a/e;
    .registers 26

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ro.product.brand"

    const-string v2, "ro.product.name"

    const-string v3, "ro.product.model"

    const-string v4, "ro.build.fingerprint"

    const-string v5, "ro.build.version.sdk"

    const-string v6, "ro.build.version.release"

    const-string v7, "ro.build.date"

    const-string v8, "ro.build.date.utc"

    const-string v9, "ro.boot.cpuid"

    const-string v10, "ro.btconfig.vendor"

    const-string v11, "persist.sys.timezone"

    const-string v12, "persist.sys.country"

    const-string v13, "persist.sys.language"

    const-string v14, "persist.sys.dalvik.vm.lib"

    const-string v15, "ro.build.description"

    const-string v16, "ro.runtime.firstboot"

    const-string v17, "ro.serialno"

    const-string v18, "ro.hardware"

    const-string v19, "ro.product.board"

    const-string v20, "ro.product.locale.language"

    const-string v21, "ro.product.locale.region"

    const-string v22, "ro.product.cpu.abi"

    const-string v23, "ro.board.platform"

    const-string v24, "ro.build.selinux"

    const-string v25, "ro.build.selinux.enforce"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_3c
    const/16 v3, 0x19

    if-ge v2, v3, :cond_4a

    aget-object v3, v1, v2

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4a
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/goldcoast/sdk/c/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_70
    new-instance v1, Lcom/goldcoast/sdk/a/e;

    invoke-direct {v1, v0}, Lcom/goldcoast/sdk/a/e;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method private static d()Ljava/lang/String;
    .registers 3

    const-string v0, "0"

    :try_start_2
    sget-object v1, Lcom/goldcoast/sdk/c/d;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v1

    return-object v0

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .registers 3

    const-string v0, "0"

    :try_start_2
    sget-object v1, Lcom/goldcoast/sdk/c/d;->b:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_16

    move-object v0, v1

    return-object v0

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
