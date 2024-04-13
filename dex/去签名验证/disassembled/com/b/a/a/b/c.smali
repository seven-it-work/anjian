.class public final Lcom/b/a/a/b/c;
.super Lcom/b/a/a/e/s;

# interfaces
.implements Lcom/b/a/m;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/b/a/a/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:J

.field private final g:Lcom/b/a/n;

.field private final h:Lcom/b/a/aw;

.field private i:Ljava/net/Socket;

.field private j:Ljava/net/Socket;

.field private k:Lcom/b/a/z;

.field private l:Lcom/b/a/al;

.field private m:Lcom/b/a/a/e/j;

.field private n:Lcom/b/b/h;

.field private o:Lcom/b/b/g;


# direct methods
.method public constructor <init>(Lcom/b/a/n;Lcom/b/a/aw;)V
    .registers 5

    invoke-direct {p0}, Lcom/b/a/a/e/s;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/b/a/a/b/c;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/b/a/a/b/c;->e:J

    iput-object p1, p0, Lcom/b/a/a/b/c;->g:Lcom/b/a/n;

    iput-object p2, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    return-void
.end method

.method private a(II)V
    .registers 7

    iget-object v0, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v0}, Lcom/b/a/aw;->b()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v1}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_23

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1d

    goto :goto_23

    :cond_1d
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_2b

    :cond_23
    :goto_23
    invoke-virtual {v1}, Lcom/b/a/a;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_2b
    iput-object v1, p0, Lcom/b/a/a/b/c;->i:Ljava/net/Socket;

    iget-object v0, p0, Lcom/b/a/a/b/c;->i:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_32
    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object p2

    iget-object v0, p0, Lcom/b/a/a/b/c;->i:Ljava/net/Socket;

    iget-object v1, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v1}, Lcom/b/a/aw;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/b/a/a/g/h;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_41
    .catch Ljava/net/ConnectException; {:try_start_32 .. :try_end_41} :catch_5a

    iget-object p1, p0, Lcom/b/a/a/b/c;->i:Ljava/net/Socket;

    invoke-static {p1}, Lcom/b/b/n;->b(Ljava/net/Socket;)Lcom/b/b/x;

    move-result-object p1

    invoke-static {p1}, Lcom/b/b/n;->a(Lcom/b/b/x;)Lcom/b/b/h;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    iget-object p1, p0, Lcom/b/a/a/b/c;->i:Ljava/net/Socket;

    invoke-static {p1}, Lcom/b/b/n;->a(Ljava/net/Socket;)Lcom/b/b/w;

    move-result-object p1

    invoke-static {p1}, Lcom/b/b/n;->a(Lcom/b/b/w;)Lcom/b/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/b/c;->o:Lcom/b/b/g;

    return-void

    :catch_5a
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to connect to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v1}, Lcom/b/a/aw;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method


# virtual methods
.method public final a(Lcom/b/a/ai;Lcom/b/a/a/b/g;)Lcom/b/a/a/c/c;
    .registers 7

    iget-object v0, p0, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/b/a/a/e/h;

    iget-object v1, p0, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    invoke-direct {v0, p1, p2, v1}, Lcom/b/a/a/e/h;-><init>(Lcom/b/a/ai;Lcom/b/a/a/b/g;Lcom/b/a/a/e/j;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {p1}, Lcom/b/a/ai;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->a()Lcom/b/b/y;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/ai;->b()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/b/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;

    iget-object v0, p0, Lcom/b/a/a/b/c;->o:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->a()Lcom/b/b/y;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/ai;->c()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/b/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;

    new-instance v0, Lcom/b/a/a/d/a;

    iget-object v1, p0, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    iget-object v2, p0, Lcom/b/a/a/b/c;->o:Lcom/b/b/g;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/b/a/a/d/a;-><init>(Lcom/b/a/ai;Lcom/b/a/a/b/g;Lcom/b/b/h;Lcom/b/b/g;)V

    return-object v0
.end method

.method public final a()Lcom/b/a/aw;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    return-object v0
.end method

.method public final a(IIIZ)V
    .registers 22

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/b/a/a/b/c;->l:Lcom/b/a/al;

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "already connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    iget-object v2, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v2}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/a;->f()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/b/a/a/b/b;

    invoke-direct {v3, v2}, Lcom/b/a/a/b/b;-><init>(Ljava/util/List;)V

    iget-object v4, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v4}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    if-nez v4, :cond_74

    sget-object v4, Lcom/b/a/p;->c:Lcom/b/a/p;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    new-instance v2, Lcom/b/a/a/b/e;

    new-instance v3, Ljava/net/UnknownServiceException;

    const-string v4, "CLEARTEXT communication not enabled for client"

    invoke-direct {v3, v4}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/b/a/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_3e
    iget-object v2, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v2}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/b/a/a/g/h;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    new-instance v3, Lcom/b/a/a/b/e;

    new-instance v4, Ljava/net/UnknownServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CLEARTEXT communication to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not permitted by network security policy"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/b/a/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v3

    :cond_74
    const/4 v2, 0x0

    move-object v4, v2

    :goto_76
    :try_start_76
    iget-object v5, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v5}, Lcom/b/a/aw;->d()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_18b

    new-instance v5, Lcom/b/a/ap;

    invoke-direct {v5}, Lcom/b/a/ap;-><init>()V

    iget-object v8, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v8}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/b/a/ap;->a(Lcom/b/a/ac;)Lcom/b/a/ap;

    move-result-object v5

    const-string v8, "Host"

    iget-object v9, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v9}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/b/a/a/c;->a(Lcom/b/a/ac;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    move-result-object v5

    const-string v8, "Proxy-Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {v5, v8, v9}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    move-result-object v5

    const-string v8, "User-Agent"

    const-string v9, "okhttp/3.6.0"

    invoke-virtual {v5, v8, v9}, Lcom/b/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/ap;->a()Lcom/b/a/ao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v8

    invoke-direct/range {p0 .. p2}, Lcom/b/a/a/b/c;->a(II)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CONNECT "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v7}, Lcom/b/a/a/c;->a(Lcom/b/a/ac;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " HTTP/1.1"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/b/a/a/d/a;

    iget-object v10, v1, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    iget-object v11, v1, Lcom/b/a/a/b/c;->o:Lcom/b/b/g;

    invoke-direct {v9, v2, v2, v10, v11}, Lcom/b/a/a/d/a;-><init>(Lcom/b/a/ai;Lcom/b/a/a/b/g;Lcom/b/b/h;Lcom/b/b/g;)V

    iget-object v10, v1, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    invoke-interface {v10}, Lcom/b/b/h;->a()Lcom/b/b/y;

    move-result-object v10
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_e8} :catch_31e

    move/from16 v11, p2

    int-to-long v12, v11

    :try_start_eb
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v12, v13, v14}, Lcom/b/b/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;

    iget-object v10, v1, Lcom/b/a/a/b/c;->o:Lcom/b/b/g;

    invoke-interface {v10}, Lcom/b/b/g;->a()Lcom/b/b/y;

    move-result-object v10
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f6} :catch_188

    move/from16 v12, p3

    int-to-long v13, v12

    :try_start_f9
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v13, v14, v15}, Lcom/b/b/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;

    invoke-virtual {v5}, Lcom/b/a/ao;->c()Lcom/b/a/aa;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/b/a/a/d/a;->a(Lcom/b/a/aa;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/b/a/a/d/a;->b()V

    invoke-virtual {v9, v6}, Lcom/b/a/a/d/a;->a(Z)Lcom/b/a/at;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/b/a/at;->a(Lcom/b/a/ao;)Lcom/b/a/at;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/at;->a()Lcom/b/a/as;

    move-result-object v5

    invoke-static {v5}, Lcom/b/a/a/c/f;->a(Lcom/b/a/as;)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v8, v13, v15

    if-nez v8, :cond_120

    const-wide/16 v13, 0x0

    :cond_120
    invoke-virtual {v9, v13, v14}, Lcom/b/a/a/d/a;->a(J)Lcom/b/b/x;

    move-result-object v8

    const v9, 0x7fffffff

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v8, v9, v10}, Lcom/b/a/a/c;->a(Lcom/b/b/x;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v8}, Lcom/b/b/x;->close()V

    invoke-virtual {v5}, Lcom/b/a/as;->b()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_168

    const/16 v6, 0x197

    if-eq v8, v6, :cond_153

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/b/a/as;->b()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_153
    iget-object v5, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v5}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/a;->d()Lcom/b/a/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/b/a/b;->a()Lcom/b/a/ao;

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to authenticate with proxy"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_168
    iget-object v5, v1, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    invoke-interface {v5}, Lcom/b/b/h;->c()Lcom/b/b/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/b/f;->d()Z

    move-result v5

    if-eqz v5, :cond_180

    iget-object v5, v1, Lcom/b/a/a/b/c;->o:Lcom/b/b/g;

    invoke-interface {v5}, Lcom/b/b/g;->c()Lcom/b/b/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/b/f;->d()Z

    move-result v5

    if-nez v5, :cond_192

    :cond_180
    new-instance v5, Ljava/io/IOException;

    const-string v6, "TLS tunnel buffered too many bytes!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_188
    move-exception v0

    goto/16 :goto_321

    :cond_18b
    move/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {p0 .. p2}, Lcom/b/a/a/b/c;->a(II)V

    :cond_192
    iget-object v5, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v5}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    if-nez v5, :cond_1a8

    sget-object v5, Lcom/b/a/al;->b:Lcom/b/a/al;

    iput-object v5, v1, Lcom/b/a/a/b/c;->l:Lcom/b/a/al;

    iget-object v5, v1, Lcom/b/a/a/b/c;->i:Ljava/net/Socket;

    iput-object v5, v1, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    goto/16 :goto_2e0

    :cond_1a8
    iget-object v5, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v5}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_1b2} :catch_31c

    :try_start_1b2
    iget-object v9, v1, Lcom/b/a/a/b/c;->i:Ljava/net/Socket;

    invoke-virtual {v5}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v10

    invoke-virtual {v10}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v13

    invoke-virtual {v13}, Lcom/b/a/ac;->g()I

    move-result v13

    invoke-virtual {v8, v9, v10, v13, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocket;
    :try_end_1ca
    .catch Ljava/lang/AssertionError; {:try_start_1b2 .. :try_end_1ca} :catch_2fd
    .catchall {:try_start_1b2 .. :try_end_1ca} :catchall_2f9

    :try_start_1ca
    invoke-virtual {v3, v7}, Lcom/b/a/a/b/b;->a(Ljavax/net/ssl/SSLSocket;)Lcom/b/a/p;

    move-result-object v8

    invoke-virtual {v8}, Lcom/b/a/p;->a()Z

    move-result v9

    if-eqz v9, :cond_1e7

    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v9

    invoke-virtual {v5}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v10

    invoke-virtual {v10}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/b/a/a;->e()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v9, v7, v10, v13}, Lcom/b/a/a/g/h;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_1e7
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    invoke-static {v9}, Lcom/b/a/z;->a(Ljavax/net/ssl/SSLSession;)Lcom/b/a/z;

    move-result-object v9

    invoke-virtual {v5}, Lcom/b/a/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v10

    invoke-virtual {v5}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v13

    invoke-virtual {v13}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v10

    if-nez v10, :cond_256

    invoke-virtual {v9}, Lcom/b/a/z;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    new-instance v8, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Hostname "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not verified:\n    certificate: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/b/a/i;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n    DN: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n    subjectAltNames: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/b/a/a/h/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_256
    invoke-virtual {v5}, Lcom/b/a/a;->k()Lcom/b/a/i;

    move-result-object v10

    invoke-virtual {v5}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/b/a/z;->b()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v10, v5, v13}, Lcom/b/a/i;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8}, Lcom/b/a/p;->a()Z

    move-result v5

    if-eqz v5, :cond_278

    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/b/a/a/g/h;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    goto :goto_279

    :cond_278
    move-object v5, v2

    :goto_279
    iput-object v7, v1, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    iget-object v8, v1, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v8}, Lcom/b/b/n;->b(Ljava/net/Socket;)Lcom/b/b/x;

    move-result-object v8

    invoke-static {v8}, Lcom/b/b/n;->a(Lcom/b/b/x;)Lcom/b/b/h;

    move-result-object v8

    iput-object v8, v1, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    iget-object v8, v1, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v8}, Lcom/b/b/n;->a(Ljava/net/Socket;)Lcom/b/b/w;

    move-result-object v8

    invoke-static {v8}, Lcom/b/b/n;->a(Lcom/b/b/w;)Lcom/b/b/g;

    move-result-object v8

    iput-object v8, v1, Lcom/b/a/a/b/c;->o:Lcom/b/b/g;

    iput-object v9, v1, Lcom/b/a/a/b/c;->k:Lcom/b/a/z;

    if-eqz v5, :cond_29c

    invoke-static {v5}, Lcom/b/a/al;->a(Ljava/lang/String;)Lcom/b/a/al;

    move-result-object v5

    goto :goto_29e

    :cond_29c
    sget-object v5, Lcom/b/a/al;->b:Lcom/b/a/al;

    :goto_29e
    iput-object v5, v1, Lcom/b/a/a/b/c;->l:Lcom/b/a/al;
    :try_end_2a0
    .catch Ljava/lang/AssertionError; {:try_start_1ca .. :try_end_2a0} :catch_2f6
    .catchall {:try_start_1ca .. :try_end_2a0} :catchall_30d

    if-eqz v7, :cond_2a9

    :try_start_2a2
    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/b/a/a/g/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_2a9
    iget-object v5, v1, Lcom/b/a/a/b/c;->l:Lcom/b/a/al;

    sget-object v7, Lcom/b/a/al;->d:Lcom/b/a/al;

    if-ne v5, v7, :cond_2e0

    iget-object v5, v1, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v5, Lcom/b/a/a/e/r;

    invoke-direct {v5}, Lcom/b/a/a/e/r;-><init>()V

    iget-object v6, v1, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    iget-object v7, v1, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v7}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v7

    invoke-virtual {v7}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    iget-object v9, v1, Lcom/b/a/a/b/c;->o:Lcom/b/b/g;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/b/a/a/e/r;->a(Ljava/net/Socket;Ljava/lang/String;Lcom/b/b/h;Lcom/b/b/g;)Lcom/b/a/a/e/r;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/b/a/a/e/r;->a(Lcom/b/a/a/e/s;)Lcom/b/a/a/e/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/a/e/r;->a()Lcom/b/a/a/e/j;

    move-result-object v5

    iput-object v5, v1, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    iget-object v5, v1, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    invoke-virtual {v5}, Lcom/b/a/a/e/j;->b()V
    :try_end_2e0
    .catch Ljava/io/IOException; {:try_start_2a2 .. :try_end_2e0} :catch_31c

    :cond_2e0
    :goto_2e0
    iget-object v2, v1, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    if-eqz v2, :cond_2f5

    iget-object v2, v1, Lcom/b/a/a/b/c;->g:Lcom/b/a/n;

    monitor-enter v2

    :try_start_2e7
    iget-object v3, v1, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    invoke-virtual {v3}, Lcom/b/a/a/e/j;->a()I

    move-result v3

    iput v3, v1, Lcom/b/a/a/b/c;->c:I

    monitor-exit v2

    return-void

    :catchall_2f1
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_2f4
    .catchall {:try_start_2e7 .. :try_end_2f4} :catchall_2f1

    throw v3

    :cond_2f5
    return-void

    :catch_2f6
    move-exception v0

    move-object v5, v0

    goto :goto_300

    :catchall_2f9
    move-exception v0

    move-object v5, v0

    move-object v7, v2

    goto :goto_30f

    :catch_2fd
    move-exception v0

    move-object v5, v0

    move-object v7, v2

    :goto_300
    :try_start_300
    invoke-static {v5}, Lcom/b/a/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v6

    if-eqz v6, :cond_30c

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_30c
    throw v5
    :try_end_30d
    .catchall {:try_start_300 .. :try_end_30d} :catchall_30d

    :catchall_30d
    move-exception v0

    move-object v5, v0

    :goto_30f
    if-eqz v7, :cond_318

    :try_start_311
    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/b/a/a/g/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_318
    invoke-static {v7}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    throw v5
    :try_end_31c
    .catch Ljava/io/IOException; {:try_start_311 .. :try_end_31c} :catch_31c

    :catch_31c
    move-exception v0

    goto :goto_323

    :catch_31e
    move-exception v0

    move/from16 v11, p2

    :goto_321
    move/from16 v12, p3

    :goto_323
    move-object v5, v0

    iget-object v6, v1, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v6}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    iget-object v6, v1, Lcom/b/a/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v6}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    iput-object v2, v1, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    iput-object v2, v1, Lcom/b/a/a/b/c;->i:Ljava/net/Socket;

    iput-object v2, v1, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    iput-object v2, v1, Lcom/b/a/a/b/c;->o:Lcom/b/b/g;

    iput-object v2, v1, Lcom/b/a/a/b/c;->k:Lcom/b/a/z;

    iput-object v2, v1, Lcom/b/a/a/b/c;->l:Lcom/b/a/al;

    iput-object v2, v1, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    if-nez v4, :cond_345

    new-instance v4, Lcom/b/a/a/b/e;

    invoke-direct {v4, v5}, Lcom/b/a/a/b/e;-><init>(Ljava/io/IOException;)V

    :goto_343
    move-object v6, v4

    goto :goto_349

    :cond_345
    invoke-virtual {v4, v5}, Lcom/b/a/a/b/e;->a(Ljava/io/IOException;)V

    goto :goto_343

    :goto_349
    if-eqz p4, :cond_355

    invoke-virtual {v3, v5}, Lcom/b/a/a/b/b;->a(Ljava/io/IOException;)Z

    move-result v5

    if-nez v5, :cond_352

    goto :goto_355

    :cond_352
    move-object v4, v6

    goto/16 :goto_76

    :cond_355
    :goto_355
    throw v6
.end method

.method public final a(Lcom/b/a/a/e/ab;)V
    .registers 3

    sget-object v0, Lcom/b/a/a/e/b;->e:Lcom/b/a/a/e/b;

    invoke-virtual {p1, v0}, Lcom/b/a/a/e/ab;->a(Lcom/b/a/a/e/b;)V

    return-void
.end method

.method public final a(Lcom/b/a/a/e/j;)V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/b/c;->g:Lcom/b/a/n;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lcom/b/a/a/e/j;->a()I

    move-result p1

    iput p1, p0, Lcom/b/a/a/b/c;->c:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final a(Lcom/b/a/a;)Z
    .registers 4

    iget-object v0, p0, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/b/a/a/b/c;->c:I

    if-ge v0, v1, :cond_1c

    iget-object v0, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v0}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/b/a/a/b/c;->a:Z

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Z)Z
    .registers 6

    iget-object v0, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    iget-object v0, p0, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    iget-object p1, p0, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    invoke-virtual {p1}, Lcom/b/a/a/e/j;->c()Z

    move-result p1

    if-nez p1, :cond_28

    return v2

    :cond_28
    return v1

    :cond_29
    if-eqz p1, :cond_52

    :try_start_2b
    iget-object p1, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_31
    .catch Ljava/net/SocketTimeoutException; {:try_start_2b .. :try_end_31} :catch_52
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_51

    :try_start_31
    iget-object v0, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/b/a/a/b/c;->n:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->d()Z

    move-result v0
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_4a

    if-eqz v0, :cond_44

    :try_start_3e
    iget-object v0, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_44
    iget-object v0, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_4a
    move-exception v0

    iget-object v3, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_51
    .catch Ljava/net/SocketTimeoutException; {:try_start_3e .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_51} :catch_51

    :catch_51
    return v1

    :catch_52
    :cond_52
    return v2

    :cond_53
    return v1
.end method

.method public final b()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/b/c;->j:Ljava/net/Socket;

    return-object v0
.end method

.method public final c()Lcom/b/a/z;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/b/c;->k:Lcom/b/a/z;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/b/c;->m:Lcom/b/a/a/e/j;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v1}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v1}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/ac;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v1}, Lcom/b/a/aw;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a/b/c;->h:Lcom/b/a/aw;

    invoke-virtual {v1}, Lcom/b/a/aw;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a/b/c;->k:Lcom/b/a/z;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/b/a/a/b/c;->k:Lcom/b/a/z;

    invoke-virtual {v1}, Lcom/b/a/z;->a()Lcom/b/a/l;

    move-result-object v1

    goto :goto_5c

    :cond_5a
    const-string v1, "none"

    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a/b/c;->l:Lcom/b/a/al;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
