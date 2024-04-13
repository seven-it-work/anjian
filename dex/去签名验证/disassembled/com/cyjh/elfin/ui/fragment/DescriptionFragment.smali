.class public Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;
.super Lcom/cyjh/common/base/fragment/BaseFragement;


# static fields
.field public static final a:Ljava/lang/String; = "DescriptionFragment"


# instance fields
.field private b:Landroid/widget/ScrollView;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;-><init>()V

    return-void
.end method

.method private b()V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->b:Landroid/widget/ScrollView;

    const v1, 0x7f10019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c:Landroid/webkit/WebView;

    const v1, 0x7f10019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    :try_start_39
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/base/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "script.rtd"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->b:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_53} :catch_54

    return-void

    :catch_54
    iget-object v2, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->b:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method private c()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cyjh/elfin/a/b;->au:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "script.rtd"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "webViewLoad --> sdCardRtdFile path ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v0, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_59

    :cond_57
    const-string v0, "file:///android_asset/script.rtd"

    :goto_59
    const-string v2, "TAG"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v2, :cond_6d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6d

    return-void

    :cond_6d
    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const v0, 0x7f040065

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/cyjh/common/base/fragment/BaseFragement;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f100199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->b:Landroid/widget/ScrollView;

    const v0, 0x7f10019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c:Landroid/webkit/WebView;

    const v0, 0x7f10019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 p1, 0x8

    const/4 v0, 0x0

    :try_start_3b
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/base/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "script.rtd"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->b:Landroid/widget/ScrollView;

    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_55} :catch_56

    goto :goto_60

    :catch_56
    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->b:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_60
    :goto_60
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onPause()V

    const-class v0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveRTDFileUIEvent(Lcom/cyjh/common/e/a;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "onReceiveRTDFileUIEvent --> \u66f4\u65b0RTDFileUI"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ae;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->a:Ljava/lang/String;

    const-string v0, "onReceiveRTDFileUIEvent --> \u66f4\u65b0RTDFileUI"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->c()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onResume()V

    const-class v0, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/cyjh/common/base/fragment/BaseFragement;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;->setUserVisibleHint(Z)V

    return-void
.end method
