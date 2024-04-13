.class public Lcom/umeng/analytics/CoreProtocol;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/CoreProtocol$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


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

.method synthetic constructor <init>(Lcom/umeng/analytics/CoreProtocol$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/analytics/CoreProtocol;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;
    .registers 2

    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    :cond_c
    invoke-static {}, Lcom/umeng/analytics/CoreProtocol$a;->a()Lcom/umeng/analytics/CoreProtocol;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public removeCacheData(Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .registers 4

    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/pro/i;->b(J)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .registers 4

    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;I)V

    return-void
.end method
