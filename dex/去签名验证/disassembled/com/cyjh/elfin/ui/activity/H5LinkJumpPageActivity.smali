.class public Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$a;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const p1, 0x7f0200df

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    new-instance v1, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    const p1, 0x7f1000c5

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->b:Landroid/widget/LinearLayout;

    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040023

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1000b5

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-virtual {v1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const v0, 0x7f0200df

    invoke-virtual {v1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    new-instance v2, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$a;

    invoke-direct {v2, p0, v0}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;B)V

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->c:Landroid/webkit/WebView;

    :cond_1b
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
