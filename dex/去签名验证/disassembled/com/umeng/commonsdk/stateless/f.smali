.class public Lcom/umeng/commonsdk/stateless/f;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static final b:[B

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/umeng/commonsdk/stateless/f;->b:[B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/f;->c:Ljava/lang/Object;

    return-void

    nop

    :array_12
    .array-data 1
        0xat
        0x1t
        0xbt
        0x5t
        0x4t
        0xft
        0x7t
        0x9t
        0x17t
        0x3t
        0x1t
        0x6t
        0x8t
        0xct
        0xdt
        0x5bt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/stateless/f;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_b8

    :try_start_4
    const-string v2, "walle"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get last envelope begin, thread is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_98

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_98

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/stateless"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_98

    array-length v4, v2
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_b5

    if-lez v4, :cond_98

    move-object v4, v0

    const/4 v0, 0x0

    :goto_5e
    :try_start_5e
    array-length v5, v2

    if-ge v0, v5, :cond_92

    aget-object v5, v2, v0

    if-eqz v5, :cond_8f

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_8f

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8f

    array-length v7, v5

    if-lez v7, :cond_8f

    new-instance v7, Lcom/umeng/commonsdk/stateless/f$1;

    invoke-direct {v7}, Lcom/umeng/commonsdk/stateless/f$1;-><init>()V

    invoke-static {v5, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    aget-object v5, v5, v6

    if-eqz v5, :cond_8f

    if-eqz v4, :cond_8e

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v9
    :try_end_8a
    .catchall {:try_start_5e .. :try_end_8a} :catchall_94

    cmp-long v11, v7, v9

    if-lez v11, :cond_8f

    :cond_8e
    move-object v4, v5

    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_92
    move-object v0, v4

    goto :goto_98

    :catchall_94
    move-exception v0

    move-object v2, v0

    move-object v0, v4

    goto :goto_b6

    :cond_98
    :goto_98
    :try_start_98
    const-string v2, "walle"

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get last envelope end, thread is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_b5
    move-exception v2

    :goto_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_98 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw v2
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_b8} :catch_b8

    :catch_b8
    move-exception v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_23

    :try_start_4
    const-string p1, "AmapLBS"

    new-array p2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[lbs-build] fileDir not exist, thread is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_20
    move-exception p1

    goto/16 :goto_147

    :cond_23
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_4a

    const-string p1, "AmapLBS"

    new-array p2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[lbs-build] fileDir not exist, thread is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4a
    sget-object p1, Lcom/umeng/commonsdk/stateless/f;->c:Ljava/lang/Object;

    monitor-enter p1
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4d} :catch_20

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const-string v3, "AmapLBS"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[lbs-build] delete file begin "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", thread is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_113

    array-length v3, v2

    if-lt v3, p2, :cond_113

    const-string v3, "AmapLBS"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "[lbs-build] file size >= max"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    const/4 v5, 0x0

    :goto_8c
    if-ge v5, v4, :cond_98

    aget-object v6, v2, v5

    if-eqz v6, :cond_95

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    :cond_98
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, p2, :cond_11e

    new-instance v4, Lcom/umeng/commonsdk/stateless/f$2;

    invoke-direct {v4}, Lcom/umeng/commonsdk/stateless/f$2;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v4, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz v4, :cond_d5

    const/4 v4, 0x0

    :goto_ab
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d5

    const-string v5, "AmapLBS"

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[lbs-build] overrun native file is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    :cond_d5
    const/4 v4, 0x0

    :goto_d6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p2

    if-gt v4, v5, :cond_11e

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_110

    const-string v5, "AmapLBS"

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[lbs-build] overrun remove file is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_104
    .catchall {:try_start_4d .. :try_end_104} :catchall_144

    :try_start_104
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_110} :catch_110
    .catchall {:try_start_104 .. :try_end_110} :catchall_144

    :catch_110
    :cond_110
    add-int/lit8 v4, v4, 0x1

    goto :goto_d6

    :cond_113
    :try_start_113
    const-string p2, "AmapLBS"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "[lbs-build] file size < max"

    aput-object v4, v3, v0

    invoke-static {p2, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11e
    const-string p2, "AmapLBS"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[lbs-build] delete file end "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thread is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_144
    move-exception p2

    monitor-exit p1
    :try_end_146
    .catchall {:try_start_113 .. :try_end_146} :catchall_144

    :try_start_146
    throw p2
    :try_end_147
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_147} :catch_20

    :goto_147
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(JJ)Z
    .registers 5

    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_17d

    const/4 v2, 0x0

    :try_start_5
    sget-object v3, Lcom/umeng/commonsdk/stateless/f;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_111
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_ce
    .catchall {:try_start_5 .. :try_end_8} :catchall_cb

    :try_start_8
    const-string v4, "walle"

    new-array v5, v0, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[stateless] begin write envelope, thread is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/stateless"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_46

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_46
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_6c

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    :cond_6c
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_92

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_92
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_97
    .catchall {:try_start_8 .. :try_end_97} :catchall_c1

    :try_start_97
    invoke-virtual {p2, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_be

    :try_start_9d
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_bb

    const-string p0, "walle"

    new-array p1, v0, [Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[stateless] end write envelope, thread id "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    return p2

    :catchall_bb
    move-exception p1

    const/4 p2, 0x1

    goto :goto_c3

    :catchall_be
    move-exception p1

    move-object v2, p2

    goto :goto_c2

    :catchall_c1
    move-exception p1

    :goto_c2
    const/4 p2, 0x0

    :goto_c3
    :try_start_c3
    monitor-exit v3
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c9

    :try_start_c4
    throw p1
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c5} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c5} :catch_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_cb

    :catch_c5
    move-exception p1

    goto :goto_d0

    :catch_c7
    move-exception p1

    goto :goto_113

    :catchall_c9
    move-exception p1

    goto :goto_c3

    :catchall_cb
    move-exception p0

    goto/16 :goto_157

    :catch_ce
    move-exception p1

    const/4 p2, 0x0

    :goto_d0
    :try_start_d0
    const-string p3, "walle"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[stateless] write envelope, e is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_ee
    .catchall {:try_start_d0 .. :try_end_ee} :catchall_cb

    if-eqz v2, :cond_f8

    :try_start_f0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4

    goto :goto_f8

    :catch_f4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f8
    :goto_f8
    const-string p0, "walle"

    new-array p1, v0, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[stateless] end write envelope, thread id "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v1

    goto :goto_153

    :catch_111
    move-exception p1

    const/4 p2, 0x0

    :goto_113
    :try_start_113
    const-string p3, "walle"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[stateless] write envelope, e is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_131
    .catchall {:try_start_113 .. :try_end_131} :catchall_cb

    if-eqz v2, :cond_13b

    :try_start_133
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_137

    goto :goto_13b

    :catch_137
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_13b
    :goto_13b
    const-string p0, "walle"

    new-array p1, v0, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[stateless] end write envelope, thread id "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v1

    :goto_153
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    :goto_157
    if-eqz v2, :cond_161

    :try_start_159
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_15d

    goto :goto_161

    :catch_15d
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_161
    :goto_161
    const-string p1, "walle"

    new-array p2, v0, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[stateless] end write envelope, thread id "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_17d
    const/4 p2, 0x0

    return p2
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/umeng/commonsdk/stateless/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "walle"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[stateless] begin read envelope, thread is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_b4

    const/4 v1, 0x0

    :try_start_21
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2c} :catch_88
    .catchall {:try_start_21 .. :try_end_2c} :catchall_83

    :try_start_2c
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->isLoaded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Z)V

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_5a

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_5a
    const-string v1, "walle"

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[stateless] end read envelope, thread id "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_75} :catch_81
    .catchall {:try_start_2c .. :try_end_75} :catchall_a8

    if-eqz p0, :cond_7f

    :try_start_77
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b
    .catchall {:try_start_77 .. :try_end_7a} :catchall_b4

    goto :goto_7f

    :catch_7b
    move-exception p0

    :try_start_7c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7f
    :goto_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_b4

    return-object v3

    :catch_81
    move-exception v1

    goto :goto_8c

    :catchall_83
    move-exception p0

    move-object v12, v1

    move-object v1, p0

    move-object p0, v12

    goto :goto_a9

    :catch_88
    move-exception p0

    move-object v12, v1

    move-object v1, p0

    move-object p0, v12

    :goto_8c
    :try_start_8c
    const-string v3, "walle"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[stateless] write envelope, e is "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_a8
    .catchall {:try_start_8c .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v1

    :goto_a9
    if-eqz p0, :cond_b3

    :try_start_ab
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af
    .catchall {:try_start_ab .. :try_end_ae} :catchall_b4

    goto :goto_b3

    :catch_af
    move-exception p0

    :try_start_b0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b3
    :goto_b3
    throw v1

    :catchall_b4
    move-exception p0

    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b0 .. :try_end_b6} :catchall_b4

    throw p0
.end method

.method public static a([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    array-length v1, p0

    if-gtz v1, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1}, Ljava/util/zip/Deflater;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    const/16 p0, 0x2000

    new-array p0, p0, [B

    const/4 v2, 0x0

    sput v2, Lcom/umeng/commonsdk/stateless/f;->a:I

    :try_start_19
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_3e

    :goto_1e
    :try_start_1e
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    sget v4, Lcom/umeng/commonsdk/stateless/f;->a:I

    add-int/2addr v4, v0

    sput v4, Lcom/umeng/commonsdk/stateless/f;->a:I

    invoke-virtual {v3, p0, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e

    :cond_31
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_3c

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_3c
    move-exception p0

    goto :goto_40

    :catchall_3e
    move-exception p0

    move-object v3, v0

    :goto_40
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_45
    throw p0

    :cond_46
    return-object v0
.end method

.method public static a([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/umeng/commonsdk/stateless/f;->b:[B

    invoke-direct {p1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)[B
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_25

    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
