.class public Lcom/umeng/commonsdk/statistics/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "EnvelopeManager"

.field private static c:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

.field private static d:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

.field private static e:Ljava/lang/String;

.field private static g:Z


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/c;->f:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/idtracking/Envelope;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    if-eqz p1, :cond_43

    if-eqz p2, :cond_43

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_43

    :cond_b
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&&"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "_envelope.log"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->toBinary()[B

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;Ljava/lang/String;[B)I

    move-result p1

    return p1

    :cond_43
    :goto_43
    const/16 p1, 0x65

    return p1
.end method

.method public static a(Landroid/content/Context;)J
    .registers 7

    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_ENTITY_RAW_LENGTH_MAX:J

    sget-wide v2, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_EXTRA_LENGTH:J

    sub-long v4, v0, v2

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/c;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    int-to-long v0, p0

    sget-boolean p0, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz p0, :cond_3d

    const-string p0, "EnvelopeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "headerLen size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const/4 p0, 0x0

    sub-long v2, v4, v0

    goto :goto_42

    :cond_41
    move-wide v2, v4

    :goto_42
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz p0, :cond_59

    const-string p0, "EnvelopeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "free size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-wide v2
.end method

.method private a(Landroid/content/Context;[B)Lcom/umeng/commonsdk/statistics/idtracking/Envelope;
    .registers 6

    const-string v0, "codex"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_16} :catch_18

    move v1, v0

    goto :goto_1c

    :catch_18
    move-exception v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    if-eqz v1, :cond_2f

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2a

    :goto_21
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genEncryptEnvelope(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/statistics/idtracking/Envelope;

    move-result-object p1

    return-object p1

    :cond_2a
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/c;->g:Z

    if-eqz v0, :cond_2f

    goto :goto_21

    :cond_2f
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genEnvelope(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/statistics/idtracking/Envelope;

    move-result-object p1

    return-object p1
.end method

.method private a(ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    if-eqz p2, :cond_8

    :try_start_2
    const-string v0, "exception"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_7

    :catch_7
    return-object p2

    :cond_8
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v0, "exception"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_12

    :catch_12
    return-object p2
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    if-eqz p1, :cond_60

    if-eqz p2, :cond_60

    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_60

    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_60

    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :catch_22
    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_22

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    :try_start_3c
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vertical_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_22

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/umeng/commonsdk/statistics/c;->f:I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5f} :catch_22

    goto :goto_22

    :cond_60
    return-object p1
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/umeng/commonsdk/statistics/c;->g:Z

    return-void
.end method

.method private static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/umeng/commonsdk/statistics/c;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_25f

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    sget-object v4, Lcom/umeng/commonsdk/statistics/c;->e:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_25f

    goto/16 :goto_1af

    :catch_17
    move-object v2, v0

    goto/16 :goto_1af

    :cond_1a
    :try_start_1a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "app_signature"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_sig_sha1"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppSHA1Key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_sig_sha"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppHashKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_version"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "version_code"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "idmd5"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceIdUmengMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cpu"

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getCPU()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMCCMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_72

    const-string v5, "mccmnc"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_79

    :cond_72
    const-string v4, "mccmnc"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_79
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSubOSName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_88

    const-string v5, "sub_os_name"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_88
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSubOSVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_97

    const-string v5, "sub_os_version"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_97
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a6

    const-string v5, "device_type"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a6
    const-string v4, "package_name"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdk_type"

    const-string v5, "Android"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "device_id"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "device_model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "device_board"

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "device_brand"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "device_manutime"

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "device_manufacturer"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "device_manuid"

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "device_name"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "os"

    const-string v5, "Android"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "os_version"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getResolutionArray(Landroid/content/Context;)[I

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_122

    const-string v6, "resolution"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_122
    const-string v4, "mc"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "timezone"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getTimeZone(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "country"

    aget-object v7, v4, v3

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "language"

    aget-object v4, v4, v5

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "carrier"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "display_name"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "Wi-Fi"

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16e

    const-string v6, "access"

    const-string v7, "wifi"

    :goto_16a
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_182

    :cond_16e
    const-string v6, "2G/3G"

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17d

    const-string v6, "access"

    const-string v7, "2G/3G"

    goto :goto_16a

    :cond_17d
    const-string v6, "access"

    const-string v7, "unknow"

    goto :goto_16a

    :goto_182
    const-string v6, ""

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_193

    const-string v6, "access_subtype"

    aget-object v4, v4, v5

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_193
    const-string v4, "com_ver"

    const-string v5, "1.3.2"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcom/umeng/commonsdk/statistics/c;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a9

    const-string v4, "module"

    sget-object v5, Lcom/umeng/commonsdk/statistics/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a9
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/umeng/commonsdk/statistics/c;->e:Ljava/lang/String;
    :try_end_1af
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1af} :catch_25f

    :goto_1af
    if-nez v2, :cond_1b2

    return-object v0

    :cond_1b2
    :try_start_1b2
    const-string v4, "successful_requests"

    const-string v5, "successful_request"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "failed_requests"

    const-string v5, "failed_requests"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "req_time"

    const-string v5, "last_request_spent_ms"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1d3} :catch_1d3
    .catch Ljava/lang/Throwable; {:try_start_1b2 .. :try_end_1d3} :catch_25f

    :catch_1d3
    :try_start_1d3
    const-string v1, "channel"

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appkey"

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e5
    .catch Ljava/lang/Throwable; {:try_start_1d3 .. :try_end_1e5} :catch_25f

    :try_start_1e5
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f9

    const-string v4, "devicetoken"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1f4} :catch_1f5
    .catch Ljava/lang/Throwable; {:try_start_1e5 .. :try_end_1f4} :catch_25f

    goto :goto_1f9

    :catch_1f5
    move-exception v1

    :try_start_1f6
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1f9
    .catch Ljava/lang/Throwable; {:try_start_1f6 .. :try_end_1f9} :catch_25f

    :cond_1f9
    :goto_1f9
    :try_start_1f9
    new-instance v1, Lcom/umeng/commonsdk/proguard/q;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/proguard/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/q;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_216

    const-string v4, "umtt"

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_211} :catch_212
    .catch Ljava/lang/Throwable; {:try_start_1f9 .. :try_end_211} :catch_25f

    goto :goto_216

    :catch_212
    move-exception v1

    :try_start_213
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_216
    .catch Ljava/lang/Throwable; {:try_start_213 .. :try_end_216} :catch_25f

    :cond_216
    :goto_216
    :try_start_216
    const-string v1, "umid"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22c

    const-string v4, "umid"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_227} :catch_228
    .catch Ljava/lang/Throwable; {:try_start_216 .. :try_end_227} :catch_25f

    goto :goto_22c

    :catch_228
    move-exception v1

    :try_start_229
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_22c
    .catch Ljava/lang/Throwable; {:try_start_229 .. :try_end_22c} :catch_25f

    :cond_22c
    :goto_22c
    :try_start_22c
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a()Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object v1

    if-eqz v1, :cond_24d

    new-instance v4, Lcom/umeng/commonsdk/proguard/aj;

    invoke-direct {v4}, Lcom/umeng/commonsdk/proguard/aj;-><init>()V

    invoke-virtual {v4, v1}, Lcom/umeng/commonsdk/proguard/aj;->a(Lcom/umeng/commonsdk/proguard/aa;)[B

    move-result-object v1

    const-string v4, "imprint"

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_248} :catch_249
    .catch Ljava/lang/Throwable; {:try_start_22c .. :try_end_248} :catch_25f

    goto :goto_24d

    :catch_249
    move-exception v1

    :try_start_24a
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_24d
    :goto_24d
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_263

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "header"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_25e
    .catch Ljava/lang/Throwable; {:try_start_24a .. :try_end_25e} :catch_25f

    return-object v1

    :catch_25f
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_263
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget-boolean v5, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz v5, :cond_48

    if-eqz v3, :cond_48

    if-eqz v4, :cond_48

    const-string v5, "EnvelopeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "headerJSONObject size is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EnvelopeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bodyJSONObject size is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const/16 v5, 0x6e

    const/4 v6, 0x0

    if-eqz v2, :cond_371

    if-nez v4, :cond_51

    goto/16 :goto_371

    :cond_51
    :try_start_51
    invoke-static/range {p1 .. p1}, Lcom/umeng/commonsdk/statistics/c;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_5d

    if-eqz v3, :cond_5d

    invoke-direct {v1, v7, v3}, Lcom/umeng/commonsdk/statistics/c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    :cond_5d
    if-eqz v7, :cond_87

    if-eqz v4, :cond_87

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :catch_65
    :cond_65
    :goto_65
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_87

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_65

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_65

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_65

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_7d} :catch_31c

    if-eqz v10, :cond_65

    :try_start_7f
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_86} :catch_65
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_86} :catch_31c

    goto :goto_65

    :cond_87
    const/4 v8, 0x0

    if-eqz v7, :cond_1ef

    :try_start_8a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v10

    if-lez v10, :cond_1cb

    const-string v10, "push"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c7

    const-string v10, "p"

    const-string v11, "header"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "p_sdk_v"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c7

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c7
    const-string v10, "share"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f9

    const-string v10, "s"

    const-string v11, "header"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "s_sdk_v"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f9
    const-string v10, "analytics"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_136

    const-string v10, "dplus"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10c

    const-string v10, "ad"

    goto :goto_10e

    :cond_10c
    const-string v10, "a"

    :goto_10e
    const-string v11, "header"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "sdk_version"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_136

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_136

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_136
    const-string v10, "dplus"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_199

    const-string v10, "header"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "sdk_version"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "analytics"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17d

    const-string v11, "ad"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ad"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_199

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_199

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_199

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "=="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&="

    :goto_179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_199

    :cond_17d
    const-string v11, "d"

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_199

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_199

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "=="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&="

    goto :goto_179

    :cond_199
    :goto_199
    const-string v10, "inner"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1cb

    const-string v10, "i"

    const-string v11, "header"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "i_sdk_v"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1cb

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1cb

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1cb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1dc

    const/16 v8, 0x65

    invoke-direct {v1, v8, v7}, Lcom/umeng/commonsdk/statistics/c;->a(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    return-object v7

    :cond_1dc
    const-string v10, "&="

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9
    :try_end_1ee
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_1ee} :catch_31c

    goto :goto_1f0

    :cond_1ef
    move-object v9, v6

    :cond_1f0
    :goto_1f0
    if-eqz v7, :cond_222

    :try_start_1f2
    invoke-static/range {p1 .. p1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/e;

    move-result-object v10

    if-eqz v10, :cond_222

    invoke-virtual {v10}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a()V

    invoke-virtual {v10}, Lcom/umeng/commonsdk/statistics/idtracking/e;->b()Lcom/umeng/commonsdk/statistics/proto/c;

    move-result-object v10

    new-instance v11, Lcom/umeng/commonsdk/proguard/aj;

    invoke-direct {v11}, Lcom/umeng/commonsdk/proguard/aj;-><init>()V

    invoke-virtual {v11, v10}, Lcom/umeng/commonsdk/proguard/aj;->a(Lcom/umeng/commonsdk/proguard/aa;)[B

    move-result-object v10

    invoke-static {v10, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_222

    const-string v10, "header"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id_tracking"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "header"

    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_222} :catch_222
    .catch Ljava/lang/Throwable; {:try_start_1f2 .. :try_end_222} :catch_31c

    :catch_222
    :cond_222
    :try_start_222
    sget-object v8, Lcom/umeng/commonsdk/statistics/c;->c:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-nez v8, :cond_234

    invoke-static/range {p1 .. p1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v8

    sput-object v8, Lcom/umeng/commonsdk/statistics/c;->c:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    sget-object v8, Lcom/umeng/commonsdk/statistics/c;->c:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-static {v2, v8}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object v8

    sput-object v8, Lcom/umeng/commonsdk/statistics/c;->d:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    :cond_234
    sget-object v8, Lcom/umeng/commonsdk/statistics/c;->d:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-eqz v8, :cond_27b

    sget-object v8, Lcom/umeng/commonsdk/statistics/c;->d:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v8}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->shouldStartLatency()Z

    move-result v8

    if-eqz v8, :cond_27b

    sget-object v8, Lcom/umeng/commonsdk/statistics/c;->d:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v8}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getDelayTime()J

    move-result-wide v10

    sget-object v8, Lcom/umeng/commonsdk/statistics/c;->d:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v8}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getElapsedTime()J

    move-result-wide v12
    :try_end_24c
    .catch Ljava/lang/Throwable; {:try_start_222 .. :try_end_24c} :catch_31c

    if-eqz v7, :cond_27b

    :try_start_24e
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "interval"

    const-wide/16 v16, 0x3e8

    div-long v12, v12, v16

    invoke-virtual {v14, v15, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v12, "latency"

    invoke-virtual {v14, v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "latent"

    invoke-virtual {v8, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "header"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "control_policy"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "header"

    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27b
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_27b} :catch_27b
    .catch Ljava/lang/Throwable; {:try_start_24e .. :try_end_27b} :catch_31c

    :catch_27b
    :cond_27b
    if-eqz v7, :cond_2b1

    :try_start_27d
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    int-to-long v10, v8

    sget-wide v12, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_ENTITY_RAW_LENGTH_MAX:J

    invoke-static {v10, v11, v12, v13}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->largeThanMaxSize(JJ)Z

    move-result v8

    if-eqz v8, :cond_2b1

    invoke-static/range {p1 .. p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    if-eqz v8, :cond_2aa

    const-string v9, "serial"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v11, "serial"

    add-int/2addr v9, v10

    invoke-interface {v8, v11, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2aa
    const/16 v8, 0x71

    invoke-direct {v1, v8, v7}, Lcom/umeng/commonsdk/statistics/c;->a(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    return-object v7

    :cond_2b1
    if-eqz v7, :cond_2c8

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v1, v2, v8}, Lcom/umeng/commonsdk/statistics/c;->a(Landroid/content/Context;[B)Lcom/umeng/commonsdk/statistics/idtracking/Envelope;

    move-result-object v8

    if-nez v8, :cond_2c9

    const/16 v8, 0x6f

    invoke-direct {v1, v8, v7}, Lcom/umeng/commonsdk/statistics/c;->a(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    return-object v7

    :cond_2c8
    move-object v8, v6

    :cond_2c9
    if-eqz v8, :cond_2e0

    invoke-virtual {v8}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->toBinary()[B

    move-result-object v10

    array-length v10, v10

    int-to-long v10, v10

    sget-wide v12, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_LENGTH_MAX:J

    invoke-static {v10, v11, v12, v13}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->largeThanMaxSize(JJ)Z

    move-result v10

    if-eqz v10, :cond_2e0

    const/16 v8, 0x72

    invoke-direct {v1, v8, v7}, Lcom/umeng/commonsdk/statistics/c;->a(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    return-object v7

    :cond_2e0
    if-eqz v7, :cond_2ef

    const-string v10, "header"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "app_version"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2f0

    :cond_2ef
    move-object v10, v6

    :goto_2f0
    invoke-direct {v1, v2, v8, v9, v10}, Lcom/umeng/commonsdk/statistics/c;->a(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/idtracking/Envelope;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2fb

    invoke-direct {v1, v8, v7}, Lcom/umeng/commonsdk/statistics/c;->a(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    return-object v7

    :cond_2fb
    sget-boolean v8, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz v8, :cond_31b

    const-string v8, "EnvelopeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "constructHeader size is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31b
    .catch Ljava/lang/Throwable; {:try_start_27d .. :try_end_31b} :catch_31c

    :cond_31b
    return-object v7

    :catch_31c
    move-exception v0

    move-object v7, v0

    invoke-static {v2, v7}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_337

    :try_start_323
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_328
    .catch Ljava/lang/Exception; {:try_start_323 .. :try_end_328} :catch_334

    :try_start_328
    const-string v6, "header"

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32d
    .catch Lorg/json/JSONException; {:try_start_328 .. :try_end_32d} :catch_332
    .catch Ljava/lang/Exception; {:try_start_328 .. :try_end_32d} :catch_32e

    goto :goto_332

    :catch_32e
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    goto :goto_369

    :catch_332
    :goto_332
    move-object v6, v7

    goto :goto_337

    :catch_334
    move-exception v0

    move-object v3, v0

    goto :goto_369

    :cond_337
    :goto_337
    if-eqz v4, :cond_36c

    if-nez v6, :cond_341

    :try_start_33b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v3

    :cond_341
    if-eqz v4, :cond_36c

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :catch_347
    :cond_347
    :goto_347
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_347

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_347

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_347

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8
    :try_end_35f
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_35f} :catch_334

    if-eqz v8, :cond_347

    :try_start_361
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_361 .. :try_end_368} :catch_347

    goto :goto_347

    :goto_369
    invoke-static {v2, v3}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_36c
    invoke-direct {v1, v5, v6}, Lcom/umeng/commonsdk/statistics/c;->a(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2

    :cond_371
    :goto_371
    invoke-direct {v1, v5, v6}, Lcom/umeng/commonsdk/statistics/c;->a(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method
