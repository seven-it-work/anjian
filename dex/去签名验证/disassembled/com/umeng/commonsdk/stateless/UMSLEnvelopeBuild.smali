.class public Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "UMSLEnvelopeBuild"

.field private static cacheSystemheader:Ljava/lang/String;

.field private static isEncryptEnabled:Z

.field public static mContext:Landroid/content/Context;

.field public static module:Ljava/lang/String;


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

.method private declared-synchronized constructEnvelope(Landroid/content/Context;[B)Lcom/umeng/commonsdk/stateless/c;
    .registers 10

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    const-string v1, "slcodex"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "walle"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[stateless] build envelope, codexStr is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_88

    :try_start_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_30} :catch_32
    .catchall {:try_start_22 .. :try_end_30} :catchall_88

    move v0, v1

    goto :goto_36

    :catch_32
    move-exception v1

    :try_start_33
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_36
    :goto_36
    if-nez v0, :cond_4c

    const-string v0, "walle"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "[stateless] build envelope, codexValue is 0"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_47
    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/stateless/c;->a(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/stateless/c;

    move-result-object p1

    goto :goto_86

    :cond_4c
    if-ne v0, v3, :cond_62

    const-string v0, "walle"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "[stateless] build envelope, codexValue is 1"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_5d
    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/stateless/c;->b(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/stateless/c;

    move-result-object p1

    goto :goto_86

    :cond_62
    sget-boolean v0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->isEncryptEnabled:Z

    if-eqz v0, :cond_76

    const-string v0, "walle"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "[stateless] build envelope, isEncryptEnabled is true"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    :cond_76
    const-string v0, "walle"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "[stateless] build envelope, isEncryptEnabled is false"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_85
    .catchall {:try_start_33 .. :try_end_85} :catchall_88

    goto :goto_47

    :goto_86
    monitor-exit p0

    return-object p1

    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized makeErrorResult(ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    monitor-enter p0

    if-eqz p2, :cond_d

    :try_start_3
    const-string v0, "exception"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_19

    :catch_b
    :goto_b
    monitor-exit p0

    return-object p2

    :cond_d
    :try_start_d
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_9

    :try_start_12
    const-string v0, "exception"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_9

    :catch_17
    monitor-exit p0

    return-object p2

    :goto_19
    monitor-exit p0

    throw p1
.end method

.method public static setEncryptEnabled(Z)V
    .registers 1

    sput-boolean p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->isEncryptEnabled:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized buildSLBaseHeader(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "walle"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[stateless] begin build hader, thread is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_269

    const/4 v0, 0x0

    if-nez p1, :cond_23

    monitor-exit p0

    return-object v0

    :cond_23
    :try_start_23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_269

    :try_start_27
    sget-object v2, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->cacheSystemheader:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2d} :catch_248
    .catchall {:try_start_27 .. :try_end_2d} :catchall_269

    if-nez v2, :cond_3b

    :try_start_2f
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->cacheSystemheader:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_36} :catch_248
    .catchall {:try_start_2f .. :try_end_36} :catchall_269

    goto/16 :goto_1cf

    :catch_38
    move-object v2, v0

    goto/16 :goto_1cf

    :cond_3b
    :try_start_3b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_signature"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "app_sig_sha1"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppSHA1Key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "app_sig_sha"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppHashKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "app_version"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version_code"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "idmd5"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceIdUmengMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cpu"

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getCPU()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMCCMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_93

    const-string v5, "mccmnc"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9a

    :cond_93
    const-string v3, "mccmnc"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_9a
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSubOSName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a9

    const-string v5, "sub_os_name"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a9
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSubOSVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b8

    const-string v5, "sub_os_version"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b8
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c7

    const-string v5, "device_type"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c7
    const-string v3, "package_name"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk_type"

    const-string v5, "Android"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_id"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_board"

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_brand"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_manutime"

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "device_manufacturer"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_manuid"

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_name"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os"

    const-string v5, "Android"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os_version"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getResolutionArray(Landroid/content/Context;)[I

    move-result-object v3

    if-eqz v3, :cond_142

    const-string v5, "resolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v3, v4

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_142
    const-string v3, "mc"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "timezone"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getTimeZone(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const-string v5, "country"

    aget-object v6, v3, v4

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "language"

    aget-object v3, v3, v1

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "carrier"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "display_name"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const-string v5, "Wi-Fi"

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18e

    const-string v5, "access"

    const-string v6, "wifi"

    :goto_18a
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a2

    :cond_18e
    const-string v5, "2G/3G"

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    const-string v5, "access"

    const-string v6, "2G/3G"

    goto :goto_18a

    :cond_19d
    const-string v5, "access"

    const-string v6, "unknow"

    goto :goto_18a

    :goto_1a2
    const-string v5, ""

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b3

    const-string v5, "access_subtype"

    aget-object v3, v3, v1

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b3
    const-string v3, "com_ver"

    const-string v5, "1.3.2"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->module:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c9

    const-string v3, "module"

    sget-object v5, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->module:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c9
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->cacheSystemheader:Ljava/lang/String;
    :try_end_1cf
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_1cf} :catch_248
    .catchall {:try_start_3b .. :try_end_1cf} :catchall_269

    :goto_1cf
    if-nez v2, :cond_1d3

    monitor-exit p0

    return-object v0

    :cond_1d3
    :try_start_1d3
    const-string v3, "channel"

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appkey"

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e5
    .catch Ljava/lang/Throwable; {:try_start_1d3 .. :try_end_1e5} :catch_248
    .catchall {:try_start_1d3 .. :try_end_1e5} :catchall_269

    :try_start_1e5
    new-instance v3, Lcom/umeng/commonsdk/proguard/q;

    invoke-direct {v3, p1}, Lcom/umeng/commonsdk/proguard/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/q;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fd

    const-string v5, "umtt"

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1fd} :catch_1fd
    .catch Ljava/lang/Throwable; {:try_start_1e5 .. :try_end_1fd} :catch_248
    .catchall {:try_start_1e5 .. :try_end_1fd} :catchall_269

    :catch_1fd
    :cond_1fd
    :try_start_1fd
    const-string v3, "umid"

    invoke-static {p1, v3, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20e

    const-string v5, "umid"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_20e} :catch_20e
    .catch Ljava/lang/Throwable; {:try_start_1fd .. :try_end_20e} :catch_248
    .catchall {:try_start_1fd .. :try_end_20e} :catchall_269

    :catch_20e
    :cond_20e
    :try_start_20e
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_24c

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "walle"

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[stateless] build header end , header is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", thread is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "header"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_246
    .catch Ljava/lang/Throwable; {:try_start_20e .. :try_end_246} :catch_248
    .catchall {:try_start_20e .. :try_end_246} :catchall_269

    monitor-exit p0

    return-object v2

    :catch_248
    move-exception v2

    :try_start_249
    invoke-static {p1, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_24c
    const-string p1, "walle"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[stateless] build header end , header is null !!! thread is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_267
    .catchall {:try_start_249 .. :try_end_267} :catchall_269

    monitor-exit p0

    return-object v0

    :catchall_269
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized buildSLEnvelope(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 14

    monitor-enter p0

    :try_start_1
    const-string v0, "walle"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[stateless] build envelope, heade is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "walle"

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[stateless] build envelope, body is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "walle"

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[stateless] build envelope, thread is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_247

    const/16 v0, 0x6e

    const/4 v2, 0x0

    if-eqz p1, :cond_236

    if-eqz p2, :cond_236

    if-eqz p3, :cond_236

    if-nez p4, :cond_61

    goto/16 :goto_236

    :cond_61
    :try_start_61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_65} :catch_20f
    .catchall {:try_start_61 .. :try_end_65} :catchall_247

    if-eqz p2, :cond_92

    if-eqz p3, :cond_92

    :try_start_69
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :catch_6d
    :cond_6d
    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6d

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_6d

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6d

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_85} :catch_8f
    .catchall {:try_start_69 .. :try_end_85} :catchall_247

    if-eqz v6, :cond_6d

    :try_start_87
    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8e} :catch_8f
    .catchall {:try_start_87 .. :try_end_8e} :catchall_247

    goto :goto_6d

    :catch_8f
    move-exception p1

    goto/16 :goto_212

    :cond_92
    if-eqz p2, :cond_c4

    :try_start_94
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/e;

    move-result-object p1

    if-eqz p1, :cond_c4

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->b()Lcom/umeng/commonsdk/statistics/proto/c;

    move-result-object p1

    new-instance p3, Lcom/umeng/commonsdk/proguard/aj;

    invoke-direct {p3}, Lcom/umeng/commonsdk/proguard/aj;-><init>()V

    invoke-virtual {p3, p1}, Lcom/umeng/commonsdk/proguard/aj;->a(Lcom/umeng/commonsdk/proguard/aa;)[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c4

    const-string p3, "header"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v5, "id_tracking"

    invoke-virtual {p3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "header"

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c4} :catch_c4
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_c4} :catch_8f
    .catchall {:try_start_94 .. :try_end_c4} :catchall_247

    :catch_c4
    :cond_c4
    if-eqz p2, :cond_100

    :try_start_c6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    int-to-long v5, p1

    sget-wide v7, Lcom/umeng/commonsdk/stateless/a;->a:J

    invoke-static {v5, v6, v7, v8}, Lcom/umeng/commonsdk/stateless/f;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_100

    const-string p1, "walle"

    new-array p3, v1, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v5, "[stateless] build envelope, json overstep!!!! size is "

    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-static {p1, p3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x71

    invoke-direct {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->makeErrorResult(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_fe
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_fe} :catch_8f
    .catchall {:try_start_c6 .. :try_end_fe} :catchall_247

    monitor-exit p0

    return-object p1

    :cond_100
    :try_start_100
    const-string p1, "walle"

    new-array p3, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[stateless] build envelope, json size is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v4

    invoke-static {p1, p3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_143

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->constructEnvelope(Landroid/content/Context;[B)Lcom/umeng/commonsdk/stateless/c;

    move-result-object p1

    if-nez p1, :cond_144

    const-string p1, "walle"

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "[stateless] build envelope, envelope is null !!!!"

    aput-object p4, p3, v4

    invoke-static {p1, p3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x6f

    invoke-direct {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->makeErrorResult(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_141
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_141} :catch_8f
    .catchall {:try_start_100 .. :try_end_141} :catchall_247

    monitor-exit p0

    return-object p1

    :cond_143
    move-object p1, v2

    :cond_144
    if-eqz p1, :cond_178

    :try_start_146
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/c;->b()[B

    move-result-object p3

    array-length p3, p3

    int-to-long v5, p3

    sget-wide v7, Lcom/umeng/commonsdk/stateless/a;->b:J

    invoke-static {v5, v6, v7, v8}, Lcom/umeng/commonsdk/stateless/f;->a(JJ)Z

    move-result p3

    if-eqz p3, :cond_178

    const-string p3, "walle"

    new-array p4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[stateless] build envelope, envelope overstep!!!! size is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/c;->b()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v4

    invoke-static {p3, p4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x72

    invoke-direct {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->makeErrorResult(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_176
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_176} :catch_8f
    .catchall {:try_start_146 .. :try_end_176} :catchall_247

    monitor-exit p0

    return-object p1

    :cond_178
    :try_start_178
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    invoke-static {p4, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/c;->b()[B

    move-result-object p1

    invoke-static {v3, p3, p4, p1}, Lcom/umeng/commonsdk/stateless/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p1

    if-nez p1, :cond_1bd

    const-string p1, "walle"

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "[stateless] build envelope, save fail ----->>>>>"

    aput-object p4, p3, v4

    invoke-static {p1, p3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x65

    invoke-direct {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->makeErrorResult(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1bb
    .catch Ljava/lang/Throwable; {:try_start_178 .. :try_end_1bb} :catch_8f
    .catchall {:try_start_178 .. :try_end_1bb} :catchall_247

    monitor-exit p0

    return-object p1

    :cond_1bd
    :try_start_1bd
    const-string p1, "walle"

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "[stateless] build envelope, save ok ----->>>>>"

    aput-object p4, p3, v4

    invoke-static {p1, p3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "walle"

    new-array p3, v1, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v5, "[stateless] envelope file size is "

    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-static {p1, p3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/umeng/commonsdk/stateless/d;

    invoke-direct {p1, v3}, Lcom/umeng/commonsdk/stateless/d;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x111

    invoke-static {p1}, Lcom/umeng/commonsdk/stateless/d;->b(I)V

    const-string p1, "walle"

    new-array p3, v1, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v5, "[stateless] build envelope end, thread is "

    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-static {p1, p3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20d
    .catch Ljava/lang/Throwable; {:try_start_1bd .. :try_end_20d} :catch_8f
    .catchall {:try_start_1bd .. :try_end_20d} :catchall_247

    monitor-exit p0

    return-object p2

    :catch_20f
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    :goto_212
    :try_start_212
    invoke-static {v3, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-string p1, "walle"

    new-array p2, v1, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "build envelope end, thread is "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->makeErrorResult(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_234
    .catchall {:try_start_212 .. :try_end_234} :catchall_247

    monitor-exit p0

    return-object p1

    :cond_236
    :goto_236
    :try_start_236
    const-string p1, "walle"

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "[stateless] build envelope, context is null or header is null or body is null"

    aput-object p3, p2, v4

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->makeErrorResult(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_245
    .catchall {:try_start_236 .. :try_end_245} :catchall_247

    monitor-exit p0

    return-object p1

    :catchall_247
    move-exception p1

    monitor-exit p0

    throw p1
.end method
