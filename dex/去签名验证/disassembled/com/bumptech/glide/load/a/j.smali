.class public final Lcom/bumptech/glide/load/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/a/j$a;,
        Lcom/bumptech/glide/load/a/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/bumptech/glide/load/a/j$b;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "HttpUrlFetcher"

.field private static final c:I = 0x5

.field private static final d:I = -0x1


# instance fields
.field private final e:Lcom/bumptech/glide/load/c/g;

.field private final f:I

.field private final g:Lcom/bumptech/glide/load/a/j$b;

.field private h:Ljava/net/HttpURLConnection;

.field private i:Ljava/io/InputStream;

.field private volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/a/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/a/j$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/a/j;->a:Lcom/bumptech/glide/load/a/j$b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/c/g;I)V
    .registers 4

    sget-object v0, Lcom/bumptech/glide/load/a/j;->a:Lcom/bumptech/glide/load/a/j$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/a/j;-><init>(Lcom/bumptech/glide/load/c/g;ILcom/bumptech/glide/load/a/j$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/c/g;ILcom/bumptech/glide/load/a/j$b;)V
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/a/j;->e:Lcom/bumptech/glide/load/c/g;

    iput p2, p0, Lcom/bumptech/glide/load/a/j;->f:I

    iput-object p3, p0, Lcom/bumptech/glide/load/a/j;->g:Lcom/bumptech/glide/load/a/j$b;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/util/b;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p1

    :goto_17
    iput-object p1, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    goto :goto_3f

    :cond_1a
    const-string v0, "HttpUrlFetcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "HttpUrlFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got non empty content encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_17

    :goto_3f
    iget-object p1, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    return-object p1
.end method

.method private a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x5

    if-lt p2, v0, :cond_b

    new-instance p1, Lcom/bumptech/glide/load/e;

    const-string p2, "Too many (> 5) redirects!"

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p3, :cond_23

    :try_start_d
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    new-instance p3, Lcom/bumptech/glide/load/e;

    const-string v0, "In re-direct loop"

    invoke-direct {p3, v0}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_23
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->g:Lcom/bumptech/glide/load/a/j$b;

    invoke-interface {p3, p1}, Lcom/bumptech/glide/load/a/j$b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_33
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_51
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/bumptech/glide/load/a/j;->f:I

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/bumptech/glide/load/a/j;->f:I

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    iget-boolean p3, p0, Lcom/bumptech/glide/load/a/j;->j:Z

    if-eqz p3, :cond_83

    const/4 p1, 0x0

    return-object p1

    :cond_83
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    div-int/lit8 v2, p3, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_90

    const/4 v3, 0x1

    goto :goto_91

    :cond_90
    const/4 v3, 0x0

    :goto_91
    const/4 v4, 0x3

    if-eqz v3, :cond_d7

    iget-object p1, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/b;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p1

    :goto_ad
    iput-object p1, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    goto :goto_d4

    :cond_b0
    const-string p2, "HttpUrlFetcher"

    invoke-static {p2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_cf

    const-string p2, "HttpUrlFetcher"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Got non empty content encoding: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_ad

    :goto_d4
    iget-object p1, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    return-object p1

    :cond_d7
    if-ne v2, v4, :cond_da

    const/4 v0, 0x1

    :cond_da
    if-eqz v0, :cond_100

    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    const-string v0, "Location"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f2

    new-instance p1, Lcom/bumptech/glide/load/e;

    const-string p2, "Received empty or null redirect url"

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/a/j;->b()V

    add-int/lit8 p2, p2, 0x1

    move-object p3, p1

    move-object p1, v0

    goto/16 :goto_0

    :cond_100
    const/4 p1, -0x1

    if-ne p3, p1, :cond_109

    new-instance p1, Lcom/bumptech/glide/load/e;

    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/e;-><init>(I)V

    throw p1

    :cond_109
    new-instance p1, Lcom/bumptech/glide/load/e;

    iget-object p2, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private static a(I)Z
    .registers 2

    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private static b(I)Z
    .registers 2

    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/a/d$a;)V
    .registers 9
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/e;->a()J

    move-result-wide v0

    const/4 p1, 0x2

    :try_start_5
    iget-object v2, p0, Lcom/bumptech/glide/load/a/j;->e:Lcom/bumptech/glide/load/c/g;

    iget-object v3, v2, Lcom/bumptech/glide/load/c/g;->d:Ljava/net/URL;

    if-nez v3, :cond_16

    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/c/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/bumptech/glide/load/c/g;->d:Ljava/net/URL;

    :cond_16
    iget-object v2, v2, Lcom/bumptech/glide/load/c/g;->d:Ljava/net/URL;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bumptech/glide/load/a/j;->e:Lcom/bumptech/glide/load/c/g;

    iget-object v5, v5, Lcom/bumptech/glide/load/c/g;->c:Lcom/bumptech/glide/load/c/h;

    invoke-interface {v5}, Lcom/bumptech/glide/load/c/h;->a()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/bumptech/glide/load/a/j;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_29} :catch_4b
    .catchall {:try_start_5 .. :try_end_29} :catchall_49

    const-string p2, "HttpUrlFetcher"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p1, "HttpUrlFetcher"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Finished http url fetcher fetch in "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3a
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_49
    move-exception p2

    goto :goto_72

    :catch_4b
    move-exception v2

    :try_start_4c
    const-string v3, "HttpUrlFetcher"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5c

    const-string v3, "HttpUrlFetcher"

    const-string v4, "Failed to load data for url"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Exception;)V
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_49

    const-string p2, "HttpUrlFetcher"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p1, "HttpUrlFetcher"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Finished http url fetcher fetch in "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :cond_71
    return-void

    :goto_72
    const-string v2, "HttpUrlFetcher"

    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_91

    const-string p1, "HttpUrlFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished http url fetcher fetch in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    throw p2
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/a/j;->j:Z

    return-void
.end method

.method public final d()Lcom/bumptech/glide/load/a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/a;->REMOTE:Lcom/bumptech/glide/load/a;

    return-object v0
.end method
