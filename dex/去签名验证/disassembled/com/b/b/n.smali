.class public final Lcom/b/b/n;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/b/b/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/b/b/n;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/b/b/w;)Lcom/b/b/g;
    .registers 2

    new-instance v0, Lcom/b/b/r;

    invoke-direct {v0, p0}, Lcom/b/b/r;-><init>(Lcom/b/b/w;)V

    return-object v0
.end method

.method public static a(Lcom/b/b/x;)Lcom/b/b/h;
    .registers 2

    new-instance v0, Lcom/b/b/s;

    invoke-direct {v0, p0}, Lcom/b/b/s;-><init>(Lcom/b/b/x;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lcom/b/b/w;
    .registers 3

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p0}, Lcom/b/b/n;->c(Ljava/net/Socket;)Lcom/b/b/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    if-nez p0, :cond_1c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    new-instance v1, Lcom/b/b/o;

    invoke-direct {v1, v0, p0}, Lcom/b/b/o;-><init>(Lcom/b/b/y;Ljava/io/OutputStream;)V

    new-instance p0, Lcom/b/b/b;

    invoke-direct {p0, v0, v1}, Lcom/b/b/b;-><init>(Lcom/b/b/a;Lcom/b/b/w;)V

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

.method public static b(Ljava/net/Socket;)Lcom/b/b/x;
    .registers 3

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p0}, Lcom/b/b/n;->c(Ljava/net/Socket;)Lcom/b/b/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_1c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    new-instance v1, Lcom/b/b/p;

    invoke-direct {v1, v0, p0}, Lcom/b/b/p;-><init>(Lcom/b/b/y;Ljava/io/InputStream;)V

    new-instance p0, Lcom/b/b/c;

    invoke-direct {p0, v0, v1}, Lcom/b/b/c;-><init>(Lcom/b/b/a;Lcom/b/b/x;)V

    return-object p0
.end method

.method private static c(Ljava/net/Socket;)Lcom/b/b/a;
    .registers 2

    new-instance v0, Lcom/b/b/q;

    invoke-direct {v0, p0}, Lcom/b/b/q;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
