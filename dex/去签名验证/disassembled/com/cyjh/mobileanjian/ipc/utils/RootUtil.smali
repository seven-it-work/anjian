.class public Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;
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
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_7f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_e} :catch_78
    .catchall {:try_start_6 .. :try_end_e} :catchall_75

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
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_67} :catch_72
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_67} :catch_6f
    .catchall {:try_start_e .. :try_end_67} :catchall_6d

    if-eqz p0, :cond_88

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    return-object v0

    :catchall_6d
    move-exception p1

    goto :goto_89

    :catch_6f
    move-exception p1

    move-object v1, p0

    goto :goto_79

    :catch_72
    move-exception p1

    move-object v1, p0

    goto :goto_80

    :catchall_75
    move-exception p1

    move-object p0, v1

    goto :goto_89

    :catch_78
    move-exception p1

    :goto_79
    :try_start_79
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    if-eqz v1, :cond_88

    goto :goto_85

    :catch_7f
    move-exception p1

    :goto_80
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_75

    if-eqz v1, :cond_88

    :goto_85
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_88
    return-object v0

    :goto_89
    if-eqz p0, :cond_8e

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_8e
    throw p1
.end method

.method private static a()Z
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

.method public static isRoot()Z
    .registers 7

    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_30

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    const-string v6, "su"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v5}, Ljava/io/File;->canExecute()Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v0, 0x1

    return v0

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_30
    return v2
.end method
