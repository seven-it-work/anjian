.class public Lcom/cyjh/elfin/ui/activity/FeedbackActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# instance fields
.field b:Lcom/cyjh/elfin/ui/view/customview/TitleView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private b()V
    .registers 3

    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040020

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->setContentView(I)V

    const p1, 0x7f1000c1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f0900a0

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f0200df

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/FeedbackActivity;)V

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/feedback/lib/e/e;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->a(Ljava/lang/String;Z)Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    move-result-object v0

    const v1, 0x7f1000c2

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
