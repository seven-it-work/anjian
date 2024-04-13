.class public Lcom/umeng/commonsdk/framework/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->i(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_3

    return-object p2

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/g;->b()Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "--->>> buildEnvelopeFile Enter."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/umeng/commonsdk/statistics/c;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/c;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->c(Landroid/content/Context;)I

    move-result v2

    if-eqz v1, :cond_1a

    const/4 v3, 0x1

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_21

    if-lez v2, :cond_21

    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->b()V

    :cond_21
    return v0
.end method

.method public static b(Landroid/content/Context;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/c;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method
