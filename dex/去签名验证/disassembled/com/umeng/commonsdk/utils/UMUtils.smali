.class public Lcom/umeng/commonsdk/utils/UMUtils;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_TIMEZONE:I = 0x8

.field private static final KEY_APP_KEY:Ljava/lang/String; = "appkey"

.field private static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field private static final KEY_LAST_APP_KEY:Ljava/lang/String; = "last_appkey"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final KEY_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "umeng_common_config"

.field public static final MOBILE_NETWORK:Ljava/lang/String; = "2G/3G"

.field private static final SD_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final TAG:Ljava/lang/String; = "UMUtils"

.field public static final UNKNOW:Ljava/lang/String; = ""

.field public static final WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTDID\">([^<]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1f
    array-length v5, v1

    if-ge v4, v5, :cond_39

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v1, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_40
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3d} :catch_3e

    return-object v1

    :catch_3e
    move-exception p0

    goto :goto_49

    :catch_40
    :try_start_40
    const-string v1, "[^[a-z][A-Z][0-9][.][_]]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_48} :catch_3e

    return-object p0

    :goto_49
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_60

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5 e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-object v0

    :catch_61
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_79

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5 e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    return-object v0
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

    if-ge v1, v3, :cond_43

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
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_40

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static bytes2Hex([B)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_38

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_38
    return-object v0
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

    if-lt v1, v2, :cond_33

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

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2b} :catch_2e

    if-nez p1, :cond_42

    goto :goto_41

    :catch_2e
    move-exception p1

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return v0

    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_42

    :goto_41
    const/4 v0, 0x1

    :cond_42
    return v0
.end method

.method public static encryptBySHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5} :catch_18

    :try_start_5
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->bytes2Hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_16} :catch_18

    return-object p0

    :catch_17
    return-object v0

    :catch_18
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_30

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encrypt by SHA1 e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-object v0

    :catch_31
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_49

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encrypt by SHA1 e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-object v0
.end method

.method public static getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_8} :catch_5c

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_12} :catch_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_12} :catch_5c

    goto :goto_18

    :catch_13
    move-exception v1

    :try_start_14
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v0

    :goto_18
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_26} :catch_5c

    :try_start_26
    const-string v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_2c
    .catch Ljava/security/cert/CertificateException; {:try_start_26 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2c} :catch_5c

    goto :goto_32

    :catch_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_5c

    move-object v1, v0

    :goto_32
    :try_start_32
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_38
    .catch Ljava/security/cert/CertificateException; {:try_start_32 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_38} :catch_5c

    goto :goto_3e

    :catch_39
    move-exception v1

    :try_start_3a
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_5c

    move-object v1, v0

    :goto_3e
    :try_start_3e
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v1
    :try_end_50
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3e .. :try_end_50} :catch_57
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3e .. :try_end_50} :catch_52
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_50} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_50} :catch_5c

    move-object v0, v1

    return-object v0

    :catch_52
    move-exception v1

    :try_start_53
    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    return-object v0

    :catch_57
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_5b} :catch_5c

    return-object v0

    :catch_5c
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_74

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get app MD5 signature e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_78
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_90

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get app MD5 signature e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

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

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1f} :catch_21

    move-object v0, v1

    return-object v0

    :catch_21
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_48

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get app name e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3e

    :catch_30
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_48

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get app name e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getAppVersinoCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_4b

    if-nez p1, :cond_5

    goto :goto_4b

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p1, :cond_2d

    const-string p1, "UMUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get app version code e is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const-string p0, ""

    return-object p0

    :catch_30
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p1, :cond_48

    const-string p1, "UMUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get app version code e is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const-string p0, ""

    return-object p0

    :cond_4b
    :goto_4b
    const-string p0, ""

    return-object p0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_31

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get app version code e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const-string p0, ""

    return-object p0

    :catch_34
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_4c

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get app version code e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    const-string p0, ""

    return-object p0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_14} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_2d

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get app version name e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const-string p0, ""

    return-object p0

    :catch_30
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_48

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get app version name e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const-string p0, ""

    return-object p0
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_3e

    if-nez p1, :cond_5

    goto :goto_3e

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_10} :catch_2f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_29

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get app version name e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0

    :catch_2f
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_29

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get app version name e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    :cond_3e
    :goto_3e
    const-string p0, ""

    return-object p0
.end method

.method public static declared-synchronized getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-class v0, Lcom/umeng/commonsdk/utils/UMUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_8

    monitor-exit v0

    return-object v1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "umeng_common_config"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1d

    const-string v3, "appkey"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1b} :catch_21
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1f

    monitor-exit v0

    return-object v2

    :cond_1d
    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    goto :goto_5b

    :catch_21
    move-exception v2

    :try_start_22
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v3, :cond_39

    const-string v3, "UMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get app key e is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_1f

    monitor-exit v0

    return-object v1

    :catch_3e
    move-exception v2

    :try_start_3f
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v3, :cond_56

    const-string v3, "UMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get app key e is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_1f

    monitor-exit v0

    return-object v1

    :goto_5b
    monitor-exit v0

    throw p0
.end method

.method public static getAppkeyByXML(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_35

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "UMENG_APPKEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, "MobclickAgent"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "getAppkey failed. the applicationinfo is null!"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception p0

    const-string v0, "MobclickAgent"

    const-string v1, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBuildProp()Ljava/util/Properties;
    .registers 7

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
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_16} :catch_27
    .catchall {:try_start_6 .. :try_end_16} :catchall_25

    :try_start_16
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_20
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_31

    return-object v0

    :catchall_1d
    move-exception v0

    move-object v1, v2

    goto :goto_36

    :catch_20
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_28

    :catchall_25
    move-exception v0

    goto :goto_36

    :catch_27
    move-exception v2

    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    if-eqz v1, :cond_35

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_35
    return-object v0

    :goto_36
    if-eqz v1, :cond_40

    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_40
    :goto_40
    throw v0
.end method

.method public static getCPU()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_3b

    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_13} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_3b

    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_19} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_19} :catch_3b

    goto :goto_58

    :catch_1a
    move-exception v0

    move-object v1, v0

    goto :goto_41

    :catch_1d
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_39

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not read from file /proc/cpuinfo, e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_39} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_39} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_39} :catch_3b

    :cond_39
    move-object v3, v0

    goto :goto_58

    :catch_3b
    move-exception v0

    goto :goto_6e

    :catch_3d
    move-exception v0

    goto :goto_88

    :catch_3f
    move-exception v1

    move-object v3, v0

    :goto_41
    :try_start_41
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_58

    const-string v0, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Could not read from file /proc/cpuinfo, e is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    if-eqz v3, :cond_6b

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6a} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_6a} :catch_3b

    return-object v0

    :cond_6b
    const-string v0, ""

    return-object v0

    :goto_6e
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_85

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get cpu e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    const-string v0, ""

    return-object v0

    :goto_88
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_9f

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get cpu e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    const-string v0, ""

    return-object v0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "umeng_common_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string v2, "channel"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_17} :catch_19

    return-object v1

    :cond_18
    return-object v0

    :catch_19
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_31

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get channel e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_35
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_4d

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get channel e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getChannelByXML(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_35

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "UMENG_CHANNEL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, "MobclickAgent"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "getChannel failed. the applicationinfo is null!"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception p0

    const-string v0, "MobclickAgent"

    const-string v1, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_42

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_7
    const-string v1, "com.umeng.message.MessageSharedPrefs"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_42

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_42

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_42

    const-string v2, "getDeviceToken"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_42

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_42

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_42

    check-cast p0, Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_41} :catch_42

    move-object v0, p0

    :catch_42
    :cond_42
    return-object v0
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "Phone"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_1d

    const-string v1, "Tablet"

    return-object v1

    :cond_1d
    const-string v1, "Phone"
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_38

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get device type e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_3c
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_54

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get device type e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getDisplayResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    :try_start_5
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_39} :catch_3a

    return-object v0

    :catch_3a
    move-exception v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_52

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get display resolution e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0

    :catch_58
    move-exception v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_52

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get display resolution e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_48
.end method

.method private static getFile(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    return-object v0

    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mounted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    :try_start_1d
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    const-string v2, ".UTSystemConfig/Global/Alvin2.xml"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_29

    return-object v1

    :catch_29
    :cond_29
    return-object v0
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x400

    const/4 v1, 0x0

    :try_start_3
    new-array v2, v0, [B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_5b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5} :catch_42

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_e

    const-string p0, ""

    return-object p0

    :cond_e
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_19
    const/4 p0, 0x0

    invoke-virtual {v4, v2, p0, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_25

    invoke-virtual {v3, v2, p0, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_19

    :cond_25
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_42

    :try_start_28
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v2, "%1$032x"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, p0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_3d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_41} :catch_5b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_41} :catch_42

    return-object v1

    :catch_42
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_5a

    const-string v0, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get file MD5 e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-object v1

    :catch_5b
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_73

    const-string v0, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get file MD5 e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    return-object v1
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_2e

    const-string v0, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read gpu infor, e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :catch_31
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_49

    const-string v0, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read gpu infor, e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    new-array p0, v1, [Ljava/lang/String;

    return-object p0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_33
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_17

    move-object v0, v1

    :cond_16
    return-object v0

    :catch_17
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_2f

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get imei e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_33
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_4b

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get imei e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getLastAppkey(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "umeng_common_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string v2, "last_appkey"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_17} :catch_19

    return-object v1

    :cond_18
    return-object v0

    :catch_19
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_31

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get last app key e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_35
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_4d

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get last app key e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_31

    :catch_16
    move-exception v1

    goto :goto_38

    :catch_18
    move-exception v1

    :try_start_19
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_30

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail to read user config locale, e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    move-object v1, v0

    :goto_31
    if-nez v1, :cond_37

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_37} :catch_53
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_37} :catch_16

    :cond_37
    return-object v1

    :goto_38
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_4f

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get locale e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_53
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_6b

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get locale e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1d
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_28

    const-string v1, "UMUtils"

    const-string v2, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-string v1, ""
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_47
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2a} :catch_2b

    return-object v1

    :catch_2b
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_43

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get mac e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_47
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_5f

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get mac e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    :try_start_b
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    const-string v1, ""

    aput-object v1, v0, v2

    return-object v0

    :cond_19
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_28

    const-string v1, ""

    aput-object v1, v0, v2

    return-object v0

    :cond_28
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3c

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_3c

    const-string v1, "Wi-Fi"

    aput-object v1, v0, v2

    return-object v0

    :cond_3c
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_7f

    const-string v4, "2G/3G"

    aput-object v4, v0, v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_54} :catch_64
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_54} :catch_55

    return-object v0

    :catch_55
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_7c

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get network access mode e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_72

    :catch_64
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_7c

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get network access mode e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_7f
    return-object v0
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :try_start_4
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v0, ""
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_3f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_16} :catch_21

    return-object v0

    :cond_17
    if-nez v0, :cond_1c

    const-string p0, ""

    return-object p0

    :cond_1c
    :try_start_1c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_3f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_39

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get network operator e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0

    :catch_3f
    move-exception v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_39

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get network operator e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, "Unknown"

    return-object p0

    :cond_5
    :try_start_5
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_39

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get get operator e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    :catch_21
    move-exception v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_39

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get get operator e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-string p0, "Unknown"

    return-object p0
.end method

.method public static getRegisteredOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_36
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_18} :catch_1a

    move-object v0, v1

    :cond_19
    return-object v0

    :catch_1a
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_32

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get registered operator e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_36
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_4e

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get registered operator e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getSubOSName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->getBuildProp()Ljava/util/Properties;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_51
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_8} :catch_35

    :try_start_8
    const-string v2, "ro.miui.ui.version.name"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->isFlyMe()Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v1, "Flyme"

    :goto_1c
    move-object v0, v1

    return-object v0

    :cond_1e
    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "YunOS"

    goto :goto_1c

    :cond_2b
    move-object v0, v2

    return-object v0

    :cond_2d
    const-string v1, "MIUI"
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2f} :catch_35

    goto :goto_1c

    :catch_30
    move-exception v1

    :try_start_31
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_51
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_35

    return-object v0

    :catch_35
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_4d

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get sub os name e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_51
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_69

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get sub os name e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getSubOSVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->getBuildProp()Ljava/util/Properties;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_48
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_8} :catch_2c

    :try_start_8
    const-string v2, "ro.miui.ui.version.name"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->isFlyMe()Z

    move-result v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_18} :catch_2c

    if-eqz v3, :cond_1f

    :try_start_1a
    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getFlymeVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1f
    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_24
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_23} :catch_2c

    return-object v1

    :catch_24
    :cond_24
    move-object v1, v2

    return-object v1

    :catch_26
    move-exception v1

    :try_start_27
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_48
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2c

    move-object v1, v0

    return-object v1

    :catch_2c
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_44

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get sub os version e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0

    :catch_48
    move-exception v1

    sget-boolean v2, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v2, :cond_60

    const-string v2, "UMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get sub os version e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getUMId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "umid"

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_f

    move-object v0, v1

    return-object v0

    :catch_f
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_13
    return-object v0
.end method

.method public static getUTDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "com.ut.device.UTDevice"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUtdid"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_29
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_26} :catch_27

    return-object v1

    :catch_27
    move-exception p0

    goto :goto_2e

    :catch_29
    :try_start_29
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->readUTDId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_46
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2d} :catch_27

    return-object p0

    :goto_2e
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_45

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get utiid e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-object v0

    :catch_46
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_5e

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get utiid e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-object v0
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

.method public static isDebug(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_11

    and-int/lit8 p0, v1, 0x2

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v0

    :catch_11
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    const/4 v0, 0x1

    :catch_b
    return v0
.end method

.method public static isSdCardWrittenable()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static parseId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    sget-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method private static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    new-array p0, p0, [C

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :goto_e
    const/4 v2, -0x1

    invoke-virtual {v0, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readUTDId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    :try_start_11
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_27

    :try_start_16
    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->safeClose(Ljava/io/InputStream;)V

    return-object p0

    :catchall_22
    move-exception p0

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->safeClose(Ljava/io/InputStream;)V

    throw p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-object v0
.end method

.method private static safeClose(Ljava/io/InputStream;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static declared-synchronized setAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/umeng/commonsdk/utils/UMUtils;

    monitor-enter v0

    if-eqz p0, :cond_62

    if-nez p1, :cond_8

    goto :goto_62

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "umeng_common_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "appkey"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_43
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_22} :catch_26
    .catchall {:try_start_8 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    goto :goto_60

    :catch_26
    move-exception p1

    :try_start_27
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_3e

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set app key e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_24

    monitor-exit v0

    return-void

    :catch_43
    move-exception p1

    :try_start_44
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v1, :cond_5b

    const-string v1, "UMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set app key e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_24

    monitor-exit v0

    return-void

    :goto_60
    monitor-exit v0

    throw p0

    :cond_62
    :goto_62
    monitor-exit v0

    return-void
.end method

.method public static setChannel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_57

    if-nez p1, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "umeng_common_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1f} :catch_20

    :cond_1f
    return-void

    :catch_20
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_38

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set channel e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    :catch_3c
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_54

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set channel e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_57
    return-void
.end method

.method public static setLastAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_57

    if-nez p1, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "umeng_common_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_appkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1f} :catch_20

    :cond_1f
    return-void

    :catch_20
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_38

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set last app key e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    :catch_3c
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_54

    const-string v0, "UMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set last app key e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_57
    return-void
.end method
