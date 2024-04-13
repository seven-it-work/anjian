.class public Lcom/iflytek/collector/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/collector/a/a/g$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/collector/a/a/j;

    invoke-direct {v0, p0}, Lcom/iflytek/collector/a/a/j;-><init>(Lcom/iflytek/collector/a/a/i;)V

    iput-object v0, p0, Lcom/iflytek/collector/a/a/i;->b:Lcom/iflytek/collector/a/a/g$a;

    iput-object p1, p0, Lcom/iflytek/collector/a/a/i;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/collector/a/a/i;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/collector/a/a/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rsp"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_52

    const-string v0, "des"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/iflytek/collector/a/a/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/collector/a/a/k;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ifly_dynamic_business_conf"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "no"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_52

    const-string p1, "ifly_dynamic_business_conf"

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "ifly_dynamic_business_conf"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_52} :catch_53

    :cond_52
    return-void

    :catch_53
    move-exception p1

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse result error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/collector/a/a/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/collector/a/a/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/iflytek/collector/a/a/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/collector/a/a/b;->a(Landroid/content/Context;)Lcom/iflytek/collector/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/collector/a/a/b;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8f

    new-instance v2, Lcom/iflytek/collector/a/a/g;

    invoke-direct {v2}, Lcom/iflytek/collector/a/a/g;-><init>()V

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Lcom/iflytek/collector/a/a/g;->b(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/collector/a/a/g;->a(I)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/collector/a/a/f;->a([B)[B

    move-result-object v1

    if-eqz v1, :cond_8f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "product=freelog&appid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/collector/a/a/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/iflytek/collector/a/a/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&subid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "&size="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&platform=android&source=daas&pv=1.1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "https://log.iflytek.com/log"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/iflytek/collector/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/collector/a/a/i;->b:Lcom/iflytek/collector/a/a/g$a;

    invoke-virtual {v2, v0}, Lcom/iflytek/collector/a/a/g;->a(Lcom/iflytek/collector/a/a/g$a;)V

    invoke-virtual {v2}, Lcom/iflytek/collector/a/a/g;->a()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8f} :catch_90

    :cond_8f
    return-void

    :catch_90
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception occur while upload:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
