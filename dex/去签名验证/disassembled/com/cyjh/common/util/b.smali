.class public final Lcom/cyjh/common/util/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, La/a/a/a;->a([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, La/a/a/a;->b([B)[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_2f
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_2f

    :cond_3e
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static a([BLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1b
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x400

    new-array p0, p0, [B

    :goto_27
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_27

    :cond_36
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, La/a/a/a;->b([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_36

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1e
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_1e

    :cond_2c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :cond_36
    invoke-static {v1}, Lcom/cyjh/common/util/b;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_36

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1e
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_1e

    :cond_2c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :cond_36
    return-object v1
.end method
