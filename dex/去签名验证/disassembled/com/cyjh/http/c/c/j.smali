.class public Lcom/cyjh/http/c/c/j;
.super Lcom/cyjh/http/c/a/a;


# static fields
.field private static final b:Ljava/lang/String; = "j"


# instance fields
.field private c:J

.field private d:Lcom/cyjh/http/c/d/d;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lcom/cyjh/http/c/d/d;)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    iput-object p1, p0, Lcom/cyjh/http/c/c/j;->d:Lcom/cyjh/http/c/d/d;

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/j;->a:Lcom/cyjh/http/d/b/a;

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

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/ChannelRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/ChannelRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p2, v1, Lcom/cyjh/http/bean/request/ChannelRequestInfo;->PackageName:Ljava/lang/String;

    iput-object p3, v1, Lcom/cyjh/http/bean/request/ChannelRequestInfo;->Version:Ljava/lang/String;

    sget-wide p2, Lcom/cyjh/http/b/a;->b:J

    iput-wide p2, p0, Lcom/cyjh/http/c/c/j;->c:J

    const-string p2, "ConfigChannel"

    const-string p3, "List"

    invoke-static {p2, p3}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    iget-object v0, p0, Lcom/cyjh/http/c/c/j;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/cyjh/http/c/c/j;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getChannelList --> url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n paramsMap="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p1

    sget-object p2, Lcom/cyjh/http/c/c/j;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "getChannelList --> exception="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/cyjh/http/c/c/j;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uiDataSuccess --> data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_86

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    :try_start_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_81

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "ChannelList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v1, "ChannelList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_65

    const/4 v1, 0x0

    :goto_53
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_65

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_65
    sget-object p1, Lcom/cyjh/http/c/c/j;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess --> before mView="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/http/c/c/j;->d:Lcom/cyjh/http/c/d/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cyjh/http/c/c/j;->b:Ljava/lang/String;

    const-string v0, "onSuccess --> after"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_81} :catch_82

    :cond_81
    return-void

    :catch_82
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_86
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/cyjh/http/c/c/j;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onErrorResponse --> errorMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
