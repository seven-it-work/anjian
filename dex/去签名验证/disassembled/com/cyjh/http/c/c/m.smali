.class public final Lcom/cyjh/http/c/c/m;
.super Lcom/cyjh/http/c/a/a;


# instance fields
.field private b:Lcom/cyjh/http/c/d/f;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/cyjh/http/c/d/f;)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    iput-object p1, p0, Lcom/cyjh/http/c/c/m;->b:Lcom/cyjh/http/c/d/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/m;->a:Lcom/cyjh/http/d/b/a;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    const-string v1, "zzz"

    const-string v2, "com.cyjh.share.NoticeListPresenter--loadAd:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Notice"

    const-string v2, "List"

    invoke-static {v1, v2}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    sget-wide v2, Lcom/cyjh/http/b/a;->b:J

    iput-wide v2, p0, Lcom/cyjh/http/c/c/m;->c:J

    const-string v2, "zzz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.cyjh.share.NoticeListPresenter--loadAd:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/cyjh/http/c/c/m;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    return-void

    :catch_4c
    move-exception p1

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.NoticeListPresenter--loadAd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8

    :try_start_0
    check-cast p1, Ljava/lang/String;

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.NoticeListPresenter--uiDataSuccess1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_98

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/http/bean/response/NoticeListBean;

    invoke-static {p1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/NoticeListBean;

    if-eqz p1, :cond_98

    iget-object v0, p1, Lcom/cyjh/http/bean/response/NoticeListBean;->NoticeList:Ljava/util/List;

    if-eqz v0, :cond_98

    iget-object v0, p1, Lcom/cyjh/http/bean/response/NoticeListBean;->NoticeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_98

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/cyjh/http/bean/response/NoticeListBean;->NoticeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/http/bean/response/NoticeBean;

    new-instance v2, Lcom/cyjh/http/bean/NotifyMsgBean;

    invoke-direct {v2}, Lcom/cyjh/http/bean/NotifyMsgBean;-><init>()V

    iget-wide v3, v1, Lcom/cyjh/http/bean/response/NoticeBean;->NoticeId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    iget-object v3, v1, Lcom/cyjh/http/bean/response/NoticeBean;->NoticeTitle:Ljava/lang/String;

    iput-object v3, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    iget-object v3, v1, Lcom/cyjh/http/bean/response/NoticeBean;->NoticeContent:Ljava/lang/String;

    iput-object v3, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeContent:Ljava/lang/String;

    iget-wide v3, v1, Lcom/cyjh/http/bean/response/NoticeBean;->NoticeTime:J

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v4, v5}, Lcom/cyjh/http/e/a;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    iget v3, v1, Lcom/cyjh/http/bean/response/NoticeBean;->DescriptionType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    iget-object v3, v1, Lcom/cyjh/http/bean/response/NoticeBean;->NoticeDescription:Ljava/lang/String;

    iput-object v3, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    iget v1, v1, Lcom/cyjh/http/bean/response/NoticeBean;->IsShowNoticeBar:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8c

    goto :goto_8d

    :cond_8c
    const/4 v3, 0x0

    :goto_8d
    iput-boolean v3, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->IsSendMessage:Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_93
    iget-object p1, p0, Lcom/cyjh/http/c/c/m;->b:Lcom/cyjh/http/c/d/f;

    invoke-interface {p1, v0}, Lcom/cyjh/http/c/d/f;->a(Ljava/util/List;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_98} :catch_99

    :cond_98
    return-void

    :catch_99
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.NoticeListPresenter--uiDataSuccess2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.NoticeListPresenter--onErrorResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
