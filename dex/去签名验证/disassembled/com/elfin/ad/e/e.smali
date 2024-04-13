.class public Lcom/elfin/ad/e/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "e"

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:Ljava/lang/String; = "__EVENT_TIME__"

.field public static final e:Ljava/lang/String; = "__CLICK_DOWN_X__"

.field public static final f:Ljava/lang/String; = "_CLICK_DOWN_Y__"

.field public static final g:Ljava/lang/String; = "__CLICK_UP_X__"

.field public static final h:Ljava/lang/String; = "__CLICK_UP_Y__"

.field public static n:Ljava/lang/String; = "0.0.0.0"


# instance fields
.field i:I

.field j:Lcom/elfin/ad/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/elfin/ad/c/a<",
            "Lcom/elfin/ad/bean/response/FengLingAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/content/Context;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .registers 1

    const-string v0, "true"

    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/elfin/ad/e/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_a

    const-string p2, "101478"

    const/16 v1, 0x280

    const/16 v2, 0x3c0

    goto :goto_10

    :cond_a
    const-string p2, "101477"

    const/16 v1, 0x258

    const/16 v2, 0x12c

    :goto_10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "id"

    const-string v6, "5e1f6df6cc024c80b7e8b86dc670c100"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "adPid"

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v6, "width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "banner"

    invoke-interface {v5, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "usingHttps"

    const-string v1, "true"

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "isSupportDeeplink"

    const-string v1, "false"

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "imei"

    invoke-static {p1}, Lcom/cyjh/common/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidId"

    invoke-static {p1}, Lcom/cyjh/common/util/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ip"

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "nt"

    invoke-static {p1}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v2, :cond_87

    packed-switch v1, :pswitch_data_16e

    const/4 v0, 0x0

    goto :goto_88

    :pswitch_81
    const/4 v0, 0x4

    goto :goto_88

    :pswitch_83
    const/4 v0, 0x3

    goto :goto_88

    :pswitch_85
    const/4 v0, 0x1

    goto :goto_88

    :cond_87
    const/4 v0, 0x5

    :goto_88
    :pswitch_88
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "platform"

    const-string v0, "4"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "lan"

    const-string v0, "zh_CN"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "rslt"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "osv"

    invoke-static {}, Lcom/cyjh/common/util/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "carrier"

    invoke-static {p1}, Lcom/cyjh/common/util/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sendtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "timezone"

    const-string v0, "480"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "mac"

    invoke-static {p1}, Lcom/cyjh/common/util/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "appVer"

    invoke-static {p1}, Lcom/cyjh/common/util/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "cc"

    const-string v0, "CN"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "orientation"

    const-string v0, "1"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "imsi"

    const-string v0, ""

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_11d

    goto :goto_121

    :cond_11d
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_121
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "brand"

    invoke-static {}, Lcom/elfin/ad/e/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "dm"

    invoke-static {}, Lcom/elfin/ad/e/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "ua"

    iget-object v0, p0, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/cyjh/common/util/p;->a(Landroid/content/Context;)Lcom/cyjh/common/util/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/common/util/p;->a()[Ljava/lang/String;

    move-result-object p1

    const-string v0, "lon"

    aget-object v1, p1, v7

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lat"

    aget-object p1, p1, v6

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "geo"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "site"

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imp"

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_85
        :pswitch_88
        :pswitch_83
        :pswitch_81
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/elfin/ad/c/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/elfin/ad/c/a<",
            "Lcom/elfin/ad/bean/response/FengLingAdInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/elfin/ad/e/e;->j:Lcom/elfin/ad/c/a;

    sget-object v0, Lcom/elfin/ad/e/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportLogInfo params -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object p1

    new-instance v0, Lcom/elfin/ad/e/e$3;

    new-instance v1, Lcom/elfin/ad/e/e$1;

    invoke-direct {v1, p0, p3}, Lcom/elfin/ad/e/e$1;-><init>(Lcom/elfin/ad/e/e;Lcom/elfin/ad/c/a;)V

    new-instance v2, Lcom/elfin/ad/e/e$2;

    invoke-direct {v2, p0, p3}, Lcom/elfin/ad/e/e$2;-><init>(Lcom/elfin/ad/e/e;Lcom/elfin/ad/c/a;)V

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/elfin/ad/e/e$3;-><init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    invoke-virtual {p1, v0}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void
.end method

.method private a(Lcom/elfin/ad/c/a;Landroid/content/Context;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/elfin/ad/c/a<",
            "Lcom/elfin/ad/bean/response/FengLingAdInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lcom/elfin/ad/e/e;->i:I

    iput-object p1, p0, Lcom/elfin/ad/e/e;->j:Lcom/elfin/ad/c/a;

    iput-object p2, p0, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iput-object p3, p0, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    invoke-static {p2}, Lcom/cyjh/common/util/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    sget-object p1, Lcom/elfin/ad/e/e;->n:Ljava/lang/String;

    iget-object p2, p0, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object p2

    iget-object p3, p0, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iget v1, p0, Lcom/elfin/ad/e/e;->i:I

    if-ne v1, v0, :cond_24

    const-string v1, "101478"

    const/16 v2, 0x280

    const/16 v3, 0x3c0

    goto :goto_2a

    :cond_24
    const-string v1, "101477"

    const/16 v2, 0x258

    const/16 v3, 0x12c

    :goto_2a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "id"

    const-string v7, "5e1f6df6cc024c80b7e8b86dc670c100"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "adPid"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v7, "width"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "banner"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "usingHttps"

    const-string v2, "true"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isSupportDeeplink"

    const-string v2, "false"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "imei"

    invoke-static {p3}, Lcom/cyjh/common/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "androidId"

    invoke-static {p3}, Lcom/cyjh/common/util/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ip"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nt"

    invoke-static {p3}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v3, :cond_a1

    packed-switch v2, :pswitch_data_1ba

    const/4 v0, 0x0

    goto :goto_a2

    :pswitch_9b
    const/4 v0, 0x4

    goto :goto_a2

    :pswitch_9d
    const/4 v0, 0x3

    goto :goto_a2

    :pswitch_9f
    const/4 v0, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v0, 0x5

    :goto_a2
    :pswitch_a2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string v0, "4"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lan"

    const-string v0, "zh_CN"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rslt"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "osv"

    invoke-static {}, Lcom/cyjh/common/util/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "carrier"

    invoke-static {p3}, Lcom/cyjh/common/util/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sendtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timezone"

    const-string v0, "480"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mac"

    invoke-static {p3}, Lcom/cyjh/common/util/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appVer"

    invoke-static {p3}, Lcom/cyjh/common/util/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cc"

    const-string v0, "CN"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "orientation"

    const-string v0, "1"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imsi"

    const-string v0, ""

    const-string v2, "phone"

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {p3, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_137

    goto :goto_13b

    :cond_137
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_13b
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "brand"

    invoke-static {}, Lcom/elfin/ad/e/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dm"

    invoke-static {}, Lcom/elfin/ad/e/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ua"

    iget-object v0, p0, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Lcom/cyjh/common/util/p;->a(Landroid/content/Context;)Lcom/cyjh/common/util/p;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cyjh/common/util/p;->a()[Ljava/lang/String;

    move-result-object p3

    const-string v0, "lon"

    aget-object v2, p3, v8

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lat"

    aget-object p3, p3, v7

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "geo"

    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "site"

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imp"

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    sget-object p1, Lcom/elfin/ad/e/e;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "getFengLingAdInfo params -> "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/elfin/ad/e/e$6;

    iget-object v7, p0, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    new-instance v9, Lcom/elfin/ad/e/e$4;

    invoke-direct {v9, p0}, Lcom/elfin/ad/e/e$4;-><init>(Lcom/elfin/ad/e/e;)V

    new-instance v10, Lcom/elfin/ad/e/e$5;

    invoke-direct {v10, p0}, Lcom/elfin/ad/e/e$5;-><init>(Lcom/elfin/ad/e/e;)V

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/elfin/ad/e/e$6;-><init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    invoke-virtual {p2, p1}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void

    nop

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_a2
        :pswitch_9d
        :pswitch_9b
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object v0

    iget-object v1, p0, Lcom/elfin/ad/e/e;->k:Landroid/content/Context;

    iget v2, p0, Lcom/elfin/ad/e/e;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    const-string v2, "101478"

    const/16 v4, 0x280

    const/16 v5, 0x3c0

    goto :goto_1a

    :cond_14
    const-string v2, "101477"

    const/16 v4, 0x258

    const/16 v5, 0x12c

    :goto_1a
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

    const-string v4, "true"

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isSupportDeeplink"

    const-string v4, "false"

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "imei"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "androidId"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ip"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nt"

    invoke-static {v1}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v4, v5, :cond_91

    packed-switch v4, :pswitch_data_1aa

    const/4 v3, 0x0

    goto :goto_92

    :pswitch_8b
    const/4 v3, 0x4

    goto :goto_92

    :pswitch_8d
    const/4 v3, 0x3

    goto :goto_92

    :pswitch_8f
    const/4 v3, 0x1

    goto :goto_92

    :cond_91
    const/4 v3, 0x5

    :goto_92
    :pswitch_92
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string v3, "4"

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lan"

    const-string v3, "zh_CN"

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rslt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "osv"

    invoke-static {}, Lcom/cyjh/common/util/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "carrier"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sendtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timezone"

    const-string v3, "480"

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mac"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appVer"

    invoke-static {v1}, Lcom/cyjh/common/util/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cc"

    const-string v3, "CN"

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "orientation"

    const-string v3, "1"

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imsi"

    const-string v3, ""

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v5}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_127

    goto :goto_12b

    :cond_127
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    :goto_12b
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "brand"

    invoke-static {}, Lcom/elfin/ad/e/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dm"

    invoke-static {}, Lcom/elfin/ad/e/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ua"

    iget-object v3, p0, Lcom/elfin/ad/e/e;->m:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/cyjh/common/util/p;->a(Landroid/content/Context;)Lcom/cyjh/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/common/util/p;->a()[Ljava/lang/String;

    move-result-object v1

    const-string v3, "lon"

    aget-object v4, v1, v10

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lat"

    aget-object v1, v1, v9

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "geo"

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "site"

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imp"

    invoke-interface {v6, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    sget-object p1, Lcom/elfin/ad/e/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFengLingAdInfo params -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/elfin/ad/e/e$6;

    iget-object v9, p0, Lcom/elfin/ad/e/e;->l:Ljava/lang/String;

    new-instance v11, Lcom/elfin/ad/e/e$4;

    invoke-direct {v11, p0}, Lcom/elfin/ad/e/e$4;-><init>(Lcom/elfin/ad/e/e;)V

    new-instance v12, Lcom/elfin/ad/e/e$5;

    invoke-direct {v12, p0}, Lcom/elfin/ad/e/e$5;-><init>(Lcom/elfin/ad/e/e;)V

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/elfin/ad/e/e$6;-><init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void

    nop

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_92
        :pswitch_8d
        :pswitch_8b
    .end packed-switch
.end method

.method static synthetic b(Lcom/elfin/ad/e/e;)Lcom/elfin/ad/c/a;
    .registers 1

    iget-object p0, p0, Lcom/elfin/ad/e/e;->j:Lcom/elfin/ad/c/a;

    return-object p0
.end method

.method static b()Ljava/lang/String;
    .registers 1

    const-string v0, "false"

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_13

    return-object v0

    :cond_13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c()Ljava/lang/String;
    .registers 1

    const-string v0, "1"

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    return-object p0
.end method

.method static d()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_6

    move-object v0, v1

    return-object v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_6

    move-object v0, v1

    return-object v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/elfin/ad/e/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
