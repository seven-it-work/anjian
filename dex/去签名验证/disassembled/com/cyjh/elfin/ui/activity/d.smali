.class final synthetic Lcom/cyjh/elfin/ui/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final a:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/d;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/d;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    check-cast p1, Lcom/cyjh/http/bean/response/PhoneConfig;

    if-eqz p1, :cond_c

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->a(Landroid/content/Context;Lcom/cyjh/http/bean/response/PhoneConfig;)V

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->finish()V

    :cond_c
    return-void
.end method
