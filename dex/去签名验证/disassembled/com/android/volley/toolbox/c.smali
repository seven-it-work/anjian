.class public final Lcom/android/volley/toolbox/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/f;


# static fields
.field protected static final a:Z

.field private static d:I = 0xbb8

.field private static e:I = 0x1000


# instance fields
.field protected final b:Lcom/android/volley/toolbox/i;

.field protected final c:Lcom/android/volley/toolbox/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/volley/t;->b:Z

    sput-boolean v0, Lcom/android/volley/toolbox/c;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/i;)V
    .registers 4

    new-instance v0, Lcom/android/volley/toolbox/d;

    sget v1, Lcom/android/volley/toolbox/c;->e:I

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/d;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/c;-><init>(Lcom/android/volley/toolbox/i;Lcom/android/volley/toolbox/d;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/volley/toolbox/i;Lcom/android/volley/toolbox/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/c;->b:Lcom/android/volley/toolbox/i;

    iput-object p2, p0, Lcom/android/volley/toolbox/c;->c:Lcom/android/volley/toolbox/d;

    return-void
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return-object v0
.end method

.method private static a(JLcom/android/volley/l;[BLorg/apache/http/StatusLine;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/l<",
            "*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/volley/toolbox/c;->a:Z

    if-nez v0, :cond_b

    sget v0, Lcom/android/volley/toolbox/c;->d:I

    int-to-long v0, v0

    cmp-long v2, p0, v0

    if-lez v2, :cond_42

    :cond_b
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x2

    if-eqz p3, :cond_23

    array-length p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_25

    :cond_23
    const-string p1, "null"

    :goto_25
    aput-object p1, v1, p0

    const/4 p0, 0x3

    invoke-interface {p4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x4

    iget-object p1, p2, Lcom/android/volley/l;->j:Lcom/android/volley/p;

    invoke-interface {p1}, Lcom/android/volley/p;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/android/volley/l;Lcom/android/volley/s;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/l<",
            "*>;",
            "Lcom/android/volley/s;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/s;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/volley/l;->j:Lcom/android/volley/p;

    invoke-virtual {p1}, Lcom/android/volley/l;->i()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_9
    invoke-interface {v0, p2}, Lcom/android/volley/p;->a(Lcom/android/volley/s;)V
    :try_end_c
    .catch Lcom/android/volley/s; {:try_start_9 .. :try_end_c} :catch_20

    const-string p2, "%s-retry [timeout=%s]"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    return-void

    :catch_20
    move-exception p2

    const-string v0, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    throw p2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    sub-long v4, v0, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v3, p2

    const/4 p0, 0x2

    aput-object p1, v3, p0

    invoke-static {v2, v3}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/android/volley/b$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/b$a;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "If-None-Match"

    iget-object v1, p1, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-wide v0, p1, Lcom/android/volley/b$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_26

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lcom/android/volley/b$a;->d:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string p1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-void
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/q;
        }
    .end annotation

    new-instance v0, Lcom/android/volley/toolbox/q;

    iget-object v1, p0, Lcom/android/volley/toolbox/c;->c:Lcom/android/volley/toolbox/d;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/q;-><init>(Lcom/android/volley/toolbox/d;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_1a

    new-instance v3, Lcom/android/volley/q;

    invoke-direct {v3}, Lcom/android/volley/q;-><init>()V

    throw v3

    :cond_1a
    iget-object v4, p0, Lcom/android/volley/toolbox/c;->c:Lcom/android/volley/toolbox/d;

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Lcom/android/volley/toolbox/d;->a(I)[B

    move-result-object v4
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_48

    :goto_22
    :try_start_22
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2d

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/volley/toolbox/q;->write([BII)V

    goto :goto_22

    :cond_2d
    invoke-virtual {v0}, Lcom/android/volley/toolbox/q;->toByteArray()[B

    move-result-object v2
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_45

    :try_start_31
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_3c

    :catch_35
    const-string p1, "Error occured when calling consumingContent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3c
    iget-object p1, p0, Lcom/android/volley/toolbox/c;->c:Lcom/android/volley/toolbox/d;

    invoke-virtual {p1, v4}, Lcom/android/volley/toolbox/d;->a([B)V

    invoke-virtual {v0}, Lcom/android/volley/toolbox/q;->close()V

    return-object v2

    :catchall_45
    move-exception v3

    move-object v2, v4

    goto :goto_49

    :catchall_48
    move-exception v3

    :goto_49
    :try_start_49
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_54

    :catch_4d
    const-string p1, "Error occured when calling consumingContent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_54
    iget-object p1, p0, Lcom/android/volley/toolbox/c;->c:Lcom/android/volley/toolbox/d;

    invoke-virtual {p1, v2}, Lcom/android/volley/toolbox/d;->a([B)V

    invoke-virtual {v0}, Lcom/android/volley/toolbox/q;->close()V

    throw v3
.end method


# virtual methods
.method public final a(Lcom/android/volley/l;)Lcom/android/volley/i;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;)",
            "Lcom/android/volley/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/s;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_f
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v2, Lcom/android/volley/l;->k:Lcom/android/volley/b$a;

    if-eqz v11, :cond_3b

    iget-object v12, v11, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    if-eqz v12, :cond_23

    const-string v12, "If-None-Match"

    iget-object v13, v11, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget-wide v12, v11, Lcom/android/volley/b$a;->d:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_3b

    new-instance v12, Ljava/util/Date;

    iget-wide v13, v11, Lcom/android/volley/b$a;->d:J

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    const-string v11, "If-Modified-Since"

    invoke-static {v12}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    iget-object v11, v1, Lcom/android/volley/toolbox/c;->b:Lcom/android/volley/toolbox/i;

    invoke-interface {v11, v2, v10}, Lcom/android/volley/toolbox/i;->a(Lcom/android/volley/l;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v10
    :try_end_41
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_41} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_41} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_41} :catch_18b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_41} :catch_133

    :try_start_41
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v12

    invoke-static {v12}, Lcom/android/volley/toolbox/c;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v12
    :try_end_51
    .catch Ljava/net/SocketTimeoutException; {:try_start_41 .. :try_end_51} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_41 .. :try_end_51} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_41 .. :try_end_51} :catch_18b
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_51} :catch_12e

    const/16 v5, 0x130

    if-ne v13, v5, :cond_94

    :try_start_55
    iget-object v5, v2, Lcom/android/volley/l;->k:Lcom/android/volley/b$a;

    if-nez v5, :cond_6f

    new-instance v5, Lcom/android/volley/i;

    const/16 v15, 0x130

    const/16 v16, 0x0

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/4 v11, 0x0

    sub-long v19, v13, v3

    move-object v14, v5

    move-object/from16 v17, v12

    invoke-direct/range {v14 .. v20}, Lcom/android/volley/i;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v5

    :cond_6f
    iget-object v11, v5, Lcom/android/volley/b$a;->g:Ljava/util/Map;

    invoke-interface {v11, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v11, Lcom/android/volley/i;

    const/16 v14, 0x130

    iget-object v15, v5, Lcom/android/volley/b$a;->a:[B

    iget-object v5, v5, Lcom/android/volley/b$a;->g:Ljava/util/Map;

    const/16 v17, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const/4 v13, 0x0

    sub-long v20, v18, v3

    move-object v13, v11

    move-object/from16 v16, v5

    move-wide/from16 v18, v20

    invoke-direct/range {v13 .. v19}, Lcom/android/volley/i;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_8d
    .catch Ljava/net/SocketTimeoutException; {:try_start_55 .. :try_end_8d} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_55 .. :try_end_8d} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_55 .. :try_end_8d} :catch_18b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_8d} :catch_8e

    return-object v11

    :catch_8e
    move-exception v0

    move-object v5, v0

    move-object v14, v12

    :goto_91
    const/4 v13, 0x0

    goto/16 :goto_138

    :cond_94
    :try_start_94
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5
    :try_end_98
    .catch Ljava/net/SocketTimeoutException; {:try_start_94 .. :try_end_98} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_94 .. :try_end_98} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_94 .. :try_end_98} :catch_18b
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_98} :catch_124

    if-eqz v5, :cond_a3

    :try_start_9a
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/volley/toolbox/c;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v5
    :try_end_a2
    .catch Ljava/net/SocketTimeoutException; {:try_start_9a .. :try_end_a2} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9a .. :try_end_a2} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_9a .. :try_end_a2} :catch_18b
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_8e

    goto :goto_a5

    :cond_a3
    :try_start_a3
    new-array v5, v8, [B
    :try_end_a5
    .catch Ljava/net/SocketTimeoutException; {:try_start_a3 .. :try_end_a5} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a3 .. :try_end_a5} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_a3 .. :try_end_a5} :catch_18b
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a5} :catch_124

    :goto_a5
    :try_start_a5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14
    :try_end_a9
    .catch Ljava/net/SocketTimeoutException; {:try_start_a5 .. :try_end_a9} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a5 .. :try_end_a9} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_a5 .. :try_end_a9} :catch_18b
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a9} :catch_11b

    const/16 v16, 0x0

    move-object/from16 v22, v10

    sub-long v9, v14, v3

    :try_start_af
    sget-boolean v14, Lcom/android/volley/toolbox/c;->a:Z
    :try_end_b1
    .catch Ljava/net/SocketTimeoutException; {:try_start_af .. :try_end_b1} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_af .. :try_end_b1} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_af .. :try_end_b1} :catch_18b
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b1} :catch_119

    if-nez v14, :cond_c0

    :try_start_b3
    sget v14, Lcom/android/volley/toolbox/c;->d:I
    :try_end_b5
    .catch Ljava/net/SocketTimeoutException; {:try_start_b3 .. :try_end_b5} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b3 .. :try_end_b5} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_b3 .. :try_end_b5} :catch_18b
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b5} :catch_bb

    int-to-long v14, v14

    cmp-long v16, v9, v14

    if-lez v16, :cond_f4

    goto :goto_c0

    :catch_bb
    move-exception v0

    move-object v13, v5

    move-object v14, v12

    goto/16 :goto_121

    :cond_c0
    :goto_c0
    :try_start_c0
    const-string v14, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v2, v15, v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v15, v7
    :try_end_cd
    .catch Ljava/net/SocketTimeoutException; {:try_start_c0 .. :try_end_cd} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c0 .. :try_end_cd} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_c0 .. :try_end_cd} :catch_18b
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_cd} :catch_119

    if-eqz v5, :cond_d5

    :try_start_cf
    array-length v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_d4
    .catch Ljava/net/SocketTimeoutException; {:try_start_cf .. :try_end_d4} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_cf .. :try_end_d4} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_cf .. :try_end_d4} :catch_18b
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d4} :catch_bb

    goto :goto_d7

    :cond_d5
    :try_start_d5
    const-string v9, "null"

    :goto_d7
    aput-object v9, v15, v6

    const/4 v9, 0x3

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v9

    const/4 v9, 0x4

    iget-object v10, v2, Lcom/android/volley/l;->j:Lcom/android/volley/p;

    invoke-interface {v10}, Lcom/android/volley/p;->b()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v9

    invoke-static {v14, v15}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f4
    const/16 v9, 0xc8

    if-lt v13, v9, :cond_110

    const/16 v9, 0x12b

    if-le v13, v9, :cond_fd

    goto :goto_110

    :cond_fd
    new-instance v9, Lcom/android/volley/i;

    const/16 v16, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10
    :try_end_105
    .catch Ljava/net/SocketTimeoutException; {:try_start_d5 .. :try_end_105} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d5 .. :try_end_105} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_d5 .. :try_end_105} :catch_18b
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_105} :catch_119

    const/4 v14, 0x0

    sub-long v17, v10, v3

    move-object v10, v12

    move-object v12, v9

    move-object v14, v5

    move-object v15, v10

    :try_start_10c
    invoke-direct/range {v12 .. v18}, Lcom/android/volley/i;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v9

    :cond_110
    :goto_110
    move-object v10, v12

    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9
    :try_end_117
    .catch Ljava/net/SocketTimeoutException; {:try_start_10c .. :try_end_117} :catch_1ab
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10c .. :try_end_117} :catch_1a3
    .catch Ljava/net/MalformedURLException; {:try_start_10c .. :try_end_117} :catch_18b
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_117} :catch_117

    :catch_117
    move-exception v0

    goto :goto_11f

    :catch_119
    move-exception v0

    goto :goto_11e

    :catch_11b
    move-exception v0

    move-object/from16 v22, v10

    :goto_11e
    move-object v10, v12

    :goto_11f
    move-object v13, v5

    move-object v14, v10

    :goto_121
    move-object/from16 v10, v22

    goto :goto_137

    :catch_124
    move-exception v0

    move-object/from16 v22, v10

    move-object v10, v12

    move-object v5, v0

    move-object v14, v10

    move-object/from16 v10, v22

    goto/16 :goto_91

    :catch_12e
    move-exception v0

    move-object/from16 v22, v10

    move-object v14, v5

    goto :goto_136

    :catch_133
    move-exception v0

    move-object v14, v5

    const/4 v10, 0x0

    :goto_136
    const/4 v13, 0x0

    :goto_137
    move-object v5, v0

    :goto_138
    if-eqz v10, :cond_185

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const-string v9, "Unexpected response code %d for %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    iget-object v8, v2, Lcom/android/volley/l;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v9, v6}, Lcom/android/volley/t;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_17e

    new-instance v6, Lcom/android/volley/i;

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v16, v7, v3

    move-object v11, v6

    move v12, v5

    invoke-direct/range {v11 .. v17}, Lcom/android/volley/i;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v7, 0x191

    if-eq v5, v7, :cond_172

    const/16 v7, 0x193

    if-ne v5, v7, :cond_16c

    goto :goto_172

    :cond_16c
    new-instance v2, Lcom/android/volley/q;

    invoke-direct {v2, v6}, Lcom/android/volley/q;-><init>(Lcom/android/volley/i;)V

    throw v2

    :cond_172
    :goto_172
    const-string v5, "auth"

    new-instance v7, Lcom/android/volley/a;

    invoke-direct {v7, v6}, Lcom/android/volley/a;-><init>(Lcom/android/volley/i;)V

    invoke-static {v5, v2, v7}, Lcom/android/volley/toolbox/c;->a(Ljava/lang/String;Lcom/android/volley/l;Lcom/android/volley/s;)V

    goto/16 :goto_8

    :cond_17e
    new-instance v2, Lcom/android/volley/h;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/volley/h;-><init>(Lcom/android/volley/i;)V

    throw v2

    :cond_185
    new-instance v2, Lcom/android/volley/j;

    invoke-direct {v2, v5}, Lcom/android/volley/j;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_18b
    move-exception v0

    move-object v3, v0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad URL "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1a3
    const-string v5, "connection"

    new-instance v6, Lcom/android/volley/r;

    invoke-direct {v6}, Lcom/android/volley/r;-><init>()V

    goto :goto_1b2

    :catch_1ab
    const-string v5, "socket"

    new-instance v6, Lcom/android/volley/r;

    invoke-direct {v6}, Lcom/android/volley/r;-><init>()V

    :goto_1b2
    invoke-static {v5, v2, v6}, Lcom/android/volley/toolbox/c;->a(Ljava/lang/String;Lcom/android/volley/l;Lcom/android/volley/s;)V

    goto/16 :goto_8
.end method
