.class public final Lcom/android/volley/toolbox/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/toolbox/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/g$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "Content-Type"


# instance fields
.field protected final a:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/g;->a:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2c
    return-object v0
.end method

.method private static a(Lcom/android/volley/l;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    iget v0, p0, Lcom/android/volley/l;->a:I

    packed-switch v0, :pswitch_data_98

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown request method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    new-instance v0, Lcom/android/volley/toolbox/g$a;

    iget-object v1, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/g$a;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p0}, Lcom/android/volley/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/g$a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/volley/toolbox/g;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/l;)V

    return-object v0

    :pswitch_21
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    iget-object p0, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_29
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    iget-object p0, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_31
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    iget-object p0, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_39
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    iget-object p0, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_41
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    iget-object v1, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p0}, Lcom/android/volley/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/volley/toolbox/g;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/l;)V

    return-object v0

    :pswitch_55
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p0}, Lcom/android/volley/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/volley/toolbox/g;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/l;)V

    return-object v0

    :pswitch_69
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object p0, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_71
    invoke-virtual {p0}, Lcom/android/volley/l;->d()[B

    move-result-object v0

    if-eqz v0, :cond_90

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    invoke-virtual {p0}, Lcom/android/volley/l;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p0, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v1

    :cond_90
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object p0, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_98
    .packed-switch -0x1
        :pswitch_71
        :pswitch_69
        :pswitch_55
        :pswitch_41
        :pswitch_39
        :pswitch_31
        :pswitch_29
        :pswitch_21
        :pswitch_d
    .end packed-switch
.end method

.method private static a()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/android/volley/l<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/volley/l;->g()[B

    move-result-object p1

    if-eqz p1, :cond_e

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_e
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/l;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/a;
        }
    .end annotation

    iget v0, p1, Lcom/android/volley/l;->a:I

    packed-switch v0, :pswitch_data_b4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown request method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_d
    new-instance v0, Lcom/android/volley/toolbox/g$a;

    iget-object v1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/g$a;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/g$a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :pswitch_1e
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    iget-object v1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    goto/16 :goto_93

    :pswitch_27
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    iget-object v1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :pswitch_2f
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    iget-object v1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :pswitch_37
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    iget-object v1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :pswitch_3f
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    iget-object v1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :pswitch_50
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_60
    invoke-static {v0, p1}, Lcom/android/volley/toolbox/g;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/l;)V

    goto :goto_93

    :pswitch_64
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :pswitch_6c
    invoke-virtual {p1}, Lcom/android/volley/l;->d()[B

    move-result-object v0

    if-eqz v0, :cond_8c

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v0, v1

    goto :goto_93

    :cond_8c
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :goto_93
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/android/volley/l;->b()Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/volley/toolbox/g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/volley/l;->i()I

    move-result p1

    const/16 v1, 0x1388

    invoke-static {p2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {p2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object p1, p0, Lcom/android/volley/toolbox/g;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1

    :pswitch_data_b4
    .packed-switch -0x1
        :pswitch_6c
        :pswitch_64
        :pswitch_50
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_27
        :pswitch_1e
        :pswitch_d
    .end packed-switch
.end method
