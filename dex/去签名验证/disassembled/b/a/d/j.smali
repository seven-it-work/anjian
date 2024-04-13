.class public final Lb/a/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Lb/w;


# static fields
.field private static final d:I = 0x14


# instance fields
.field public a:Lb/a/c/g;

.field public b:Ljava/lang/Object;

.field public volatile c:Z

.field private final e:Lb/z;

.field private final f:Z


# direct methods
.method public constructor <init>(Lb/z;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/d/j;->e:Lb/z;

    iput-boolean p2, p0, Lb/a/d/j;->f:Z

    return-void
.end method

.method private a(Lb/v;)Lb/a;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lb/v;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v3, v2, Lb/z;->o:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v2, v2, Lb/z;->q:Ljavax/net/ssl/HostnameVerifier;

    iget-object v4, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v4, v4, Lb/z;->r:Lb/g;

    move-object v11, v2

    move-object v10, v3

    move-object v12, v4

    goto :goto_1e

    :cond_1b
    move-object v10, v3

    move-object v11, v10

    move-object v12, v11

    :goto_1e
    new-instance v2, Lb/a;

    iget-object v6, v1, Lb/v;->l:Ljava/lang/String;

    iget v7, v1, Lb/v;->m:I

    iget-object v1, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v8, v1, Lb/z;->v:Lb/q;

    iget-object v1, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v9, v1, Lb/z;->n:Ljavax/net/SocketFactory;

    iget-object v1, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v13, v1, Lb/z;->s:Lb/b;

    iget-object v1, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v14, v1, Lb/z;->d:Ljava/net/Proxy;

    iget-object v1, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v15, v1, Lb/z;->e:Ljava/util/List;

    iget-object v1, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v1, v1, Lb/z;->f:Ljava/util/List;

    iget-object v3, v0, Lb/a/d/j;->e:Lb/z;

    iget-object v3, v3, Lb/z;->j:Ljava/net/ProxySelector;

    move-object v5, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-direct/range {v5 .. v17}, Lb/a;-><init>(Ljava/lang/String;ILb/q;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lb/g;Lb/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v2
.end method

.method private a(Lb/ae;)Lb/ac;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    iget-object v0, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {v0}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lb/j;->a()Lb/ag;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    iget v2, p1, Lb/ae;->c:I

    iget-object v3, p1, Lb/ae;->a:Lb/ac;

    iget-object v3, v3, Lb/ac;->b:Ljava/lang/String;

    sparse-switch v2, :sswitch_data_f0

    return-object v1

    :sswitch_21
    iget-object v0, p1, Lb/ae;->a:Lb/ac;

    iget-object v0, v0, Lb/ac;->d:Lb/ad;

    instance-of v0, v0, Lb/a/d/l;

    if-eqz v0, :cond_2a

    return-object v1

    :cond_2a
    iget-object p1, p1, Lb/ae;->a:Lb/ac;

    return-object p1

    :sswitch_2d
    if-eqz v0, :cond_32

    iget-object p1, v0, Lb/ag;->b:Ljava/net/Proxy;

    goto :goto_36

    :cond_32
    iget-object p1, p0, Lb/a/d/j;->e:Lb/z;

    iget-object p1, p1, Lb/z;->d:Ljava/net/Proxy;

    :goto_36
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq p1, v0, :cond_46

    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    iget-object p1, p0, Lb/a/d/j;->e:Lb/z;

    iget-object p1, p1, Lb/z;->s:Lb/b;

    invoke-interface {p1}, Lb/b;->a()Lb/ac;

    move-result-object p1

    return-object p1

    :sswitch_4f
    iget-object p1, p0, Lb/a/d/j;->e:Lb/z;

    iget-object p1, p1, Lb/z;->t:Lb/b;

    invoke-interface {p1}, Lb/b;->a()Lb/ac;

    move-result-object p1

    return-object p1

    :sswitch_58
    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    return-object v1

    :cond_69
    :sswitch_69
    iget-object v0, p0, Lb/a/d/j;->e:Lb/z;

    iget-boolean v0, v0, Lb/z;->x:Z

    if-nez v0, :cond_70

    return-object v1

    :cond_70
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_79

    return-object v1

    :cond_79
    iget-object v2, p1, Lb/ae;->a:Lb/ac;

    iget-object v2, v2, Lb/ac;->a:Lb/v;

    invoke-virtual {v2, v0}, Lb/v;->c(Ljava/lang/String;)Lb/v$a;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Lb/v$a;->b()Lb/v;

    move-result-object v0

    goto :goto_89

    :cond_88
    move-object v0, v1

    :goto_89
    if-nez v0, :cond_8c

    return-object v1

    :cond_8c
    iget-object v2, v0, Lb/v;->k:Ljava/lang/String;

    iget-object v4, p1, Lb/ae;->a:Lb/ac;

    iget-object v4, v4, Lb/ac;->a:Lb/v;

    iget-object v4, v4, Lb/v;->k:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    iget-object v2, p0, Lb/a/d/j;->e:Lb/z;

    iget-boolean v2, v2, Lb/z;->w:Z

    if-nez v2, :cond_a1

    return-object v1

    :cond_a1
    iget-object v2, p1, Lb/ae;->a:Lb/ac;

    invoke-virtual {v2}, Lb/ac;->c()Lb/ac$a;

    move-result-object v2

    invoke-static {v3}, Lb/a/d/f;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_db

    const-string v4, "PROPFIND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "PROPFIND"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c3

    const-string v3, "GET"

    :cond_bf
    :goto_bf
    invoke-virtual {v2, v3, v1}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    goto :goto_ca

    :cond_c3
    if-eqz v4, :cond_bf

    iget-object v1, p1, Lb/ae;->a:Lb/ac;

    iget-object v1, v1, Lb/ac;->d:Lb/ad;

    goto :goto_bf

    :goto_ca
    if-nez v4, :cond_db

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    :cond_db
    invoke-static {p1, v0}, Lb/a/d/j;->a(Lb/ae;Lb/v;)Z

    move-result p1

    if-nez p1, :cond_e6

    const-string p1, "Authorization"

    invoke-virtual {v2, p1}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    :cond_e6
    invoke-virtual {v2, v0}, Lb/ac$a;->a(Lb/v;)Lb/ac$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/ac$a;->d()Lb/ac;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_f0
    .sparse-switch
        0x12c -> :sswitch_69
        0x12d -> :sswitch_69
        0x12e -> :sswitch_69
        0x12f -> :sswitch_69
        0x133 -> :sswitch_58
        0x134 -> :sswitch_58
        0x191 -> :sswitch_4f
        0x197 -> :sswitch_2d
        0x198 -> :sswitch_21
    .end sparse-switch
.end method

.method private a()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/d/j;->c:Z

    iget-object v1, p0, Lb/a/d/j;->a:Lb/a/c/g;

    if-eqz v1, :cond_22

    iget-object v2, v1, Lb/a/c/g;->c:Lb/k;

    monitor-enter v2

    :try_start_a
    iput-boolean v0, v1, Lb/a/c/g;->f:Z

    iget-object v0, v1, Lb/a/c/g;->g:Lb/a/d/c;

    iget-object v1, v1, Lb/a/c/g;->e:Lb/a/c/c;

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_1f

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lb/a/d/c;->c()V

    return-void

    :cond_17
    if-eqz v1, :cond_22

    iget-object v0, v1, Lb/a/c/c;->b:Ljava/net/Socket;

    invoke-static {v0}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lb/a/d/j;->b:Ljava/lang/Object;

    return-void
.end method

.method private static a(Lb/ae;Lb/v;)Z
    .registers 4

    iget-object p0, p0, Lb/ae;->a:Lb/ac;

    iget-object p0, p0, Lb/ac;->a:Lb/v;

    iget-object v0, p0, Lb/v;->l:Ljava/lang/String;

    iget-object v1, p1, Lb/v;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lb/v;->m:I

    iget v1, p1, Lb/v;->m:I

    if-ne v0, v1, :cond_20

    iget-object p0, p0, Lb/v;->k:Ljava/lang/String;

    iget-object p1, p1, Lb/v;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/io/IOException;Z)Z
    .registers 5

    instance-of v0, p0, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_12

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v1

    :cond_13
    instance-of p1, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/security/cert/CertificateException;

    if-eqz p1, :cond_20

    return v1

    :cond_20
    instance-of p0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_25

    return v1

    :cond_25
    return v2
.end method

.method private a(Ljava/io/IOException;ZLb/ac;)Z
    .registers 6

    iget-object v0, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {v0, p1}, Lb/a/c/g;->a(Ljava/io/IOException;)V

    iget-object v0, p0, Lb/a/d/j;->e:Lb/z;

    iget-boolean v0, v0, Lb/z;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    if-eqz p2, :cond_16

    iget-object p3, p3, Lb/ac;->d:Lb/ad;

    instance-of p3, p3, Lb/a/d/l;

    if-eqz p3, :cond_16

    return v1

    :cond_16
    instance-of p3, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x1

    if-eqz p3, :cond_1d

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    goto :goto_3b

    :cond_1d
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_28

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_3a

    goto :goto_1b

    :cond_28
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_35

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_35

    goto :goto_1b

    :cond_35
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_3a

    goto :goto_1b

    :cond_3a
    const/4 p1, 0x1

    :goto_3b
    if-nez p1, :cond_3e

    return v1

    :cond_3e
    iget-object p1, p0, Lb/a/d/j;->a:Lb/a/c/g;

    iget-object p2, p1, Lb/a/c/g;->b:Lb/ag;

    if-nez p2, :cond_61

    iget-object p1, p1, Lb/a/c/g;->d:Lb/a/c/f;

    invoke-virtual {p1}, Lb/a/c/f;->c()Z

    move-result p2

    if-nez p2, :cond_5b

    invoke-virtual {p1}, Lb/a/c/f;->b()Z

    move-result p2

    if-nez p2, :cond_5b

    invoke-virtual {p1}, Lb/a/c/f;->d()Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_5b

    :cond_59
    const/4 p1, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 p1, 0x1

    :goto_5c
    if-eqz p1, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 p1, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    const/4 p1, 0x1

    :goto_62
    if-nez p1, :cond_65

    return v1

    :cond_65
    return v0
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lb/a/d/j;->c:Z

    return v0
.end method

.method private c()Lb/a/c/g;
    .registers 2

    iget-object v0, p0, Lb/a/d/j;->a:Lb/a/c/g;

    return-object v0
.end method


# virtual methods
.method public final intercept(Lb/w$a;)Lb/ae;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lb/w$a;->a()Lb/ac;

    move-result-object v0

    new-instance v1, Lb/a/c/g;

    iget-object v2, p0, Lb/a/d/j;->e:Lb/z;

    iget-object v2, v2, Lb/z;->u:Lb/k;

    iget-object v3, v0, Lb/ac;->a:Lb/v;

    invoke-direct {p0, v3}, Lb/a/d/j;->a(Lb/v;)Lb/a;

    move-result-object v3

    iget-object v4, p0, Lb/a/d/j;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lb/a/c/g;-><init>(Lb/k;Lb/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lb/a/d/j;->a:Lb/a/c/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :cond_1b
    :goto_1b
    iget-boolean v5, p0, Lb/a/d/j;->c:Z

    if-eqz v5, :cond_2c

    iget-object p1, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {p1}, Lb/a/c/g;->c()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    const/4 v5, 0x1

    :try_start_2d
    move-object v6, p1

    check-cast v6, Lb/a/d/g;

    iget-object v7, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {v6, v0, v7, v2, v2}, Lb/a/d/g;->a(Lb/ac;Lb/a/c/g;Lb/a/d/c;Lb/a/c/c;)Lb/ae;

    move-result-object v6
    :try_end_36
    .catch Lb/a/c/e; {:try_start_2d .. :try_end_36} :catch_1de
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_36} :catch_1d0
    .catchall {:try_start_2d .. :try_end_36} :catchall_1ce

    if-eqz v3, :cond_5a

    invoke-virtual {v6}, Lb/ae;->e()Lb/ae$a;

    move-result-object v0

    invoke-virtual {v3}, Lb/ae;->e()Lb/ae$a;

    move-result-object v3

    iput-object v2, v3, Lb/ae$a;->g:Lb/af;

    invoke-virtual {v3}, Lb/ae$a;->a()Lb/ae;

    move-result-object v3

    iget-object v6, v3, Lb/ae;->g:Lb/af;

    if-eqz v6, :cond_52

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    iput-object v3, v0, Lb/ae$a;->j:Lb/ae;

    invoke-virtual {v0}, Lb/ae$a;->a()Lb/ae;

    move-result-object v0

    move-object v3, v0

    goto :goto_5b

    :cond_5a
    move-object v3, v6

    :goto_5b
    if-nez v3, :cond_63

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_63
    iget-object v0, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {v0}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-interface {v0}, Lb/j;->a()Lb/ag;

    move-result-object v0

    goto :goto_71

    :cond_70
    move-object v0, v2

    :goto_71
    iget v6, v3, Lb/ae;->c:I

    iget-object v7, v3, Lb/ae;->a:Lb/ac;

    iget-object v7, v7, Lb/ac;->b:Ljava/lang/String;

    sparse-switch v6, :sswitch_data_1fa

    goto/16 :goto_145

    :sswitch_7c
    iget-object v0, v3, Lb/ae;->a:Lb/ac;

    iget-object v0, v0, Lb/ac;->d:Lb/ad;

    instance-of v0, v0, Lb/a/d/l;

    if-nez v0, :cond_145

    iget-object v0, v3, Lb/ae;->a:Lb/ac;

    goto/16 :goto_146

    :sswitch_88
    if-eqz v0, :cond_8d

    iget-object v0, v0, Lb/ag;->b:Ljava/net/Proxy;

    goto :goto_91

    :cond_8d
    iget-object v0, p0, Lb/a/d/j;->e:Lb/z;

    iget-object v0, v0, Lb/z;->d:Ljava/net/Proxy;

    :goto_91
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v5, :cond_a1

    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a1
    iget-object v0, p0, Lb/a/d/j;->e:Lb/z;

    iget-object v0, v0, Lb/z;->s:Lb/b;

    goto :goto_aa

    :sswitch_a6
    iget-object v0, p0, Lb/a/d/j;->e:Lb/z;

    iget-object v0, v0, Lb/z;->t:Lb/b;

    :goto_aa
    invoke-interface {v0}, Lb/b;->a()Lb/ac;

    move-result-object v0

    goto/16 :goto_146

    :sswitch_b0
    const-string v0, "GET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    const-string v0, "HEAD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    :cond_c0
    :sswitch_c0
    iget-object v0, p0, Lb/a/d/j;->e:Lb/z;

    iget-boolean v0, v0, Lb/z;->x:Z

    if-eqz v0, :cond_145

    const-string v0, "Location"

    invoke-virtual {v3, v0}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_145

    iget-object v6, v3, Lb/ae;->a:Lb/ac;

    iget-object v6, v6, Lb/ac;->a:Lb/v;

    invoke-virtual {v6, v0}, Lb/v;->c(Ljava/lang/String;)Lb/v$a;

    move-result-object v0

    if-eqz v0, :cond_dd

    invoke-virtual {v0}, Lb/v$a;->b()Lb/v;

    move-result-object v0

    goto :goto_de

    :cond_dd
    move-object v0, v2

    :goto_de
    if-eqz v0, :cond_145

    iget-object v6, v0, Lb/v;->k:Ljava/lang/String;

    iget-object v8, v3, Lb/ae;->a:Lb/ac;

    iget-object v8, v8, Lb/ac;->a:Lb/v;

    iget-object v8, v8, Lb/v;->k:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f4

    iget-object v6, p0, Lb/a/d/j;->e:Lb/z;

    iget-boolean v6, v6, Lb/z;->w:Z

    if-eqz v6, :cond_145

    :cond_f4
    iget-object v6, v3, Lb/ae;->a:Lb/ac;

    invoke-virtual {v6}, Lb/ac;->c()Lb/ac$a;

    move-result-object v6

    invoke-static {v7}, Lb/a/d/f;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_131

    const-string v8, "PROPFIND"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "PROPFIND"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v5, v9

    if-eqz v5, :cond_115

    const-string v5, "GET"

    invoke-virtual {v6, v5, v2}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    goto :goto_120

    :cond_115
    if-eqz v8, :cond_11c

    iget-object v5, v3, Lb/ae;->a:Lb/ac;

    iget-object v5, v5, Lb/ac;->d:Lb/ad;

    goto :goto_11d

    :cond_11c
    move-object v5, v2

    :goto_11d
    invoke-virtual {v6, v7, v5}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    :goto_120
    if-nez v8, :cond_131

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v6, v5}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    const-string v5, "Content-Length"

    invoke-virtual {v6, v5}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    const-string v5, "Content-Type"

    invoke-virtual {v6, v5}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    :cond_131
    invoke-static {v3, v0}, Lb/a/d/j;->a(Lb/ae;Lb/v;)Z

    move-result v5

    if-nez v5, :cond_13c

    const-string v5, "Authorization"

    invoke-virtual {v6, v5}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    :cond_13c
    invoke-virtual {v6, v0}, Lb/ac$a;->a(Lb/v;)Lb/ac$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/ac$a;->d()Lb/ac;

    move-result-object v0

    goto :goto_146

    :cond_145
    :goto_145
    move-object v0, v2

    :goto_146
    if-nez v0, :cond_152

    iget-boolean p1, p0, Lb/a/d/j;->f:Z

    if-nez p1, :cond_151

    iget-object p1, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {p1}, Lb/a/c/g;->c()V

    :cond_151
    return-object v3

    :cond_152
    iget-object v5, v3, Lb/ae;->g:Lb/af;

    invoke-static {v5}, Lb/a/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14

    if-le v4, v5, :cond_176

    iget-object p1, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {p1}, Lb/a/c/g;->c()V

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Too many follow-up requests: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_176
    iget-object v5, v0, Lb/ac;->d:Lb/ad;

    instance-of v5, v5, Lb/a/d/l;

    if-eqz v5, :cond_18b

    iget-object p1, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {p1}, Lb/a/c/g;->c()V

    new-instance p1, Ljava/net/HttpRetryException;

    const-string v0, "Cannot retry streamed HTTP body"

    iget v1, v3, Lb/ae;->c:I

    invoke-direct {p1, v0, v1}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_18b
    iget-object v5, v0, Lb/ac;->a:Lb/v;

    invoke-static {v3, v5}, Lb/a/d/j;->a(Lb/ae;Lb/v;)Z

    move-result v5

    if-nez v5, :cond_1ad

    iget-object v5, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {v5}, Lb/a/c/g;->c()V

    new-instance v5, Lb/a/c/g;

    iget-object v6, p0, Lb/a/d/j;->e:Lb/z;

    iget-object v6, v6, Lb/z;->u:Lb/k;

    iget-object v7, v0, Lb/ac;->a:Lb/v;

    invoke-direct {p0, v7}, Lb/a/d/j;->a(Lb/v;)Lb/a;

    move-result-object v7

    iget-object v8, p0, Lb/a/d/j;->b:Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v8}, Lb/a/c/g;-><init>(Lb/k;Lb/a;Ljava/lang/Object;)V

    iput-object v5, p0, Lb/a/d/j;->a:Lb/a/c/g;

    goto/16 :goto_1b

    :cond_1ad
    iget-object v5, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {v5}, Lb/a/c/g;->a()Lb/a/d/c;

    move-result-object v5

    if-eqz v5, :cond_1b

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Closing the body of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1ce
    move-exception p1

    goto :goto_1ee

    :catch_1d0
    move-exception v6

    :try_start_1d1
    instance-of v7, v6, Lb/a/f/a;

    if-nez v7, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    const/4 v5, 0x0

    :goto_1d7
    invoke-direct {p0, v6, v5, v0}, Lb/a/d/j;->a(Ljava/io/IOException;ZLb/ac;)Z

    move-result v5

    if-nez v5, :cond_1b

    throw v6

    :catch_1de
    move-exception v5

    invoke-virtual {v5}, Lb/a/c/e;->getLastConnectException()Ljava/io/IOException;

    move-result-object v6

    invoke-direct {p0, v6, v1, v0}, Lb/a/d/j;->a(Ljava/io/IOException;ZLb/ac;)Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-virtual {v5}, Lb/a/c/e;->getLastConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1ee
    .catchall {:try_start_1d1 .. :try_end_1ee} :catchall_1ce

    :goto_1ee
    iget-object v0, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {v0, v2}, Lb/a/c/g;->a(Ljava/io/IOException;)V

    iget-object v0, p0, Lb/a/d/j;->a:Lb/a/c/g;

    invoke-virtual {v0}, Lb/a/c/g;->c()V

    throw p1

    nop

    :sswitch_data_1fa
    .sparse-switch
        0x12c -> :sswitch_c0
        0x12d -> :sswitch_c0
        0x12e -> :sswitch_c0
        0x12f -> :sswitch_c0
        0x133 -> :sswitch_b0
        0x134 -> :sswitch_b0
        0x191 -> :sswitch_a6
        0x197 -> :sswitch_88
        0x198 -> :sswitch_7c
    .end sparse-switch
.end method
