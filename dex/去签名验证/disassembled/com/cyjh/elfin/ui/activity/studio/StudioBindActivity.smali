.class public Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static b:Ljava/lang/String; = "StudioBindActivity"


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/EditText;

.field private g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->m:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    return-object p0
.end method

.method private b()V
    .registers 3

    const v0, 0x7f1000ba

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const v0, 0x7f100103

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f100102

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->f:Landroid/widget/EditText;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_change"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/a;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/studio/a;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->l:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_change"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->n:Z

    sget-object v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "studioProjectNumber:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_8c

    :try_start_2e
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v3, 0x2761

    invoke-direct {v2, v3}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->h:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->i:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {p0, v0}, Lcom/cyjh/elfin/e/c/o;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->j:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {p0, v0}, Lcom/cyjh/elfin/e/c/o;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/cyjh/elfin/e/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->l:Ljava/lang/String;

    sget-object v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initData --> scriptUIPContent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mScriptCFGContent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_87} :catch_88

    return-void

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8c
    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->n:Z

    return p0
.end method

.method private f()V
    .registers 10

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090114

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    return-void

    :cond_23
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->m:Z

    if-eqz v0, :cond_68

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->m:Z

    sget-object v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindStudioProject --> scriptCFGContent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",scriptUIPContent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {}, Lcom/cyjh/http/c/c/h;->a()Lcom/cyjh/http/c/c/h;

    move-result-object v1

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->k:Ljava/lang/String;

    iget-object v7, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->l:Ljava/lang/String;

    new-instance v8, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;

    invoke-direct {v8, p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)V

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/cyjh/http/c/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/h$a;)V

    :cond_68
    return-void
.end method

.method private synthetic g()V
    .registers 1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f100103

    if-eq p1, v0, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f090114

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    return-void

    :cond_2d
    iget-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->m:Z

    if-eqz p1, :cond_72

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->m:Z

    sget-object p1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindStudioProject --> scriptCFGContent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",scriptUIPContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_72

    invoke-static {}, Lcom/cyjh/http/c/c/h;->a()Lcom/cyjh/http/c/c/h;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->l:Ljava/lang/String;

    new-instance v7, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;

    invoke-direct {v7, p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/cyjh/http/c/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/h$a;)V

    :cond_72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04002f

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->setContentView(I)V

    const p1, 0x7f1000ba

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const p1, 0x7f100103

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->e:Landroid/widget/TextView;

    const p1, 0x7f100102

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->f:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f09004f

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200df

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/a;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/studio/a;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)V

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "is_change"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->n:Z

    sget-object p1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "studioProjectNumber:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz p1, :cond_e0

    :try_start_82
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v2, 0x2761

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->h:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->i:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {p0, p1}, Lcom/cyjh/elfin/e/c/o;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->j:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {p0, p1}, Lcom/cyjh/elfin/e/c/o;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/cyjh/elfin/e/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->l:Ljava/lang/String;

    sget-object p1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initData --> scriptUIPContent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mScriptCFGContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_db} :catch_dc

    goto :goto_e0

    :catch_dc
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e0
    :goto_e0
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
