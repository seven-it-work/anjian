.class Lcom/squareup/picasso/NetworkRequestHandler;
.super Lcom/squareup/picasso/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;
    }
.end annotation


# static fields
.field static final RETRY_COUNT:I = 0x2

.field private static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"


# instance fields
.field private final downloader:Lcom/squareup/picasso/Downloader;

.field private final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Stats;)V
    .registers 3

    invoke-direct {p0}, Lcom/squareup/picasso/RequestHandler;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/NetworkRequestHandler;->downloader:Lcom/squareup/picasso/Downloader;

    iput-object p2, p0, Lcom/squareup/picasso/NetworkRequestHandler;->stats:Lcom/squareup/picasso/Stats;

    return-void
.end method


# virtual methods
.method public canHandleRequest(Lcom/squareup/picasso/Request;)Z
    .registers 3

    iget-object p1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    return p1

    :cond_19
    :goto_19
    const/4 p1, 0x1

    return p1
.end method

.method getRetryCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/squareup/picasso/NetworkRequestHandler;->downloader:Lcom/squareup/picasso/Downloader;

    iget-object v0, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    iget p1, p1, Lcom/squareup/picasso/Request;->networkPolicy:I

    invoke-interface {p2, v0, p1}, Lcom/squareup/picasso/Downloader;->load(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$Response;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    iget-boolean v0, p1, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_17

    :cond_15
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    :goto_17
    invoke-virtual {p1}, Lcom/squareup/picasso/Downloader$Response;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance p1, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-direct {p1, v1, v0}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object p1

    :cond_23
    invoke-virtual {p1}, Lcom/squareup/picasso/Downloader$Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2a

    return-object p2

    :cond_2a
    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    const-wide/16 v2, 0x0

    if-ne v0, p2, :cond_43

    invoke-virtual {p1}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-nez p2, :cond_43

    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    new-instance p1, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-ne v0, p2, :cond_58

    invoke-virtual {p1}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_58

    iget-object p2, p0, Lcom/squareup/picasso/NetworkRequestHandler;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {p1}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/squareup/picasso/Stats;->dispatchDownloadFinished(J)V

    :cond_58
    new-instance p1, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-direct {p1, v1, v0}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object p1
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .registers 3

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method supportsReplay()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
