.class Lcom/umeng/commonsdk/proguard/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/proguard/g;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/proguard/g;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/g$1;->a:Lcom/umeng/commonsdk/proguard/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6

    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onLocationChanged"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$1;->a:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/proguard/g;->a(Lcom/umeng/commonsdk/proguard/g;Z)Z

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$1;->a:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/g;->a(Lcom/umeng/commonsdk/proguard/g;)Lcom/umeng/commonsdk/proguard/i;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$1;->a:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/g;->a(Lcom/umeng/commonsdk/proguard/g;)Lcom/umeng/commonsdk/proguard/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/proguard/i;->a(Landroid/location/Location;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_23} :catch_24

    :cond_23
    return-void

    :catch_24
    move-exception p1

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$1;->a:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/g;->b(Lcom/umeng/commonsdk/proguard/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
