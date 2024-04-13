.class public final Lcom/cyjh/feedback/lib/e/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ROOT_UTIL"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_7b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_e} :catch_76
    .catchall {:try_start_6 .. :try_end_e} :catchall_73

    :try_start_e
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_29

    :cond_4e
    const-string p1, "exit\n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    :goto_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_64

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_64
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_67} :catch_70
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_67} :catch_6d
    .catchall {:try_start_e .. :try_end_67} :catchall_6b

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    return-object v0

    :catchall_6b
    move-exception p1

    goto :goto_83

    :catch_6d
    move-exception p1

    move-object v1, p0

    goto :goto_77

    :catch_70
    move-exception p1

    move-object v1, p0

    goto :goto_7c

    :catchall_73
    move-exception p1

    move-object p0, v1

    goto :goto_83

    :catch_76
    move-exception p1

    :goto_77
    :try_start_77
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7f

    :catch_7b
    move-exception p1

    :goto_7c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_73

    :goto_7f
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    return-object v0

    :goto_83
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    throw p1
.end method

.method public static a()Z
    .registers 7

    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    array-length v4, v0

    if-ge v3, v4, :cond_4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ls -l "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_4d
    const-string v0, "/system/bin/sh"

    invoke-static {v0, v1}, Lcom/cyjh/feedback/lib/e/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    :goto_55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_73

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_73
    const-string v0, "-rws"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    return v0

    :cond_7d
    invoke-static {}, Lcom/cyjh/feedback/lib/e/e;->c()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized b()Z
    .registers 7

    const-class v0, Lcom/cyjh/feedback/lib/e/e;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "ROOT_UTIL"

    const-string v4, "try it"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_b4
    .catchall {:try_start_5 .. :try_end_16} :catchall_b1

    :try_start_16
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_af
    .catchall {:try_start_16 .. :try_end_1f} :catchall_c6

    :try_start_1f
    const-string v2, "touch /data/roottest.txt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "exit\n"

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    new-instance v2, Ljava/io/File;

    const-string v5, "/data/roottest.txt"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4b} :catch_aa
    .catchall {:try_start_1f .. :try_end_4b} :catchall_a8

    if-nez v2, :cond_55

    :try_start_4d
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_53} :catch_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_bf

    :catch_53
    monitor-exit v0

    return v1

    :cond_55
    :try_start_55
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v5, "su"

    invoke-virtual {v2, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5f} :catch_aa
    .catchall {:try_start_55 .. :try_end_5f} :catchall_a8

    :try_start_5f
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_68} :catch_a2
    .catchall {:try_start_5f .. :try_end_68} :catchall_a0

    :try_start_68
    const-string v4, "ROOT_UTIL"

    const-string v5, "try delete"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "rm -r /data/roottest.txt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v4, "exit\n"

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_90} :catch_9c
    .catchall {:try_start_68 .. :try_end_90} :catchall_99

    :try_start_90
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_96} :catch_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_bf

    :catch_96
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_99
    move-exception v1

    move-object v4, v3

    goto :goto_c9

    :catch_9c
    move-exception v4

    move-object v6, v3

    move-object v3, v2

    goto :goto_ad

    :catchall_a0
    move-exception v1

    goto :goto_c9

    :catch_a2
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v6

    goto :goto_b6

    :catchall_a8
    move-exception v1

    goto :goto_c8

    :catch_aa
    move-exception v2

    move-object v6, v4

    move-object v4, v2

    :goto_ad
    move-object v2, v6

    goto :goto_b6

    :catch_af
    move-exception v4

    goto :goto_b6

    :catchall_b1
    move-exception v1

    move-object v4, v2

    goto :goto_c9

    :catch_b4
    move-exception v4

    move-object v3, v2

    :goto_b6
    :try_start_b6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_c6

    if-eqz v2, :cond_c1

    :try_start_bb
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_c1

    :catchall_bf
    move-exception v1

    goto :goto_d2

    :cond_c1
    :goto_c1
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c4} :catch_c4
    .catchall {:try_start_bb .. :try_end_c4} :catchall_bf

    :catch_c4
    monitor-exit v0

    return v1

    :catchall_c6
    move-exception v1

    move-object v4, v2

    :goto_c8
    move-object v2, v3

    :goto_c9
    if-eqz v4, :cond_ce

    :try_start_cb
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_ce
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d1} :catch_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_bf

    :catch_d1
    :try_start_d1
    throw v1
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_bf

    :goto_d2
    monitor-exit v0

    throw v1
.end method

.method private static c()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_3d
    .catchall {:try_start_1 .. :try_end_b} :catchall_30

    :try_start_b
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_3e
    .catchall {:try_start_b .. :try_end_14} :catchall_2b

    :try_start_14
    const-string v0, "exit\n"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_29
    .catchall {:try_start_14 .. :try_end_20} :catchall_27

    :try_start_20
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_48

    return v0

    :catchall_27
    move-exception v0

    goto :goto_34

    :catch_29
    move-object v0, v2

    goto :goto_3e

    :catchall_2b
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_34

    :catchall_30
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_34
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_39
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_3c

    :catch_3c
    throw v0

    :catch_3d
    move-object v1, v0

    :catch_3e
    :goto_3e
    const/4 v2, 0x0

    if-eqz v0, :cond_44

    :try_start_41
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_44
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_47} :catch_47

    :catch_47
    const/4 v0, 0x0

    :catch_48
    return v0
.end method

.method private static d()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1d

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    const/4 v0, 0x1

    :catch_1d
    return v0
.end method
