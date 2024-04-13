.class public Lcom/umeng/commonsdk/framework/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "last_successful_build_time"

.field private static b:Ljava/lang/Object; = null

.field private static c:Ljava/lang/String; = "envelope"

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)I
    .registers 8

    const/16 v0, 0x65

    if-nez p2, :cond_5

    return v0

    :cond_5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/commonsdk/framework/b;->e:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_26
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_49
    .catchall {:try_start_26 .. :try_end_2b} :catchall_47

    :try_start_2b
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_44
    .catchall {:try_start_2b .. :try_end_31} :catchall_41

    :try_start_31
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->j(Landroid/content/Context;)V

    :cond_3e
    const/4 p0, 0x0

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_5f

    return p0

    :catchall_41
    move-exception p1

    move-object v3, v4

    goto :goto_59

    :catch_44
    move-exception p1

    move-object v3, v4

    goto :goto_4a

    :catchall_47
    move-exception p1

    goto :goto_59

    :catch_49
    move-exception p1

    :goto_4a
    :try_start_4a
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_47

    if-eqz v3, :cond_57

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53
    .catchall {:try_start_4f .. :try_end_52} :catchall_5f

    goto :goto_57

    :catch_53
    move-exception p1

    :try_start_54
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_5f

    return v0

    :goto_59
    if-eqz v3, :cond_65

    :try_start_5b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_61
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_65

    :catchall_5f
    move-exception p0

    goto :goto_66

    :catch_61
    move-exception p2

    :try_start_62
    invoke-static {p0, p2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_65
    :goto_65
    throw p1

    :goto_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_5f

    throw p0
.end method

.method private static a(JJ)J
    .registers 6

    cmp-long v0, p0, p2

    if-gez v0, :cond_7

    sub-long v0, p2, p0

    goto :goto_a

    :cond_7
    const/4 v0, 0x0

    sub-long v0, p0, p2

    :goto_a
    const-wide/32 p0, 0x5265c00

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3c

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v1, :cond_20

    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_32} :catch_34

    move-object v0, v1

    return-object v0

    :catch_34
    move-exception v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3c
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 8

    const-string v0, "a"

    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_DPLUS:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, v1, :cond_9

    const-string v0, "d"

    goto :goto_f

    :cond_9
    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, v1, :cond_f

    const-string v0, "i"

    :cond_f
    :goto_f
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/commonsdk/framework/b;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1c
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3c

    array-length v3, p1

    if-nez v3, :cond_26

    goto :goto_3c

    :cond_26
    array-length v3, p1

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_44

    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_34} :catch_40
    .catchall {:try_start_1c .. :try_end_34} :catchall_3e

    if-eqz v5, :cond_39

    :try_start_36
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_3c
    :goto_3c
    monitor-exit v1

    return v2

    :catchall_3e
    move-exception p0

    goto :goto_46

    :catch_40
    move-exception p1

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_44
    monitor-exit v1

    return v2

    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_3e

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_37

    :try_start_e
    const-string v2, "android.content.Context"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "checkSelfPermission"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2e} :catch_32

    if-nez p0, :cond_46

    :goto_30
    const/4 v0, 0x1

    return v0

    :catch_32
    move-exception p0

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return v0

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_43} :catch_32

    if-nez p0, :cond_46

    goto :goto_30

    :cond_46
    return v0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 4

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/commonsdk/framework/b;->e:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p0, :cond_1b

    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_17
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v1

    return p0

    :catchall_15
    move-exception p0

    goto :goto_1e

    :catch_17
    move-exception p0

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1b
    const/4 p0, 0x1

    monitor-exit v1

    return p0

    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_15

    throw p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/commonsdk/framework/b;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_8
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_53
    .catchall {:try_start_8 .. :try_end_13} :catchall_4e

    :try_start_13
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->isLoaded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Z)V

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_42

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_42} :catch_4c
    .catchall {:try_start_13 .. :try_end_42} :catchall_5b

    :cond_42
    :try_start_42
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_46
    .catchall {:try_start_42 .. :try_end_45} :catchall_60

    goto :goto_4a

    :catch_46
    move-exception p0

    :try_start_47
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_60

    return-object v3

    :catch_4c
    move-exception v2

    goto :goto_57

    :catchall_4e
    move-exception p0

    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    goto :goto_5c

    :catch_53
    move-exception p0

    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    :goto_57
    :try_start_57
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v2

    :goto_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_62
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_66

    :catchall_60
    move-exception p0

    goto :goto_67

    :catch_62
    move-exception p0

    :try_start_63
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_66
    throw v2

    :goto_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_60

    throw p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    return v0

    :catch_1d
    move-exception v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/commonsdk/framework/b;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_23

    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    array-length v1, v1

    monitor-exit v2

    return v1

    :cond_1e
    monitor-exit v2

    return v0

    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    :try_start_22
    throw v1
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_23} :catch_23

    :catch_23
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_27
    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    :try_start_16
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0

    :cond_22
    const-string p0, ""

    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/commonsdk/framework/b;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_54

    array-length v2, v0

    const/16 v3, 0x64

    if-gt v2, v3, :cond_18

    goto :goto_54

    :cond_18
    new-instance v2, Lcom/umeng/commonsdk/framework/b$1;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/framework/b$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_56

    if-le v2, v3, :cond_52

    :try_start_23
    const-string v2, "--->>> biger than 10"

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_29
    array-length v4, v0

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_52

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--->>> remove ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] file fail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_4b} :catch_4e
    .catchall {:try_start_23 .. :try_end_4b} :catchall_56

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :catch_4e
    move-exception v0

    :try_start_4f
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_52
    monitor-exit v1

    return-void

    :cond_54
    :goto_54
    monitor-exit v1

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_56

    throw p0
.end method

.method public static e(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/commonsdk/framework/b;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_27

    array-length v3, v1

    if-nez v3, :cond_1a

    goto :goto_27

    :cond_1a
    new-instance v0, Lcom/umeng/commonsdk/framework/b$2;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/framework/b$2;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    aget-object p0, v1, p0

    monitor-exit v2

    return-object p0

    :cond_27
    :goto_27
    monitor-exit v2

    return-object v0

    :catchall_29
    move-exception p0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public static f(Landroid/content/Context;)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3f

    return-void

    :cond_3f
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_87

    array-length v2, v0
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_46} :catch_96

    if-nez v2, :cond_49

    goto :goto_87

    :cond_49
    :try_start_49
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_4e
    array-length v4, v0

    if-ge v3, v4, :cond_78

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_78
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_81} :catch_82

    :cond_81
    return-void

    :catch_82
    move-exception v0

    :try_start_83
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_96

    return-void

    :cond_87
    :goto_87
    :try_start_87
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_90} :catch_91

    :cond_90
    return-void

    :catch_91
    move-exception v0

    :try_start_92
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_95} :catch_96

    return-void

    :catch_96
    move-exception v0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_18

    const-string p0, "--->>> getEnvelopeDir: can\'t get process name, use default envelope directory."

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/umeng/commonsdk/framework/b;->c:Ljava/lang/String;

    return-object p0

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_21

    sget-object p0, Lcom/umeng/commonsdk/framework/b;->c:Ljava/lang/String;

    return-object p0

    :cond_21
    :try_start_21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_25

    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v1, 0x3a

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "--->>> getEnvelopeDir: use current process name as envelope directory."

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_48} :catch_49

    return-object v0

    :catch_49
    move-exception v0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_4d
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->d:Ljava/lang/String;

    if-nez v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/commonsdk/framework/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/framework/b;->d:Ljava/lang/String;

    :cond_27
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/umeng/commonsdk/framework/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "--->>> Create Envelope Directory failed!!!"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3f} :catch_42
    .catchall {:try_start_3 .. :try_end_3f} :catchall_40

    goto :goto_46

    :catchall_40
    move-exception p0

    goto :goto_4a

    :catch_42
    move-exception v1

    :try_start_43
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_40

    throw p0
.end method

.method public static i(Landroid/content/Context;)J
    .registers 5

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "last_successful_build_time"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method private static j(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "last_successful_build_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method
