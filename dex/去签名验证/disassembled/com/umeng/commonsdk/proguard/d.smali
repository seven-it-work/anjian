.class public Lcom/umeng/commonsdk/proguard/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "f"

    invoke-static {}, Lcom/umeng/commonsdk/proguard/j;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "t"

    invoke-static {}, Lcom/umeng/commonsdk/proguard/j;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_20

    :catch_20
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    const-string v0, "walle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[internal] begin by stateful--->>>"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_2b

    :try_start_f
    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x8001

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/b;->a()Lcom/umeng/commonsdk/proguard/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception v0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_2b
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_4a

    if-nez p1, :cond_13

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_13
    const-string v0, "gp"

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "to"

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "mo"

    const-string v1, "android.hardware.telephony"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "ca"

    const-string v1, "android.hardware.camera"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "fl"

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/umeng/commonsdk/proguard/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_4a
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p2, :cond_f

    const/4 p2, 0x1

    :try_start_b
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void

    :cond_f
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return-void
.end method

.method public static b()Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "a_bl"

    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1b

    const-string v1, "a_rv"

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    const-string v1, "a_fp"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_hw"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_host"

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_57

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_3d
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_4c

    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_4c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_57

    const-string v4, "a_s32"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_7b

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_61
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_70

    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_70
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_7b

    const-string v4, "a_s64"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_9e

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_84
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_93

    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    :cond_93
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9e

    const-string v2, "a_sa"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9e
    const-string v1, "a_ta"

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_uk"

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_user"

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_cpu1"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_cpu2"

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_ra"

    sget-object v2, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_e3

    const-string v1, "a_bos"

    sget-object v2, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_pre"

    sget v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "a_sp"

    sget-object v2, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e3
    const-string v1, "a_cn"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_intl"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f1} :catch_f1

    :catch_f1
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 11

    if-eqz p0, :cond_8e

    :try_start_2
    const-string v0, "walle"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[internal] begin by not stateful--->>>"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_87

    :try_start_13
    new-instance p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;

    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;-><init>()V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLBaseHeader(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_37

    const-string v3, "header"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_24} :catch_85

    if-eqz v3, :cond_37

    :try_start_26
    const-string v3, "header"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_37

    const-string v5, "i_sdk_v"

    const-string v6, "1.2.0"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_37} :catch_37
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_37} :catch_85

    :catch_37
    :cond_37
    :try_start_37
    const-string v3, "walle"

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[internal] header is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/d;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "walle"

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[internal] body is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "umpx_internal"

    invoke-virtual {p0, v0, v2, v3, v5}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLEnvelope(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "walle"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_84} :catch_85

    return-void

    :catch_85
    move-exception p0

    goto :goto_8b

    :catch_87
    move-exception v0

    move-object v9, v0

    move-object v0, p0

    move-object p0, v9

    :goto_8b
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_8e
    return-void
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p0, :cond_51

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_18

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_18
    const-string p0, "_gdf_r"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const-string p0, "_gdf_r"

    const-string v1, "_gdf_r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2b
    const-string p0, "_thm_z"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const-string p0, "_thm_z"

    const-string v1, "_thm_z"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e
    const-string p0, "_dsk_s"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_51

    const-string p0, "_dsk_s"

    const-string v1, "_dsk_s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    return-void
.end method

.method public static c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_58

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_10
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->o(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_26

    const-string v3, "run_server"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v2

    :try_start_23
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_58

    :cond_26
    :goto_26
    :try_start_26
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "imsi"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v2

    :try_start_37
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_58

    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v3, "meid"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception v2

    :try_start_4b
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_58

    :cond_4e
    :goto_4e
    :try_start_4e
    const-string v2, "internal"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_53} :catch_54
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_58

    return-object v0

    :catch_54
    move-exception v1

    :try_start_55
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_58

    :catch_58
    :cond_58
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_1aa

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_10
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->o(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_26

    const-string v3, "rs"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    :try_start_26
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->p(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3c

    const-string v3, "bstn"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->q(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_52

    const-string v3, "by"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    :try_start_52
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_5a
    :try_start_5a
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/d;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_62
    :try_start_62
    invoke-static {}, Lcom/umeng/commonsdk/proguard/d;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_78

    const-string v3, "sd"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    :try_start_78
    invoke-static {}, Lcom/umeng/commonsdk/proguard/d;->b()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_8e

    const-string v3, "build"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    :try_start_8e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->f(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_a4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9d} :catch_bb

    if-lez v4, :cond_a4

    :try_start_9f
    const-string v4, "a_sr"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_9f .. :try_end_a4} :catch_a4
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a4} :catch_bb

    :catch_a4
    :cond_a4
    :try_start_a4
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/r;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_b5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ae} :catch_bb

    if-lez v4, :cond_b5

    :try_start_b0
    const-string v4, "stat"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_b0 .. :try_end_b5} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_bb

    :catch_b5
    :cond_b5
    :try_start_b5
    const-string v3, "sr"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ba} :catch_bb

    goto :goto_bf

    :catch_bb
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_bf
    :try_start_bf
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->g(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_d5

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_d5

    const-string v3, "scr"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_d0} :catch_d1

    goto :goto_d5

    :catch_d1
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_d5
    :goto_d5
    :try_start_d5
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->h(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_eb

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_eb

    const-string v3, "sinfo"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e6} :catch_e7

    goto :goto_eb

    :catch_e7
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_eb
    :goto_eb
    :try_start_eb
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->e(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_101

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_fa} :catch_118

    if-lez v4, :cond_101

    :try_start_fc
    const-string v4, "wl"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_101
    .catch Lorg/json/JSONException; {:try_start_fc .. :try_end_101} :catch_101
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_101} :catch_118

    :catch_101
    :cond_101
    :try_start_101
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->i(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_112

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_10b} :catch_118

    if-lez v4, :cond_112

    :try_start_10d
    const-string v4, "a_wls"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_112
    .catch Lorg/json/JSONException; {:try_start_10d .. :try_end_112} :catch_112
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_112} :catch_118

    :catch_112
    :cond_112
    :try_start_112
    const-string v3, "winfo"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_117} :catch_118

    goto :goto_11c

    :catch_118
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_11c
    :try_start_11c
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->j(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_132

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_132

    const-string v3, "input"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_12d} :catch_12e

    goto :goto_132

    :catch_12e
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_132
    :goto_132
    :try_start_132
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->o(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_148

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_148

    const-string v3, "bt"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_143} :catch_144

    goto :goto_148

    :catch_144
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_148
    :goto_148
    :try_start_148
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->k(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_15e

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_15e

    const-string v3, "cam"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_159} :catch_15a

    goto :goto_15e

    :catch_15a
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_15e
    :goto_15e
    :try_start_15e
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->l(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_174

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_174

    const-string v3, "appls"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_16f} :catch_170

    goto :goto_174

    :catch_170
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_174
    :goto_174
    :try_start_174
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->m(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_18a

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_18a

    const-string v3, "mem"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_185} :catch_186

    goto :goto_18a

    :catch_186
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_18a
    :goto_18a
    :try_start_18a
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/d;->n(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1a0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1a0

    const-string v3, "lbs"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_19b} :catch_19c

    goto :goto_1a0

    :catch_19c
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1a0
    :goto_1a0
    :try_start_1a0
    const-string v2, "inner"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a5
    .catch Lorg/json/JSONException; {:try_start_1a0 .. :try_end_1a5} :catch_1a6

    return-object v0

    :catch_1a6
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1aa
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/e;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a()V

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->b()Lcom/umeng/commonsdk/statistics/proto/c;

    move-result-object v1

    new-instance v2, Lcom/umeng/commonsdk/proguard/aj;

    invoke-direct {v2}, Lcom/umeng/commonsdk/proguard/aj;-><init>()V

    invoke-virtual {v2, v1}, Lcom/umeng/commonsdk/proguard/aj;->a(Lcom/umeng/commonsdk/proguard/aa;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_24

    if-nez v2, :cond_28

    move-object v0, v1

    return-object v0

    :catch_24
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_28
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->g(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_3d

    :try_start_7
    const-string v1, "a_st_h"

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "a_nav_h"

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_3d

    const-string v2, "a_den"

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "a_dpi"

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_39

    return-object v0

    :catch_39
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3d
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_b2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_f
    const-string v2, "a_fit"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/j;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "a_alut"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/j;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "a_c"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/j;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "a_uid"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/commonsdk/proguard/j;->a()Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "a_root"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_46

    :cond_40
    const-string v1, "a_root"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_46
    const-string v1, "a_ua"

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tf"

    invoke-static {}, Lcom/umeng/commonsdk/proguard/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s_fs"

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->a(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "a_meid"

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_imsi"

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "st"

    invoke-static {}, Lcom/umeng/commonsdk/proguard/j;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_85} :catch_ae

    if-nez v2, :cond_8c

    :try_start_87
    const-string v2, "a_iccid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8c} :catch_8c

    :catch_8c
    :cond_8c
    :try_start_8c
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_94} :catch_ae

    if-nez v2, :cond_9b

    :try_start_96
    const-string v2, "a_simei"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9b} :catch_9b

    :catch_9b
    :cond_9b
    :try_start_9b
    const-string v1, "hn"

    invoke-static {}, Lcom/umeng/commonsdk/proguard/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ad} :catch_ae

    return-object v0

    :catch_ae
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_b2
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_b2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    :try_start_27
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a_bssid"

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "a_ssid"

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "a_cap"

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "a_fcy"

    iget v5, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_9e

    const-string v4, "a_c0"

    iget v5, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "a_c1"

    iget v5, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "a_cw"

    iget v5, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->is80211mcResponder()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_7a

    const-string v4, "a_is80211"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7f

    :cond_7a
    const-string v4, "a_is80211"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_7f
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v4

    if-eqz v4, :cond_8b

    const-string v4, "a_isppn"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_90

    :cond_8b
    const-string v4, "a_isppn"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_90
    const-string v4, "a_ofn"

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "a_vn"

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9e
    const-string v4, "a_dc"

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->describeContents()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_aa} :catch_ac

    goto/16 :goto_1b

    :catch_ac
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    :cond_b2
    return-object v0
.end method

.method public static j(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    :try_start_21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "a_la"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "a_pn"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_48} :catch_49

    goto :goto_15

    :catch_49
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_4e
    return-object v0
.end method

.method public static k(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/r;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/proguard/r$a;

    if-eqz v2, :cond_1b

    :try_start_29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a_w"

    iget v5, v2, Lcom/umeng/commonsdk/proguard/r$a;->a:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "a_h"

    iget v2, v2, Lcom/umeng/commonsdk/proguard/r$a;->b:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_48} :catch_49

    goto :goto_1b

    :catch_49
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_4e
    return-object v0
.end method

.method public static l(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->p(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/proguard/j$a;

    if-eqz v2, :cond_1b

    :try_start_29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a_pn"

    iget-object v5, v2, Lcom/umeng/commonsdk/proguard/j$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "a_la"

    iget-object v2, v2, Lcom/umeng/commonsdk/proguard/j$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_48} :catch_49

    goto :goto_1b

    :catch_49
    move-exception v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_4e
    return-object v0
.end method

.method public static m(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->q(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    if-eqz v1, :cond_33

    :try_start_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1e

    const-string v2, "t"

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1e
    const-string v2, "f"

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_33
    return-object v0
.end method

.method private static n(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/h;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static o(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_c2

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_c2

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c2

    const/4 v2, 0x0

    :goto_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_90

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v3, :cond_8d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_51} :catch_be

    if-eqz v3, :cond_8d

    :try_start_53
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sn"

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pn"

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v0, :cond_8a

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v0, v4

    :cond_8a
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_8d} :catch_8d
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_8d} :catch_be

    :catch_8d
    :cond_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_90
    if-eqz v0, :cond_c2

    :try_start_92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_97} :catch_be

    :try_start_97
    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ls"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_a5} :catch_a5
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a5} :catch_be

    :catch_a5
    :try_start_a5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_aa} :catch_be

    :try_start_aa
    const-string v3, "sers"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_aa .. :try_end_af} :catch_af
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_af} :catch_be

    :catch_af
    :try_start_af
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b4} :catch_be

    :try_start_b4
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b7} :catch_b9

    move-object v0, v1

    return-object v0

    :catch_b9
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_bf

    :catch_be
    move-exception v1

    :goto_bf
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_c2
    return-object v0
.end method

.method private static p(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1d

    :try_start_b
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "sig"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    return-object v0
.end method

.method private static q(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    :try_start_f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-object v0
.end method

.method private static r(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_92

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_21

    :try_start_16
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_21

    :try_start_1b
    const-string v3, "bluetoothmac"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_20

    :catch_20
    move-object v3, v2

    :catch_21
    :cond_21
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    if-nez v3, :cond_33

    :try_start_2d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v2

    :cond_33
    const-string v2, "iccid"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    if-nez v3, :cond_4a

    :try_start_44
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v2

    :cond_4a
    const-string v2, "secondaryimei"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_4f

    :catch_4f
    :cond_4f
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_71

    :try_start_55
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    const-string v4, "signalscale"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_64
    if-nez v3, :cond_6c

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v2

    :cond_6c
    const-string v2, "basestation"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_71} :catch_71

    :catch_71
    :cond_71
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    if-nez v3, :cond_83

    :try_start_7d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v1

    :cond_83
    const-string v1, "battery"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8d} :catch_8d

    :catch_8d
    :cond_8d
    if-eqz v3, :cond_92

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_92
    return-object v0
.end method
