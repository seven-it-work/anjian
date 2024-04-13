.class public final Lcom/goldcoast/sdk/a/g;
.super Lcom/goldcoast/sdk/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/goldcoast/sdk/a/c<",
        "Lcom/goldcoast/sdk/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lcom/goldcoast/sdk/a/f;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/goldcoast/sdk/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 5

    iget-object v0, p0, Lcom/goldcoast/sdk/a/g;->l:Lcom/goldcoast/sdk/a/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/goldcoast/sdk/a/g;->l:Lcom/goldcoast/sdk/a/f;

    invoke-virtual {v0}, Lcom/goldcoast/sdk/a/f;->b()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_10

    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_10
    :try_start_10
    const-string v1, "rf_md5"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    iget v2, p0, Lcom/goldcoast/sdk/a/g;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "runTime"

    iget-wide v2, p0, Lcom/goldcoast/sdk/a/g;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "androidId"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netOperator"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "simOperatorName"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayLanguage"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayCountry"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "category"

    iget v2, p0, Lcom/goldcoast/sdk/a/g;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sdkV"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_72} :catch_72

    :catch_72
    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/goldcoast/sdk/a/g;->b:I

    return-void
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/goldcoast/sdk/a/g;->d:J

    return-void
.end method

.method public final a(Lcom/goldcoast/sdk/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->l:Lcom/goldcoast/sdk/a/f;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/goldcoast/sdk/a/g;->k:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->c:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->e:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->f:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->g:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->h:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->i:Ljava/lang/String;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->j:Ljava/lang/String;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->m:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->n:Ljava/lang/String;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->o:Ljava/lang/String;

    return-void
.end method
