.class public final Lcom/cyjh/elfin/e/c/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/e/c/e$a;,
        Lcom/cyjh/elfin/e/c/e$b;,
        Lcom/cyjh/elfin/e/c/e$c;
    }
.end annotation


# instance fields
.field private a:Lcom/cyjh/elfin/e/c/e$a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/elfin/e/c/e;-><init>()V

    return-void
.end method

.method private static a()Lcom/cyjh/elfin/e/c/e;
    .registers 1

    invoke-static {}, Lcom/cyjh/elfin/e/c/e$c;->a()Lcom/cyjh/elfin/e/c/e;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x200

    new-array v1, v0, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_9
    :try_start_9
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_18

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1b

    :cond_18
    if-ge v3, v0, :cond_9

    goto :goto_1f

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_22

    check-cast p0, Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_24
    .catchall {:try_start_1 .. :try_end_21} :catchall_24

    return-object p0

    :cond_22
    move-object p0, v0

    return-object p0

    :catch_24
    :catchall_24
    return-object v0
.end method

.method private a(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/c/e;->a(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/content/Context;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    if-nez p1, :cond_f

    return v0

    :cond_f
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    if-nez p2, :cond_16

    return v0

    :cond_16
    new-instance v0, Lcom/cyjh/elfin/e/c/e$b;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/c/e$b;-><init>(Lcom/cyjh/elfin/e/c/e;Landroid/hardware/SensorManager;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method private static b()Ljava/lang/String;
    .registers 1

    const-string v0, "cat /proc/cpuinfo"

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_75
    .catchall {:try_start_1 .. :try_end_b} :catchall_58

    :try_start_b
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_56
    .catchall {:try_start_b .. :try_end_14} :catchall_53

    :try_start_14
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_51
    .catchall {:try_start_14 .. :try_end_1d} :catchall_4f

    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    const/16 p0, 0xa

    invoke-virtual {v2, p0}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-static {v3}, Lcom/cyjh/elfin/e/c/e;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_36} :catch_78
    .catchall {:try_start_1d .. :try_end_36} :catchall_4c

    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_46
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_4b
    return-object p0

    :catchall_4c
    move-exception p0

    move-object v0, v3

    goto :goto_5b

    :catchall_4f
    move-exception p0

    goto :goto_5b

    :catch_51
    move-object v3, v0

    goto :goto_78

    :catchall_53
    move-exception p0

    move-object v2, v0

    goto :goto_5b

    :catch_56
    move-object v2, v0

    goto :goto_77

    :catchall_58
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_5b
    if-eqz v2, :cond_65

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_65
    :goto_65
    if-eqz v0, :cond_6f

    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6f
    :goto_6f
    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_74
    throw p0

    :catch_75
    move-object v1, v0

    move-object v2, v1

    :goto_77
    move-object v3, v2

    :catch_78
    :goto_78
    if-eqz v2, :cond_82

    :try_start_7a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_82
    :goto_82
    if-eqz v3, :cond_8c

    :try_start_84
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8c
    :goto_8c
    if-eqz v1, :cond_91

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_91
    return-object v0
.end method

.method private b(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/c/e;->a(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method private static c()Z
    .registers 1

    const-string v0, "cat /proc/self/cgroup"

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method private d()Z
    .registers 12

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/e/c/e;->a:Lcom/cyjh/elfin/e/c/e$a;

    const-string v1, "gsm.version.baseband"

    invoke-static {v1}, Lcom/cyjh/elfin/e/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1b

    const-string v5, "1.0.0.0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    :goto_1c
    or-int/2addr v2, v5

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    const-string v5, "ro.build.flavor"

    invoke-static {v5}, Lcom/cyjh/elfin/e/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_31

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_31
    const-string v6, "vbox"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "sdk_gphone"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v6, v7

    if-eqz v6, :cond_41

    goto :goto_2e

    :cond_41
    :goto_41
    const-string v6, "ro.product.board"

    invoke-static {v6}, Lcom/cyjh/elfin/e/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_50

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_50
    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "goldfish"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    or-int/2addr v7, v8

    if-eqz v7, :cond_60

    goto :goto_4d

    :cond_60
    :goto_60
    const-string v7, "ro.board.platform"

    invoke-static {v7}, Lcom/cyjh/elfin/e/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6f

    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_6f
    const-string v8, "android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_78

    goto :goto_6c

    :cond_78
    :goto_78
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8c

    add-int/lit8 v2, v2, 0x1

    :cond_8c
    const-string v8, "cat /proc/self/cgroup"

    invoke-static {v8}, Lcom/cyjh/elfin/e/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9a

    add-int/lit8 v2, v2, 0x1

    :cond_9a
    iget-object v9, p0, Lcom/cyjh/elfin/e/c/e;->a:Lcom/cyjh/elfin/e/c/e$a;

    if-eqz v9, :cond_cf

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "ceshi start|"

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|end"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/cyjh/elfin/e/c/e;->a:Lcom/cyjh/elfin/e/c/e$a;

    :cond_cf
    const/4 v0, 0x2

    if-le v2, v0, :cond_d3

    return v4

    :cond_d3
    return v3
.end method

.method private e()Z
    .registers 12

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/e/c/e;->a:Lcom/cyjh/elfin/e/c/e$a;

    const-string v1, "gsm.version.baseband"

    invoke-static {v1}, Lcom/cyjh/elfin/e/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1b

    const-string v5, "1.0.0.0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    :goto_1c
    or-int/2addr v2, v5

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    const-string v5, "ro.build.flavor"

    invoke-static {v5}, Lcom/cyjh/elfin/e/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_31

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_31
    const-string v6, "vbox"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "sdk_gphone"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v6, v7

    if-eqz v6, :cond_41

    goto :goto_2e

    :cond_41
    :goto_41
    const-string v6, "ro.product.board"

    invoke-static {v6}, Lcom/cyjh/elfin/e/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_50

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_50
    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "goldfish"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    or-int/2addr v7, v8

    if-eqz v7, :cond_60

    goto :goto_4d

    :cond_60
    :goto_60
    const-string v7, "ro.board.platform"

    invoke-static {v7}, Lcom/cyjh/elfin/e/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6f

    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_6f
    const-string v8, "android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_78

    goto :goto_6c

    :cond_78
    :goto_78
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8c

    add-int/lit8 v2, v2, 0x1

    :cond_8c
    const-string v8, "cat /proc/self/cgroup"

    invoke-static {v8}, Lcom/cyjh/elfin/e/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9a

    add-int/lit8 v2, v2, 0x1

    :cond_9a
    iget-object v9, p0, Lcom/cyjh/elfin/e/c/e;->a:Lcom/cyjh/elfin/e/c/e$a;

    if-eqz v9, :cond_cf

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "ceshi start|"

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|end"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/cyjh/elfin/e/c/e;->a:Lcom/cyjh/elfin/e/c/e$a;

    :cond_cf
    const/4 v0, 0x2

    if-le v2, v0, :cond_d3

    return v4

    :cond_d3
    return v3
.end method

.method private static f()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "-\nBOARD-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nBOOTLOADER-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nBRAND-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nDEVICE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nHARDWARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nMODEL-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nPRODUCT-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
