.class public Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p0

    return p0
.end method

.method public static lastSuccessfulBuildTime(Landroid/content/Context;)J
    .registers 3

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static maxDataSpace(Landroid/content/Context;)J
    .registers 3

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/a;->b(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method
