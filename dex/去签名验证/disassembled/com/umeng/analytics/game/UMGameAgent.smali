.class public Lcom/umeng/analytics/game/UMGameAgent;
.super Lcom/umeng/analytics/MobclickAgent;


# static fields
.field private static final a:Ljava/lang/String; = "Input string is null or empty"

.field private static final b:Ljava/lang/String; = "Input string must be less than 64 chars"

.field private static final c:Ljava/lang/String; = "Input value type is negative"

.field private static final d:Ljava/lang/String; = "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

.field private static final e:Lcom/umeng/analytics/game/b;

.field private static f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/umeng/analytics/game/b;

    invoke-direct {v0}, Lcom/umeng/analytics/game/b;-><init>()V

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/analytics/MobclickAgent;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static bonus(DI)V
    .registers 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_c

    const-string p0, "Input value type is negative"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    if-lez p2, :cond_19

    const/16 v0, 0x64

    if-lt p2, v0, :cond_13

    goto :goto_19

    :cond_13
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/game/b;->a(DI)V

    return-void

    :cond_19
    :goto_19
    const-string p0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static bonus(Ljava/lang/String;IDI)V
    .registers 12

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "Input string is null or empty"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    if-ltz p1, :cond_2c

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_15

    goto :goto_2c

    :cond_15
    if-lez p4, :cond_26

    const/16 v0, 0x64

    if-lt p4, v0, :cond_1c

    goto :goto_26

    :cond_1c
    sget-object v1, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;IDI)V

    return-void

    :cond_26
    :goto_26
    const-string p0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2c
    :goto_2c
    const-string p0, "Input value type is negative"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static buy(Ljava/lang/String;ID)V
    .registers 7

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "Input string is null or empty"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    if-ltz p1, :cond_1b

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_15

    goto :goto_1b

    :cond_15
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    return-void

    :cond_1b
    :goto_1b
    const-string p0, "Input value type is negative"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static exchange(DLjava/lang/String;DILjava/lang/String;)V
    .registers 16

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_23

    cmpg-double v2, p3, v0

    if-gez v2, :cond_b

    goto :goto_23

    :cond_b
    if-lez p5, :cond_1d

    const/16 v0, 0x64

    if-lt p5, v0, :cond_12

    goto :goto_1d

    :cond_12
    sget-object v1, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v2, p0

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/umeng/analytics/game/b;->a(DLjava/lang/String;DILjava/lang/String;)V

    return-void

    :cond_1d
    :goto_1d
    const-string p0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_23
    :goto_23
    const-string p0, "Input value type is negative"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static failLevel(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "Input string is null or empty"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1a

    const-string p0, "Input string must be less than 64 chars"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1a
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static finishLevel(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "Input string is null or empty"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1a

    const-string p0, "Input string must be less than 64 chars"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1a
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    :cond_c
    sget-object p0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    const-string p0, "please check Context!"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static pay(DDI)V
    .registers 14

    if-lez p4, :cond_21

    const/16 v0, 0x64

    if-lt p4, v0, :cond_7

    goto :goto_21

    :cond_7
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_1b

    cmpg-double v2, p2, v0

    if-gez v2, :cond_12

    goto :goto_1b

    :cond_12
    sget-object v3, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v4, p0

    move-wide v6, p2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/analytics/game/b;->a(DDI)V

    return-void

    :cond_1b
    :goto_1b
    const-string p0, "Input value type is negative"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_21
    :goto_21
    const-string p0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static pay(DLjava/lang/String;IDI)V
    .registers 15

    if-lez p6, :cond_31

    const/16 v0, 0x64

    if-lt p6, v0, :cond_7

    goto :goto_31

    :cond_7
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_2b

    if-ltz p3, :cond_2b

    cmpg-double v2, p4, v0

    if-gez v2, :cond_14

    goto :goto_2b

    :cond_14
    invoke-static {p2}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "Input string is null or empty"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_20
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/analytics/game/b;->a(DLjava/lang/String;IDI)V

    return-void

    :cond_2b
    :goto_2b
    const-string p0, "Input value type is negative"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_31
    :goto_31
    const-string p0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static setPlayerLevel(I)V
    .registers 2

    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setTraceSleepTime(Z)V
    .registers 2

    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->a(Z)V

    return-void
.end method

.method public static startLevel(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "Input string is null or empty"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1a

    const-string p0, "Input string must be less than 64 chars"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1a
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static use(Ljava/lang/String;ID)V
    .registers 7

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "Input string is null or empty"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    if-ltz p1, :cond_1b

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_15

    goto :goto_1b

    :cond_15
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/b;->b(Ljava/lang/String;ID)V

    return-void

    :cond_1b
    :goto_1b
    const-string p0, "Input value type is negative"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method
