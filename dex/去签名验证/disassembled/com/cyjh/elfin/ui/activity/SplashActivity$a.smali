.class final Lcom/cyjh/elfin/ui/activity/SplashActivity$a;
.super Lcom/cyjh/common/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/cyjh/common/c/a;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 2

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->h(Lcom/cyjh/elfin/ui/activity/SplashActivity;)I

    return-void
.end method

.method public final onFinish()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->i(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    return-void
.end method
