.class public Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$b;,
        Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$a;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String; = "EditDeviceNameActivity"

.field public static final c:Ljava/lang/String; = "device_name"


# instance fields
.field private d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/os/Handler;

.field private g:Landroid/widget/ImageView;


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

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->f:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "device_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/cyjh/http/c/c/g;->a()Lcom/cyjh/http/c/c/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v1, v0, v3}, Lcom/cyjh/http/c/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/g$a;)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    return-object p0
.end method

.method private b()V
    .registers 3

    const v0, 0x7f1000ba

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->g:Landroid/widget/ImageView;

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightTvText(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2c
    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v2, 0x7f0200df

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v2, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$a;

    invoke-direct {v2, p0, v1}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;B)V

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v2, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$b;

    invoke-direct {v2, p0, v1}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;B)V

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$c;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    return-void
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/cyjh/http/c/c/g;->a()Lcom/cyjh/http/c/c/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v1, v0, v3}, Lcom/cyjh/http/c/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/g$a;)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1000bc

    if-eq p1, v0, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->e:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04001e

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->setContentView(I)V

    const p1, 0x7f1000ba

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const p1, 0x7f1000bb

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->e:Landroid/widget/EditText;

    const p1, 0x7f1000bc

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->g:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090094

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200df

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;B)V

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;B)V

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$c;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f09012c

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightTvText(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->d:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_8a
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->f:Landroid/os/Handler;

    return-void
.end method
