.class public Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;
.super Lcom/cyjh/common/base/activity/BaseModelActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/common/base/activity/BaseModelActivity<",
        "Lcom/cyjh/elfin/ui/model/UnRegCodeModel;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final c:I = 0x3ea

.field private static final d:I = 0x2


# instance fields
.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/EditText;

.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->i:Z

    return v0
.end method

.method private f()V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->unbindDeductHours:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090193

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#FF4948"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/cyjh/elfin/ui/model/UnRegCodeModel;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;

    return-object v0
.end method

.method protected final c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->c:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public final d()V
    .registers 6

    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090125

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    new-instance v1, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f100116

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->k:Landroid/widget/Button;

    const v0, 0x7f100115

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_61
    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->unbindDeductHours:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090193

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#FF4948"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final e()I
    .registers 2

    const v0, 0x7f040034

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100114

    if-eq v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0900be

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void

    :cond_2d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4e

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/base/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_4e
    iget-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->i:Z

    if-eqz p1, :cond_53

    return-void

    :cond_53
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->i:Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->a:Lcom/cyjh/http/c/c/p;

    if-nez v1, :cond_67

    new-instance v1, Lcom/cyjh/http/c/c/p;

    invoke-direct {v1, p1}, Lcom/cyjh/http/c/c/p;-><init>(Lcom/cyjh/http/c/d/i;)V

    iput-object v1, p1, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->a:Lcom/cyjh/http/c/c/p;

    :cond_67
    iput-object v0, p1, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->a:Lcom/cyjh/http/c/c/p;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/http/c/c/p;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->e:Landroid/os/Handler;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$2;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->e:Landroid/os/Handler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
