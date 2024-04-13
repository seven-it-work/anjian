.class Lcom/umeng/analytics/pro/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/h;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/h;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/h;->b(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/umeng/analytics/pro/h;->c:Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    iget-boolean v0, v0, Lcom/umeng/analytics/pro/h;->c:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/analytics/pro/h;->c:Z

    sget-object v0, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_2f
    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V

    :cond_34
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
