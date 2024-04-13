.class final Lcom/umeng/commonsdk/stateless/d$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p1, :cond_66

    if-eqz p2, :cond_66

    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->b()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_66

    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->b()Landroid/content/Context;

    move-result-object p2

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_66

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_53

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/d;->a(Z)Z

    const-string p2, "walle"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[stateless] net reveiver ok --->>>"

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x111

    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/d;->b(I)V

    return-void

    :cond_53
    const-string p2, "walle"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[stateless] net reveiver disconnected --->>>"

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/d;->a(Z)Z
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception p2

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_66
    return-void
.end method
