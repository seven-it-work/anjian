.class final Lcom/elfin/ad/e/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/e/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/n$b<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/e/e;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/e;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/e/e$4;->a:Lcom/elfin/ad/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 7

    invoke-static {}, Lcom/elfin/ad/e/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponse -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_19
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_135

    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {v0}, Lcom/elfin/ad/bean/response/FengLingAdInfo;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_129

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v2, "creativeType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->a:I

    const-string v2, "drawType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->b:I

    const-string v2, "actionName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->c:I

    const-string v2, "width"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->d:I

    const-string v2, "height"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->e:I

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->f:Ljava/lang/String;

    const-string v2, "rating"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->g:I

    const-string v2, "imgs"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;-><init>(Lcom/elfin/ad/bean/response/FengLingAdInfo;)V

    const-string v3, "height"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->a:I

    const-string v3, "width"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->b:I

    const-string v3, "src"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->h:Lcom/elfin/ad/bean/response/FengLingAdInfo$a;

    const-string v1, "adPlatformIcon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->i:Ljava/lang/String;

    const-string v1, "adId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->j:I

    const-string v1, "clickUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->k:Ljava/lang/String;

    const-string v1, "webTracks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;-><init>(Lcom/elfin/ad/bean/response/FengLingAdInfo;)V

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->a:I

    const-string v3, "imptrackUrls"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_df

    invoke-static {v3}, Lcom/cyjh/common/util/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->b:Ljava/util/List;

    :cond_df
    const-string v3, "ctrackUrls"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_f1

    invoke-static {v3}, Lcom/cyjh/common/util/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->c:Ljava/util/List;

    :cond_f1
    const-string v3, "dstrackUrls"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_103

    invoke-static {v3}, Lcom/cyjh/common/util/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->d:Ljava/util/List;

    :cond_103
    const-string v3, "istrackUrls"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_115

    invoke-static {v1}, Lcom/cyjh/common/util/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->e:Ljava/util/List;

    :cond_115
    iput-object v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->l:Lcom/elfin/ad/bean/response/FengLingAdInfo$b;

    const-string v1, "adPlatformId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->m:I

    iget-object p1, p0, Lcom/elfin/ad/e/e$4;->a:Lcom/elfin/ad/e/e;

    invoke-static {p1}, Lcom/elfin/ad/e/e;->b(Lcom/elfin/ad/e/e;)Lcom/elfin/ad/c/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_129
    iget-object p1, p0, Lcom/elfin/ad/e/e$4;->a:Lcom/elfin/ad/e/e;

    invoke-static {p1}, Lcom/elfin/ad/e/e;->b(Lcom/elfin/ad/e/e;)Lcom/elfin/ad/c/a;

    move-result-object p1

    const-string v0, "\u65e0\u6709\u6548\u5e7f\u544a\u6570\u636e\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V

    return-void

    :cond_135
    iget-object p1, p0, Lcom/elfin/ad/e/e$4;->a:Lcom/elfin/ad/e/e;

    invoke-static {p1}, Lcom/elfin/ad/e/e;->b(Lcom/elfin/ad/e/e;)Lcom/elfin/ad/c/a;

    move-result-object p1

    const-string v0, "\u8bf7\u6c42\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_140} :catch_141

    return-void

    :catch_141
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/elfin/ad/e/e$4;->a:Lcom/elfin/ad/e/e;

    invoke-static {p1}, Lcom/elfin/ad/e/e;->b(Lcom/elfin/ad/e/e;)Lcom/elfin/ad/c/a;

    move-result-object p1

    const-string v0, "\u89e3\u6790\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/elfin/ad/e/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponse -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_137

    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {v0}, Lcom/elfin/ad/bean/response/FengLingAdInfo;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_12b

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v2, "creativeType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->a:I

    const-string v2, "drawType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->b:I

    const-string v2, "actionName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->c:I

    const-string v2, "width"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->d:I

    const-string v2, "height"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->e:I

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->f:Ljava/lang/String;

    const-string v2, "rating"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->g:I

    const-string v2, "imgs"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;-><init>(Lcom/elfin/ad/bean/response/FengLingAdInfo;)V

    const-string v3, "height"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->a:I

    const-string v3, "width"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->b:I

    const-string v3, "src"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->h:Lcom/elfin/ad/bean/response/FengLingAdInfo$a;

    const-string v1, "adPlatformIcon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->i:Ljava/lang/String;

    const-string v1, "adId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->j:I

    const-string v1, "clickUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->k:Ljava/lang/String;

    const-string v1, "webTracks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;-><init>(Lcom/elfin/ad/bean/response/FengLingAdInfo;)V

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->a:I

    const-string v3, "imptrackUrls"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_e1

    invoke-static {v3}, Lcom/cyjh/common/util/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->b:Ljava/util/List;

    :cond_e1
    const-string v3, "ctrackUrls"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_f3

    invoke-static {v3}, Lcom/cyjh/common/util/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->c:Ljava/util/List;

    :cond_f3
    const-string v3, "dstrackUrls"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_105

    invoke-static {v3}, Lcom/cyjh/common/util/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->d:Ljava/util/List;

    :cond_105
    const-string v3, "istrackUrls"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_117

    invoke-static {v1}, Lcom/cyjh/common/util/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->e:Ljava/util/List;

    :cond_117
    iput-object v2, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->l:Lcom/elfin/ad/bean/response/FengLingAdInfo$b;

    const-string v1, "adPlatformId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->m:I

    iget-object p1, p0, Lcom/elfin/ad/e/e$4;->a:Lcom/elfin/ad/e/e;

    invoke-static {p1}, Lcom/elfin/ad/e/e;->b(Lcom/elfin/ad/e/e;)Lcom/elfin/ad/c/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_12b
    iget-object p1, p0, Lcom/elfin/ad/e/e$4;->a:Lcom/elfin/ad/e/e;

    invoke-static {p1}, Lcom/elfin/ad/e/e;->b(Lcom/elfin/ad/e/e;)Lcom/elfin/ad/c/a;

    move-result-object p1

    const-string v0, "\u65e0\u6709\u6548\u5e7f\u544a\u6570\u636e\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V

    return-void

    :cond_137
    iget-object p1, p0, Lcom/elfin/ad/e/e$4;->a:Lcom/elfin/ad/e/e;

    invoke-static {p1}, Lcom/elfin/ad/e/e;->b(Lcom/elfin/ad/e/e;)Lcom/elfin/ad/c/a;

    move-result-object p1

    const-string v0, "\u8bf7\u6c42\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_142} :catch_143

    return-void

    :catch_143
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/elfin/ad/e/e$4;->a:Lcom/elfin/ad/e/e;

    invoke-static {p1}, Lcom/elfin/ad/e/e;->b(Lcom/elfin/ad/e/e;)Lcom/elfin/ad/c/a;

    move-result-object p1

    const-string v0, "\u89e3\u6790\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V

    return-void
.end method
