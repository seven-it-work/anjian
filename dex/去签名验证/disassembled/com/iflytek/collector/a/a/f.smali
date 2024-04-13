.class public Lcom/iflytek/collector/a/a/f;
.super Ljava/lang/Object;


# direct methods
.method private static a(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static a([B)[B
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/iflytek/collector/a/a/a;->a()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v1

    if-eqz p0, :cond_14

    invoke-static {p0}, Lcom/iflytek/collector/a/a/f;->b([B)[B

    move-result-object p0

    invoke-static {p0, v1}, Lcom/iflytek/collector/a/a/a;->a([B[B)[B

    move-result-object p0

    goto :goto_15

    :cond_14
    move-object p0, v0

    :goto_15
    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCt8H0BF3SquJmk6xIo2bTldgvtazLIeSbR4cle\np7zeUAtI/mC7UgFl8xXFCTemVambyQFnM5GsZOI1BpAMJO7N/YHRX7hvCZG6D0rEXQEdKXhKFIBQ\nmOYRYZP042vWRcKZ6iQLdLYmyg6tIzjYVfH0f6YX8OLIU7fy0TA/c88rzwIDAQAB"

    invoke-static {v2}, Lcom/iflytek/collector/a/a/h;->a(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/collector/a/a/h;->a([BLjava/security/interfaces/RSAPublicKey;)[B

    move-result-object v1

    if-eqz v1, :cond_4d

    if-nez p0, :cond_24

    return-object v0

    :cond_24
    array-length v2, v1

    array-length v3, p0

    add-int v4, v2, v3

    add-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    invoke-static {v2}, Lcom/iflytek/collector/a/a/f;->a(I)[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v7, v6, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x5

    invoke-static {v1, v6, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    const/4 v1, 0x3

    aput-byte v1, v4, v2

    add-int/2addr v2, v5

    invoke-static {v3}, Lcom/iflytek/collector/a/a/f;->a(I)[B

    move-result-object v1

    invoke-static {v1, v6, v4, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v8

    invoke-static {p0, v6, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_4e

    return-object v4

    :cond_4d
    return-object v0

    :catch_4e
    const-string p0, "Collector"

    const-string v1, "encrypt error"

    invoke-static {p0, v1}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b([B)[B
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_9
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_32
    .catchall {:try_start_9 .. :try_end_e} :catchall_2f

    :try_start_e
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge p0, v3, :cond_1d

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    :cond_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_2d
    .catchall {:try_start_e .. :try_end_21} :catchall_48

    :try_start_21
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p0

    :catch_2d
    move-exception p0

    goto :goto_34

    :catchall_2f
    move-exception p0

    move-object v2, v0

    goto :goto_49

    :catch_32
    move-exception p0

    move-object v2, v0

    :goto_34
    :try_start_34
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_48

    if-eqz v2, :cond_3f

    :try_start_39
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_3f

    :catch_3d
    move-exception p0

    goto :goto_43

    :cond_3f
    :goto_3f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_42} :catch_3d

    goto :goto_46

    :goto_43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_46
    move-object p0, v0

    return-object p0

    :catchall_48
    move-exception p0

    :goto_49
    if-eqz v2, :cond_51

    :try_start_4b
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_51

    :catch_4f
    move-exception v0

    goto :goto_55

    :cond_51
    :goto_51
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_4f

    goto :goto_58

    :goto_55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_58
    throw p0
.end method
