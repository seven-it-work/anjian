.class public Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 2

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_left_back_arrow:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->a:Landroid/widget/ImageView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_title:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->b:Landroid/widget/TextView;

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_fl_replace_fragment:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_left_back_arrow:I

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->onBackPressed()V

    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->requestWindowFeature(I)Z

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->activity_img_select:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->setContentView(I)V

    invoke-static {}, Lcom/cyjh/common/g/a;->a()Lcom/cyjh/common/g/a;

    invoke-static {p0}, Lcom/cyjh/common/g/a;->a(Landroid/app/Activity;)V

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_left_back_arrow:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->a:Landroid/widget/ImageView;

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_title:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->b:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->b:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_select_title:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->b()Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    move-result-object p1

    const-string v0, "ImageSelectFragment"

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_fl_replace_fragment:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    const-string v0, "elfin"

    const-string v1, "ImageSelectActivity-- onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/common/g/a;->a()Lcom/cyjh/common/g/a;

    invoke-static {p0}, Lcom/cyjh/common/g/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
