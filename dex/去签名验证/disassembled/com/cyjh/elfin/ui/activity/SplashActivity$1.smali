.class final Lcom/cyjh/elfin/ui/activity/SplashActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$1;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$1;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
