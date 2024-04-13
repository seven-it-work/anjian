.class public Lcom/cyjh/elfin/services/BaseService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/cyjh/elfin/a/a;


# instance fields
.field protected a:Lcom/cyjh/elfin/base/AppContext;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/cyjh/elfin/services/BaseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/AppContext;

    iput-object v0, p0, Lcom/cyjh/elfin/services/BaseService;->a:Lcom/cyjh/elfin/base/AppContext;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
