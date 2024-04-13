.class public Lcom/umeng/commonsdk/proguard/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "\n"

.field private static final b:[B

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\nexit\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/proguard/o;->b:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    sput-object v0, Lcom/umeng/commonsdk/proguard/o;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_c1
    .catchall {:try_start_1 .. :try_end_11} :catchall_b8

    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_b2
    .catchall {:try_start_11 .. :try_end_15} :catchall_aa

    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_a4
    .catchall {:try_start_15 .. :try_end_19} :catchall_9c

    :try_start_19
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_98
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_95
    .catchall {:try_start_19 .. :try_end_1d} :catchall_8e

    :try_start_1d
    sget-object v4, Lcom/umeng/commonsdk/proguard/o;->b:[B

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2d} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_86
    .catchall {:try_start_1d .. :try_end_2d} :catchall_80

    :try_start_2d
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_78
    .catchall {:try_start_2d .. :try_end_32} :catchall_72

    :try_start_32
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_51

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3d} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_6a
    .catchall {:try_start_32 .. :try_end_3d} :catchall_ec

    :try_start_3d
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/umeng/commonsdk/proguard/o;->a:Ljava/lang/String;

    :goto_42
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_52

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/umeng/commonsdk/proguard/o;->a:Ljava/lang/String;

    goto :goto_42

    :cond_51
    move-object v7, v0

    :cond_52
    sget-object v6, Lcom/umeng/commonsdk/proguard/o;->c:[B

    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_58} :catch_67
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_58} :catch_64
    .catchall {:try_start_3d .. :try_end_58} :catchall_ec

    if-gtz v6, :cond_52

    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    if-eqz p0, :cond_e4

    :goto_5f
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->c(Ljava/lang/Process;)V

    goto/16 :goto_e4

    :catch_64
    move-exception v6

    goto/16 :goto_c9

    :catch_67
    move-exception v6

    goto/16 :goto_da

    :catch_6a
    move-exception v6

    move-object v7, v0

    goto/16 :goto_c9

    :catch_6e
    move-exception v6

    move-object v7, v0

    goto/16 :goto_da

    :catchall_72
    move-exception v5

    move-object v8, v5

    move-object v5, v0

    move-object v0, v8

    goto/16 :goto_ed

    :catch_78
    move-exception v6

    move-object v5, v0

    goto/16 :goto_c8

    :catch_7c
    move-exception v6

    move-object v5, v0

    goto/16 :goto_d9

    :catchall_80
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    move-object v4, v5

    goto/16 :goto_ed

    :catch_86
    move-exception v6

    move-object v4, v0

    goto/16 :goto_c7

    :catch_8a
    move-exception v6

    move-object v4, v0

    goto/16 :goto_d8

    :catchall_8e
    move-exception v3

    move-object v4, v0

    move-object v5, v4

    move-object v0, v3

    move-object v3, v5

    goto/16 :goto_ed

    :catch_95
    move-exception v6

    move-object v3, v0

    goto :goto_c6

    :catch_98
    move-exception v6

    move-object v3, v0

    goto/16 :goto_d7

    :catchall_9c
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v0, v2

    move-object v2, v5

    goto/16 :goto_ed

    :catch_a4
    move-exception v6

    move-object v2, v0

    goto :goto_c5

    :catch_a7
    move-exception v6

    move-object v2, v0

    goto :goto_d6

    :catchall_aa
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v0, v1

    move-object v1, v5

    goto :goto_ed

    :catch_b2
    move-exception v6

    move-object v1, v0

    goto :goto_c4

    :catch_b5
    move-exception v6

    move-object v1, v0

    goto :goto_d5

    :catchall_b8
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v0, p0

    move-object p0, v5

    goto :goto_ed

    :catch_c1
    move-exception v6

    move-object p0, v0

    move-object v1, p0

    :goto_c4
    move-object v2, v1

    :goto_c5
    move-object v3, v2

    :goto_c6
    move-object v4, v3

    :goto_c7
    move-object v5, v4

    :goto_c8
    move-object v7, v5

    :goto_c9
    :try_start_c9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_ec

    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    if-eqz p0, :cond_e4

    goto :goto_5f

    :catch_d2
    move-exception v6

    move-object p0, v0

    move-object v1, p0

    :goto_d5
    move-object v2, v1

    :goto_d6
    move-object v3, v2

    :goto_d7
    move-object v4, v3

    :goto_d8
    move-object v5, v4

    :goto_d9
    move-object v7, v5

    :goto_da
    :try_start_da
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_ec

    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    if-eqz p0, :cond_e4

    goto/16 :goto_5f

    :cond_e4
    :goto_e4
    if-nez v7, :cond_e7

    return-object v0

    :cond_e7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_ec
    move-exception v0

    :goto_ed
    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    if-eqz p0, :cond_f5

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->c(Ljava/lang/Process;)V

    :cond_f5
    throw v0
.end method

.method private static a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V
    .registers 5

    if-eqz p0, :cond_a

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    if-eqz p1, :cond_14

    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_14
    if-eqz p2, :cond_1e

    :try_start_16
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1e
    :goto_1e
    if-eqz p3, :cond_28

    :try_start_20
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_28
    :goto_28
    if-eqz p4, :cond_32

    :try_start_2a
    invoke-virtual {p4}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_32
    return-void
.end method

.method private static a(Ljava/lang/Process;)V
    .registers 2

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->b(Ljava/lang/Process;)I

    move-result v0

    if-eqz v0, :cond_d

    :try_start_6
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method private static b(Ljava/lang/Process;)I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_4
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/Process;)V
    .registers 2

    if-eqz p0, :cond_f

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/lang/Process;)V
    :try_end_b
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/lang/Process;)V

    :cond_f
    return-void
.end method
