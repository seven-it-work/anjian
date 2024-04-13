.class public Lcom/umeng/commonsdk/statistics/common/DeviceConfig;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_TIMEZONE:I = 0x8

.field private static final KEY_EMUI_VERSION_CODE:Ljava/lang/String; = "ro.build.hw_emui_api_level"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field protected static final LOG_TAG:Ljava/lang/String; = "com.umeng.commonsdk.statistics.common.DeviceConfig"

.field public static final MOBILE_NETWORK:Ljava/lang/String; = "2G/3G"

.field public static final UNKNOW:Ljava/lang/String; = ""

.field public static final WIFI:Ljava/lang/String; = "Wi-Fi"


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

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    array-length v3, p0

    if-ge v1, v3, :cond_47

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_28
    if-le v4, v2, :cond_30

    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_44

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2e

    :try_start_b
    const-string v1, "android.content.Context"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkSelfPermission"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2b} :catch_3d

    if-nez p0, :cond_3d

    goto :goto_3c

    :cond_2e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3d

    :goto_3c
    const/4 v0, 0x1

    :catch_3d
    :cond_3d
    return v0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_16

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p0, :cond_16

    const-string p0, "can\'t read android id"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppHashKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p0

    if-lez v0, :cond_30

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const-string v1, "SHA"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "X509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    move-object p0, v0

    return-object p0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    move-object p0, v0

    return-object p0
.end method

.method public static getAppSHA1Key(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "X509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationLable(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBuildProp()Ljava/util/Properties;
    .registers 6

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_16} :catch_29
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    :try_start_16
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_20
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_2e

    return-object v0

    :catchall_1d
    move-exception v0

    move-object v1, v2

    goto :goto_23

    :catch_20
    move-object v1, v2

    goto :goto_29

    :catchall_22
    move-exception v0

    :goto_23
    if-eqz v1, :cond_28

    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_28

    :catch_28
    :cond_28
    throw v0

    :catch_29
    :goto_29
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    return-object v0
.end method

.method public static getCPU()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_2b

    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_13} :catch_2b

    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_19} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_19} :catch_1a

    goto :goto_34

    :catch_1a
    move-exception v0

    move-object v1, v0

    goto :goto_2d

    :catch_1d
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not read from file /proc/cpuinfo"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_29} :catch_2b

    move-object v3, v0

    goto :goto_34

    :catch_2b
    move-exception v1

    move-object v3, v0

    :goto_2d
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not open file /proc/cpuinfo"

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_34
    if-eqz v3, :cond_47

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_47
    const-string v0, ""

    return-object v0
.end method

.method public static getDBencryptID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_53

    :try_start_3
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1a

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :cond_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2a} :catch_53

    :try_start_2a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_58

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_55

    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSerial"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :catch_53
    :cond_53
    :goto_53
    move-object p0, v0

    return-object p0

    :cond_55
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_57} :catch_58

    goto :goto_53

    :catch_58
    :cond_58
    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/umeng/commonsdk/statistics/b;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceIdForBox(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceIdForGeneral(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDeviceIdForBox(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_6c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_32

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDeviceId, ANDROID_ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_57

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceId, MAC: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    :goto_67
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_de

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_95

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDeviceId, ANDROID_ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b2

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->d:Z

    if-eqz v0, :cond_ae

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacShell()Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    :cond_ae
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_b2
    :goto_b2
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_cd

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceId, MAC: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_cd
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    goto :goto_67

    :cond_de
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_103

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDeviceId: ANDROID_ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_146

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-boolean p0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p0, :cond_146

    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDeviceId, MAC: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_146
    return-object v0
.end method

.method private static getDeviceIdForGeneral(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_60

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13a

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "No IMEI."

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean p0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p0, :cond_55

    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDeviceId, ANDROID_ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13a

    :goto_5b
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_d2

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->d:Z

    if-eqz v0, :cond_81

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacShell()Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    :cond_81
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_85
    :goto_85
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_a0

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDeviceId, MAC: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean p0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p0, :cond_cb

    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDeviceId, ANDROID_ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_cb
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13a

    goto :goto_5b

    :cond_d2
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_10b

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDeviceId, ANDROID_ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-boolean p0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p0, :cond_13a

    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDeviceId, MAC: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13a
    return-object v0
.end method

.method public static getDeviceIdUmengMD5(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->getUmengMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "Phone"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    if-eqz p0, :cond_1c

    const-string p0, "Tablet"

    return-object p0

    :cond_1c
    const-string p0, "Phone"

    return-object p0
.end method

.method public static getDisplayResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    :try_start_5
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    const-string p0, ""

    return-object p0
.end method

.method private static getEmuiVersion(Ljava/util/Properties;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ro.build.hw_emui_api_level"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-object p0, v0

    return-object p0
.end method

.method private static getFlymeVersion(Ljava/util/Properties;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "ro.build.display.id"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "flyme os"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGPU(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/16 v2, 0x1f00

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f01

    invoke-interface {p0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p0

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p0, v0, v2
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not read gpu infor:"

    invoke-static {v0, v2, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    new-array p0, v1, [Ljava/lang/String;

    return-object p0
.end method

.method private static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_4b

    :try_start_f
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4b

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1b} :catch_3b

    :try_start_1b
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDeviceId, IMEI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_38} :catch_39

    goto :goto_4a

    :catch_39
    move-exception v0

    goto :goto_3f

    :catch_3b
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    :goto_3f
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No IMEI."

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    move-object v0, p0

    :cond_4b
    return-object v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    :try_start_3
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_25

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1b

    move-object v0, p0

    return-object v0

    :catch_1b
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_25

    const-string v1, "No IMEI."

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    return-object v0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method private static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 4

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    iget-object p0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_27

    :catch_19
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "fail to read user config locale"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_27
    if-nez p0, :cond_2d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_2d
    return-object p0
.end method

.method public static getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    const-string v0, "Unknown"

    const-string v1, "Unknown"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    :cond_1f
    aget-object p0, v0, v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const-string p0, "Unknown"

    aput-object p0, v0, v2

    :cond_2b
    aget-object p0, v0, v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "Unknown"

    aput-object p0, v0, v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_37} :catch_38

    :cond_37
    return-object v0

    :catch_38
    move-exception p0

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error in getLocaleInfo"

    invoke-static {v1, v2, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getMCCMNC(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_4d

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    if-ge p0, v2, :cond_39

    const-string v0, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_39
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4d
    return-object v0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_10

    :cond_b
    :goto_b
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_29

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->d:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacShell()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    move-object p0, v0

    return-object p0

    :cond_29
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_b

    return-object p0
.end method

.method private static getMacByJavaAPI()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    const-string v3, "wlan0"

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "eth0"

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_29
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-eqz v1, :cond_6f

    array-length v2, v1

    if-nez v2, :cond_33

    return-object v0

    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3b
    const/4 v6, 0x1

    if-ge v5, v3, :cond_54

    aget-byte v7, v1, v5

    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_62

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6e} :catch_6f

    return-object v1

    :catch_6f
    :cond_6f
    return-object v0
.end method

.method private static getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_7
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p0, :cond_2f

    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    const-string p0, ""
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_52

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not get mac address."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_52
    const-string p0, ""

    return-object p0
.end method

.method private static getMacShell()Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "/sys/class/net/wlan0/address"

    const-string v1, "/sys/class/net/eth0/address"

    const-string v2, "/sys/devices/virtual/net/wlan0/address"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_26

    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x3

    if-ge v1, v2, :cond_26

    :try_start_e
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->reaMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_14} :catch_17

    if-eqz v2, :cond_23

    return-object v2

    :catch_17
    move-exception v2

    :try_start_18
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v3, :cond_23

    sget-object v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v4, "open file  Failed"

    invoke-static {v3, v4, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_23} :catch_26

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_26
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    :try_start_b
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    const-string p0, ""

    aput-object p0, v0, v2

    return-object v0

    :cond_19
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_28

    const-string p0, ""

    aput-object p0, v0, v2

    return-object v0

    :cond_28
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3c

    const-string p0, "Wi-Fi"

    aput-object p0, v0, v2

    return-object v0

    :cond_3c
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_54

    const-string v3, "2G/3G"

    aput-object v3, v0, v2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_54} :catch_54

    :catch_54
    :cond_54
    return-object v0
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    :try_start_5
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRegisteredOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public static getResolutionArray(Landroid/content/Context;)[I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x2000

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez p0, :cond_31

    const-string p0, "noncompatWidthPixels"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    const-string v4, "noncompatHeightPixels"

    invoke-static {v1, v4}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    goto :goto_33

    :cond_31
    const/4 p0, -0x1

    const/4 v4, 0x0

    :goto_33
    if-eq p0, v3, :cond_37

    if-ne v4, v3, :cond_3b

    :cond_37
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_3b
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x1

    if-le p0, v4, :cond_46

    aput v4, v1, v2

    aput p0, v1, v3

    return-object v1

    :cond_46
    aput p0, v1, v2

    aput v4, v1, v3
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4a} :catch_4b

    return-object v1

    :catch_4b
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_57

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "read resolution fail"

    invoke-static {v1, v2, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    return-object v0
.end method

.method public static getSerial()Ljava/lang/String;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_28

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_26

    :try_start_d
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getSerial"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_24} :catch_28

    move-object v1, v0

    return-object v1

    :cond_26
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :catch_28
    :cond_28
    return-object v1
.end method

.method private static getSerialNo()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-lt v1, v3, :cond_29

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_27

    :try_start_f
    const-string v1, "android.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getSerial"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_25} :catch_29

    move-object v0, v1

    goto :goto_29

    :cond_27
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :catch_29
    :cond_29
    :goto_29
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_45

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceId, serial no: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    return-object v0
.end method

.method public static getSubOSName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getBuildProp()Ljava/util/Properties;

    move-result-object p0

    :try_start_4
    const-string v0, "ro.miui.ui.version.name"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isFlyMe()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string p0, "Flyme"

    return-object p0

    :cond_19
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isEmui(Ljava/util/Properties;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string p0, "Emui"

    return-object p0

    :cond_22
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_31

    const-string p0, "YunOS"

    return-object p0

    :cond_2f
    const-string v0, "MIUI"
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_31} :catch_33

    :cond_31
    move-object p0, v0

    return-object p0

    :catch_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSubOSVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getBuildProp()Ljava/util/Properties;

    move-result-object p0

    :try_start_4
    const-string v0, "ro.miui.ui.version.name"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isFlyMe()Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_2b

    if-eqz v1, :cond_1b

    :try_start_16
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getFlymeVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1a} :catch_2c

    return-object p0

    :cond_1b
    :try_start_1b
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isEmui(Ljava/util/Properties;)Z

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1f} :catch_2b

    if-eqz v1, :cond_26

    :try_start_21
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getEmuiVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2a} :catch_2c

    return-object p0

    :catch_2b
    const/4 v0, 0x0

    :catch_2c
    :cond_2c
    move-object p0, v0

    return-object p0
.end method

.method public static getTimeZone(Landroid/content/Context;)I
    .registers 4

    const/16 v0, 0x8

    if-nez p0, :cond_5

    return v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    const v1, 0x36ee80

    div-int/2addr p0, v1
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error in getTimeZone"

    invoke-static {v1, v2, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    return v0
.end method

.method private static getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;
    .registers 2

    const-string v0, "ro.yunos.version"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isChineseAera(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "country"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    const-string p0, "cn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v3

    :cond_1c
    return v0

    :cond_1d
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_38

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    const-string v1, "cn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_62

    return v3

    :cond_38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    const/16 v2, 0x1cc

    if-eq v1, v2, :cond_63

    const/16 v2, 0x1cd

    if-ne v1, v2, :cond_4b

    return v3

    :cond_4b
    if-nez v1, :cond_62

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    const-string v1, "cn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_62

    return v3

    :cond_62
    return v0

    :cond_63
    return v3
.end method

.method private static isEmui(Ljava/util/Properties;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ro.build.hw_emui_api_level"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_c

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :catch_c
    :cond_c
    return v0
.end method

.method private static isFlyMe()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/Build;

    const-string v2, "hasSmartBar"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_b

    const/4 v0, 0x1

    :catch_b
    return v0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_20} :catch_21

    return p0

    :catch_21
    :cond_21
    return v0
.end method

.method public static isWiFiAvailable(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "Wi-Fi"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static reaMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_26

    :try_start_6
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x400

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1b

    :try_start_d
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_19

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    move-object v0, v2

    return-object v0

    :catchall_19
    move-exception v2

    goto :goto_1d

    :catchall_1b
    move-exception v2

    move-object p0, v0

    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    if-eqz p0, :cond_25

    :try_start_22
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    :try_start_25
    throw v2
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_26} :catch_26

    :catch_26
    return-object v0
.end method

.method private static reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 3

    :try_start_0
    const-class v0, Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const/4 p0, -0x1

    return p0
.end method
