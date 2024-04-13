.class public final Lcom/cyjh/elfin/e/c/r;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_13
    :goto_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    const-string v3, "Serial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2d} :catch_37

    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_32

    goto :goto_13

    :catch_32
    move-object v0, v2

    goto :goto_37

    :cond_34
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_37

    :catch_37
    :goto_37
    if-nez v0, :cond_3b

    const-string v0, ""

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_4d

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_55

    const-string v0, ""

    :cond_55
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_14

    :try_start_f
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_15

    goto :goto_17

    :catch_14
    const/4 v3, 0x0

    :catch_15
    const-string v2, ""

    :goto_17
    :try_start_17
    const-string v4, "phone2"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_28

    :try_start_23
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_29

    goto :goto_2b

    :catch_28
    const/4 v4, 0x0

    :catch_29
    const-string p0, ""

    :goto_2b
    const/4 v1, 0x1

    const/4 v5, 0x2

    if-ne v3, v1, :cond_46

    if-ne v4, v5, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_46
    if-ne v4, v1, :cond_5d

    if-ne v3, v5, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    :cond_5b
    move-object v0, p0

    return-object v0

    :cond_5d
    if-ne v3, v5, :cond_60

    :cond_5f
    move-object v0, v2

    :cond_60
    return-object v0
.end method

.method private static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/cyjh/elfin/e/c/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/e/c/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/e/c/r;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_31

    if-eqz p0, :cond_31

    const-string p1, ""

    if-eq p0, p1, :cond_31

    if-eqz v1, :cond_2f

    const-string p1, ""

    if-eq v1, p1, :cond_2f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_2f
    move-object p1, p0

    goto :goto_43

    :cond_31
    if-eqz p0, :cond_39

    const-string p1, ""

    if-ne p0, p1, :cond_38

    goto :goto_39

    :cond_38
    move-object v0, p0

    :cond_39
    :goto_39
    if-eqz v0, :cond_42

    const-string p1, ""

    if-ne v0, p1, :cond_40

    goto :goto_42

    :cond_40
    move-object p1, v0

    goto :goto_43

    :cond_42
    :goto_42
    move-object p1, v1

    :goto_43
    const-string v0, ""

    if-ne p0, v0, :cond_56

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "imei:none-"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_56
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "imei:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    return-object p0
.end method

.method private static b()Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.serialno"

    aput-object v3, v2, v5

    const-string v3, "cyjhuser"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_29} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_29} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_29} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_29} :catch_2a

    return-object v0

    :catch_2a
    const-string v0, ""

    return-object v0

    :catch_2d
    const-string v0, ""

    return-object v0

    :catch_30
    const-string v0, ""

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cyjh/elfin/e/c/r;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    const-string v2, "Hardware"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3d

    goto :goto_3f

    :catch_3d
    const-string v1, "unknown"

    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cyjh/elfin/e/c/r;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_1c} :catch_44
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1c} :catch_44
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_44

    if-eqz v3, :cond_40

    :try_start_1e
    const-string v1, "model name"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v4, "_"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_3a} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3a} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3a} :catch_3e

    move-object v1, v0

    goto :goto_41

    :cond_3c
    move-object v1, v3

    goto :goto_18

    :catch_3e
    move-object v1, v3

    goto :goto_44

    :cond_40
    move-object v1, v3

    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_44} :catch_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_44

    :catch_44
    :goto_44
    if-eqz v1, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5a
    return-object p0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    invoke-static {p0}, Lcom/cyjh/elfin/e/c/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-static {p0}, Lcom/cyjh/elfin/e/c/r;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
