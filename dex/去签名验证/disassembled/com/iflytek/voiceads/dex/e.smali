.class final Lcom/iflytek/voiceads/dex/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/iflytek/voiceads/dex/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/voiceads/dex/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/voiceads/dex/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloading new version:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/dex/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    :try_start_13
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/iflytek/voiceads/dex/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7d

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/voiceads/dex/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/voiceads/dex/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_56
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_61

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_56

    :cond_61
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/voiceads/dex/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " completed, it will be loaded next time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    goto :goto_7e

    :cond_7d
    move-object v0, v3

    :goto_7e
    if-eqz v3, :cond_83

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_83
    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_88} :catch_89

    :cond_88
    return-void

    :catch_89
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadRemote thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;)V

    return-void
.end method
