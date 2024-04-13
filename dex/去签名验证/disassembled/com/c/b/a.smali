.class public abstract Lcom/c/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static M:Lcom/c/b/h; = null

.field private static final O:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static Q:Ljava/util/concurrent/ExecutorService; = null

.field private static R:Lorg/apache/http/conn/scheme/SocketFactory; = null

.field private static S:Lorg/apache/http/impl/client/DefaultHttpClient; = null

.field private static T:Lcom/c/b/g; = null

.field private static final V:Ljava/lang/String; = "\r\n"

.field private static final W:Ljava/lang/String; = "--"

.field private static final X:Ljava/lang/String; = "*****"

.field public static a:I = 0x7530

.field static t:I = 0xc8

.field private static u:Ljava/lang/String; = null

.field private static v:I = 0x4

.field private static w:Z = true

.field private static x:Z = true

.field private static y:Z


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/io/File;

.field private E:Z

.field private F:I

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lorg/apache/http/client/methods/HttpUriRequest;

.field private K:Z

.field private L:I

.field private N:Lorg/apache/http/HttpHost;

.field private P:Z

.field private U:Z

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/c/b/h;

.field protected i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public j:I

.field public k:Ljava/io/File;

.field protected l:Lcom/c/a/a;

.field protected m:Lcom/c/b/c;

.field protected n:Z

.field protected o:Z

.field public p:J

.field public q:I

.field public r:Z

.field public s:Z

.field private z:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/c/b/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/c/b/a;->O:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/b/a;->j:I

    iput v0, p0, Lcom/c/b/a;->F:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/c/b/a;->G:Z

    const-string v2, "UTF-8"

    iput-object v2, p0, Lcom/c/b/a;->H:Ljava/lang/String;

    const/4 v2, 0x4

    iput v2, p0, Lcom/c/b/a;->q:I

    iput-boolean v1, p0, Lcom/c/b/a;->K:Z

    iput v0, p0, Lcom/c/b/a;->L:I

    return-void
.end method

.method private A()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private B()Lcom/c/b/c;
    .registers 2

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    return-object v0
.end method

.method private C()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/b/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method private D()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/a;->U:Z

    iget-object v0, p0, Lcom/c/b/a;->J:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/c/b/a;->J:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/c/b/a;->J:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_14
    return-void
.end method

.method private E()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/c/b/a;->g:Ljava/util/Map;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/c/b/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4c

    :cond_d
    iget-object v0, p0, Lcom/c/b/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/c/b/a;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_4c
    :goto_4c
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(J)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/c/b/a;->p:J

    return-object p0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_14

    const-string v0, "g."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/c/a/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/c/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    :cond_14
    return-object p0
.end method

.method private a(Landroid/app/Dialog;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/c/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/view/View;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/c/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/io/File;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->k:Ljava/io/File;

    return-object p0
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    return-object p0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/c/b/a;->a(Ljava/lang/String;I)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Basic "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/String;

    array-length p4, p1

    invoke-static {p1, p4}, Lcom/c/d/a;->a([BI)[C

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "proxy auth"

    invoke-static {p2, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "Proxy-Authorization"

    invoke-virtual {p0, p2, p1}, Lcom/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3f
    return-object v0
.end method

.method static synthetic a(Lcom/c/b/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([BLjava/lang/String;Lcom/c/b/c;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "utf-8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2

    :cond_f
    const-string p1, "Content-Type"

    invoke-virtual {p2, p1}, Lcom/c/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/c/b/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "parsing header"

    invoke-static {v1, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_26

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2

    :cond_26
    new-instance p1, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_6f

    :try_start_2d
    const-string v1, "<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_47

    :cond_3f
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/b/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_47
    const-string v1, "parsing needed"

    invoke-static {v1, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_74

    const-string v1, "utf-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "correction needed"

    invoke-static {v1, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_60} :catch_6d

    :try_start_60
    const-string p0, "utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, p2, Lcom/c/b/c;->l:[B
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_68} :catch_6a

    move-object p1, v1

    return-object p1

    :catch_6a
    move-exception p0

    move-object p1, v1

    goto :goto_71

    :catch_6d
    move-exception p0

    goto :goto_71

    :catch_6f
    move-exception p0

    move-object p1, v0

    :goto_71
    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    :cond_74
    return-object p1
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_40

    :cond_2f
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_40
    invoke-virtual {p1, v1, p0, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    :cond_45
    invoke-virtual {p1, p0, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private static a(I)V
    .registers 1

    sput p0, Lcom/c/b/a;->a:I

    return-void
.end method

.method private static a(Lcom/c/b/g;)V
    .registers 1

    sput-object p0, Lcom/c/b/a;->T:Lcom/c/b/g;

    return-void
.end method

.method private static a(Lcom/c/b/h;)V
    .registers 1

    sput-object p0, Lcom/c/b/a;->M:Lcom/c/b/h;

    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_16

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v0, v1}, Lcom/c/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void

    :cond_16
    instance-of v0, p2, [B

    if-eqz v0, :cond_25

    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p2, [B

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, p1, p1, v0}, Lcom/c/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void

    :cond_25
    instance-of v0, p2, Ljava/io/InputStream;

    if-eqz v0, :cond_2f

    check-cast p2, Ljava/io/InputStream;

    invoke-static {p0, p1, p1, p2}, Lcom/c/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void

    :cond_2f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"; filename=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "Content-Type: application/octet-stream"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "Content-Transfer-Encoding: binary"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-static {p3, p0}, Lcom/c/d/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/File;[B)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[B)V"
        }
    .end annotation

    if-eqz p0, :cond_8

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-static {p0, p1}, Lcom/c/d/a;->a(Ljava/io/File;[B)V

    :cond_8
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/a;->C:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/c/b/a;->C:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-eqz v0, :cond_14

    new-instance v1, Lcom/c/d/f;

    invoke-direct {v1, v0}, Lcom/c/d/f;-><init>(Ljava/lang/Object;)V

    :cond_14
    invoke-static {p1, p2, p3, v1}, Lcom/c/d/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/c/d/f;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/c/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void

    :cond_6
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/c/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p4, p5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p3

    const-string v0, "copy failed, deleting files"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    throw p3
.end method

.method private static a(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_c

    sget v0, Lcom/c/b/a;->v:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    :cond_c
    sget-object v0, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/c/b/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "get"

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/c/b/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/c/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/c/b/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/c/b/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/c/b/c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "post"

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/c/b/a;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/c/b/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/c/b/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/c/b/c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    const-string v0, "%entity"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_18

    check-cast v0, Lorg/apache/http/HttpEntity;

    move-object p3, v0

    goto :goto_32

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_25
    :goto_25
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_50

    new-instance p3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {p3, v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :goto_32
    iget-object v0, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, p2, p1, p4}, Lcom/c/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/c/b/c;)V

    return-void

    :cond_50
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_25

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/c/b/c;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    sget-object v4, Lcom/c/b/a;->S:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v4, :cond_e

    sget-boolean v4, Lcom/c/b/a;->x:Z

    if-nez v4, :cond_69

    :cond_e
    const-string v4, "creating http client"

    invoke-static {v4}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v5, Lcom/c/b/a;->a:I

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v5, Lcom/c/b/a;->a:I

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v5, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v6, 0x19

    invoke-direct {v5, v6}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v5, 0x2000

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    sget-object v8, Lcom/c/b/a;->R:Lorg/apache/http/conn/scheme/SocketFactory;

    if-nez v8, :cond_53

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v8

    goto :goto_55

    :cond_53
    sget-object v8, Lcom/c/b/a;->R:Lorg/apache/http/conn/scheme/SocketFactory;

    :goto_55
    const/16 v9, 0x1bb

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v6, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v6, v4, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v6, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v5, Lcom/c/b/a;->S:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_69
    sget-object v4, Lcom/c/b/a;->S:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v5, Lcom/c/b/a;->u:Ljava/lang/String;

    if-eqz v5, :cond_77

    const-string v5, "User-Agent"

    sget-object v6, Lcom/c/b/a;->u:Ljava/lang/String;

    :goto_73
    invoke-interface {v2, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_77
    sget-object v5, Lcom/c/b/a;->u:Ljava/lang/String;

    if-nez v5, :cond_84

    sget-boolean v5, Lcom/c/b/a;->w:Z

    if-eqz v5, :cond_84

    const-string v5, "User-Agent"

    const-string v6, "gzip"

    goto :goto_73

    :cond_84
    :goto_84
    iget-object v5, v1, Lcom/c/b/a;->f:Ljava/util/Map;

    if-eqz v5, :cond_ab

    iget-object v5, v1, Lcom/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_92
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_99

    goto :goto_ab

    :cond_99
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    :cond_ab
    :goto_ab
    sget-boolean v5, Lcom/c/b/a;->w:Z

    if-eqz v5, :cond_c4

    iget-object v5, v1, Lcom/c/b/a;->f:Ljava/util/Map;

    if-eqz v5, :cond_bd

    iget-object v5, v1, Lcom/c/b/a;->f:Ljava/util/Map;

    const-string v6, "Accept-Encoding"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c4

    :cond_bd
    const-string v5, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-interface {v2, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    iget-object v5, v1, Lcom/c/b/a;->l:Lcom/c/a/a;

    if-eqz v5, :cond_cd

    iget-object v5, v1, Lcom/c/b/a;->l:Lcom/c/a/a;

    invoke-virtual {v5, v1, v2}, Lcom/c/a/a;->a(Lcom/c/b/a;Lorg/apache/http/HttpRequest;)V

    :cond_cd
    invoke-direct/range {p0 .. p0}, Lcom/c/b/a;->E()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d8

    const-string v6, "Cookie"

    invoke-interface {v2, v6, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d8
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    iget-object v6, v1, Lcom/c/b/a;->N:Lorg/apache/http/HttpHost;

    if-eqz v6, :cond_e7

    const-string v6, "http.route.default-proxy"

    iget-object v7, v1, Lcom/c/b/a;->N:Lorg/apache/http/HttpHost;

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_e7
    iget v6, v1, Lcom/c/b/a;->F:I

    if-lez v6, :cond_101

    const-string v6, "http.connection.timeout"

    iget v7, v1, Lcom/c/b/a;->F:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v6, "http.socket.timeout"

    iget v7, v1, Lcom/c/b/a;->F:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_101
    iget-boolean v6, v1, Lcom/c/b/a;->G:Z

    if-nez v6, :cond_10b

    const-string v6, "http.protocol.handle-redirects"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    :cond_10b
    new-instance v6, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v6}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    new-instance v7, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    const-string v8, "http.cookie-store"

    invoke-interface {v6, v8, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/c/b/a;->J:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-boolean v7, v1, Lcom/c/b/a;->U:Z

    if-eqz v7, :cond_128

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Aborted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_128
    sget-boolean v7, Lcom/c/b/a;->y:Z

    if-eqz v7, :cond_134

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Simulated Error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_134
    const/4 v7, 0x0

    :try_start_135
    invoke-static {v2, v4, v6}, Lcom/c/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v8
    :try_end_139
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_135 .. :try_end_139} :catch_13a

    goto :goto_14d

    :catch_13a
    move-exception v0

    iget-object v8, v1, Lcom/c/b/a;->N:Lorg/apache/http/HttpHost;

    if-eqz v8, :cond_2d7

    const-string v8, "proxy failed, retrying without proxy"

    invoke-static {v8}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const-string v8, "http.route.default-proxy"

    invoke-interface {v5, v8, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-static {v2, v4, v6}, Lcom/c/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    :goto_14d
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    const/16 v10, 0xc8

    if-lt v2, v10, :cond_25f

    const/16 v10, 0x12c

    if-lt v2, v10, :cond_16b

    goto/16 :goto_25f

    :cond_16b
    const-string v10, "http.target_host"

    invoke-interface {v6, v10}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/HttpHost;

    const-string v11, "http.request"

    invoke-interface {v6, v11}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x20

    const/high16 v12, 0x10000

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    long-to-int v13, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    :try_start_1a4
    invoke-direct/range {p0 .. p0}, Lcom/c/b/a;->q()Ljava/io/File;

    move-result-object v12
    :try_end_1a8
    .catchall {:try_start_1a4 .. :try_end_1a8} :catchall_254

    if-nez v12, :cond_1b6

    :try_start_1aa
    new-instance v13, Lcom/c/d/e;

    invoke-direct {v13, v11}, Lcom/c/d/e;-><init>(I)V
    :try_end_1af
    .catchall {:try_start_1aa .. :try_end_1af} :catchall_1b1

    move-object v11, v7

    goto :goto_1de

    :catchall_1b1
    move-exception v0

    move-object v2, v0

    move-object v13, v7

    goto/16 :goto_258

    :cond_1b6
    :try_start_1b6
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    new-instance v13, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1de
    .catchall {:try_start_1b6 .. :try_end_1de} :catchall_254

    :goto_1de
    :try_start_1de
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14
    :try_end_1e2
    .catchall {:try_start_1de .. :try_end_1e2} :catchall_250

    :try_start_1e2
    const-string v15, "gzip"

    invoke-static {v9}, Lcom/c/b/a;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f4

    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v14}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f3
    .catchall {:try_start_1e2 .. :try_end_1f3} :catchall_24c

    goto :goto_1f5

    :cond_1f4
    move-object v7, v14

    :goto_1f5
    :try_start_1f5
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    long-to-int v9, v14

    if-nez v12, :cond_200

    invoke-direct {v1, v7, v13, v9}, Lcom/c/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_1ff
    .catchall {:try_start_1f5 .. :try_end_1ff} :catchall_249

    goto :goto_20c

    :cond_200
    :try_start_200
    invoke-direct {v1, v7, v13, v9}, Lcom/c/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_20c} :catch_235
    .catchall {:try_start_200 .. :try_end_20c} :catchall_249

    :goto_20c
    if-nez v12, :cond_216

    :try_start_20e
    move-object v9, v13

    check-cast v9, Lcom/c/d/e;

    invoke-virtual {v9}, Lcom/c/d/e;->toByteArray()[B

    move-result-object v9

    goto :goto_22b

    :cond_216
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_229

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14
    :try_end_220
    .catchall {:try_start_20e .. :try_end_220} :catchall_249

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-nez v9, :cond_227

    goto :goto_229

    :cond_227
    const/4 v9, 0x0

    goto :goto_22b

    :cond_229
    :goto_229
    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_22b
    invoke-static {v7}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    move-object v7, v10

    const/4 v10, 0x0

    goto/16 :goto_2a4

    :catch_235
    move-exception v0

    move-object v2, v0

    :try_start_237
    const-string v3, "copy failed, deleting files"

    invoke-static {v3}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    invoke-static {v7}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    throw v2
    :try_end_249
    .catchall {:try_start_237 .. :try_end_249} :catchall_249

    :catchall_249
    move-exception v0

    move-object v2, v0

    goto :goto_258

    :catchall_24c
    move-exception v0

    move-object v2, v0

    move-object v7, v14

    goto :goto_258

    :catchall_250
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto :goto_258

    :catchall_254
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_258
    invoke-static {v7}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    throw v2

    :cond_25f
    :goto_25f
    if-eqz v9, :cond_29b

    :try_start_261
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_265} :catch_289
    .catchall {:try_start_261 .. :try_end_265} :catchall_285

    :try_start_265
    invoke-static {v9}, Lcom/c/b/a;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/c/b/a;->a(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v9, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_274
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_274} :catch_280
    .catchall {:try_start_265 .. :try_end_274} :catchall_27d

    :try_start_274
    const-string v9, "error"

    invoke-static {v9, v10}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_279} :catch_27a
    .catchall {:try_start_274 .. :try_end_279} :catchall_27d

    goto :goto_29d

    :catch_27a
    move-exception v0

    move-object v9, v7

    goto :goto_283

    :catchall_27d
    move-exception v0

    move-object v2, v0

    goto :goto_297

    :catch_280
    move-exception v0

    move-object v9, v7

    const/4 v10, 0x0

    :goto_283
    move-object v7, v0

    goto :goto_28d

    :catchall_285
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto :goto_297

    :catch_289
    move-exception v0

    move-object v7, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_28d
    :try_start_28d
    invoke-static {v7}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_290
    .catchall {:try_start_28d .. :try_end_290} :catchall_294

    invoke-static {v9}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    goto :goto_2a0

    :catchall_294
    move-exception v0

    move-object v2, v0

    move-object v7, v9

    :goto_297
    invoke-static {v7}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    throw v2

    :cond_29b
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_29d
    invoke-static {v7}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    :goto_2a0
    move-object/from16 v7, p2

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_2a4
    const-string v11, "response"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v9, :cond_2b9

    array-length v11, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v13, p2

    invoke-static {v11, v13}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b9
    iput v2, v3, Lcom/c/b/c;->i:I

    iput-object v5, v3, Lcom/c/b/c;->j:Ljava/lang/String;

    iput-object v10, v3, Lcom/c/b/c;->w:Ljava/lang/String;

    iput-object v7, v3, Lcom/c/b/c;->k:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v3, Lcom/c/b/c;->n:Ljava/util/Date;

    iput-object v9, v3, Lcom/c/b/c;->l:[B

    iput-object v12, v3, Lcom/c/b/c;->m:Ljava/io/File;

    iput-object v4, v3, Lcom/c/b/c;->p:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput-object v6, v3, Lcom/c/b/c;->x:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    iput-object v2, v3, Lcom/c/b/c;->y:[Lorg/apache/http/Header;

    return-void

    :cond_2d7
    throw v0
.end method

.method private static a(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .registers 1

    sput-object p0, Lcom/c/b/a;->R:Lorg/apache/http/conn/scheme/SocketFactory;

    const/4 p0, 0x0

    sput-object p0, Lcom/c/b/a;->S:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/InputStream;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gzip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_f

    :cond_e
    move-object p0, p1

    :goto_f
    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".tmp"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-object v0
.end method

.method private b(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lcom/c/b/a;->q:I

    return-object p0
.end method

.method private b(Lcom/c/b/h;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/h;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->h:Lcom/c/b/h;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/a;->g:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/c/b/a;->g:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/c/b/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private b(Ljava/util/Map;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    return-object p0
.end method

.method private static b(Landroid/net/Uri;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-lt v3, v1, :cond_15

    return-object v0

    :cond_15
    aget-object v4, p0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v5, v6, :cond_2a

    aget-object v5, v4, v2

    aget-object v4, v4, v7

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_2a
    array-length v5, v4

    if-ne v5, v7, :cond_34

    aget-object v4, v4, v2

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_12
.end method

.method private b(Ljava/lang/String;Lcom/c/b/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "get"

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/c/b/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/c/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/c/b/c;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Lcom/c/b/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/c/b/c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "put"

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/c/b/a;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/c/b/c;)V

    return-void
.end method

.method private c(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lcom/c/b/a;->F:I

    return-object p0
.end method

.method private c(Ljava/util/Map;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->g:Ljava/util/Map;

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Basic "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v1}, Lcom/c/d/a;->a([BI)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .registers 1

    sget-object v0, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    :cond_c
    invoke-static {}, Lcom/c/b/d;->d()V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/c/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iput-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    iget-object p1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/4 v0, 0x4

    iput v0, p1, Lcom/c/b/c;->r:I

    invoke-virtual {p1}, Lcom/c/b/c;->a()Lcom/c/b/c;

    invoke-virtual {p0}, Lcom/c/b/a;->a()V

    return-void

    :cond_16
    iget v0, p0, Lcom/c/b/a;->j:I

    invoke-static {p1, v0}, Lcom/c/d/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/c/b/a;->D:Ljava/io/File;

    sget-object p1, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_2a

    sget p1, Lcom/c/b/a;->v:I

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sput-object p1, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    :cond_2a
    sget-object p1, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/c/b/a;->u:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/Map;Lcom/c/b/c;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/c/b/c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "multipart"

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/b/a;->N:Lorg/apache/http/HttpHost;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    const-string v1, "proxy"

    iget-object v3, p0, Lcom/c/b/a;->N:Lorg/apache/http/HttpHost;

    invoke-static {v1, v3}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/c/b/a;->N:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/c/b/a;->N:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_3b

    :cond_2f
    sget-object v1, Lcom/c/b/a;->T:Lcom/c/b/g;

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/c/b/a;->T:Lcom/c/b/g;

    invoke-virtual {v1}, Lcom/c/b/g;->b()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_3b

    :cond_3a
    move-object v1, v2

    :goto_3b
    if-nez v1, :cond_44

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_41
    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_49

    :cond_44
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_41

    :goto_49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget v3, Lcom/c/b/a;->a:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "multipart/form-data;charset=utf-8;boundary=*****"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_86

    goto :goto_98

    :cond_86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    :cond_98
    :goto_98
    invoke-direct {p0}, Lcom/c/b/a;->E()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a3

    const-string v3, "Cookie"

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    iget-object v1, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    invoke-virtual {v1, p0, v0}, Lcom/c/a/a;->a(Lcom/c/b/a;Ljava/net/HttpURLConnection;)V

    :cond_ac
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_bd
    :goto_bd
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12c

    const-string p2, "--*****--\r\n"

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    if-lt p2, v4, :cond_f0

    const/16 v4, 0x12c

    if-lt p2, v4, :cond_e6

    goto :goto_f0

    :cond_e6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/c/b/a;->a(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    move-object v4, v2

    goto :goto_105

    :cond_f0
    :goto_f0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/c/b/a;->a(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v4, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "error"

    invoke-static {v0, v4}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_105
    const-string v3, "response"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_118

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_118
    iput p2, p3, Lcom/c/b/c;->i:I

    iput-object v1, p3, Lcom/c/b/c;->j:Ljava/lang/String;

    iput-object p1, p3, Lcom/c/b/c;->k:Ljava/lang/String;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p3, Lcom/c/b/c;->n:Ljava/util/Date;

    iput-object v0, p3, Lcom/c/b/c;->l:[B

    iput-object v4, p3, Lcom/c/b/c;->w:Ljava/lang/String;

    iput-object v2, p3, Lcom/c/b/c;->p:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void

    :cond_12c
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_bd

    instance-of v5, v3, Ljava/io/File;

    if-eqz v5, :cond_152

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v4, v5, v6}, Lcom/c/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_bd

    :cond_152
    instance-of v5, v3, [B

    if-eqz v5, :cond_162

    new-instance v5, Ljava/io/ByteArrayInputStream;

    check-cast v3, [B

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, v4, v4, v5}, Lcom/c/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_bd

    :cond_162
    instance-of v5, v3, Ljava/io/InputStream;

    if-eqz v5, :cond_16d

    check-cast v3, Ljava/io/InputStream;

    invoke-static {v1, v4, v4, v3}, Lcom/c/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_bd

    :cond_16d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "--*****\r\n"

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Content-Disposition: form-data; name=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_bd
.end method

.method private d()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    return-object p0
.end method

.method private d(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lcom/c/b/a;->L:I

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static d(Z)V
    .registers 1

    sput-boolean p0, Lcom/c/b/a;->w:Z

    return-void
.end method

.method private static d(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v0, v1, Ljava/io/File;

    if-nez v0, :cond_2d

    instance-of v0, v1, [B

    if-nez v0, :cond_2d

    instance-of v0, v1, Ljava/io/InputStream;

    if-eqz v0, :cond_8

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method private e(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lcom/c/b/a;->j:I

    return-object p0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/a;->z:Ljava/lang/ref/Reference;

    iput-object v0, p0, Lcom/c/b/a;->A:Ljava/lang/Object;

    iput-object v0, p0, Lcom/c/b/a;->C:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/c/b/a;->J:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object v0, p0, Lcom/c/b/a;->h:Lcom/c/b/h;

    iput-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    iput-object v0, p0, Lcom/c/b/a;->I:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static e(Z)V
    .registers 1

    sput-boolean p0, Lcom/c/b/a;->y:Z

    return-void
.end method

.method private f()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->H:Ljava/lang/String;

    return-object p0
.end method

.method private f(Z)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/c/b/a;->G:Z

    return-object p0
.end method

.method private f(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    invoke-direct {p0}, Lcom/c/b/a;->s()V

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-lt v0, p1, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/c/b/a;->s()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v1

    add-int/lit8 v2, p1, -0x1

    if-ne v0, v2, :cond_15

    throw v1

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private g(Z)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/c/b/a;->E:Z

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/c/b/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g()V
    .registers 2

    iget-boolean v0, p0, Lcom/c/b/a;->s:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_c
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_e

    :catch_c
    :goto_c
    :try_start_c
    monitor-exit p0

    return-void

    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_a

    throw v0
.end method

.method private static g(I)V
    .registers 2

    const/16 v0, 0x19

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/c/b/a;->v:I

    const/4 p0, 0x0

    sput-object p0, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    const-string p0, "setting network limit"

    sget v0, Lcom/c/b/a;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private h(Z)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/c/b/a;->K:Z

    return-object p0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "charset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    return-object v0

    :cond_e
    const-string v0, ";"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1a
    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^\\w-]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .registers 3

    invoke-static {}, Lcom/c/d/a;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot block UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-boolean v0, p0, Lcom/c/b/a;->r:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    :try_start_13
    monitor-enter p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_24

    const/4 v0, 0x1

    :try_start_15
    iput-boolean v0, p0, Lcom/c/b/a;->s:Z

    sget v0, Lcom/c/b/a;->a:I

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method private static i()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/c/b/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/c/b/a;->d:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    invoke-virtual {v0, p1}, Lcom/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method private static i(Z)V
    .registers 1

    sput-boolean p0, Lcom/c/b/a;->x:Z

    const/4 p0, 0x0

    sput-object p0, Lcom/c/b/a;->S:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\|"

    const-string v1, "%7C"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j()Z
    .registers 3

    iget-object v0, p0, Lcom/c/b/a;->I:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/c/b/a;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return v1

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method private k()V
    .registers 6

    iget-boolean v0, p0, Lcom/c/b/a;->E:Z

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/c/b/a;->n:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/c/b/a;->D:Ljava/io/File;

    invoke-direct {p0}, Lcom/c/b/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/4 v2, 0x3

    iput v2, v1, Lcom/c/b/c;->r:I

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a;->a(Ljava/io/File;Lcom/c/b/c;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    iget-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/c/b/c;->n:Ljava/util/Date;

    invoke-virtual {v1}, Lcom/c/b/c;->a()Lcom/c/b/c;

    :cond_35
    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_48

    iput-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/4 v2, 0x2

    iput v2, v0, Lcom/c/b/c;->r:I

    invoke-virtual {v0}, Lcom/c/b/c;->a()Lcom/c/b/c;

    :cond_48
    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    const/16 v2, -0x65

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iput v2, v0, Lcom/c/b/c;->i:I

    invoke-virtual {v0}, Lcom/c/b/c;->a()Lcom/c/b/c;

    return-void

    :cond_5a
    :try_start_5a
    iget v0, p0, Lcom/c/b/a;->L:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/c/b/a;->f(I)V

    iget-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    iget-object v4, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {v0, p0, v4}, Lcom/c/a/a;->a(Lcom/c/b/a;Lcom/c/b/c;)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-boolean v0, p0, Lcom/c/b/a;->P:Z

    if-nez v0, :cond_8f

    const-string v0, "reauth needed"

    iget-object v4, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-object v4, v4, Lcom/c/b/c;->j:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/c/b/a;->P:Z

    iget-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    invoke-virtual {v0, p0}, Lcom/c/a/a;->b(Lcom/c/b/a;)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-direct {p0}, Lcom/c/b/a;->s()V

    goto :goto_8f

    :cond_8a
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iput-boolean v3, v0, Lcom/c/b/c;->v:Z

    return-void

    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-object v0, v0, Lcom/c/b/c;->l:[B
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_93} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_93} :catch_94

    goto :goto_be

    :catch_94
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :cond_98
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iput v2, v0, Lcom/c/b/c;->i:I

    const-string v2, "network error"

    iput-object v2, v0, Lcom/c/b/c;->j:Ljava/lang/String;

    goto :goto_bd

    :catch_a1
    move-exception v0

    const-string v3, "IOException"

    invoke-static {v3}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    const-string v3, "No authentication challenges found"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_98

    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/16 v3, 0x191

    iput v3, v2, Lcom/c/b/c;->i:I

    iput-object v0, v2, Lcom/c/b/c;->j:Ljava/lang/String;

    :goto_bd
    move-object v0, v1

    :goto_be
    :try_start_be
    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a;->a([BLcom/c/b/c;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c6} :catch_c7

    goto :goto_cb

    :catch_c7
    move-exception v1

    invoke-static {v1}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :goto_cb
    iget-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-nez v1, :cond_db

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/16 v1, -0x67

    iput v1, v0, Lcom/c/b/c;->i:I

    const-string v1, "transform error"

    iput-object v1, v0, Lcom/c/b/c;->j:Ljava/lang/String;

    :cond_db
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget v0, v0, Lcom/c/b/c;->i:I

    sput v0, Lcom/c/b/a;->t:I

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {v0}, Lcom/c/b/c;->a()Lcom/c/b/c;

    :cond_e6
    return-void
.end method

.method private l()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    iget-object v1, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .registers 6

    iget-object v0, p0, Lcom/c/b/a;->D:Ljava/io/File;

    invoke-direct {p0}, Lcom/c/b/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/4 v2, 0x3

    iput v2, v1, Lcom/c/b/c;->r:I

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a;->a(Ljava/io/File;Lcom/c/b/c;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    iget-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/c/b/c;->n:Ljava/util/Date;

    invoke-virtual {v1}, Lcom/c/b/c;->a()Lcom/c/b/c;

    :cond_2d
    return-void
.end method

.method private n()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/4 v1, 0x2

    iput v1, v0, Lcom/c/b/c;->r:I

    invoke-virtual {v0}, Lcom/c/b/c;->a()Lcom/c/b/c;

    :cond_f
    return-void
.end method

.method private o()V
    .registers 8

    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    const/16 v1, -0x65

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iput v1, v0, Lcom/c/b/c;->i:I

    :goto_a
    invoke-virtual {v0}, Lcom/c/b/c;->a()Lcom/c/b/c;

    return-void

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    iget v2, p0, Lcom/c/b/a;->L:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-gt v2, v3, :cond_19

    invoke-direct {p0}, Lcom/c/b/a;->s()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_5d

    goto :goto_20

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    if-lt v4, v2, :cond_1d

    goto :goto_20

    :cond_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/c/b/a;->s()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_54
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_5d

    :goto_20
    :try_start_20
    iget-object v2, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    iget-object v4, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {v2, p0, v4}, Lcom/c/a/a;->a(Lcom/c/b/a;Lcom/c/b/c;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-boolean v2, p0, Lcom/c/b/a;->P:Z

    if-nez v2, :cond_4e

    const-string v2, "reauth needed"

    iget-object v4, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-object v4, v4, Lcom/c/b/c;->j:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/c/b/a;->P:Z

    iget-object v2, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    invoke-virtual {v2, p0}, Lcom/c/a/a;->b(Lcom/c/b/a;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-direct {p0}, Lcom/c/b/a;->s()V

    goto :goto_4e

    :cond_49
    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iput-boolean v3, v2, Lcom/c/b/c;->v:Z

    return-void

    :cond_4e
    :goto_4e
    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-object v2, v2, Lcom/c/b/c;->l:[B

    move-object v0, v2

    goto :goto_86

    :catch_54
    move-exception v5

    add-int/lit8 v6, v2, -0x1

    if-ne v4, v6, :cond_5a

    throw v5
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_5a} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5a} :catch_5d

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :catch_5d
    move-exception v2

    invoke-static {v2}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :cond_61
    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iput v1, v2, Lcom/c/b/c;->i:I

    const-string v1, "network error"

    iput-object v1, v2, Lcom/c/b/c;->j:Ljava/lang/String;

    goto :goto_86

    :catch_6a
    move-exception v2

    const-string v3, "IOException"

    invoke-static {v3}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_61

    const-string v3, "No authentication challenges found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/16 v3, 0x191

    iput v3, v1, Lcom/c/b/c;->i:I

    iput-object v2, v1, Lcom/c/b/c;->j:Ljava/lang/String;

    :goto_86
    :try_start_86
    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a;->a([BLcom/c/b/c;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception v1

    invoke-static {v1}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :goto_93
    iget-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-nez v1, :cond_a3

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/16 v1, -0x67

    iput v1, v0, Lcom/c/b/c;->i:I

    const-string v1, "transform error"

    iput-object v1, v0, Lcom/c/b/c;->j:Ljava/lang/String;

    :cond_a3
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget v0, v0, Lcom/c/b/c;->i:I

    sput v0, Lcom/c/b/a;->t:I

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    goto/16 :goto_a
.end method

.method private p()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/c/b/a;->D:Ljava/io/File;

    invoke-direct {p0}, Lcom/c/b/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/d/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private q()Ljava/io/File;
    .registers 4

    invoke-virtual {p0}, Lcom/c/b/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/c/b/a;->k:Ljava/io/File;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/c/b/a;->k:Ljava/io/File;

    goto :goto_27

    :cond_e
    iget-boolean v0, p0, Lcom/c/b/a;->n:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/c/b/a;->p()Ljava/io/File;

    move-result-object v0

    goto :goto_27

    :cond_17
    invoke-static {}, Lcom/c/d/a;->c()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/c/b/a;->D:Ljava/io/File;

    :cond_1f
    iget-object v2, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/c/d/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3f

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_3a

    return-object v0

    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    return-object v1

    :cond_3f
    return-object v0
.end method

.method private r()V
    .registers 4

    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/c/b/a;->n:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-object v0, v0, Lcom/c/b/c;->l:[B

    if-eqz v0, :cond_36

    :try_start_e
    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget v1, v1, Lcom/c/b/c;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    invoke-direct {p0}, Lcom/c/b/a;->p()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-boolean v2, v2, Lcom/c/b/c;->u:Z

    if-nez v2, :cond_28

    if-eqz v1, :cond_36

    if-nez v0, :cond_24

    goto :goto_36

    :cond_24
    invoke-static {v1, v0}, Lcom/c/d/a;->a(Ljava/io/File;[B)V

    goto :goto_36

    :cond_28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/c/b/c;->l:[B

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget v0, v0, Lcom/c/b/c;->i:I

    const/16 v1, -0x67

    if-ne v0, v1, :cond_56

    invoke-direct {p0}, Lcom/c/b/a;->p()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "invalidated cache due to transform error"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    :cond_56
    return-void
.end method

.method private s()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/c/b/a;->e:Ljava/util/Map;

    if-nez v1, :cond_58

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_58

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_51
    invoke-static {v0}, Lcom/c/b/a;->b(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :cond_58
    iget-object v2, p0, Lcom/c/b/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_5e

    iget-object v0, p0, Lcom/c/b/a;->d:Ljava/lang/String;

    :cond_5e
    iget-object v2, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    invoke-virtual {v2, v0}, Lcom/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_68
    const/4 v2, 0x2

    iget v3, p0, Lcom/c/b/a;->q:I

    if-ne v2, v3, :cond_81

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const-string v2, "get"

    invoke-static {v2, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/c/b/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/c/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/c/b/c;)V

    return-void

    :cond_81
    const/4 v2, 0x3

    iget v3, p0, Lcom/c/b/a;->q:I

    if-ne v2, v3, :cond_96

    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const-string v3, "put"

    invoke-static {v3, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/c/b/a;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/c/b/c;)V

    return-void

    :cond_96
    const/4 v2, 0x1

    iget v3, p0, Lcom/c/b/a;->q:I

    if-ne v2, v3, :cond_a2

    if-nez v1, :cond_a2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_a2
    if-nez v1, :cond_b8

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const-string v2, "get"

    invoke-static {v2, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/c/b/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/c/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/c/b/c;)V

    return-void

    :cond_b8
    invoke-static {v1}, Lcom/c/b/a;->d(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_c4

    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-direct {p0, v0, v1, v2}, Lcom/c/b/a;->c(Ljava/lang/String;Ljava/util/Map;Lcom/c/b/c;)V

    return-void

    :cond_c4
    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const-string v3, "post"

    invoke-static {v3, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/c/b/a;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/c/b/c;)V

    return-void
.end method

.method private t()V
    .registers 3

    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/c/b/a;->o:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p0}, Lcom/c/b/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/a;->z:Ljava/lang/ref/Reference;

    iput-object v0, p0, Lcom/c/b/a;->A:Ljava/lang/Object;

    iput-object v0, p0, Lcom/c/b/a;->C:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/c/b/a;->J:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object v0, p0, Lcom/c/b/a;->h:Lcom/c/b/h;

    iput-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    iput-object v0, p0, Lcom/c/b/a;->I:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static u()I
    .registers 1

    sget-object v0, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static v()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 6

    sget-object v0, Lcom/c/b/a;->S:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/c/b/a;->x:Z

    if-nez v0, :cond_63

    :cond_8
    const-string v0, "creating http client"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v1, Lcom/c/b/a;->a:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v1, Lcom/c/b/a;->a:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    sget-object v4, Lcom/c/b/a;->R:Lorg/apache/http/conn/scheme/SocketFactory;

    if-nez v4, :cond_4d

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    goto :goto_4f

    :cond_4d
    sget-object v4, Lcom/c/b/a;->R:Lorg/apache/http/conn/scheme/SocketFactory;

    :goto_4f
    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v1, Lcom/c/b/a;->S:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_63
    sget-object v0, Lcom/c/b/a;->S:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private w()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private x()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/c/b/a;->A:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/c/b/a;->A:Ljava/lang/Object;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/c/b/a;->z:Ljava/lang/ref/Reference;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/c/b/a;->z:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/b/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method private static z()I
    .registers 1

    sget v0, Lcom/c/b/a;->t:I

    return v0
.end method


# virtual methods
.method protected a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 10

    iget-wide v0, p0, Lcom/c/b/a;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    if-gez v4, :cond_a

    return-object v0

    :cond_a
    invoke-static {p1, p2}, Lcom/c/d/a;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-wide v4, p0, Lcom/c/b/a;->p:J

    cmp-long p2, v4, v2

    if-eqz p2, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v5, v1, v3

    iget-wide v1, p0, Lcom/c/b/a;->p:J

    cmp-long p2, v5, v1

    if-lez p2, :cond_27

    return-object v0

    :cond_27
    return-object p1
.end method

.method public final a(Lcom/c/a/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    return-object p0
.end method

.method protected a(Ljava/io/File;Lcom/c/b/c;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/c/b/c;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/c/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iput-object p1, p2, Lcom/c/b/c;->m:Ljava/io/File;

    move-object p1, v0

    goto :goto_14

    :cond_b
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/c/d/a;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    :goto_14
    invoke-virtual {p0, p1, p2}, Lcom/c/b/a;->a([BLcom/c/b/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p1

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    if-eqz p1, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/c/b/a;->C:Ljava/lang/ref/WeakReference;

    :cond_9
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/c/b/a;->z:Ljava/lang/ref/Reference;

    iput-object p2, p0, Lcom/c/b/a;->B:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/c/b/a;->A:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TK;"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/c/b/a;->N:Lorg/apache/http/HttpHost;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/a;->e:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/c/b/a;->e:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/c/b/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/util/Map;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final a(Z)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/c/b/a;->n:Z

    return-object p0
.end method

.method protected a([BLcom/c/b/c;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/c/b/c;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p2, Lcom/c/b/c;->m:Ljava/io/File;

    if-eqz p1, :cond_b6

    iget-object v0, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p2, 0x0

    array-length v0, p1

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :try_start_25
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/c/b/a;->H:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_3a

    :try_start_2c
    new-instance p1, Lorg/json/JSONTokener;

    invoke-direct {p1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_38

    return-object p1

    :catch_38
    move-exception p1

    goto :goto_3c

    :catch_3a
    move-exception p1

    move-object p2, v1

    :goto_3c
    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    invoke-static {p2}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    move-object p1, v1

    return-object p1

    :cond_44
    iget-object v0, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    :try_start_4e
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/c/b/a;->H:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p1, Lorg/json/JSONTokener;

    invoke-direct {p1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_60} :catch_61

    return-object p1

    :catch_61
    move-exception p1

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    move-object p1, v1

    return-object p1

    :cond_67
    iget-object v0, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget v0, p2, Lcom/c/b/c;->r:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_82

    const-string v0, "network"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/c/b/a;->H:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/c/b/a;->a([BLjava/lang/String;Lcom/c/b/c;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_82
    const-string p2, "file"

    invoke-static {p2}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    :try_start_87
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/c/b/a;->H:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_90

    move-object v1, p2

    return-object v1

    :catch_90
    move-exception p1

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    return-object v1

    :cond_95
    iget-object p2, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const-class v0, [B

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a0

    return-object p1

    :cond_a0
    iget-object p1, p0, Lcom/c/b/a;->h:Lcom/c/b/h;

    if-eqz p1, :cond_ab

    iget-object p1, p0, Lcom/c/b/a;->h:Lcom/c/b/h;

    invoke-interface {p1}, Lcom/c/b/h;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_ab
    sget-object p1, Lcom/c/b/a;->M:Lcom/c/b/h;

    if-eqz p1, :cond_115

    sget-object p1, Lcom/c/b/a;->M:Lcom/c/b/h;

    invoke-interface {p1}, Lcom/c/b/h;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b6
    if-eqz v0, :cond_115

    iget-object p1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const-class v2, Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c3

    return-object v0

    :cond_c3
    iget-object p1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const-class v2, Lcom/c/d/i;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_df

    :try_start_cd
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Lcom/c/d/i;

    invoke-direct {v0, p1}, Lcom/c/d/i;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p2, Lcom/c/b/c;->z:Ljava/io/Closeable;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d9} :catch_da

    return-object v0

    :catch_da
    move-exception p1

    invoke-static {p1}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    return-object v1

    :cond_df
    iget-object p1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const-class v2, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ff

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    :try_start_ed
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/c/b/a;->H:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v2, p2, Lcom/c/b/c;->z:Ljava/io/Closeable;
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f9} :catch_fa

    return-object p1

    :catch_fa
    move-exception p1

    invoke-static {p1}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    return-object v1

    :cond_ff
    iget-object p1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_115

    :try_start_109
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p2, Lcom/c/b/c;->z:Ljava/io/Closeable;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_110} :catch_111

    return-object p1

    :catch_111
    move-exception p1

    invoke-static {p1}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    :cond_115
    return-object v1
.end method

.method final a()V
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/c/b/a;->c(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/c/b/a;->r:Z

    iget-object v2, p0, Lcom/c/b/a;->I:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/c/b/a;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x1

    :goto_1e
    const/4 v3, 0x0

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/c/b/a;->B:Ljava/lang/String;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/c/b/a;->A:Ljava/lang/Object;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/c/b/a;->A:Ljava/lang/Object;

    :goto_2b
    move-object v4, v2

    goto :goto_3a

    :cond_2d
    iget-object v2, p0, Lcom/c/b/a;->z:Ljava/lang/ref/Reference;

    if-nez v2, :cond_33

    move-object v4, v3

    goto :goto_3a

    :cond_33
    iget-object v2, p0, Lcom/c/b/a;->z:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2b

    :goto_3a
    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v8, v0

    iget-object v5, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    aput-object v5, v8, v1

    const-class v5, Lcom/c/b/c;

    const/4 v6, 0x2

    aput-object v5, v8, v6

    iget-object v5, p0, Lcom/c/b/a;->B:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v9, 0x1

    sget-object v10, Lcom/c/b/a;->O:[Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    aput-object v11, v2, v0

    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    aput-object v0, v2, v6

    move v6, v7

    move v7, v9

    move-object v9, v10

    move-object v10, v2

    invoke-static/range {v4 .. v10}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    :cond_66
    :try_start_66
    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    iget-object v4, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {p0, v0, v2, v4}, Lcom/c/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/c/b/c;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_70

    goto :goto_7a

    :catch_70
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    goto :goto_7a

    :cond_75
    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/c/b/a;->a(Ljava/lang/String;)V

    :goto_7a
    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-eqz v0, :cond_b4

    iget-boolean v0, p0, Lcom/c/b/a;->n:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-object v0, v0, Lcom/c/b/c;->l:[B

    if-eqz v0, :cond_af

    :try_start_88
    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget v2, v2, Lcom/c/b/c;->r:I

    if-ne v2, v1, :cond_af

    invoke-direct {p0}, Lcom/c/b/a;->p()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-boolean v2, v2, Lcom/c/b/c;->u:Z

    if-nez v2, :cond_a1

    if-eqz v1, :cond_af

    if-nez v0, :cond_9d

    goto :goto_af

    :cond_9d
    invoke-static {v1, v0}, Lcom/c/d/a;->a(Ljava/io/File;[B)V

    goto :goto_af

    :cond_a1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_aa} :catch_ab

    goto :goto_af

    :catch_ab
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :cond_af
    :goto_af
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iput-object v3, v0, Lcom/c/b/c;->l:[B

    goto :goto_ce

    :cond_b4
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget v0, v0, Lcom/c/b/c;->i:I

    const/16 v1, -0x67

    if-ne v0, v1, :cond_ce

    invoke-direct {p0}, Lcom/c/b/a;->p()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "invalidated cache due to transform error"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    :cond_ce
    :goto_ce
    iget-boolean v0, p0, Lcom/c/b/a;->s:Z

    if-nez v0, :cond_d7

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {v0}, Lcom/c/b/c;->b()V

    :cond_d7
    iget-boolean v0, p0, Lcom/c/b/a;->s:Z

    if-eqz v0, :cond_e6

    monitor-enter p0

    :try_start_dc
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_e2
    .catchall {:try_start_dc .. :try_end_df} :catchall_e0

    goto :goto_e2

    :catchall_e0
    move-exception v0

    goto :goto_e4

    :catch_e2
    :goto_e2
    :try_start_e2
    monitor-exit p0

    goto :goto_e6

    :goto_e4
    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e0

    throw v0

    :cond_e6
    :goto_e6
    invoke-static {}, Lcom/c/d/a;->a()V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iput p1, v0, Lcom/c/b/c;->i:I

    iput-object p2, v0, Lcom/c/b/c;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/c/b/c;->a()Lcom/c/b/c;

    iget-boolean p1, p0, Lcom/c/b/a;->K:Z

    if-eqz p1, :cond_15

    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_15
    invoke-direct {p0}, Lcom/c/b/a;->t()V

    :cond_18
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Warning"

    const-string v1, "Possible memory leak. Calling ajax with a terminated activity."

    invoke-static {v0, v1}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iget-object v0, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    if-nez v0, :cond_19

    const-string p1, "Warning"

    const-string v0, "type() is not called with response type."

    invoke-static {p1, v0}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/c/b/a;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/c/b/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 9

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    if-nez v0, :cond_16

    new-instance v0, Lcom/c/b/c;

    invoke-direct {v0}, Lcom/c/b/c;-><init>()V

    iput-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-object v1, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/c/b/c;->k:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/c/b/a;->E:Z

    iput-boolean v1, v0, Lcom/c/b/c;->o:Z

    goto :goto_31

    :cond_16
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-boolean v0, v0, Lcom/c/b/c;->t:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/c/b/c;->s:J

    sub-long v5, v1, v3

    iput-wide v5, v0, Lcom/c/b/c;->q:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/c/b/c;->t:Z

    invoke-virtual {v0}, Lcom/c/b/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    :cond_31
    :goto_31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/a;->c(Z)V

    iget-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    invoke-virtual {v0}, Lcom/c/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_4e

    const-string p1, "auth needed"

    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/c/b/a;->l:Lcom/c/a/a;

    invoke-virtual {p1, p0}, Lcom/c/a/a;->a(Lcom/c/b/a;)V

    return-void

    :cond_4e
    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/c/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iput-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    iget-object p1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/4 v0, 0x4

    iput v0, p1, Lcom/c/b/c;->r:I

    invoke-virtual {p1}, Lcom/c/b/c;->a()Lcom/c/b/c;

    invoke-virtual {p0}, Lcom/c/b/a;->a()V

    return-void

    :cond_64
    iget v0, p0, Lcom/c/b/a;->j:I

    invoke-static {p1, v0}, Lcom/c/d/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/c/b/a;->D:Ljava/io/File;

    sget-object p1, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_78

    sget p1, Lcom/c/b/a;->v:I

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sput-object p1, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    :cond_78
    sget-object p1, Lcom/c/b/a;->Q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/c/b/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/c/b/c;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b/a;->A:Ljava/lang/Object;

    iput-object p2, p0, Lcom/c/b/a;->B:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/c/b/a;->z:Ljava/lang/ref/Reference;

    return-object p0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Z)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/c/b/a;->o:Z

    return-object p0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected b()Z
    .registers 3

    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-class v0, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-class v0, Lcom/c/d/i;

    iget-object v1, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    return v0

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Landroid/content/Context;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/c/b/a;->n:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/c/b/a;->j:I

    invoke-static {p1, v0}, Lcom/c/d/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/c/d/a;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method protected final c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/c/b/a;->C:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/c/b/a;->C:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_22

    invoke-static {}, Lcom/c/d/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void

    :cond_1a
    new-instance v1, Lcom/c/b/a$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/c/b/a$1;-><init>(Lcom/c/b/a;Ljava/lang/Object;Z)V

    invoke-static {v1}, Lcom/c/d/a;->a(Ljava/lang/Runnable;)V

    :cond_22
    return-void
.end method

.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-boolean v0, v0, Lcom/c/b/c;->t:Z

    if-nez v0, :cond_75

    :try_start_6
    iget-boolean v0, p0, Lcom/c/b/a;->E:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/c/b/a;->n:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/c/b/a;->D:Ljava/io/File;

    invoke-direct {p0}, Lcom/c/b/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/4 v2, 0x3

    iput v2, v1, Lcom/c/b/c;->r:I

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a;->a(Ljava/io/File;Lcom/c/b/c;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    iget-object v1, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/c/b/c;->n:Ljava/util/Date;

    invoke-virtual {v1}, Lcom/c/b/c;->a()Lcom/c/b/c;

    :cond_3b
    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-nez v0, :cond_4e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/4 v1, 0x2

    iput v1, v0, Lcom/c/b/c;->r:I

    invoke-virtual {v0}, Lcom/c/b/c;->a()Lcom/c/b/c;

    :cond_4e
    iget-object v0, p0, Lcom/c/b/a;->i:Ljava/lang/Object;

    if-nez v0, :cond_63

    invoke-direct {p0}, Lcom/c/b/a;->o()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_55} :catch_56

    goto :goto_63

    :catch_56
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    const/16 v1, -0x65

    iput v1, v0, Lcom/c/b/c;->i:I

    invoke-virtual {v0}, Lcom/c/b/c;->a()Lcom/c/b/c;

    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/c/b/a;->m:Lcom/c/b/c;

    iget-boolean v0, v0, Lcom/c/b/c;->v:Z

    if-nez v0, :cond_78

    iget-boolean v0, p0, Lcom/c/b/a;->K:Z

    if-eqz v0, :cond_71

    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_71
    invoke-direct {p0}, Lcom/c/b/a;->t()V

    return-void

    :cond_75
    invoke-direct {p0}, Lcom/c/b/a;->t()V

    :cond_78
    return-void
.end method
