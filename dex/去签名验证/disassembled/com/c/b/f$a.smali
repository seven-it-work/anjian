.class final Lcom/c/b/f$a;
.super Ljava/util/TimerTask;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/c/b/f;


# direct methods
.method private constructor <init>(Lcom/c/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/c/b/f$a;->a:Lcom/c/b/f;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/b/f;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/b/f$a;-><init>(Lcom/c/b/f;)V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 3

    const-string v0, "changed"

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/c/b/f$a;->a:Lcom/c/b/f;

    invoke-static {v0, p1}, Lcom/c/b/f;->a(Lcom/c/b/f;Landroid/location/Location;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    const-string p1, "onProviderDisabled"

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 3

    const-string p1, "onProviderEnabled"

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/c/b/f$a;->a:Lcom/c/b/f;

    iget-object v0, p0, Lcom/c/b/f$a;->a:Lcom/c/b/f;

    invoke-static {v0}, Lcom/c/b/f;->a(Lcom/c/b/f;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/c/b/f;->a(Lcom/c/b/f;Landroid/location/Location;)V

    iget-object p1, p0, Lcom/c/b/f$a;->a:Lcom/c/b/f;

    invoke-static {p1}, Lcom/c/b/f;->b(Lcom/c/b/f;)Landroid/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    const-string p1, "onStatusChanged"

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/c/b/f$a;->a:Lcom/c/b/f;

    invoke-static {v0}, Lcom/c/b/f;->c(Lcom/c/b/f;)V

    return-void
.end method
