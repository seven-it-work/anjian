.class public Lcom/iflytek/collector/a/a/g;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/collector/a/a/g$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/iflytek/collector/a/a/g$a;

.field private volatile c:Z

.field private d:Ljava/net/URL;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/collector/a/a/g;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/collector/a/a/g;->b:Lcom/iflytek/collector/a/a/g$a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/collector/a/a/g;->c:Z

    iput-object v0, p0, Lcom/iflytek/collector/a/a/g;->d:Ljava/net/URL;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/iflytek/collector/a/a/g;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/iflytek/collector/a/a/g;->f:Ljava/lang/Object;

    iput v1, p0, Lcom/iflytek/collector/a/a/g;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_34
    const-string p1, "Collector"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/collector/a/a/g;->b:Lcom/iflytek/collector/a/a/g$a;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/iflytek/collector/a/a/g;->c:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/collector/a/a/g;->b:Lcom/iflytek/collector/a/a/g$a;

    invoke-interface {v0, p1}, Lcom/iflytek/collector/a/a/g$a;->a(Ljava/lang/Exception;)V

    :cond_e
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "rsp"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "rsp"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1d

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :catch_1d
    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {p1, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v2, v1, [B

    :goto_e
    iget-boolean v3, p0, Lcom/iflytek/collector/a/a/g;->c:Z

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1e

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    :cond_1e
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/collector/a/a/g;->d:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_5f
    .catchall {:try_start_1 .. :try_end_9} :catchall_5b

    :try_start_9
    iget v2, p0, Lcom/iflytek/collector/a/a/g;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v2, p0, Lcom/iflytek/collector/a/a/g;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_37

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_59
    .catchall {:try_start_9 .. :try_end_24} :catchall_74

    :try_start_24
    invoke-direct {p0, v2}, Lcom/iflytek/collector/a/a/g;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/collector/a/a/g;->b([B)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_32
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2d

    move-object v0, v2

    goto :goto_4d

    :catchall_2d
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_75

    :catch_32
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_62

    :cond_37
    :try_start_37
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HttpRequest Failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/iflytek/collector/a/a/g;->a(Ljava/lang/Exception;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4d} :catch_59
    .catchall {:try_start_37 .. :try_end_4d} :catchall_74

    :goto_4d
    if-eqz v0, :cond_52

    :try_start_4f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_52
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_57} :catch_58

    return-void

    :catch_58
    :cond_58
    return-void

    :catch_59
    move-exception v2

    goto :goto_62

    :catchall_5b
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_75

    :catch_5f
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_62
    :try_start_62
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v2}, Lcom/iflytek/collector/a/a/g;->a(Ljava/lang/Exception;)V
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_74

    if-eqz v0, :cond_6d

    :try_start_6a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_6d
    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_72} :catch_73

    return-void

    :catch_73
    :cond_73
    return-void

    :catchall_74
    move-exception v2

    :goto_75
    if-eqz v0, :cond_7a

    :try_start_77
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7a
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7f} :catch_7f

    :catch_7f
    :cond_7f
    throw v2
.end method

.method private b([B)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/collector/a/a/g;->b:Lcom/iflytek/collector/a/a/g$a;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/iflytek/collector/a/a/g;->c:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/collector/a/a/g;->b:Lcom/iflytek/collector/a/a/g$a;

    invoke-interface {v0, p0, p1}, Lcom/iflytek/collector/a/a/g$a;->a(Lcom/iflytek/collector/a/a/g;[B)V

    :cond_e
    return-void
.end method

.method private c()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/iflytek/collector/a/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    iget-object v2, p0, Lcom/iflytek/collector/a/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    return v1
.end method


# virtual methods
.method public a()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/collector/a/a/g;->d:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b3
    .catchall {:try_start_1 .. :try_end_9} :catchall_b0

    const/4 v2, 0x1

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v2, p0, Lcom/iflytek/collector/a/a/g;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v2, p0, Lcom/iflytek/collector/a/a/g;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "Content-length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/iflytek/collector/a/a/g;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Charset"

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-gzip"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/collector/a/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_57

    :cond_67
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_8c

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_79} :catch_ae
    .catchall {:try_start_a .. :try_end_79} :catchall_c4

    :try_start_79
    invoke-direct {p0, v2}, Lcom/iflytek/collector/a/a/g;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/collector/a/a/g;->b([B)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_87
    .catchall {:try_start_79 .. :try_end_80} :catchall_82

    move-object v0, v2

    goto :goto_a2

    :catchall_82
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_c5

    :catch_87
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_b5

    :cond_8c
    :try_start_8c
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Http Request Failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/iflytek/collector/a/a/g;->a(Ljava/lang/Exception;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a2} :catch_ae
    .catchall {:try_start_8c .. :try_end_a2} :catchall_c4

    :goto_a2
    if-eqz v0, :cond_a7

    :try_start_a4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a7
    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ac} :catch_ad

    return-void

    :catch_ad
    :cond_ad
    return-void

    :catch_ae
    move-exception v2

    goto :goto_b5

    :catchall_b0
    move-exception v2

    move-object v1, v0

    goto :goto_c5

    :catch_b3
    move-exception v2

    move-object v1, v0

    :goto_b5
    :try_start_b5
    invoke-direct {p0, v2}, Lcom/iflytek/collector/a/a/g;->a(Ljava/lang/Exception;)V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_c4

    if-eqz v0, :cond_bd

    :try_start_ba
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_bd
    if-eqz v1, :cond_c3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c2} :catch_c3

    return-void

    :catch_c3
    :cond_c3
    return-void

    :catchall_c4
    move-exception v2

    :goto_c5
    if-eqz v0, :cond_ca

    :try_start_c7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_ca
    if-eqz v1, :cond_cf

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cf} :catch_cf

    :catch_cf
    :cond_cf
    throw v2
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/collector/a/a/g;->g:I

    return-void
.end method

.method public a(Lcom/iflytek/collector/a/a/g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/collector/a/a/g;->b:Lcom/iflytek/collector/a/a/g$a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/collector/a/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p3}, Lcom/iflytek/collector/a/a/g;->a([B)V

    :try_start_8
    invoke-static {p1, p2}, Lcom/iflytek/collector/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/collector/a/a/g;->d:Ljava/net/URL;
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    const-string p2, "Collector"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "url error:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([B)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/iflytek/collector/a/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/collector/a/a/g;->a:I

    return-void
.end method

.method public b(Lcom/iflytek/collector/a/a/g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/collector/a/a/g;->b:Lcom/iflytek/collector/a/a/g$a;

    invoke-virtual {p0}, Lcom/iflytek/collector/a/a/g;->start()V

    return-void
.end method

.method public run()V
    .registers 3

    iget v0, p0, Lcom/iflytek/collector/a/a/g;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/iflytek/collector/a/a/g;->a()V

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/iflytek/collector/a/a/g;->b()V

    return-void
.end method
