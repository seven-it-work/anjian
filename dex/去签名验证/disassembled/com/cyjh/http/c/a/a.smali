.class public abstract Lcom/cyjh/http/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/d/a/a;
.implements Lcom/cyjh/http/d/a/b;


# instance fields
.field protected a:Lcom/cyjh/http/d/b/a;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/http/d/b/a;

    invoke-direct {v0, p0, p0}, Lcom/cyjh/http/d/b/a;-><init>(Lcom/cyjh/http/d/a/b;Lcom/cyjh/http/d/a/a;)V

    iput-object v0, p0, Lcom/cyjh/http/c/a/a;->a:Lcom/cyjh/http/d/b/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AbstractHttpPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getData = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cyjh/http/bean/response/BaseInfo;

    invoke-static {p1, v1}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/BaseInfo;

    iget-object v1, p0, Lcom/cyjh/http/c/a/a;->a:Lcom/cyjh/http/d/b/a;

    iget-object v1, v1, Lcom/cyjh/http/d/b/a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/cyjh/http/bean/response/BaseInfo;->Data:Ljava/lang/String;

    iget p1, p1, Lcom/cyjh/http/bean/response/BaseInfo;->R:I

    invoke-static {v1, v2, p1}, Lcom/cyjh/http/e/c;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AbstractHttpPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decodeRes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/cyjh/http/bean/SignaClass;

    invoke-static {p1, v1}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/SignaClass;

    if-eqz p1, :cond_52

    iget-object v1, p1, Lcom/cyjh/http/bean/SignaClass;->SignContent:Ljava/lang/String;

    iget-object v2, p1, Lcom/cyjh/http/bean/SignaClass;->Signature:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cyjh/http/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object p1, p1, Lcom/cyjh/http/bean/SignaClass;->SignContent:Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_53

    return-object p1

    :cond_52
    return-object v0

    :catch_53
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public final a(Lcom/android/volley/s;)V
    .registers 6

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/http/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_78

    instance-of v1, p1, Lcom/android/volley/q;

    if-eqz v1, :cond_17

    sget v1, Lcom/cyjh/http/R$string;->network_server_error:I

    :goto_12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_17
    instance-of v1, p1, Lcom/android/volley/j;

    if-eqz v1, :cond_1e

    sget v1, Lcom/cyjh/http/R$string;->network_no_connection_error:I

    goto :goto_12

    :cond_1e
    instance-of v1, p1, Lcom/android/volley/h;

    if-eqz v1, :cond_25

    sget v1, Lcom/cyjh/http/R$string;->network_network_error:I

    goto :goto_12

    :cond_25
    instance-of v1, p1, Lcom/android/volley/k;

    if-eqz v1, :cond_2c

    sget v1, Lcom/cyjh/http/R$string;->network_parse_error:I

    goto :goto_12

    :cond_2c
    instance-of v1, p1, Lcom/android/volley/a;

    if-eqz v1, :cond_33

    sget v1, Lcom/cyjh/http/R$string;->network_auth_failure_error:I

    goto :goto_12

    :cond_33
    instance-of v1, p1, Lcom/android/volley/r;

    if-eqz v1, :cond_3a

    sget v1, Lcom/cyjh/http/R$string;->network_timeout_error:I

    goto :goto_12

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    iget-object v2, p1, Lcom/android/volley/s;->networkResponse:Lcom/android/volley/i;

    if-eqz v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/volley/s;->networkResponse:Lcom/android/volley/i;

    iget v3, v3, Lcom/android/volley/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/volley/s;->networkResponse:Lcom/android/volley/i;

    iget p1, p1, Lcom/android/volley/i;->a:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\t\t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6d
    if-nez v1, :cond_75

    sget p1, Lcom/cyjh/http/R$string;->network_again_error:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_75
    invoke-virtual {p0, v1}, Lcom/cyjh/http/c/a/a;->b(Ljava/lang/String;)V

    :cond_78
    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
.end method
