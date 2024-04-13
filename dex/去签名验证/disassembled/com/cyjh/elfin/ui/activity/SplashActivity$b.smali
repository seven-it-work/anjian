.class final Lcom/cyjh/elfin/ui/activity/SplashActivity$b;
.super Lcom/cyjh/elfin/ui/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/b/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->g(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    return-void
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    const-class v3, Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/elfin/engin/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/cyjh/common/g/a;->a()Lcom/cyjh/common/g/a;

    invoke-static {}, Lcom/cyjh/common/g/a;->b()V

    return-void
.end method
