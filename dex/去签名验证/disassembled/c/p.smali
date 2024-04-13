.class public final Lc/p;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lc/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc/p;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc/x;)Lc/d;
    .registers 2

    new-instance v0, Lc/s;

    invoke-direct {v0, p0}, Lc/s;-><init>(Lc/x;)V

    return-object v0
.end method

.method public static a(Lc/y;)Lc/e;
    .registers 2

    new-instance v0, Lc/t;

    invoke-direct {v0, p0}, Lc/t;-><init>(Lc/y;)V

    return-object v0
.end method

.method public static a()Lc/x;
    .registers 1

    new-instance v0, Lc/p$3;

    invoke-direct {v0}, Lc/p$3;-><init>()V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;)Lc/x;
    .registers 2

    new-instance v0, Lc/z;

    invoke-direct {v0}, Lc/z;-><init>()V

    invoke-static {p0, v0}, Lc/p;->a(Ljava/io/OutputStream;Lc/z;)Lc/x;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/OutputStream;Lc/z;)Lc/x;
    .registers 3

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez p1, :cond_14

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance v0, Lc/p$1;

    invoke-direct {v0, p1, p0}, Lc/p$1;-><init>(Lc/z;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lc/x;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p0}, Lc/p;->c(Ljava/net/Socket;)Lc/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lc/p;->a(Ljava/io/OutputStream;Lc/z;)Lc/x;

    move-result-object p0

    new-instance v1, Lc/a$1;

    invoke-direct {v1, v0, p0}, Lc/a$1;-><init>(Lc/a;Lc/x;)V

    return-object v1
.end method

.method public static a(Ljava/io/File;)Lc/y;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lc/p;->a(Ljava/io/InputStream;)Lc/y;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;)Lc/y;
    .registers 2

    new-instance v0, Lc/z;

    invoke-direct {v0}, Lc/z;-><init>()V

    invoke-static {p0, v0}, Lc/p;->a(Ljava/io/InputStream;Lc/z;)Lc/y;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Lc/z;)Lc/y;
    .registers 3

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez p1, :cond_14

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance v0, Lc/p$2;

    invoke-direct {v0, p1, p0}, Lc/p$2;-><init>(Lc/z;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static varargs a(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lc/y;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lc/p;->a(Ljava/io/InputStream;)Lc/y;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/io/File;)Lc/x;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lc/p;->a(Ljava/io/OutputStream;)Lc/x;

    move-result-object p0

    return-object p0
.end method

.method private static varargs b(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lc/x;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0}, Lc/p;->a(Ljava/io/OutputStream;)Lc/x;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/net/Socket;)Lc/y;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p0}, Lc/p;->c(Ljava/net/Socket;)Lc/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lc/p;->a(Ljava/io/InputStream;Lc/z;)Lc/y;

    move-result-object p0

    new-instance v1, Lc/a$2;

    invoke-direct {v1, v0, p0}, Lc/a$2;-><init>(Lc/a;Lc/y;)V

    return-object v1
.end method

.method private static c(Ljava/net/Socket;)Lc/a;
    .registers 2

    new-instance v0, Lc/p$4;

    invoke-direct {v0, p0}, Lc/p$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method public static c(Ljava/io/File;)Lc/x;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lc/p;->a(Ljava/io/OutputStream;)Lc/x;

    move-result-object p0

    return-object p0
.end method
