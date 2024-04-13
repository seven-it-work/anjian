.class final Lcom/cyjh/elfin/ui/activity/SplashActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elfin/ad/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/elfin/ad/c/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->a(Lcom/cyjh/elfin/ui/activity/SplashActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->b(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->a(Lcom/cyjh/elfin/ui/activity/SplashActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    invoke-virtual {v1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;->cancel()V

    iput v2, v0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->d:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    :cond_11
    new-instance v1, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    invoke-direct {v1, v0, v2}, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;B)V

    iput-object v1, v0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->d(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->d(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/arch/lifecycle/AndroidViewModel;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->c(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->c(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2b
    return-void
.end method
