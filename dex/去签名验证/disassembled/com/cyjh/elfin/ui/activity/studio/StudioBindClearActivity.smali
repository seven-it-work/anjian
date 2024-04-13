.class public Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static b:Ljava/lang/String; = "StudioBindClearActivity"

.field public static c:Ljava/lang/String; = "studio_project_key"


# instance fields
.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/FrameLayout;

.field private k:Lcom/cyjh/elfin/ui/view/customview/TitleView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->g:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->h:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .registers 3

    const v0, 0x7f1000ba

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const v0, 0x7f100104

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f100105

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->f:Landroid/widget/TextView;

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/b;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/studio/b;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .registers 4

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->g:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->g:Z

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/cyjh/http/c/c/h;->a()Lcom/cyjh/http/c/c/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/cyjh/http/c/c/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cyjh/http/c/c/h$a;)V

    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090194

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    :cond_2a
    return-void
.end method

.method private synthetic g()V
    .registers 1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_3a

    return-void

    :pswitch_8
    invoke-static {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->finish()V

    return-void

    :pswitch_f
    iget-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->g:Z

    if-eqz p1, :cond_39

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->g:Z

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/cyjh/http/c/c/h;->a()Lcom/cyjh/http/c/c/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/cyjh/http/c/c/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cyjh/http/c/c/h$a;)V

    return-void

    :cond_2f
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f090194

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    :cond_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x7f100105
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040030

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->i:Ljava/lang/String;

    const p1, 0x7f1000ba

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const p1, 0x7f100104

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->d:Landroid/widget/TextView;

    const p1, 0x7f100105

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->e:Landroid/widget/TextView;

    const p1, 0x7f100106

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->f:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f09004f

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f0200df

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/studio/b;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/studio/b;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)V

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->k:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method
