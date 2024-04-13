.class final Lcom/elfin/ad/e/b$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/e/b;


# direct methods
.method private constructor <init>(Lcom/elfin/ad/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/e/b$a;->a:Lcom/elfin/ad/e/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/elfin/ad/e/b;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/elfin/ad/e/b$a;-><init>(Lcom/elfin/ad/e/b;)V

    return-void
.end method

.method private static varargs a()Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/cyjh/common/util/f;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/elfin/ad/e/b$a;->a:Lcom/elfin/ad/e/b;

    const-string v1, "AdManager"

    const-string v2, "getFeLingAdInfoOperate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/elfin/ad/e/e;->n:Ljava/lang/String;

    iget-object v4, v0, Lcom/elfin/ad/e/b;->f:Lcom/elfin/ad/e/e;

    new-instance p1, Lcom/elfin/ad/e/b$3;

    invoke-direct {p1, v0}, Lcom/elfin/ad/e/b$3;-><init>(Lcom/elfin/ad/e/b;)V

    invoke-static {}, Lcom/elfin/ad/a;->a()Lcom/elfin/ad/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/a;->a:Landroid/content/Context;

    const-string v1, "http://api-cn.felink.com/v1/rta"

    const/4 v2, 0x2

    iput v2, v4, Lcom/elfin/ad/e/e;->i:I

    iput-object p1, v4, Lcom/elfin/ad/e/e;->j:Lcom/elfin/ad/c/a;

    iput-object v0, v4, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iput-object v1, v4, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/common/util/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    sget-object p1, Lcom/elfin/ad/e/e;->n:Ljava/lang/String;

    iget-object v0, v4, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object v0

    iget-object v1, v4, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iget v3, v4, Lcom/elfin/ad/e/e;->i:I

    if-ne v3, v2, :cond_3e

    const-string v3, "101478"

    const/16 v5, 0x280

    const/16 v6, 0x3c0

    goto :goto_44

    :cond_3e
    const-string v3, "101477"

    const/16 v5, 0x258

    const/16 v6, 0x12c

    :goto_44
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "id"

    const-string v10, "5e1f6df6cc024c80b7e8b86dc670c100"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "adPid"

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v10, "width"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "height"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "banner"

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "usingHttps"

    invoke-static {}, Lcom/elfin/ad/e/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isSupportDeeplink"

    invoke-static {}, Lcom/elfin/ad/e/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "imei"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "androidId"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ip"

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nt"

    invoke-static {v1}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v5, v6, :cond_bf

    packed-switch v5, :pswitch_data_1aa

    const/4 v2, 0x0

    goto :goto_c0

    :pswitch_b9
    const/4 v2, 0x4

    goto :goto_c0

    :pswitch_bb
    const/4 v2, 0x3

    goto :goto_c0

    :pswitch_bd
    const/4 v2, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v2, 0x5

    :goto_c0
    :pswitch_c0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string v2, "4"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lan"

    const-string v2, "zh_CN"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rslt"

    invoke-static {v1}, Lcom/elfin/ad/e/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "osv"

    invoke-static {}, Lcom/cyjh/common/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "carrier"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sendtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timezone"

    const-string v2, "480"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mac"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appVer"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cc"

    const-string v2, "CN"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "orientation"

    invoke-static {}, Lcom/elfin/ad/e/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imsi"

    invoke-static {v1}, Lcom/elfin/ad/e/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "brand"

    invoke-static {}, Lcom/elfin/ad/e/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dm"

    invoke-static {}, Lcom/elfin/ad/e/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ua"

    iget-object v2, v4, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/cyjh/common/util/p;->a(Landroid/content/Context;)Lcom/cyjh/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/common/util/p;->a()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "lon"

    aget-object v5, v1, v11

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lat"

    aget-object v1, v1, v10

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "geo"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "site"

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imp"

    invoke-interface {v7, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    invoke-interface {v7, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    sget-object p1, Lcom/elfin/ad/e/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFengLingAdInfo params -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/elfin/ad/e/e$6;

    iget-object v5, v4, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    new-instance v7, Lcom/elfin/ad/e/e$4;

    invoke-direct {v7, v4}, Lcom/elfin/ad/e/e$4;-><init>(Lcom/elfin/ad/e/e;)V

    new-instance v8, Lcom/elfin/ad/e/e$5;

    invoke-direct {v8, v4}, Lcom/elfin/ad/e/e$5;-><init>(Lcom/elfin/ad/e/e;)V

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/elfin/ad/e/e$6;-><init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void

    nop

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_c0
        :pswitch_bb
        :pswitch_b9
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/elfin/ad/e/b$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 14

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/elfin/ad/e/b$a;->a:Lcom/elfin/ad/e/b;

    const-string v1, "AdManager"

    const-string v2, "getFeLingAdInfoOperate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/elfin/ad/e/e;->n:Ljava/lang/String;

    iget-object v4, v0, Lcom/elfin/ad/e/b;->f:Lcom/elfin/ad/e/e;

    new-instance p1, Lcom/elfin/ad/e/b$3;

    invoke-direct {p1, v0}, Lcom/elfin/ad/e/b$3;-><init>(Lcom/elfin/ad/e/b;)V

    invoke-static {}, Lcom/elfin/ad/a;->a()Lcom/elfin/ad/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/a;->a:Landroid/content/Context;

    const-string v1, "http://api-cn.felink.com/v1/rta"

    const/4 v2, 0x2

    iput v2, v4, Lcom/elfin/ad/e/e;->i:I

    iput-object p1, v4, Lcom/elfin/ad/e/e;->j:Lcom/elfin/ad/c/a;

    iput-object v0, v4, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iput-object v1, v4, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/common/util/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    sget-object p1, Lcom/elfin/ad/e/e;->n:Ljava/lang/String;

    iget-object v0, v4, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object v0

    iget-object v1, v4, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iget v3, v4, Lcom/elfin/ad/e/e;->i:I

    if-ne v3, v2, :cond_40

    const-string v3, "101478"

    const/16 v5, 0x280

    const/16 v6, 0x3c0

    goto :goto_46

    :cond_40
    const-string v3, "101477"

    const/16 v5, 0x258

    const/16 v6, 0x12c

    :goto_46
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "id"

    const-string v10, "5e1f6df6cc024c80b7e8b86dc670c100"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "adPid"

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v10, "width"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "height"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "banner"

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "usingHttps"

    invoke-static {}, Lcom/elfin/ad/e/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isSupportDeeplink"

    invoke-static {}, Lcom/elfin/ad/e/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "imei"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "androidId"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ip"

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nt"

    invoke-static {v1}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v5, v6, :cond_c1

    packed-switch v5, :pswitch_data_1ac

    const/4 v2, 0x0

    goto :goto_c2

    :pswitch_bb
    const/4 v2, 0x4

    goto :goto_c2

    :pswitch_bd
    const/4 v2, 0x3

    goto :goto_c2

    :pswitch_bf
    const/4 v2, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v2, 0x5

    :goto_c2
    :pswitch_c2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string v2, "4"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lan"

    const-string v2, "zh_CN"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rslt"

    invoke-static {v1}, Lcom/elfin/ad/e/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "osv"

    invoke-static {}, Lcom/cyjh/common/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "carrier"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sendtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timezone"

    const-string v2, "480"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mac"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appVer"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cc"

    const-string v2, "CN"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "orientation"

    invoke-static {}, Lcom/elfin/ad/e/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imsi"

    invoke-static {v1}, Lcom/elfin/ad/e/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "brand"

    invoke-static {}, Lcom/elfin/ad/e/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dm"

    invoke-static {}, Lcom/elfin/ad/e/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ua"

    iget-object v2, v4, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/cyjh/common/util/p;->a(Landroid/content/Context;)Lcom/cyjh/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/common/util/p;->a()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "lon"

    aget-object v5, v1, v11

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lat"

    aget-object v1, v1, v10

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "geo"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "site"

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imp"

    invoke-interface {v7, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    invoke-interface {v7, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    sget-object p1, Lcom/elfin/ad/e/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFengLingAdInfo params -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/elfin/ad/e/e$6;

    iget-object v5, v4, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    new-instance v7, Lcom/elfin/ad/e/e$4;

    invoke-direct {v7, v4}, Lcom/elfin/ad/e/e$4;-><init>(Lcom/elfin/ad/e/e;)V

    new-instance v8, Lcom/elfin/ad/e/e$5;

    invoke-direct {v8, v4}, Lcom/elfin/ad/e/e$5;-><init>(Lcom/elfin/ad/e/e;)V

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/elfin/ad/e/e$6;-><init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void

    nop

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_c2
        :pswitch_bd
        :pswitch_bb
    .end packed-switch
.end method
