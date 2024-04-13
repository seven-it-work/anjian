.class public final Lcom/cyjh/common/util/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    const-string v1, "/system/bin/cat"

    const-string v2, "/proc/cpuinfo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v5, "utf-8"

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_28
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    :cond_32
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3d} :catch_3e

    move-object v0, v1

    :catch_3e
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "tel:123456"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_21

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    const/4 v0, 0x1

    return v0

    :catch_21
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ls -l "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_50
    .catchall {:try_start_1 .. :try_end_17} :catchall_4b

    :try_start_17
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_46

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_37} :catch_49
    .catchall {:try_start_17 .. :try_end_37} :catchall_5e

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x78

    if-ne v0, v1, :cond_46

    :cond_3f
    if-eqz p0, :cond_44

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_44
    const/4 p0, 0x1

    return p0

    :cond_46
    if-eqz p0, :cond_5c

    goto :goto_59

    :catch_49
    move-exception v0

    goto :goto_54

    :catchall_4b
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_5f

    :catch_50
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_54
    :try_start_54
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5e

    if-eqz p0, :cond_5c

    :goto_59
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_5c
    const/4 p0, 0x0

    return p0

    :catchall_5e
    move-exception v0

    :goto_5f
    if-eqz p0, :cond_64

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_64
    throw v0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    :try_start_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "elfinParams.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_26
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_37} :catch_39

    const/4 p0, 0x1

    return p0

    :catch_39
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static b()Ljava/lang/String;
    .registers 6

    const-string v0, "0.0.0.0"

    :try_start_2
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://pv.sohu.com/cityjson?ie=utf-8"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_79

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_72

    if-eqz v4, :cond_4a

    :try_start_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v4

    goto :goto_2c

    :catch_48
    move-exception v0

    goto :goto_75

    :cond_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v0, "{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_5f} :catch_48

    if-eqz v0, :cond_78

    :try_start_61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "cip"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6c} :catch_48

    return-object v0

    :catch_6d
    move-exception v0

    :try_start_6e
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_48

    goto :goto_78

    :catch_72
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_78
    :goto_78
    move-object v0, v4

    :cond_79
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_16

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private static c()Z
    .registers 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/f;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-static {}, Lcom/cyjh/common/util/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1d

    const-string v1, "amd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz p0, :cond_24

    if-eqz v0, :cond_23

    return v2

    :cond_23
    return v3

    :cond_24
    return v2
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    :goto_10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    goto :goto_10
.end method

.method private static d()Z
    .registers 2

    invoke-static {}, Lcom/cyjh/common/util/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "amd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method private static e()Z
    .registers 4

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "google_sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "droid4x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Emulator"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Android SDK built for x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "vbox86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "google_sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk_x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "vbox86p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c5

    goto :goto_c7

    :cond_c5
    const/4 v0, 0x0

    goto :goto_c8

    :cond_c7
    :goto_c7
    const/4 v0, 0x1

    :goto_c8
    if-eqz v0, :cond_cb

    return v1

    :cond_cb
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    const/4 v0, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v0, 0x0

    :goto_e2
    or-int/2addr v0, v2

    if-eqz v0, :cond_e6

    return v1

    :cond_e6
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v2

    return v0
.end method

.method private static f()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static declared-synchronized g()Z
    .registers 7

    const-class v0, Lcom/cyjh/common/util/f;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_4d
    .catchall {:try_start_5 .. :try_end_f} :catchall_4a

    :try_start_f
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_45
    .catchall {:try_start_f .. :try_end_18} :catchall_43

    :try_start_18
    const-string v2, "exit\n"

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_41
    .catchall {:try_start_18 .. :try_end_24} :catchall_67

    if-nez v2, :cond_34

    :try_start_26
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_2d
    .catchall {:try_start_26 .. :try_end_2c} :catchall_5a

    goto :goto_31

    :catch_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5a

    :goto_31
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_34
    :try_start_34
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_3b
    .catchall {:try_start_34 .. :try_end_3a} :catchall_5a

    goto :goto_3f

    :catch_3b
    move-exception v2

    :try_start_3c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_5a

    :goto_3f
    monitor-exit v0

    return v1

    :catch_41
    move-exception v2

    goto :goto_51

    :catchall_43
    move-exception v1

    goto :goto_69

    :catch_45
    move-exception v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_51

    :catchall_4a
    move-exception v1

    move-object v3, v2

    goto :goto_69

    :catch_4d
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    :goto_51
    :try_start_51
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_67

    if-eqz v4, :cond_5e

    :try_start_56
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_5e

    :catchall_5a
    move-exception v1

    goto :goto_79

    :catch_5c
    move-exception v2

    goto :goto_62

    :cond_5e
    :goto_5e
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_61} :catch_5c
    .catchall {:try_start_56 .. :try_end_61} :catchall_5a

    goto :goto_65

    :goto_62
    :try_start_62
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_5a

    :goto_65
    monitor-exit v0

    return v1

    :catchall_67
    move-exception v1

    move-object v2, v4

    :goto_69
    if-eqz v2, :cond_71

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_71

    :catch_6f
    move-exception v2

    goto :goto_75

    :cond_71
    :goto_71
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_6f
    .catchall {:try_start_6b .. :try_end_74} :catchall_5a

    goto :goto_78

    :goto_75
    :try_start_75
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_78
    throw v1
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_5a

    :goto_79
    monitor-exit v0

    throw v1
.end method

.method private static h()Z
    .registers 4

    const-string v0, "/system/bin/su"

    const-string v1, "/system/xbin/su"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    invoke-static {v0}, Lcom/cyjh/common/util/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    return v3

    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {v1}, Lcom/cyjh/common/util/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    return v3

    :cond_29
    const/4 v0, 0x0

    return v0
.end method
