.class public final Lcom/cyjh/common/util/ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/ac$b;,
        Lcom/cyjh/common/util/ac$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "su"

.field public static final b:Ljava/lang/String; = "sh"

.field public static final c:Ljava/lang/String; = "exit\n"

.field public static final d:Ljava/lang/String; = "\n"

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static a(Ljava/lang/String;)Lcom/cyjh/common/util/ac$a;
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0, v2, v2}, Lcom/cyjh/common/util/ac;->a([Ljava/lang/String;ZZI)Lcom/cyjh/common/util/ac$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0, p2}, Lcom/cyjh/common/util/ac;->a([Ljava/lang/String;ZZI)Lcom/cyjh/common/util/ac$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lcom/cyjh/common/util/ac$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cyjh/common/util/ac$a;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v1, v1, v0}, Lcom/cyjh/common/util/ac;->a([Ljava/lang/String;ZZI)Lcom/cyjh/common/util/ac$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;ZZI)Lcom/cyjh/common/util/ac$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZI)",
            "Lcom/cyjh/common/util/ac$a;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_d

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_d
    invoke-static {p0, p1, p2, p3}, Lcom/cyjh/common/util/ac;->a([Ljava/lang/String;ZZI)Lcom/cyjh/common/util/ac$a;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;)Lcom/cyjh/common/util/ac$a;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v0, v1}, Lcom/cyjh/common/util/ac;->a([Ljava/lang/String;ZZI)Lcom/cyjh/common/util/ac$a;

    move-result-object p0

    return-object p0
.end method

.method private static a([Ljava/lang/String;ZZI)Lcom/cyjh/common/util/ac$a;
    .registers 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_20e

    array-length v2, p0

    if-nez v2, :cond_9

    goto/16 :goto_20e

    :cond_9
    const/4 v2, 0x0

    sput-boolean v2, Lcom/cyjh/common/util/ac;->e:Z

    :try_start_c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    if-eqz p1, :cond_15

    const-string p1, "su"

    goto :goto_17

    :cond_15
    const-string p1, "sh"

    :goto_17
    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_1b7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_193
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1b} :catch_16c
    .catchall {:try_start_c .. :try_end_1b} :catchall_166

    :try_start_1b
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_162
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_15f
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_24} :catch_15c
    .catchall {:try_start_1b .. :try_end_24} :catchall_159

    :try_start_24
    array-length v4, p0

    :goto_25
    if-ge v2, v4, :cond_3d

    aget-object v5, p0, v2

    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3d
    const-string p0, "exit\n"

    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    if-lez p3, :cond_4f

    new-instance p0, Lcom/cyjh/common/util/ac$b;

    invoke-direct {p0, p1, p3}, Lcom/cyjh/common/util/ac$b;-><init>(Ljava/lang/Process;I)V

    invoke-virtual {p0}, Lcom/cyjh/common/util/ac$b;->start()V

    :cond_4f
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_53} :catch_152
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_53} :catch_14b
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_53} :catch_145
    .catchall {:try_start_24 .. :try_end_53} :catchall_141

    :try_start_53
    const-string p3, "SYS"

    const-string v0, "command finished."

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    sput-boolean p3, Lcom/cyjh/common/util/ac;->e:Z

    if-eqz p2, :cond_103

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_64} :catch_137
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_64} :catch_12d
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_64} :catch_123
    .catchall {:try_start_53 .. :try_end_64} :catchall_141

    :try_start_64
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_ef
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_69} :catch_e5
    .catchall {:try_start_64 .. :try_end_69} :catchall_141

    :try_start_69
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_77} :catch_dc
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_77} :catch_d3
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_77} :catch_ca
    .catchall {:try_start_69 .. :try_end_77} :catchall_141

    :try_start_77
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_85} :catch_c2
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_85} :catch_ba
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_85} :catch_b2
    .catchall {:try_start_77 .. :try_end_85} :catchall_ae

    :goto_85
    :try_start_85
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8f

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    :cond_8f
    :goto_8f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_107

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_98} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_98} :catch_a0
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_98} :catch_99
    .catchall {:try_start_85 .. :try_end_98} :catchall_1f0

    goto :goto_8f

    :catch_99
    move-exception v4

    move-object v6, p2

    move p2, p0

    move-object p0, v4

    move-object v4, p3

    goto/16 :goto_ec

    :catch_a0
    move-exception v4

    move-object v6, p2

    move p2, p0

    move-object p0, v4

    move-object v4, p3

    goto/16 :goto_f6

    :catch_a7
    move-exception v4

    move-object v6, p2

    move p2, p0

    move-object p0, v4

    move-object v4, p3

    goto/16 :goto_100

    :catchall_ae
    move-exception p0

    move-object v2, v1

    goto/16 :goto_1f1

    :catch_b2
    move-exception v2

    move-object v4, p3

    move-object p3, p2

    move p2, p0

    move-object p0, v2

    move-object v2, v1

    goto/16 :goto_174

    :catch_ba
    move-exception v2

    move-object v4, p3

    move-object p3, p2

    move p2, p0

    move-object p0, v2

    move-object v2, v1

    goto/16 :goto_19b

    :catch_c2
    move-exception v2

    move-object v4, p3

    move-object p3, p2

    move p2, p0

    move-object p0, v2

    move-object v2, v1

    goto/16 :goto_1bf

    :catch_ca
    move-exception v0

    move-object v4, p3

    move-object v2, v1

    move-object p3, p2

    move p2, p0

    move-object p0, v0

    move-object v0, v2

    goto/16 :goto_174

    :catch_d3
    move-exception v0

    move-object v4, p3

    move-object v2, v1

    move-object p3, p2

    move p2, p0

    move-object p0, v0

    move-object v0, v2

    goto/16 :goto_19b

    :catch_dc
    move-exception v0

    move-object v4, p3

    move-object v2, v1

    move-object p3, p2

    move p2, p0

    move-object p0, v0

    move-object v0, v2

    goto/16 :goto_1bf

    :catch_e5
    move-exception p3

    move-object v0, v1

    move-object v2, v0

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, p3

    :goto_ec
    move-object p3, v6

    goto/16 :goto_174

    :catch_ef
    move-exception p3

    move-object v0, v1

    move-object v2, v0

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, p3

    :goto_f6
    move-object p3, v6

    goto/16 :goto_19b

    :catch_f9
    move-exception p3

    move-object v0, v1

    move-object v2, v0

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, p3

    :goto_100
    move-object p3, v6

    goto/16 :goto_1bf

    :cond_103
    move-object p2, v1

    move-object p3, p2

    move-object v0, p3

    move-object v2, v0

    :cond_107
    :try_start_107
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    if-eqz v0, :cond_10f

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_10f
    if-eqz v2, :cond_119

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_114} :catch_115

    goto :goto_119

    :catch_115
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_119
    :goto_119
    if-eqz p1, :cond_11e

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_11e
    move-object v4, p3

    move-object p3, p2

    move p2, p0

    goto/16 :goto_1db

    :catch_123
    move-exception p2

    move-object p3, v1

    move-object v0, p3

    move-object v2, v0

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, v6

    goto/16 :goto_174

    :catch_12d
    move-exception p2

    move-object p3, v1

    move-object v0, p3

    move-object v2, v0

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, v6

    goto/16 :goto_19b

    :catch_137
    move-exception p2

    move-object p3, v1

    move-object v0, p3

    move-object v2, v0

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, v6

    goto/16 :goto_1bf

    :catchall_141
    move-exception p0

    move-object v2, v1

    goto/16 :goto_1f2

    :catch_145
    move-exception p0

    move-object p3, v1

    move-object v0, p3

    move-object v2, v0

    move-object v4, v2

    goto :goto_173

    :catch_14b
    move-exception p0

    move-object p3, v1

    move-object v0, p3

    move-object v2, v0

    move-object v4, v2

    goto/16 :goto_19a

    :catch_152
    move-exception p0

    move-object p3, v1

    move-object v0, p3

    move-object v2, v0

    move-object v4, v2

    goto/16 :goto_1be

    :catchall_159
    move-exception p0

    move-object v2, v1

    goto :goto_169

    :catch_15c
    move-exception p0

    move-object p3, v1

    goto :goto_16f

    :catch_15f
    move-exception p0

    move-object p3, v1

    goto :goto_196

    :catch_162
    move-exception p0

    move-object p3, v1

    goto/16 :goto_1ba

    :catchall_166
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    :goto_169
    move-object v3, v2

    goto/16 :goto_1f2

    :catch_16c
    move-exception p0

    move-object p1, v1

    move-object p3, p1

    :goto_16f
    move-object v0, p3

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    :goto_173
    const/4 p2, -0x1

    :goto_174
    :try_start_174
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_177
    .catchall {:try_start_174 .. :try_end_177} :catchall_1f0

    if-eqz v3, :cond_17f

    :try_start_179
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_17f

    :catch_17d
    move-exception p0

    goto :goto_18a

    :cond_17f
    :goto_17f
    if-eqz v0, :cond_184

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_184
    if-eqz v2, :cond_18d

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_189} :catch_17d

    goto :goto_18d

    :goto_18a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_18d
    :goto_18d
    if-eqz p1, :cond_1db

    :goto_18f
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_1db

    :catch_193
    move-exception p0

    move-object p1, v1

    move-object p3, p1

    :goto_196
    move-object v0, p3

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    :goto_19a
    const/4 p2, -0x1

    :goto_19b
    :try_start_19b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19e
    .catchall {:try_start_19b .. :try_end_19e} :catchall_1f0

    if-eqz v3, :cond_1a6

    :try_start_1a0
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1a6

    :catch_1a4
    move-exception p0

    goto :goto_1b1

    :cond_1a6
    :goto_1a6
    if-eqz v0, :cond_1ab

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_1ab
    if-eqz v2, :cond_1b4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1b0} :catch_1a4

    goto :goto_1b4

    :goto_1b1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b4
    :goto_1b4
    if-eqz p1, :cond_1db

    goto :goto_18f

    :catch_1b7
    move-exception p0

    move-object p1, v1

    move-object p3, p1

    :goto_1ba
    move-object v0, p3

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    :goto_1be
    const/4 p2, -0x1

    :goto_1bf
    :try_start_1bf
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c2
    .catchall {:try_start_1bf .. :try_end_1c2} :catchall_1f0

    if-eqz v3, :cond_1ca

    :try_start_1c4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1ca

    :catch_1c8
    move-exception p0

    goto :goto_1d5

    :cond_1ca
    :goto_1ca
    if-eqz v0, :cond_1cf

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_1cf
    if-eqz v2, :cond_1d8

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1d4} :catch_1c8

    goto :goto_1d8

    :goto_1d5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d8
    :goto_1d8
    if-eqz p1, :cond_1db

    goto :goto_18f

    :cond_1db
    :goto_1db
    new-instance p0, Lcom/cyjh/common/util/ac$a;

    if-nez p3, :cond_1e1

    move-object p1, v1

    goto :goto_1e5

    :cond_1e1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1e5
    if-nez v4, :cond_1e8

    goto :goto_1ec

    :cond_1e8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1ec
    invoke-direct {p0, p2, p1, v1}, Lcom/cyjh/common/util/ac$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_1f0
    move-exception p0

    :goto_1f1
    move-object v1, v0

    :goto_1f2
    if-eqz v3, :cond_1fa

    :try_start_1f4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1fa

    :catch_1f8
    move-exception p2

    goto :goto_205

    :cond_1fa
    :goto_1fa
    if-eqz v1, :cond_1ff

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1ff
    if-eqz v2, :cond_208

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_204
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_204} :catch_1f8

    goto :goto_208

    :goto_205
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_208
    :goto_208
    if-eqz p1, :cond_20d

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_20d
    throw p0

    :cond_20e
    :goto_20e
    new-instance p0, Lcom/cyjh/common/util/ac$a;

    invoke-direct {p0, v0, v1, v1}, Lcom/cyjh/common/util/ac$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a()Z
    .registers 3

    const-string v0, "echo root"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/cyjh/common/util/ac;->a([Ljava/lang/String;ZZI)Lcom/cyjh/common/util/ac$a;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/common/util/ac$a;->a:I

    if-nez v0, :cond_11

    return v1

    :cond_11
    return v2
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/cyjh/common/util/ac;->e:Z

    return v0
.end method
