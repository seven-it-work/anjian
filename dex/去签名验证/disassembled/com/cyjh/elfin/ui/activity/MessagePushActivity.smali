.class public Lcom/cyjh/elfin/ui/activity/MessagePushActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/MessagePushActivity$b;,
        Lcom/cyjh/elfin/ui/activity/MessagePushActivity$a;
    }
.end annotation


# instance fields
.field private b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private b()V
    .registers 4

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a(Ljava/util/ArrayList;)Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;

    move-result-object v1

    const v2, 0x7f1000d0

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private c()V
    .registers 4

    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/MessagePushActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0900d6

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightTvText(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$b;

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/MessagePushActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$c;)V

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "red_dot_flag"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040027

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "msg_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->c:Ljava/util/ArrayList;

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v1, 0x3e9

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    const p1, 0x7f1000d1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f0200df

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/MessagePushActivity;B)V

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f0900d6

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f090071

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightTvText(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$b;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/MessagePushActivity;B)V

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$c;)V

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "red_dot_flag"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a(Ljava/util/ArrayList;)Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;

    move-result-object v0

    const v1, 0x7f1000d0

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
