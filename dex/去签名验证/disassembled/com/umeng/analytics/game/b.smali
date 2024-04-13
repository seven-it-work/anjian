.class Lcom/umeng/analytics/game/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/analytics/pro/r;


# static fields
.field public static a:Z = true


# instance fields
.field private A:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/b;

.field private c:Lcom/umeng/analytics/game/a;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    const/16 v0, 0x64

    iput v0, p0, Lcom/umeng/analytics/game/b;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/game/b;->e:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/umeng/analytics/game/b;->f:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/umeng/analytics/game/b;->g:I

    iput v0, p0, Lcom/umeng/analytics/game/b;->h:I

    const-string v1, "level"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->i:Ljava/lang/String;

    const-string v1, "pay"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->j:Ljava/lang/String;

    const-string v1, "buy"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->k:Ljava/lang/String;

    const-string v1, "use"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->l:Ljava/lang/String;

    const-string v1, "bonus"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->m:Ljava/lang/String;

    const-string v1, "item"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->n:Ljava/lang/String;

    const-string v1, "cash"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->o:Ljava/lang/String;

    const-string v1, "coin"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->p:Ljava/lang/String;

    const-string v1, "source"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->q:Ljava/lang/String;

    const-string v1, "amount"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->r:Ljava/lang/String;

    const-string v1, "user_level"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->s:Ljava/lang/String;

    const-string v1, "bonus_source"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->t:Ljava/lang/String;

    const-string v1, "level"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->u:Ljava/lang/String;

    const-string v1, "status"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->v:Ljava/lang/String;

    const-string v1, "duration"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->w:Ljava/lang/String;

    const-string v1, "curtype"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->x:Ljava/lang/String;

    const-string v1, "orderid"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->y:Ljava/lang/String;

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->z:Ljava/lang/String;

    sput-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_81

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    goto :goto_81

    :cond_27
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a;->b(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3f

    const-string p1, "level duration is 0"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    return-void

    :cond_3f
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "level"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_6a

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v0, "level"

    invoke-virtual {p1, p2, v0, v2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_74
    const-string p1, "finishLevel(or failLevel) called before startLevel"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    return-void

    :cond_81
    :goto_81
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "App resume from background"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_f

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    :goto_b
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_2c

    goto :goto_36

    :cond_2c
    sget-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a;->b()V

    :cond_35
    return-void

    :cond_36
    :goto_36
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    goto :goto_b
.end method

.method a(DDI)V
    .registers 10

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_77

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    goto :goto_77

    :cond_27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cash"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v2

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coin"

    mul-double p3, p3, v2

    double-to-long p2, p3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_5e

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_6d

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "pay"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_77
    :goto_77
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(DI)V
    .registers 8

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_6b

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    goto :goto_6b

    :cond_27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "coin"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v2

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "bonus_source"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_52

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_61

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "bonus"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_6b
    :goto_6b
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(DLjava/lang/String;DILjava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    :goto_6
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_b7

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_28

    goto/16 :goto_b7

    :cond_28
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_b6

    cmpl-double v2, p4, v0

    if-ltz v2, :cond_b6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_4f

    const-string v1, "curtype"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6c

    :try_start_55
    const-string p3, "UTF-8"

    invoke-virtual {p7, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    array-length p3, p3

    if-lez p3, :cond_6c

    const/16 v1, 0x400

    if-gt p3, v1, :cond_6c

    const-string p3, "orderid"

    invoke-virtual {v0, p3, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_55 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p3

    invoke-virtual {p3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_6c
    :goto_6c
    const-string p3, "cash"

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v1

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coin"

    mul-double p4, p4, v1

    double-to-long p2, p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_9e

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9e
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_ad

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "pay"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_b6
    return-void

    :cond_b7
    :goto_b7
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    goto/16 :goto_6
.end method

.method a(DLjava/lang/String;IDI)V
    .registers 16

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    goto :goto_2a

    :cond_1d
    int-to-double v0, p4

    mul-double v5, p5, v0

    move-object v2, p0

    move-wide v3, p1

    move v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/umeng/analytics/game/b;->a(DDI)V

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    return-void

    :cond_2a
    :goto_2a
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/content/Context;)V
    .registers 3

    if-nez p1, :cond_8

    const-string p1, "Context is null, can\'t init GameAgent"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/pro/r;)V

    new-instance p1, Lcom/umeng/analytics/game/a;

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/umeng/analytics/game/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iput-object p1, v0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userlevel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    return-void
.end method

.method a(Ljava/lang/String;ID)V
    .registers 8

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_73

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    goto :goto_73

    :cond_27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coin"

    int-to-double v1, p2

    mul-double v1, v1, p3

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double v1, v1, p2

    double-to-long p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_5a

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_69

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "buy"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_73
    :goto_73
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;IDI)V
    .registers 8

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    goto :goto_27

    :cond_1d
    int-to-double v0, p2

    mul-double v0, v0, p3

    invoke-virtual {p0, v0, v1, p5}, Lcom/umeng/analytics/game/b;->a(DI)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    return-void

    :cond_27
    :goto_27
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(Z)V
    .registers 6

    const-string v0, "Trace sleep time : %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    sput-boolean p1, Lcom/umeng/analytics/game/b;->a:Z

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    :goto_6
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    goto :goto_31

    :cond_27
    sget-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a;->a()V

    :cond_30
    return-void

    :cond_31
    :goto_31
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    goto :goto_6
.end method

.method b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_5d

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    goto :goto_5d

    :cond_27
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iput-object p1, v0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a;->a(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_53

    const-string p1, "user_level"

    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v2, "level"

    invoke-virtual {p1, v1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_5d
    :goto_5d
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;ID)V
    .registers 8

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_73

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    goto :goto_73

    :cond_27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coin"

    int-to-double v1, p2

    mul-double v1, v1, p3

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double v1, v1, p2

    double-to-long p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_5a

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_69

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "use"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_73
    :goto_73
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;I)V

    return-void

    :cond_2c
    :goto_2c
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method d(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;I)V

    return-void

    :cond_2c
    :goto_2c
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method
