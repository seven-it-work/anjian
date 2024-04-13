.class public Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;
.super Ljava/lang/Object;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStreamAsBytesArray(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x800

    new-array v2, v2, [B

    :goto_f
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_19

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_f

    :cond_19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readStreamAsBytesArray(Ljava/io/InputStream;I)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x800

    new-array v3, v2, [B

    const-wide/16 v4, 0x0

    :goto_11
    int-to-long v6, p1

    cmp-long v8, v4, v6

    if-gez v8, :cond_2b

    sub-long v8, v6, v4

    long-to-int v6, v8

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v3, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_2b

    invoke-virtual {v1, v3, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v6, v6

    add-long v8, v4, v6

    move-wide v4, v8

    goto :goto_11

    :cond_2b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const/4 v0, 0x0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [C

    :try_start_f
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_35

    :goto_19
    :try_start_19
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result p1

    if-lez p1, :cond_24

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, p1}, Ljava/io/Writer;->write([CII)V

    goto :goto_19

    :cond_24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_32

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-object p1

    :catchall_32
    move-exception p1

    move-object v0, v3

    goto :goto_36

    :catchall_35
    move-exception p1

    :goto_36
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_3e
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw p1
.end method

.method public static safeClose(Ljava/io/InputStream;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static safeClose(Ljava/io/OutputStream;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method
