.class public Lcom/umeng/commonsdk/framework/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/HandlerThread; = null

.field private static b:Landroid/os/Handler; = null

.field private static c:Lcom/umeng/commonsdk/framework/d; = null

.field private static final d:I = 0x300

.field private static final e:I = 0x301

.field private static final f:I = 0x302


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz p0, :cond_4b

    if-eqz p1, :cond_4b

    :try_start_8
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_4b

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_20

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_38} :catch_47

    if-eqz v3, :cond_20

    :try_start_3a
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_41} :catch_42
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_41} :catch_47

    goto :goto_20

    :catch_42
    move-exception v2

    :try_start_43
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_20

    :catch_47
    move-exception p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_4b
    return-object p0
.end method

.method public static a()V
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x302

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    .registers 5

    if-eqz p0, :cond_46

    if-nez p2, :cond_5

    goto :goto_46

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->a(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/framework/c;->a(ILcom/umeng/commonsdk/framework/UMLogDataProtocol;)Z

    move-result p2

    if-nez p2, :cond_13

    return-void

    :cond_13
    sget-object p2, Lcom/umeng/commonsdk/framework/e;->a:Landroid/os/HandlerThread;

    if-eqz p2, :cond_1b

    sget-object p2, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    if-nez p2, :cond_1e

    :cond_1b
    invoke-static {}, Lcom/umeng/commonsdk/framework/e;->e()V

    :cond_1e
    sget-object p2, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    if-eqz p2, :cond_45

    sget-object p2, Lcom/umeng/commonsdk/framework/e;->c:Lcom/umeng/commonsdk/framework/d;

    if-nez p2, :cond_32

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->f(Landroid/content/Context;)V

    new-instance p2, Lcom/umeng/commonsdk/framework/d;

    sget-object v0, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/umeng/commonsdk/framework/d;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/e;->c:Lcom/umeng/commonsdk/framework/d;

    :cond_32
    sget-object p0, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 p2, 0x300

    iput p2, p0, Landroid/os/Message;->what:I

    iput p1, p0, Landroid/os/Message;->arg1:I

    iput-object p3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p1, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_45
    return-void

    :cond_46
    :goto_46
    const-string p0, "--->>> Context or UMLogDataProtocol parameter cannot be null!"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/os/Message;)V
    .registers 1

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/e;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/umeng/commonsdk/framework/e;->d()V

    return-void
.end method

.method private static b(Landroid/os/Message;)V
    .registers 5

    iget v0, p0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/c;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    move-result-object v1

    if-eqz v1, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    invoke-interface {v1, p0, v0}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->workEvent(Ljava/lang/Object;I)V

    :cond_2b
    return-void
.end method

.method static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/umeng/commonsdk/framework/e;->g()V

    return-void
.end method

.method private static d()V
    .registers 7

    const-string v0, "--->>> autoProcess Enter..."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    const-string v3, "analytics"

    invoke-static {v3}, Lcom/umeng/commonsdk/framework/c;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_17
    sget-object v6, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_DPLUS:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {v0, v6}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v6

    if-eqz v6, :cond_30

    if-eqz v3, :cond_30

    invoke-interface {v3, v1, v2}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->setupReportData(J)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v5, v1

    :cond_30
    if-eqz v4, :cond_85

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_37} :catch_86

    :try_start_37
    const-string v2, "header"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "content"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v2

    :try_start_4d
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_50
    if-eqz v4, :cond_6c

    if-lez v5, :cond_6c

    const-string v2, "header"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "header"

    invoke-static {v1, v2, v5}, Lcom/umeng/commonsdk/framework/e;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "content"

    invoke-static {v1, v2, v5}, Lcom/umeng/commonsdk/framework/e;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_6c
    if-eqz v1, :cond_85

    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "content"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_85

    if-eqz v4, :cond_85

    invoke-interface {v3, v4}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->removeCacheData(Ljava/lang/Object;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_85} :catch_86

    :cond_85
    return-void

    :catch_86
    move-exception v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_8a
    return-void
.end method

.method private static e()V
    .registers 2

    const-string v0, "--->>> Dispatch: init Enter..."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/commonsdk/framework/e;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_26

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "work_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/e;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    if-nez v0, :cond_26

    new-instance v0, Lcom/umeng/commonsdk/framework/e$1;

    sget-object v1, Lcom/umeng/commonsdk/framework/e;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/framework/e$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    :cond_26
    return-void
.end method

.method private static f()V
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/framework/e;->a:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sput-object v1, Lcom/umeng/commonsdk/framework/e;->a:Landroid/os/HandlerThread;

    :cond_7
    sget-object v0, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    if-eqz v0, :cond_d

    sput-object v1, Lcom/umeng/commonsdk/framework/e;->b:Landroid/os/Handler;

    :cond_d
    sget-object v0, Lcom/umeng/commonsdk/framework/e;->c:Lcom/umeng/commonsdk/framework/d;

    if-eqz v0, :cond_13

    sput-object v1, Lcom/umeng/commonsdk/framework/e;->c:Lcom/umeng/commonsdk/framework/d;

    :cond_13
    return-void
.end method

.method private static g()V
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/framework/e;->c:Lcom/umeng/commonsdk/framework/d;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/umeng/commonsdk/framework/e;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->a()V

    const-string v0, "--->>> handleQuit: Quit dispatch thread."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/commonsdk/framework/e;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-static {}, Lcom/umeng/commonsdk/framework/e;->f()V

    :cond_18
    return-void
.end method
