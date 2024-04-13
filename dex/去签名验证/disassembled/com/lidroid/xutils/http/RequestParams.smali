.class public Lcom/lidroid/xutils/http/RequestParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/RequestParams$HeaderItem;
    }
.end annotation


# instance fields
.field private bodyEntity:Lorg/apache/http/HttpEntity;

.field private bodyParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private fileParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;",
            ">;"
        }
    .end annotation
.end field

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/http/RequestParams$HeaderItem;",
            ">;"
        }
    .end annotation
.end field

.field private priority:Lcom/lidroid/xutils/task/Priority;

.field private queryStringParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    :cond_f
    return-void
.end method


# virtual methods
.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2, p3}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2, p3, p4}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 7

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;

    invoke-direct {v1, p2, p3, p4}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v7, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBodyParameter(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    :cond_b
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2a
    return-void
.end method

.method public addBodyParameter(Lorg/apache/http/NameValuePair;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    invoke-direct {v1, p0, p1}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeaders(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v2, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    invoke-direct {v2, p0, v0}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQueryStringParameter(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    :cond_b
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2a
    return-void
.end method

.method public addQueryStringParameter(Lorg/apache/http/NameValuePair;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .registers 6

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyEntity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyEntity:Lorg/apache/http/HttpEntity;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_82

    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;

    sget-object v2, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    iget-object v3, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;-><init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_5a

    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    :try_start_40
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lidroid/xutils/http/client/multipart/content/StringBody;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/lidroid/xutils/http/client/multipart/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->addPart(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_50} :catch_51

    goto :goto_33

    :catch_51
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6c

    move-object v1, v0

    return-object v1

    :cond_6c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    invoke-virtual {v0, v3, v1}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->addPart(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    goto :goto_64

    :cond_82
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_97

    new-instance v1, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    iget-object v2, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :cond_97
    return-object v1
.end method

.method public getHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/http/RequestParams$HeaderItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getPriority()Lcom/lidroid/xutils/task/Priority;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->priority:Lcom/lidroid/xutils/task/Priority;

    return-object v0
.end method

.method public getQueryStringParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    return-object v0
.end method

.method public setBodyEntity(Lorg/apache/http/HttpEntity;)V
    .registers 3

    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyEntity:Lorg/apache/http/HttpEntity;

    iget-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    :cond_e
    iget-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    :cond_19
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/lidroid/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v2, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public setPriority(Lcom/lidroid/xutils/task/Priority;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->priority:Lcom/lidroid/xutils/task/Priority;

    return-void
.end method
