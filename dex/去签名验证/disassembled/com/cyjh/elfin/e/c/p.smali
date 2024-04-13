.class public final Lcom/cyjh/elfin/e/c/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/e/c/p$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/e/c/p;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Z)Lcom/cyjh/elfin/e/c/p$a;
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lcom/cyjh/elfin/e/c/p;->a([Ljava/lang/String;ZZ)Lcom/cyjh/elfin/e/c/p$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;ZZ)Lcom/cyjh/elfin/e/c/p$a;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/cyjh/elfin/e/c/p;->a([Ljava/lang/String;ZZ)Lcom/cyjh/elfin/e/c/p$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;Z)Lcom/cyjh/elfin/e/c/p$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/cyjh/elfin/e/c/p$a;"
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
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/cyjh/elfin/e/c/p;->a([Ljava/lang/String;ZZ)Lcom/cyjh/elfin/e/c/p$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;ZZ)Lcom/cyjh/elfin/e/c/p$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/cyjh/elfin/e/c/p$a;"
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
    invoke-static {p0, p1, p2}, Lcom/cyjh/elfin/e/c/p;->a([Ljava/lang/String;ZZ)Lcom/cyjh/elfin/e/c/p$a;

    move-result-object p0

    return-object p0
.end method

.method private static a([Ljava/lang/String;Z)Lcom/cyjh/elfin/e/c/p$a;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/cyjh/elfin/e/c/p;->a([Ljava/lang/String;ZZ)Lcom/cyjh/elfin/e/c/p$a;

    move-result-object p0

    return-object p0
.end method

.method private static a([Ljava/lang/String;ZZ)Lcom/cyjh/elfin/e/c/p$a;
    .registers 12

    const/4 v0, -0x1

    if-eqz p0, :cond_183

    array-length v1, p0

    if-nez v1, :cond_8

    goto/16 :goto_183

    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    if-eqz p1, :cond_12

    const-string p1, "su"

    goto :goto_14

    :cond_12
    const-string p1, "sh"

    :goto_14
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_116
    .catchall {:try_start_9 .. :try_end_18} :catchall_111

    :try_start_18
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_10e
    .catchall {:try_start_18 .. :try_end_21} :catchall_10b

    :try_start_21
    array-length v3, p0

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_3b

    aget-object v5, p0, v4

    if-eqz v5, :cond_38

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    sget-object v5, Lcom/cyjh/elfin/e/c/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "exit"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cyjh/elfin/e/c/p;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_55} :catch_104
    .catchall {:try_start_21 .. :try_end_55} :catchall_100

    if-eqz p2, :cond_db

    :try_start_57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_d2
    .catchall {:try_start_57 .. :try_end_5c} :catchall_100

    :try_start_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_c9
    .catchall {:try_start_5c .. :try_end_61} :catchall_100

    :try_start_61
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_71} :catch_c1
    .catchall {:try_start_61 .. :try_end_71} :catchall_100

    :try_start_71
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_81} :catch_b9
    .catchall {:try_start_71 .. :try_end_81} :catchall_b5

    :try_start_81
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    :goto_87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    sget-object v5, Lcom/cyjh/elfin/e/c/p;->a:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    :cond_96
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ab

    :goto_9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ab

    sget-object v5, Lcom/cyjh/elfin/e/c/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_aa} :catch_b0
    .catchall {:try_start_81 .. :try_end_aa} :catchall_ad

    goto :goto_9c

    :cond_ab
    move-object v1, v3

    goto :goto_de

    :catchall_ad
    move-exception p0

    goto/16 :goto_15e

    :catch_b0
    move-exception v1

    move-object v8, v2

    move v2, p0

    move-object p0, v1

    goto :goto_be

    :catchall_b5
    move-exception p0

    move-object v4, v1

    goto/16 :goto_15e

    :catch_b9
    move-exception v4

    move-object v8, v2

    move v2, p0

    move-object p0, v4

    move-object v4, v1

    :goto_be
    move-object v1, v8

    goto/16 :goto_11d

    :catch_c1
    move-exception v3

    move-object v4, v1

    move-object v1, v2

    move v2, p0

    move-object p0, v3

    move-object v3, v4

    goto/16 :goto_11d

    :catch_c9
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    move-object v1, v2

    move v2, p0

    move-object p0, v0

    move-object v0, v4

    goto/16 :goto_11d

    :catch_d2
    move-exception p2

    move-object v0, v1

    move-object v3, v0

    move-object v4, v3

    move-object v1, v2

    move v2, p0

    move-object p0, p2

    move-object p2, v4

    goto :goto_11d

    :cond_db
    move-object p2, v1

    move-object v0, p2

    move-object v4, v0

    :goto_de
    :try_start_de
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_e6

    :catch_e2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_e6
    if-eqz v1, :cond_f0

    :try_start_e8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_f0

    :catch_ec
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_f0
    :goto_f0
    if-eqz v4, :cond_fa

    :try_start_f2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_fa

    :catch_f6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_fa
    :goto_fa
    if-eqz p1, :cond_144

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_144

    :catchall_100
    move-exception p0

    move-object v4, v1

    goto/16 :goto_15f

    :catch_104
    move-exception p0

    move-object p2, v1

    move-object v0, p2

    move-object v3, v0

    move-object v4, v3

    move-object v1, v2

    goto :goto_11c

    :catchall_10b
    move-exception p0

    move-object v2, v1

    goto :goto_114

    :catch_10e
    move-exception p0

    move-object p2, v1

    goto :goto_119

    :catchall_111
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    :goto_114
    move-object v4, v2

    goto :goto_15f

    :catch_116
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    :goto_119
    move-object v0, p2

    move-object v3, v0

    move-object v4, v3

    :goto_11c
    const/4 v2, -0x1

    :goto_11d
    :try_start_11d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_15c

    if-eqz v1, :cond_12a

    :try_start_122
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_126

    goto :goto_12a

    :catch_126
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_12a
    :goto_12a
    if-eqz v3, :cond_134

    :try_start_12c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_130

    goto :goto_134

    :catch_130
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_134
    :goto_134
    if-eqz v4, :cond_13e

    :try_start_136
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_13e

    :catch_13a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_13e
    :goto_13e
    if-eqz p1, :cond_143

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_143
    move p0, v2

    :cond_144
    :goto_144
    new-instance p1, Lcom/cyjh/elfin/e/c/p$a;

    if-nez p2, :cond_14b

    const-string p2, ""

    goto :goto_14f

    :cond_14b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_14f
    if-nez v0, :cond_154

    const-string v0, ""

    goto :goto_158

    :cond_154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_158
    invoke-direct {p1, p0, p2, v0}, Lcom/cyjh/elfin/e/c/p$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_15c
    move-exception p0

    move-object v2, v1

    :goto_15e
    move-object v1, v3

    :goto_15f
    if-eqz v2, :cond_169

    :try_start_161
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_165

    goto :goto_169

    :catch_165
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_169
    :goto_169
    if-eqz v1, :cond_173

    :try_start_16b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16e} :catch_16f

    goto :goto_173

    :catch_16f
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_173
    :goto_173
    if-eqz v4, :cond_17d

    :try_start_175
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_179

    goto :goto_17d

    :catch_179
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_17d
    :goto_17d
    if-eqz p1, :cond_182

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_182
    throw p0

    :cond_183
    :goto_183
    new-instance p0, Lcom/cyjh/elfin/e/c/p$a;

    const-string p1, ""

    const-string p2, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/cyjh/elfin/e/c/p$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
