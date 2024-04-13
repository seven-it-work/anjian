.class public final Lcom/cyjh/mobileanjian/ipc/log/b;
.super Ljava/lang/Object;


# static fields
.field private static n:Lcom/cyjh/mobileanjian/ipc/log/b; = null

.field private static final o:Ljava/io/File;

.field private static final p:Ljava/lang/String; = "com.cyjh.mobileanjian"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".oldmarkuser"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/log/b;->o:Ljava/io/File;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->b:Ljava/lang/String;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_18

    :goto_15
    const-string v0, "UNKNOWN"

    goto :goto_23

    :cond_18
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_15

    :cond_1f
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_23
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/log/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getKnownRomVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->d:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isEmulator()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->d:Ljava/lang/String;

    :goto_39
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->a:Ljava/lang/String;

    goto :goto_4e

    :cond_3c
    const-string v0, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v4, v3, v1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :goto_4e
    invoke-static {p1}, Lcom/cyjh/mq/d/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/cyjh/mq/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->f:Ljava/lang/String;

    const-string p1, "com.cyjh.mobileanjian"

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->m:Z

    iput-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->i:Z

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->j:Ljava/lang/String;

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/log/b;->o:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->l:Z

    if-ne p1, v2, :cond_85

    :try_start_7b
    sget-object p1, Lcom/cyjh/mobileanjian/ipc/log/b;->o:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_85
    :goto_85
    const/4 p1, 0x0

    :try_start_86
    new-instance p2, Ljava/io/File;

    const-string p3, "/proc/version"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_a3

    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result p3

    if-eqz p3, :cond_a3

    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_9d} :catch_9f

    move-object p1, p2

    goto :goto_a3

    :catch_9f
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_a3
    :goto_a3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_ab

    const-string p1, "Unknown"

    :cond_ab
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/cyjh/mobileanjian/ipc/log/b;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/log/b;->n:Lcom/cyjh/mobileanjian/ipc/log/b;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_11
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_3e

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    :goto_22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_38

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    :cond_38
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_42} :catch_43

    return-object v0

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/log/b;->n:Lcom/cyjh/mobileanjian/ipc/log/b;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    if-nez p2, :cond_d

    const-string p2, ""

    :cond_d
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/log/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/log/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/log/b;->n:Lcom/cyjh/mobileanjian/ipc/log/b;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/log/b;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u673a\u578b\u53f7: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLinux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nMAC\u7684MD5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5b89\u5353\u7248\u672c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5b9a\u5236\u5b89\u5353: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5e94\u7528\u540d\u79f0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5e94\u7528\u5305\u540d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5e94\u7528\u7248\u672c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u552f\u4e00\u6807\u8bc6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u7cbe\u7075\u7248\u672c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u4ea7\u54c1\u5f62\u6001: UNKNOWN\n\u662f\u5426\u4ed8\u8d39: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/log/b;->i:Z

    if-eqz v1, :cond_72

    const-string v1, "\u514d\u8d39"

    goto :goto_74

    :cond_72
    const-string v1, "\u6536\u8d39"

    :goto_74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
