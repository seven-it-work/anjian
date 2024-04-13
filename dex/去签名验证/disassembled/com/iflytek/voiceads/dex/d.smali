.class final Lcom/iflytek/voiceads/dex/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/iflytek/voiceads/dex/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/voiceads/dex/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/voiceads/dex/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/voiceads/dex/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "checking update"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_a
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/iflytek/voiceads/dex/d;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Charset"

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_a4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_46

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3b

    :cond_46
    new-instance v2, Lcom/iflytek/voiceads/dex/b;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lcom/iflytek/voiceads/dex/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/iflytek/voiceads/dex/b;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9e

    invoke-virtual {v2}, Lcom/iflytek/voiceads/dex/b;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_61

    goto :goto_9e

    :cond_61
    invoke-virtual {v2}, Lcom/iflytek/voiceads/dex/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/voiceads/dex/d;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/iflytek/voiceads/dex/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/voiceads/dex/d;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/voiceads/dex/d;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/iflytek/voiceads/dex/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-le v3, v4, :cond_98

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "find new version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/iflytek/voiceads/dex/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/voiceads/dex/d;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/dex/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iflytek/voiceads/dex/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/iflytek/voiceads/dex/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    :cond_98
    const-string v2, "no new version dex"

    invoke-static {v2}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    goto :goto_a5

    :cond_9e
    :goto_9e
    const-string v0, "no version"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a4
    const/4 v1, 0x0

    :goto_a5
    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_aa
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_ad} :catch_ae

    return-void

    :catch_ae
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDexUpdate thread"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;)V

    return-void
.end method
