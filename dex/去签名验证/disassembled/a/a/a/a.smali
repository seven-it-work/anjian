.class public final La/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, La/a/a/a;->a([B)[B

    move-result-object p0

    :try_start_8
    new-instance v0, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII is not supported!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4} :catch_19

    invoke-static {p0}, La/a/a/a;->a([B)[B

    move-result-object p0

    :try_start_8
    new-instance p1, Ljava/lang/String;

    const-string v0, "ASCII"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ASCII is not supported!"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_19
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unsupported charset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    :try_start_6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_19

    const/4 p1, 0x0

    :try_start_c
    invoke-static {v1, p0, p1}, La/a/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_16

    :try_start_f
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    return-void

    :catchall_16
    move-exception p1

    move-object v0, p0

    goto :goto_1d

    :catchall_19
    move-exception p1

    goto :goto_1d

    :catchall_1b
    move-exception p1

    move-object v1, v0

    :goto_1d
    if-eqz v0, :cond_22

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    throw p1
.end method

.method private static a(Ljava/io/File;Ljava/io/File;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    :try_start_6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_18

    :try_start_b
    invoke-static {v1, p0, p2}, La/a/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    :try_start_e
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_11

    :catch_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    return-void

    :catchall_15
    move-exception p1

    move-object v0, p0

    goto :goto_1c

    :catchall_18
    move-exception p1

    goto :goto_1c

    :catchall_1a
    move-exception p1

    move-object v1, v0

    :goto_1c
    if-eqz v0, :cond_21

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    if-eqz v1, :cond_26

    :try_start_23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    throw p1
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, La/a/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, La/a/a/c;

    invoke-direct {v0, p1, p2}, La/a/a/c;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {p0, v0}, La/a/a/a;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, La/a/a/c;->a()V

    return-void
.end method

.method public static a([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :try_start_b
    invoke-static {v0, p0, v1}, La/a/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1b
    .catchall {:try_start_b .. :try_end_e} :catchall_19

    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_11

    :catch_11
    :try_start_11
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_19
    move-exception v1

    goto :goto_24

    :catch_1b
    move-exception v1

    :try_start_1c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected I/O error"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_19

    :goto_24
    :try_start_24
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_27

    :catch_27
    :try_start_27
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2a

    :catch_2a
    throw v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_10

    invoke-static {p0}, La/a/a/a;->b([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :catch_10
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII is not supported!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_25

    invoke-static {p0}, La/a/a/a;->b([B)[B

    move-result-object p0

    :try_start_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unsupported charset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_25
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ASCII is not supported!"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static b(Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    :try_start_6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_18

    :try_start_b
    invoke-static {v1, p0}, La/a/a/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    :try_start_e
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_11

    :catch_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    return-void

    :catchall_15
    move-exception p1

    move-object v0, p0

    goto :goto_1c

    :catchall_18
    move-exception p1

    goto :goto_1c

    :catchall_1a
    move-exception p1

    move-object v1, v0

    :goto_1c
    if-eqz v0, :cond_21

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    if-eqz v1, :cond_26

    :try_start_23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    throw p1
.end method

.method private static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, La/a/a/b;

    invoke-direct {v0, p0}, La/a/a/b;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, La/a/a/a;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static b([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_a
    invoke-static {v0, p0}, La/a/a/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_1a
    .catchall {:try_start_a .. :try_end_d} :catchall_18

    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_18
    move-exception v1

    goto :goto_23

    :catch_1a
    move-exception v1

    :try_start_1b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected I/O error"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_18

    :goto_23
    :try_start_23
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    :try_start_26
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_29

    :catch_29
    throw v1
.end method

.method private static c(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method private static c([B)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-static {p0}, La/a/a/a;->a([B)[B

    move-result-object p0

    return-object p0
.end method
