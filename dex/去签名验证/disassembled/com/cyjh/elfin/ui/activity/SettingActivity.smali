.class public Lcom/cyjh/elfin/ui/activity/SettingActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/SettingActivity$b;,
        Lcom/cyjh/elfin/ui/activity/SettingActivity$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "SettingActivity"

.field public static final c:I = 0xbb8

.field public static final d:I = 0x3e8

.field private static final p:I = 0x1


# instance fields
.field private e:Landroid/widget/Switch;

.field private f:Landroid/widget/Switch;

.field private g:Landroid/widget/Switch;

.field private h:Landroid/widget/Switch;

.field private i:Landroid/widget/Switch;

.field private j:Landroid/widget/Switch;

.field private k:Landroid/widget/Switch;

.field private l:Landroid/widget/Switch;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lcom/cyjh/elfin/ui/activity/SettingActivity$b;

.field private o:Lcom/cyjh/feedback/lib/b/a;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Landroid/widget/Switch;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    new-instance v1, Lcom/elf/studio/enity/IMResultInfo;

    invoke-direct {v1}, Lcom/elf/studio/enity/IMResultInfo;-><init>()V

    iput-object p1, v1, Lcom/elf/studio/enity/IMResultInfo;->IMToken:Ljava/lang/String;

    const p1, 0x7f090097

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {}, Lcom/elfin/engin/d;->a()Z

    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Lcom/cyjh/feedback/lib/b/a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o:Lcom/cyjh/feedback/lib/b/a;

    return-object p0
.end method

.method private b()V
    .registers 7

    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    const v2, 0x7f0200df

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    new-instance v2, Lcom/cyjh/elfin/ui/activity/SettingActivity$a;

    invoke-direct {v2, p0, v1}, Lcom/cyjh/elfin/ui/activity/SettingActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;B)V

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const v0, 0x7f1000f2

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->e:Landroid/widget/Switch;

    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->g:Landroid/widget/Switch;

    const v0, 0x7f1000f1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->h:Landroid/widget/Switch;

    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->j:Landroid/widget/Switch;

    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    const v0, 0x7f1000f7

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->q:Landroid/widget/Button;

    const v0, 0x7f1000f8

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->r:Landroid/widget/Button;

    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->s:Landroid/widget/Button;

    const v0, 0x7f1000f9

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->t:Landroid/widget/Button;

    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->l:Landroid/widget/Switch;

    const v0, 0x7f1000f4

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f1000ea

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->w:Landroid/widget/LinearLayout;

    const v0, 0x7f1000ec

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->x:Landroid/widget/LinearLayout;

    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f1000eb

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->v:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->c()V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/a/d;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    goto :goto_10c

    :cond_102
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_10c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->e:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->h:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->j:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->l:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "sp_key_switch_setting_open_run_script"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->e:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->g:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->h:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->j:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->l:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->x:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->u:Landroid/widget/TextView;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const v1, 0x7f0900e9

    :goto_11
    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_16
    const v1, 0x7f090050

    goto :goto_11

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->e:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->g:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->h:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->j:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->l:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .registers 4

    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    const v2, 0x7f0200df

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    new-instance v2, Lcom/cyjh/elfin/ui/activity/SettingActivity$a;

    invoke-direct {v2, p0, v1}, Lcom/cyjh/elfin/ui/activity/SettingActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;B)V

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    return-void
.end method

.method private f()V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->e:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->h:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->j:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->l:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "sp_key_switch_setting_open_run_script"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private g()V
    .registers 4

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/a/d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private h()V
    .registers 5

    new-instance v0, Lcom/cyjh/common/d/b;

    invoke-direct {v0, p0}, Lcom/cyjh/common/d/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cyjh/common/d/b;->show()V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object v1

    const-string v2, "http://res2.mobileanjian.com/Resource/ocr2/Android.zip"

    new-instance v3, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;Lcom/cyjh/common/d/b;)V

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/http/a/d;->a(Ljava/lang/String;Lcom/cyjh/http/a/d$c;)V

    return-void
.end method

.method private i()V
    .registers 5

    invoke-static {}, Lcom/cyjh/common/util/m;->a()Lcom/cyjh/common/util/m;

    invoke-static {}, Lcom/cyjh/common/util/m;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-static {p0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void

    :cond_1b
    const-string v0, "script.info"

    invoke-static {p0, v0}, Lcom/cyjh/elfin/e/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    sget-object v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateVersionRequest --> 1 ScriptId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",DeviceName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ScriptVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V

    iput-object v1, v0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/cyjh/http/c/b/a;->a(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/common/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_7

    return-void

    :cond_7
    const/4 p1, -0x1

    if-ne p2, p1, :cond_23

    new-instance p1, Lcom/cyjh/feedback/lib/b/a;

    invoke-direct {p1, p0}, Lcom/cyjh/feedback/lib/b/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o:Lcom/cyjh/feedback/lib/b/a;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o:Lcom/cyjh/feedback/lib/b/a;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/b/a;->show()V

    new-instance p1, Lcom/cyjh/elfin/ui/activity/SettingActivity$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/cyjh/elfin/ui/activity/SettingActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;B)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->n:Lcom/cyjh/elfin/ui/activity/SettingActivity$b;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->n:Lcom/cyjh/elfin/ui/activity/SettingActivity$b;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity$b;->start()Landroid/os/CountDownTimer;

    :cond_23
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f090144

    packed-switch p1, :pswitch_data_c0

    :pswitch_b
    return-void

    :pswitch_c
    if-eqz p2, :cond_be

    new-instance p1, Lcom/cyjh/common/d/b;

    invoke-direct {p1, p0}, Lcom/cyjh/common/d/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/cyjh/common/d/b;->show()V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object p2

    const-string v0, "http://res2.mobileanjian.com/Resource/ocr2/Android.zip"

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;Lcom/cyjh/common/d/b;)V

    invoke-virtual {p2, v0, v1}, Lcom/cyjh/http/a/d;->a(Ljava/lang/String;Lcom/cyjh/http/a/d$c;)V

    return-void

    :pswitch_25
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "sp_key_switch_setting_open_run_script"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p0, p2}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Z)V

    return-void

    :pswitch_36
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_44
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_52
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_60
    if-nez p2, :cond_77

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_77

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/base/AppContext;->a(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_77
    const/16 p1, 0x65

    invoke-static {p1}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_8a
    if-eqz p2, :cond_93

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->e()V

    return-void

    :cond_93
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f()V

    return-void

    :pswitch_9a
    if-nez p2, :cond_b1

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_b1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/base/AppContext;->a(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_b1
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_be
    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x7f1000ee
        :pswitch_9a
        :pswitch_8a
        :pswitch_60
        :pswitch_52
        :pswitch_44
        :pswitch_36
        :pswitch_b
        :pswitch_25
        :pswitch_c
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1000ea

    if-eq p1, v0, :cond_148

    const v0, 0x7f1000ec

    if-eq p1, v0, :cond_12e

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_162

    return-void

    :pswitch_13
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->stopService(Landroid/content/Intent;)Z

    invoke-static {p0}, Lcom/elfin/engin/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_36

    const-string v0, "com.cyjh.elfin:download_server"

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_36
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void

    :pswitch_3e
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/entity/ParamsWrap;->feedbackTips:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_58
    invoke-static {}, Lcom/cyjh/common/util/m;->a()Lcom/cyjh/common/util/m;

    invoke-static {}, Lcom/cyjh/common/util/m;->b()Z

    move-result p1

    if-nez p1, :cond_cc

    invoke-static {p0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_72

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0900dc

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void

    :cond_72
    const-string p1, "script.info"

    invoke-static {p0, p1}, Lcom/cyjh/elfin/e/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    sget-object p1, Lcom/cyjh/elfin/ui/activity/SettingActivity;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateVersionRequest --> 1 ScriptId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",DeviceName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ScriptVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object p1

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V

    iput-object v1, p1, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    invoke-virtual {p1, v0, p0, v2}, Lcom/cyjh/http/c/b/a;->a(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    :cond_cc
    return-void

    :pswitch_cd
    new-instance p1, Lcom/cyjh/common/util/o$a;

    const-string v1, ".log"

    invoke-direct {p1, v1}, Lcom/cyjh/common/util/o$a;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_123

    array-length v1, p1

    if-nez v1, :cond_e9

    goto :goto_123

    :cond_e9
    new-instance v1, Lcom/cyjh/elfin/e/c/g;

    invoke-direct {v1}, Lcom/cyjh/elfin/e/c/g;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    aget-object p1, p1, v1

    new-instance v1, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-direct {v1}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/entity/ScriptLog;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cyjh/common/util/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/cyjh/elfin/entity/ScriptLog;->setFile(Ljava/io/File;)V

    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.FlagLastLog"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.cyjh.elfin.ui.activity.ScriptLogActivity.ScriptLog"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_123
    :goto_123
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f090029

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/base/AppContext;->a(I)V

    return-void

    :cond_12e
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13e

    invoke-static {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->a(Landroid/content/Context;)V

    return-void

    :cond_13e
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_148
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "device_name"

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_162
    .packed-switch 0x7f1000f7
        :pswitch_cd
        :pswitch_58
        :pswitch_3e
        :pswitch_13
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04002c

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->setContentView(I)V

    const p1, 0x7f1000e9

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f090141

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    const v1, 0x7f0200df

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SettingActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;B)V

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const p1, 0x7f1000f2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->e:Landroid/widget/Switch;

    const p1, 0x7f1000ee

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    const p1, 0x7f1000ef

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->g:Landroid/widget/Switch;

    const p1, 0x7f1000f1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->h:Landroid/widget/Switch;

    const p1, 0x7f1000f0

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    const p1, 0x7f1000f3

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->j:Landroid/widget/Switch;

    const p1, 0x7f1000f6

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    const p1, 0x7f1000f7

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->q:Landroid/widget/Button;

    const p1, 0x7f1000f8

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->r:Landroid/widget/Button;

    const p1, 0x7f1000fa

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->s:Landroid/widget/Button;

    const p1, 0x7f1000f9

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->t:Landroid/widget/Button;

    const p1, 0x7f1000f5

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->l:Landroid/widget/Switch;

    const p1, 0x7f1000f4

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->m:Landroid/widget/LinearLayout;

    const p1, 0x7f1000ea

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->w:Landroid/widget/LinearLayout;

    const p1, 0x7f1000ec

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->x:Landroid/widget/LinearLayout;

    const p1, 0x7f1000ed

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->u:Landroid/widget/TextView;

    const p1, 0x7f1000eb

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->v:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->c()V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/http/a/d;->b()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_10b

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setClickable(Z)V

    goto :goto_115

    :cond_10b
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->k:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_115
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->e:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->h:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->j:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->l:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "sp_key_switch_setting_open_run_script"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->e:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->f:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->g:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->h:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->i:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->j:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->l:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->q:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->r:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->s:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->t:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->x:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->n:Lcom/cyjh/elfin/ui/activity/SettingActivity$b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->n:Lcom/cyjh/elfin/ui/activity/SettingActivity$b;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity$b;->cancel()V

    :cond_c
    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/c/b/a;->d()V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onPause()V

    const-class v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onReceiveStudioProjectStatusEvent(Lcom/elf/studio/a/b;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget v0, p1, Lcom/elf/studio/a/b;->e:I

    packed-switch v0, :pswitch_data_46

    return-void

    :pswitch_6
    iget-object p1, p1, Lcom/elf/studio/a/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_e
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->c()V

    return-void

    :pswitch_12
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->c()V

    iget-object p1, p1, Lcom/elf/studio/a/b;->f:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    new-instance v1, Lcom/elf/studio/enity/IMResultInfo;

    invoke-direct {v1}, Lcom/elf/studio/enity/IMResultInfo;-><init>()V

    iput-object p1, v1, Lcom/elf/studio/enity/IMResultInfo;->IMToken:Ljava/lang/String;

    const p1, 0x7f090097

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {}, Lcom/elfin/engin/d;->a()Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->u:Landroid/widget/TextView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SettingActivity$3;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity$3;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x2711
        :pswitch_12
        :pswitch_12
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onResume()V

    const-class v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
