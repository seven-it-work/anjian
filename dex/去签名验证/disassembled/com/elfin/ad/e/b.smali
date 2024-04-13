.class public final Lcom/elfin/ad/e/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elfin/ad/e/b$a;
    }
.end annotation


# static fields
.field public static final b:I = 0x4

.field public static final e:Ljava/lang/String; = "http://api-cn.felink.com/v1/rta"

.field private static final l:I = 0x64

.field private static final m:I = 0x65

.field private static final n:I = 0x66

.field private static final o:I = 0x67

.field private static final q:Ljava/lang/String; = "AdManager"


# instance fields
.field public a:Z

.field public c:I

.field public d:I

.field f:Lcom/elfin/ad/e/e;

.field g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

.field h:Lcom/iflytek/voiceads/conn/NativeDataRef;

.field i:Lcom/elfin/ad/c/a;

.field public j:Landroid/app/Activity;

.field k:I

.field private p:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/os/Handler;

.field private w:Landroid/view/View;

.field private x:Lcom/elfin/ad/d/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/elfin/ad/e/b;->p:I

    iput v0, p0, Lcom/elfin/ad/e/b;->d:I

    new-instance v0, Lcom/elfin/ad/e/e;

    invoke-direct {v0}, Lcom/elfin/ad/e/e;-><init>()V

    iput-object v0, p0, Lcom/elfin/ad/e/b;->f:Lcom/elfin/ad/e/e;

    const/16 v0, 0x64

    iput v0, p0, Lcom/elfin/ad/e/b;->k:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/elfin/ad/e/b;->v:Landroid/os/Handler;

    new-instance v0, Lcom/elfin/ad/e/b$2;

    invoke-direct {v0, p0}, Lcom/elfin/ad/e/b$2;-><init>(Lcom/elfin/ad/e/b;)V

    iput-object v0, p0, Lcom/elfin/ad/e/b;->x:Lcom/elfin/ad/d/a;

    iput-object p1, p0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    iput-object p2, p0, Lcom/elfin/ad/e/b;->w:Landroid/view/View;

    return-void
.end method

.method private static synthetic a(Lcom/elfin/ad/e/b;Lcom/elfin/ad/bean/response/FengLingAdInfo;)Lcom/elfin/ad/bean/response/FengLingAdInfo;
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/e/b;->g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    return-object p1
.end method

.method private static synthetic a(Lcom/elfin/ad/e/b;)Lcom/elfin/ad/c/a;
    .registers 1

    iget-object p0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    return-object p0
.end method

.method private static synthetic a(Lcom/elfin/ad/e/b;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p1
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/e/b;->k:I

    return-void
.end method

.method private a(II)V
    .registers 3

    iput p1, p0, Lcom/elfin/ad/e/b;->r:I

    iput p2, p0, Lcom/elfin/ad/e/b;->s:I

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_18
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    new-instance v1, Lcom/elfin/ad/e/b$6;

    invoke-direct {v1, p0, p1}, Lcom/elfin/ad/e/b$6;-><init>(Lcom/elfin/ad/e/b;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v1

    iget-object v1, v1, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v4, v1, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Id:J

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    return-void
.end method

.method private static synthetic a(Lcom/elfin/ad/e/b;I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/e/b;->k:I

    return-void
.end method

.method private static synthetic a(Lcom/elfin/ad/e/b;Ljava/lang/String;)V
    .registers 13

    const-string v0, "AdManager"

    const-string v1, "getFeLingAdInfoOperate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/elfin/ad/e/e;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/elfin/ad/e/b;->f:Lcom/elfin/ad/e/e;

    new-instance p1, Lcom/elfin/ad/e/b$3;

    invoke-direct {p1, p0}, Lcom/elfin/ad/e/b$3;-><init>(Lcom/elfin/ad/e/b;)V

    invoke-static {}, Lcom/elfin/ad/a;->a()Lcom/elfin/ad/a;

    move-result-object p0

    iget-object p0, p0, Lcom/elfin/ad/a;->a:Landroid/content/Context;

    const-string v0, "http://api-cn.felink.com/v1/rta"

    const/4 v1, 0x2

    iput v1, v3, Lcom/elfin/ad/e/e;->i:I

    iput-object p1, v3, Lcom/elfin/ad/e/e;->j:Lcom/elfin/ad/c/a;

    iput-object p0, v3, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iput-object v0, v3, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    invoke-static {p0}, Lcom/cyjh/common/util/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    sget-object p0, Lcom/elfin/ad/e/e;->n:Ljava/lang/String;

    iget-object p1, v3, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object p1

    iget-object v0, v3, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iget v2, v3, Lcom/elfin/ad/e/e;->i:I

    if-ne v2, v1, :cond_3c

    const-string v2, "101478"

    const/16 v4, 0x280

    const/16 v5, 0x3c0

    goto :goto_42

    :cond_3c
    const-string v2, "101477"

    const/16 v4, 0x258

    const/16 v5, 0x12c

    :goto_42
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "id"

    const-string v9, "5e1f6df6cc024c80b7e8b86dc670c100"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "adPid"

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v9, "width"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "height"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "banner"

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "usingHttps"

    invoke-static {}, Lcom/elfin/ad/e/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isSupportDeeplink"

    invoke-static {}, Lcom/elfin/ad/e/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "imei"

    invoke-static {v0}, Lcom/cyjh/common/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "androidId"

    invoke-static {v0}, Lcom/cyjh/common/util/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ip"

    invoke-interface {v2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "nt"

    invoke-static {v0}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v4, v5, :cond_bd

    packed-switch v4, :pswitch_data_1a8

    const/4 v1, 0x0

    goto :goto_be

    :pswitch_b7
    const/4 v1, 0x4

    goto :goto_be

    :pswitch_b9
    const/4 v1, 0x3

    goto :goto_be

    :pswitch_bb
    const/4 v1, 0x1

    goto :goto_be

    :cond_bd
    const/4 v1, 0x5

    :goto_be
    :pswitch_be
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "platform"

    const-string v1, "4"

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "lan"

    const-string v1, "zh_CN"

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "rslt"

    invoke-static {v0}, Lcom/elfin/ad/e/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "osv"

    invoke-static {}, Lcom/cyjh/common/util/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "carrier"

    invoke-static {v0}, Lcom/cyjh/common/util/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sendtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "timezone"

    const-string v1, "480"

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "mac"

    invoke-static {v0}, Lcom/cyjh/common/util/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "appVer"

    invoke-static {v0}, Lcom/cyjh/common/util/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cc"

    const-string v1, "CN"

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "orientation"

    invoke-static {}, Lcom/elfin/ad/e/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "imsi"

    invoke-static {v0}, Lcom/elfin/ad/e/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "brand"

    invoke-static {}, Lcom/elfin/ad/e/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dm"

    invoke-static {}, Lcom/elfin/ad/e/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ua"

    iget-object v1, v3, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/cyjh/common/util/p;->a(Landroid/content/Context;)Lcom/cyjh/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/common/util/p;->a()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "lon"

    aget-object v4, v0, v10

    invoke-interface {p0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    aget-object v0, v0, v9

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "geo"

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "site"

    invoke-interface {v6, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "imp"

    invoke-interface {v6, p0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "device"

    invoke-interface {v6, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    sget-object p0, Lcom/elfin/ad/e/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFengLingAdInfo params -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/elfin/ad/e/e$6;

    iget-object v4, v3, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    new-instance v6, Lcom/elfin/ad/e/e$4;

    invoke-direct {v6, v3}, Lcom/elfin/ad/e/e$4;-><init>(Lcom/elfin/ad/e/e;)V

    new-instance v7, Lcom/elfin/ad/e/e$5;

    invoke-direct {v7, v3}, Lcom/elfin/ad/e/e$5;-><init>(Lcom/elfin/ad/e/e;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/elfin/ad/e/e$6;-><init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    invoke-virtual {p1, p0}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void

    nop

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_be
        :pswitch_b9
        :pswitch_b7
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "__EVENT_TIME__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "__EVENT_TIME__"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    move-object v0, p1

    :goto_1f
    const-string v1, "__CLICK_DOWN_X__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "__CLICK_DOWN_X__"

    iget v2, p0, Lcom/elfin/ad/e/b;->r:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_33
    const-string v1, "_CLICK_DOWN_Y__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "_CLICK_DOWN_Y__"

    iget v2, p0, Lcom/elfin/ad/e/b;->s:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_47
    const-string v1, "__CLICK_UP_X__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v1, "__CLICK_UP_X__"

    iget v2, p0, Lcom/elfin/ad/e/b;->t:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5b
    const-string v1, "__CLICK_UP_Y__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const-string p1, "__CLICK_UP_Y__"

    iget v1, p0, Lcom/elfin/ad/e/b;->u:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_6f
    const-string p1, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportLogInfo --> srcUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/elfin/ad/e/b;->f:Lcom/elfin/ad/e/e;

    invoke-static {}, Lcom/elfin/ad/a;->a()Lcom/elfin/ad/a;

    move-result-object v1

    iget-object v1, v1, Lcom/elfin/ad/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/elfin/ad/e/b$1;

    invoke-direct {v2, p0}, Lcom/elfin/ad/e/b$1;-><init>(Lcom/elfin/ad/e/b;)V

    iput-object v2, p1, Lcom/elfin/ad/e/e;->j:Lcom/elfin/ad/c/a;

    sget-object v3, Lcom/elfin/ad/e/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reportLogInfo params -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object v1

    new-instance v3, Lcom/elfin/ad/e/e$3;

    new-instance v4, Lcom/elfin/ad/e/e$1;

    invoke-direct {v4, p1, v2}, Lcom/elfin/ad/e/e$1;-><init>(Lcom/elfin/ad/e/e;Lcom/elfin/ad/c/a;)V

    new-instance v5, Lcom/elfin/ad/e/e$2;

    invoke-direct {v5, p1, v2}, Lcom/elfin/ad/e/e$2;-><init>(Lcom/elfin/ad/e/e;Lcom/elfin/ad/c/a;)V

    invoke-direct {v3, p1, v0, v4, v5}, Lcom/elfin/ad/e/e$3;-><init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    invoke-virtual {v1, v3}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AdManager"

    const-string v1, "reportLogInfo --> targetUrlList 1"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_36

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "AdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportLogInfo --> targetUrlList 2 url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/elfin/ad/e/b;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_36
    return-void
.end method

.method private static synthetic b(Lcom/elfin/ad/e/b;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .registers 1

    iget-object p0, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "__EVENT_TIME__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "__EVENT_TIME__"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, p1

    :goto_18
    const-string v1, "__CLICK_DOWN_X__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "__CLICK_DOWN_X__"

    iget v2, p0, Lcom/elfin/ad/e/b;->r:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2c
    const-string v1, "_CLICK_DOWN_Y__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "_CLICK_DOWN_Y__"

    iget v2, p0, Lcom/elfin/ad/e/b;->s:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_40
    const-string v1, "__CLICK_UP_X__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "__CLICK_UP_X__"

    iget v2, p0, Lcom/elfin/ad/e/b;->t:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_54
    const-string v1, "__CLICK_UP_Y__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, "__CLICK_UP_Y__"

    iget v1, p0, Lcom/elfin/ad/e/b;->u:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_68
    return-object v0
.end method

.method private b(I)V
    .registers 5

    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadBackgroundAd index\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/elfin/ad/e/a;->a(I)Z

    move-result p1

    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> isDisplay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_60

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object p1

    iget-object p1, p1, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    if-eqz p1, :cond_41

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object p1

    iget-object p1, p1, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    goto :goto_43

    :cond_41
    const-string p1, ""

    :goto_43
    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> imageUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    invoke-interface {v0, p1}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    :cond_5f
    return-void

    :cond_60
    iget-object p1, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    :cond_6b
    return-void
.end method

.method private b(II)V
    .registers 3

    iput p1, p0, Lcom/elfin/ad/e/b;->t:I

    iput p2, p0, Lcom/elfin/ad/e/b;->u:I

    return-void
.end method

.method private static synthetic b(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/elfin/ad/e/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic b(Lcom/elfin/ad/e/b;I)V
    .registers 5

    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadBackgroundAd index\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/elfin/ad/e/a;->a(I)Z

    move-result p1

    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> isDisplay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_60

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object p1

    iget-object p1, p1, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    if-eqz p1, :cond_41

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object p1

    iget-object p1, p1, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    goto :goto_43

    :cond_41
    const-string p1, ""

    :goto_43
    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> imageUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz v0, :cond_5f

    iget-object p0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    invoke-interface {p0, p1}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    :cond_5f
    return-void

    :cond_60
    iget-object p1, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz p1, :cond_6b

    iget-object p0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    :cond_6b
    return-void
.end method

.method private static synthetic c(Lcom/elfin/ad/e/b;)V
    .registers 1

    invoke-virtual {p0}, Lcom/elfin/ad/e/b;->a()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 14

    const-string v0, "AdManager"

    const-string v1, "getFeLingAdInfoOperate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/elfin/ad/e/e;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/elfin/ad/e/b;->f:Lcom/elfin/ad/e/e;

    new-instance p1, Lcom/elfin/ad/e/b$3;

    invoke-direct {p1, p0}, Lcom/elfin/ad/e/b$3;-><init>(Lcom/elfin/ad/e/b;)V

    invoke-static {}, Lcom/elfin/ad/a;->a()Lcom/elfin/ad/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/a;->a:Landroid/content/Context;

    const-string v1, "http://api-cn.felink.com/v1/rta"

    const/4 v2, 0x2

    iput v2, v3, Lcom/elfin/ad/e/e;->i:I

    iput-object p1, v3, Lcom/elfin/ad/e/e;->j:Lcom/elfin/ad/c/a;

    iput-object v0, v3, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iput-object v1, v3, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/common/util/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    sget-object p1, Lcom/elfin/ad/e/e;->n:Ljava/lang/String;

    iget-object v0, v3, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object v0

    iget-object v1, v3, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iget v4, v3, Lcom/elfin/ad/e/e;->i:I

    if-ne v4, v2, :cond_3c

    const-string v4, "101478"

    const/16 v5, 0x280

    const/16 v6, 0x3c0

    goto :goto_42

    :cond_3c
    const-string v4, "101477"

    const/16 v5, 0x258

    const/16 v6, 0x12c

    :goto_42
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

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v10, "width"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "height"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "banner"

    invoke-interface {v9, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "usingHttps"

    invoke-static {}, Lcom/elfin/ad/e/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "isSupportDeeplink"

    invoke-static {}, Lcom/elfin/ad/e/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "imei"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "androidId"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ip"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nt"

    invoke-static {v1}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v5, v6, :cond_bd

    packed-switch v5, :pswitch_data_1a8

    const/4 v2, 0x0

    goto :goto_be

    :pswitch_b7
    const/4 v2, 0x4

    goto :goto_be

    :pswitch_b9
    const/4 v2, 0x3

    goto :goto_be

    :pswitch_bb
    const/4 v2, 0x1

    goto :goto_be

    :cond_bd
    const/4 v2, 0x5

    :goto_be
    :pswitch_be
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string v2, "4"

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lan"

    const-string v2, "zh_CN"

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rslt"

    invoke-static {v1}, Lcom/elfin/ad/e/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "osv"

    invoke-static {}, Lcom/cyjh/common/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "carrier"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sendtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timezone"

    const-string v2, "480"

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mac"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appVer"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cc"

    const-string v2, "CN"

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "orientation"

    invoke-static {}, Lcom/elfin/ad/e/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imsi"

    invoke-static {v1}, Lcom/elfin/ad/e/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "brand"

    invoke-static {}, Lcom/elfin/ad/e/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dm"

    invoke-static {}, Lcom/elfin/ad/e/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ua"

    iget-object v2, v3, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-interface {v4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "site"

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imp"

    invoke-interface {v7, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    invoke-interface {v7, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    sget-object p1, Lcom/elfin/ad/e/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFengLingAdInfo params -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/elfin/ad/e/e$6;

    iget-object v4, v3, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    new-instance v6, Lcom/elfin/ad/e/e$4;

    invoke-direct {v6, v3}, Lcom/elfin/ad/e/e$4;-><init>(Lcom/elfin/ad/e/e;)V

    new-instance v7, Lcom/elfin/ad/e/e$5;

    invoke-direct {v7, v3}, Lcom/elfin/ad/e/e$5;-><init>(Lcom/elfin/ad/e/e;)V

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/elfin/ad/e/e$6;-><init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void

    nop

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_be
        :pswitch_b9
        :pswitch_b7
    .end packed-switch
.end method

.method private static synthetic d(Lcom/elfin/ad/e/b;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    return-object p0
.end method

.method private f()V
    .registers 7

    const-string v0, "AdManager"

    const-string v1, "checkReportInfoStatus --> 1"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/elfin/ad/e/d;->a()Lcom/elfin/ad/e/d;

    const-string v0, "101478"

    invoke-static {v0}, Lcom/elfin/ad/e/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-eqz v2, :cond_5e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elfin/ad/b/a;

    if-eqz v2, :cond_22

    iget v3, v2, Lcom/elfin/ad/b/a;->d:I

    if-lez v3, :cond_22

    iget-object v3, v2, Lcom/elfin/ad/b/a;->b:Ljava/lang/String;

    iget v4, v2, Lcom/elfin/ad/b/a;->e:I

    if-nez v4, :cond_22

    invoke-direct {p0, v3}, Lcom/elfin/ad/e/b;->a(Ljava/lang/String;)V

    iput v1, v2, Lcom/elfin/ad/b/a;->e:I

    invoke-virtual {v2}, Lcom/elfin/ad/b/a;->save()Z

    const-string v2, "AdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkReportInfoStatus --> 2 url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_56
    invoke-static {}, Lcom/elfin/ad/e/d;->a()Lcom/elfin/ad/e/d;

    const-string v0, "101478"

    invoke-static {v0}, Lcom/elfin/ad/e/d;->b(Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method private g()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    return-void
.end method

.method private h()V
    .registers 3

    iget v0, p0, Lcom/elfin/ad/e/b;->d:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/elfin/ad/e/b;->c()V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/elfin/ad/e/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private i()V
    .registers 2

    iget-boolean v0, p0, Lcom/elfin/ad/e/b;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/elfin/ad/e/b;->a(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method private j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/elfin/ad/e/b;->a:Z

    return v0
.end method

.method private k()V
    .registers 7

    iget-object v0, p0, Lcom/elfin/ad/e/b;->g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    iget v0, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->c:I

    iget-object v1, p0, Lcom/elfin/ad/e/b;->g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    iget-object v1, v1, Lcom/elfin/ad/bean/response/FengLingAdInfo;->l:Lcom/elfin/ad/bean/response/FengLingAdInfo$b;

    iget-object v1, v1, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->c:Ljava/util/List;

    const-string v2, "AdManager"

    const-string v3, "reportLogInfo --> targetUrlList 1"

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_40

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_40

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "AdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reportLogInfo --> targetUrlList 2 url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/elfin/ad/e/b;->a(Ljava/lang/String;)V

    goto :goto_1d

    :cond_40
    iget-object v1, p0, Lcom/elfin/ad/e/b;->g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    iget-object v1, v1, Lcom/elfin/ad/bean/response/FengLingAdInfo;->k:Ljava/lang/String;

    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClickImgFeLingAd -->  actionName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",clickUrl="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .registers 5

    iget-object v0, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v1, p0, Lcom/elfin/ad/e/b;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onClick(Landroid/view/View;)Z

    iget v0, p0, Lcom/elfin/ad/e/b;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/elfin/ad/e/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/elfin/ad/e/b$5;

    invoke-direct {v1, p0}, Lcom/elfin/ad/e/b$5;-><init>(Lcom/elfin/ad/e/b;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method

.method private synthetic m()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    invoke-interface {v0}, Lcom/elfin/ad/c/a;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .registers 4

    const-string v0, "AdManager"

    const-string v1, "loadFeLingAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/elfin/ad/e/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/elfin/ad/e/b$a;-><init>(Lcom/elfin/ad/e/b;B)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/elfin/ad/e/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(ILcom/elfin/ad/c/a;)V
    .registers 6

    iput p1, p0, Lcom/elfin/ad/e/b;->c:I

    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadILFYAd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x64

    iput p1, p0, Lcom/elfin/ad/e/b;->k:I

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object p1

    iget v0, p0, Lcom/elfin/ad/e/b;->c:I

    const-string v1, "21462E427898ADCCC2171718D603B0DE"

    invoke-virtual {p1, v0, v1}, Lcom/elfin/ad/e/a;->a(ILjava/lang/String;)Lcom/elfin/ad/b/b;

    move-result-object p1

    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadILFYAd --> ilfyAd.isDisplay ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/elfin/ad/b/b;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    iget-boolean v0, p1, Lcom/elfin/ad/b/b;->a:Z

    if-eqz v0, :cond_67

    :try_start_40
    new-instance v0, Lcom/iflytek/voiceads/IFLYNativeAd;

    iget-object v1, p0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    iget-object p1, p1, Lcom/elfin/ad/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/elfin/ad/e/b;->x:Lcom/elfin/ad/d/a;

    invoke-direct {v0, v1, p1, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    const-string p1, "app_ver"

    iget-object v1, p0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5d} :catch_5e

    return-void

    :catch_5e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_67
    const/16 p1, 0x65

    iput p1, p0, Lcom/elfin/ad/e/b;->k:I

    invoke-virtual {p0}, Lcom/elfin/ad/e/b;->a()V

    return-void
.end method

.method public final b()V
    .registers 5

    const-string v0, "AdManager"

    const-string v1, "displayAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v1, p0, Lcom/elfin/ad/e/b;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onExposure(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/e/b;->p:I

    :cond_1a
    iget-object v0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    invoke-interface {v0}, Lcom/elfin/ad/c/a;->b()V

    :cond_23
    iget-object v0, p0, Lcom/elfin/ad/e/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/elfin/ad/e/c;

    invoke-direct {v1, p0}, Lcom/elfin/ad/e/c;-><init>(Lcom/elfin/ad/e/b;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c()V
    .registers 11

    iget-boolean v0, p0, Lcom/elfin/ad/e/b;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elfin/ad/e/b;->a:Z

    iget-object v0, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v1, p0, Lcom/elfin/ad/e/b;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onClick(Landroid/view/View;)Z

    iget v0, p0, Lcom/elfin/ad/e/b;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/elfin/ad/e/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/elfin/ad/e/b$5;

    invoke-direct {v1, p0}, Lcom/elfin/ad/e/b$5;-><init>(Lcom/elfin/ad/e/b;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    return-void

    :cond_25
    iget-object v5, p0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v4

    new-instance v0, Lcom/elfin/ad/e/b$6;

    invoke-direct {v0, p0, v5}, Lcom/elfin/ad/e/b$6;-><init>(Lcom/elfin/ad/e/b;Landroid/content/Context;)V

    iput-object v0, v4, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v8, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Id:J

    invoke-virtual/range {v4 .. v9}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    return-void
.end method

.method public final d()V
    .registers 9

    iget-object v0, p0, Lcom/elfin/ad/e/b;->w:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/elfin/ad/e/b;->k:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v1, p0, Lcom/elfin/ad/e/b;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onClick(Landroid/view/View;)Z

    return-void

    :cond_19
    iget v0, p0, Lcom/elfin/ad/e/b;->k:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_7f

    iget-object v0, p0, Lcom/elfin/ad/e/b;->g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    iget v0, v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->c:I

    iget-object v1, p0, Lcom/elfin/ad/e/b;->g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    iget-object v1, v1, Lcom/elfin/ad/bean/response/FengLingAdInfo;->l:Lcom/elfin/ad/bean/response/FengLingAdInfo$b;

    iget-object v1, v1, Lcom/elfin/ad/bean/response/FengLingAdInfo$b;->c:Ljava/util/List;

    const-string v2, "AdManager"

    const-string v3, "reportLogInfo --> targetUrlList 1"

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5f

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "AdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reportLogInfo --> targetUrlList 2 url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/elfin/ad/e/b;->a(Ljava/lang/String;)V

    goto :goto_3c

    :cond_5f
    iget-object v1, p0, Lcom/elfin/ad/e/b;->g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    iget-object v1, v1, Lcom/elfin/ad/bean/response/FengLingAdInfo;->k:Ljava/lang/String;

    const-string v2, "AdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClickImgFeLingAd -->  actionName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",clickUrl="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7f
    iget v0, p0, Lcom/elfin/ad/e/b;->k:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_9f

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v2

    new-instance v0, Lcom/elfin/ad/e/b$4;

    invoke-direct {v0, p0}, Lcom/elfin/ad/e/b$4;-><init>(Lcom/elfin/ad/e/b;)V

    iput-object v0, v2, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    iget-object v3, p0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v6, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Id:J

    invoke-virtual/range {v2 .. v7}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    :cond_9f
    return-void
.end method

.method public final e()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/elfin/ad/e/b;->w:Landroid/view/View;

    iput-object v0, p0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/elfin/ad/e/b;->v:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/elfin/ad/e/b;->a:Z

    return-void
.end method
