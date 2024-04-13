.class public final Lcom/goldcoast/sdk/c/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 5

    const-string v0, "ro.product.cpu.abilist64"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/goldcoast/sdk/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    const-string v0, "64"

    return-object v0

    :cond_11
    invoke-static {}, Lcom/goldcoast/sdk/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "64"

    return-object v0

    :cond_1a
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz v1, :cond_35

    invoke-static {v0}, Lcom/goldcoast/sdk/c/b;->a(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_35

    aget-byte v0, v0, v4

    if-ne v0, v3, :cond_35

    goto :goto_4e

    :cond_35
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib64/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {v0}, Lcom/goldcoast/sdk/c/b;->a(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_4d

    aget-byte v0, v0, v4

    if-ne v0, v3, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    if-eqz v2, :cond_53

    const-string v0, "64"

    return-object v0

    :cond_53
    const-string v0, "32"

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

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

    aput-object p0, v2, v5

    const-string p0, ""

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-object p0, p1

    return-object p0
.end method

.method private static a(Ljava/io/File;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_33
    .catchall {:try_start_7 .. :try_end_c} :catchall_26

    const/16 p0, 0x10

    :try_start_e
    new-array v2, p0, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_34
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    if-ne v3, p0, :cond_20

    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    return-object v2

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :cond_20
    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_3a

    return-object v1

    :catchall_24
    move-exception p0

    goto :goto_28

    :catchall_26
    move-exception p0

    move-object v0, v1

    :goto_28
    if-eqz v0, :cond_32

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_32
    throw p0

    :catch_33
    move-object v0, v1

    :catch_34
    if-eqz v0, :cond_3e

    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    return-object v1

    :catch_3a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    return-object v1
.end method

.method private static b()Z
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8c

    const/4 v1, 0x0

    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_77
    .catchall {:try_start_e .. :try_end_13} :catchall_60

    :try_start_13
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x200

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1f} :catch_78
    .catchall {:try_start_13 .. :try_end_1f} :catchall_5e

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4b

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "arch64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_37} :catch_5c
    .catchall {:try_start_1f .. :try_end_37} :catchall_57

    if-eqz v1, :cond_4b

    :try_start_39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49
    const/4 v0, 0x1

    return v0

    :cond_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_53
    :try_start_53
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_88

    goto :goto_8c

    :catchall_57
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_62

    :catch_5c
    move-object v1, v0

    goto :goto_78

    :catchall_5e
    move-exception v0

    goto :goto_62

    :catchall_60
    move-exception v0

    move-object v2, v1

    :goto_62
    if-eqz v1, :cond_6c

    :try_start_64
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6c
    :goto_6c
    if-eqz v2, :cond_76

    :try_start_6e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_76
    :goto_76
    throw v0

    :catch_77
    move-object v2, v1

    :catch_78
    :goto_78
    if-eqz v1, :cond_82

    :try_start_7a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_82
    :goto_82
    if-eqz v2, :cond_8c

    :try_start_84
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8c
    :goto_8c
    const/4 v0, 0x0

    return v0
.end method
