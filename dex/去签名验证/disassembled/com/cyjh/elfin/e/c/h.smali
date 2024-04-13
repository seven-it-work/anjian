.class public final Lcom/cyjh/elfin/e/c/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/e/c/h$b;,
        Lcom/cyjh/elfin/e/c/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/e/c/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/elfin/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_16
    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v3, p0, v1

    if-gez v3, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    :goto_1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    const-wide/32 v1, 0x100000

    cmp-long v3, p0, v1

    if-gez v3, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    goto :goto_1c

    :cond_3e
    const-wide/32 v1, 0x40000000

    cmp-long v3, p0, v1

    if-gez v3, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    goto :goto_1c

    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "G"

    goto :goto_1c

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "UTF-8"

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_17
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_22

    int-to-char v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_22
    if-ne v2, v3, :cond_17

    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_27} :catch_48
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_27} :catch_48

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\r"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v3, :cond_42

    const-string v0, "\r\n"

    :goto_3b
    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    if-eq v1, v3, :cond_47

    const-string v0, "\r"

    goto :goto_3b

    :cond_47
    return-object p0

    :catch_48
    return-object v1
.end method

.method private static a(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 p0, 0x0

    if-gtz p1, :cond_95

    cmp-long v6, v2, v4

    if-lez v6, :cond_1b

    if-nez p1, :cond_1b

    goto/16 :goto_95

    :cond_1b
    if-gez p1, :cond_7c

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :goto_20
    const/4 v5, 0x1

    if-eqz v2, :cond_24

    const/4 v4, 0x1

    :cond_24
    if-nez v2, :cond_29

    neg-int v2, p1

    new-array v2, v2, [B

    :cond_29
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    array-length v7, v2

    if-eq v6, v7, :cond_78

    if-nez v3, :cond_3d

    if-gtz v6, :cond_3d

    :goto_34
    const-string p0, ""
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_d8

    :goto_36
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_3d
    if-nez v3, :cond_4b

    :try_start_3f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, p0, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_d8

    :goto_44
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    :cond_4b
    if-lez v6, :cond_58

    :try_start_4d
    array-length p1, v3

    sub-int/2addr p1, v6

    invoke-static {v3, v6, v3, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v3

    sub-int/2addr p1, v6

    invoke-static {v2, p0, v3, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x1

    :cond_58
    if-eqz p2, :cond_72

    if-nez v4, :cond_5d

    goto :goto_72

    :cond_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_36

    :cond_72
    :goto_72
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_36

    :cond_78
    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_20

    :cond_7c
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 p2, 0x400

    new-array v2, p2, [B

    :cond_85
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_8e

    invoke-virtual {p1, v2, p0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_8e
    if-eq v3, p2, :cond_85

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_36

    :cond_95
    :goto_95
    cmp-long v6, v2, v4

    if-lez v6, :cond_a1

    if-eqz p1, :cond_a0

    int-to-long v4, p1

    cmp-long v6, v2, v4

    if-gez v6, :cond_a1

    :cond_a0
    long-to-int p1, v2

    :cond_a1
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_ac

    goto :goto_34

    :cond_ac
    if-gt v3, p1, :cond_b4

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, p0, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_44

    :cond_b4
    if-nez p2, :cond_c2

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2, p0, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_bb
    .catchall {:try_start_4d .. :try_end_bb} :catchall_d8

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p2

    :cond_c2
    :try_start_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, p0, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_d6
    .catchall {:try_start_c2 .. :try_end_d6} :catchall_d8

    goto/16 :goto_36

    :catchall_d8
    move-exception p0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/e/c/h;->a()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/cyjh/elfin/e/c/h;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/cyjh/elfin/e/c/h;->a()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_12
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_27

    :try_start_1b
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_27

    :catch_27
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_12

    :try_start_5
    invoke-static {v0, p1}, Lcom/cyjh/elfin/e/c/h;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return p0

    :catchall_d
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_3b

    const/16 p1, 0x1000

    :try_start_11
    new-array p1, p1, [B

    :goto_13
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1d

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_2c

    goto :goto_13

    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_3b

    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_27

    :catch_27
    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_2c
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_3b

    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_37

    :catch_37
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_3b

    :catch_3b
    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :try_start_e
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1c
    :goto_1c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_d
.end method

.method private static b(Ljava/io/File;)Z
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/e/c/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/cyjh/elfin/e/c/h;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :catchall_c
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    if-nez p0, :cond_8

    const-string p0, ""

    :cond_8
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    goto :goto_1b

    :goto_31
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x400

    :try_start_c
    new-array p0, p0, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_13
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2c

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_22} :catch_28
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_22} :catch_23

    goto :goto_13

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catch_28
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
