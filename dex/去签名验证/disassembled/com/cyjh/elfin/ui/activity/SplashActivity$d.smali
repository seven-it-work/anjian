.class final Lcom/cyjh/elfin/ui/activity/SplashActivity$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

.field private b:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$d;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$d;->b:Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/activity/SplashActivity$d;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$d;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$d;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->f(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/arch/lifecycle/AndroidViewModel;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->b()V

    return-void
.end method
