.class public final Lcom/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "echo -BOC-"

    const-string v1, "id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/a/a;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/a/a/a/b;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/a/a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/a/a;
    .registers 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :try_start_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Lcom/a/a/a/c;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/a/a/a/c;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    new-instance v4, Lcom/a/a/a/c;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/a/a/a/c;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/a/a/a/c;->start()V

    invoke-virtual {v4}, Lcom/a/a/a/c;->start()V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_3c} :catch_92
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3c} :catch_90

    :try_start_3c
    array-length v5, p1

    const/4 v6, 0x0

    :goto_3e
    if-ge v6, v5, :cond_62

    aget-object v7, p1, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_62
    const-string p1, "exit\n"

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_70} :catch_71
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_70} :catch_92

    goto :goto_7f

    :catch_71
    move-exception p1

    :try_start_72
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EPIPE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7f

    throw p1

    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p1
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_83} :catch_92
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_83} :catch_90

    :try_start_83
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_86
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_86} :catch_92

    :catch_86
    :try_start_86
    invoke-virtual {v3}, Lcom/a/a/a/c;->join()V

    invoke-virtual {v4}, Lcom/a/a/a/c;->join()V

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_8f} :catch_92
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8f} :catch_90

    goto :goto_93

    :catch_90
    const/4 p1, -0x4

    goto :goto_93

    :catch_92
    const/4 p1, -0x1

    :goto_93
    new-instance p0, Lcom/a/a/a/a;

    invoke-direct {p0, v0, v1, p1}, Lcom/a/a/a/a;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object p0
.end method
