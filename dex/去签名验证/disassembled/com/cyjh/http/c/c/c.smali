.class public Lcom/cyjh/http/c/c/c;
.super Lcom/cyjh/http/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/c/c/c$b;,
        Lcom/cyjh/http/c/c/c$a;
    }
.end annotation


# static fields
.field private static d:Lcom/cyjh/http/c/c/c;


# instance fields
.field public b:Lcom/cyjh/http/c/c/c$a;

.field public c:Lcom/cyjh/http/c/c/c$b;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/cyjh/http/c/c/c;
    .registers 2

    sget-object v0, Lcom/cyjh/http/c/c/c;->d:Lcom/cyjh/http/c/c/c;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/http/c/c/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/http/c/c/c;->d:Lcom/cyjh/http/c/c/c;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/http/c/c/c;

    invoke-direct {v1}, Lcom/cyjh/http/c/c/c;-><init>()V

    sput-object v1, Lcom/cyjh/http/c/c/c;->d:Lcom/cyjh/http/c/c/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/cyjh/http/c/c/c;->d:Lcom/cyjh/http/c/c/c;

    return-object v0
.end method

.method private a(Lcom/cyjh/http/c/c/c$a;)Lcom/cyjh/http/c/c/c;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    return-object p0
.end method

.method private a(Lcom/cyjh/http/c/c/c$b;)Lcom/cyjh/http/c/c/c;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    return-object p0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    invoke-interface {v0}, Lcom/cyjh/http/c/c/c$b;->a()V

    :cond_9
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;IIJ)V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput p3, v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;->Action:I

    iput p2, v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;->BussinessId:I

    iput-wide p4, v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;->RelationId:J

    invoke-static {}, Lcom/cyjh/http/a/c;->a()Lcom/cyjh/http/a/c;

    move-result-object p2

    iget p2, p2, Lcom/cyjh/http/a/c;->e:I

    iput p2, v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;->CloudPhoneType:I

    const-string p2, "zzz"

    const-string p3, "com.cyjh.share.AppStatisticsPresenter--loadAd:"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Statistics"

    invoke-static {p2}, Lcom/cyjh/common/a/a;->b(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    const-string p4, "zzz"

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "com.cyjh.share.AppStatisticsPresenter--parasMap:"

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "zzz"

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "com.cyjh.share.AppStatisticsPresenter--loadAd:"

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/cyjh/http/c/c/c;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p1, p5, p2, p3}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    return-void

    :catch_6c
    move-exception p1

    const-string p2, "zzz"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "com.cyjh.share.AppStatisticsPresenter--loadAd:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/ScriptStopRunParams;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/ScriptStopRunParams;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p2, v1, Lcom/cyjh/http/bean/request/ScriptStopRunParams;->RunGuid:Ljava/lang/String;

    const-string p2, "Script"

    const-string v0, "Stop"

    invoke-static {p2, v0}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/http/c/c/c;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p1

    const-string p2, "zzz"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppStatisticsPresenter--loadScriptStopRunStatistics:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/cyjh/http/c/c/c;->e()V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/ScriptStartRunParams;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/ScriptStartRunParams;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p2, v1, Lcom/cyjh/http/bean/request/ScriptStartRunParams;->RegCode:Ljava/lang/String;

    iput-object p3, v1, Lcom/cyjh/http/bean/request/ScriptStartRunParams;->ScriptId:Ljava/lang/String;

    iget-wide p2, v1, Lcom/cyjh/http/bean/request/ScriptStartRunParams;->ClientTimestamp:J

    sput-wide p2, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->sClientTime:J

    const-string p2, "Script"

    invoke-static {p2, p4}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "loadScriptStar"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "scriptStartRunParams:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/http/bean/request/ScriptStartRunParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    sget-boolean p4, Lcom/cyjh/common/util/k;->a:Z

    if-eqz p4, :cond_74

    const-string p4, "Data"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v0, "R"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/cyjh/common/util/k;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadScriptStartRunStatistics --> data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",r="

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    invoke-static {v1, p4, v0}, Lcom/cyjh/common/util/k;->a(Ljava/io/File;Ljava/lang/String;Z)Z

    :cond_74
    iget-object p4, p0, Lcom/cyjh/http/c/c/c;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p1, v0, p2, p3}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_81} :catch_81

    :catch_81
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 10

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.AppStatisticsPresenter--uiDataSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_13
    iget-object v0, p0, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    invoke-interface {v0}, Lcom/cyjh/http/c/c/c$a;->a()V

    :cond_1c
    iget-object v0, p0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    if-eqz v0, :cond_5e

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    invoke-static {v0, v1}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    sget-wide v1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->sClientTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_59

    sget-wide v1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->sClientTime:J

    iget-object v5, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-wide v5, v5, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ClientTimestamp:J

    cmp-long v7, v1, v5

    if-eqz v7, :cond_59

    const/16 p1, 0x25a

    iput p1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/cyjh/http/R$string;->check_sign_fail:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-wide v3, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->sClientTime:J

    :cond_59
    iget-object v0, p0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/c/c$b;->a(Ljava/lang/Object;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_5e} :catch_5f

    :cond_5e
    return-void

    :catch_5f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.AppStatisticsPresenter--uiDataSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/cyjh/http/c/c/c;->e()V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/c;->a:Lcom/cyjh/http/d/b/a;

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

.method protected final b(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/http/c/c/c;->e()V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/c;->a:Lcom/cyjh/http/d/b/a;

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    iput-object v0, p0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    return-void
.end method
