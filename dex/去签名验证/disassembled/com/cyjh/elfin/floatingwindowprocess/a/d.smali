.class public Lcom/cyjh/elfin/floatingwindowprocess/a/d;
.super Lcom/cyjh/elfin/ui/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final K:I = 0x18

.field public static final a:Ljava/lang/String; = "d"

.field private static final m:I = 0x13


# instance fields
.field public b:Landroid/content/Context;

.field c:Z

.field private e:Landroid/widget/Switch;

.field private f:Landroid/widget/Switch;

.field private g:Landroid/widget/Switch;

.field private h:Landroid/widget/Switch;

.field private i:Landroid/widget/Switch;

.field private j:Landroid/widget/Switch;

.field private k:Landroid/widget/Switch;

.field private l:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/AppContext;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->d:Lcom/cyjh/elfin/base/AppContext;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1b

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    return-void

    :cond_1b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_34

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_34

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_43

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    goto :goto_17

    :cond_34
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_43

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_43
    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/floatingwindowprocess/a/d;)Landroid/widget/Switch;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    return-object p0
.end method

.method private a()V
    .registers 7

    const v0, 0x7f1001eb

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->e:Landroid/widget/Switch;

    const v0, 0x7f1001e8

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->f:Landroid/widget/Switch;

    const v0, 0x7f1001ea

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->g:Landroid/widget/Switch;

    const v0, 0x7f1001e9

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->h:Landroid/widget/Switch;

    const v0, 0x7f1001ec

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->i:Landroid/widget/Switch;

    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->k:Landroid/widget/Switch;

    const v0, 0x7f1000f4

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f1001ed

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f1000f8

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f1000fa

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f1001e7

    invoke-virtual {p0, v4}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->e:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->f:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->g:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->h:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->i:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->k:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/a/d;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    goto :goto_cc

    :cond_c2
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_cc
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->e:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->f:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->g:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->h:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->i:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->k:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "sp_key_switch_setting_open_run_script"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private b()V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->e:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->f:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->g:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->h:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->i:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->k:Landroid/widget/Switch;

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

.method private c()V
    .registers 4

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/a/d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private d()V
    .registers 5

    invoke-static {}, Lcom/cyjh/common/util/m;->a()Lcom/cyjh/common/util/m;

    invoke-static {}, Lcom/cyjh/common/util/m;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void

    :cond_23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->c:Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

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

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->a:Ljava/lang/String;

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

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/a/d$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/d;)V

    iput-object v1, v0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/cyjh/http/c/b/a;->a(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void
.end method

.method private e()V
    .registers 5

    new-instance v0, Lcom/cyjh/common/d/b;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cyjh/common/d/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cyjh/common/d/b;->show()V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object v1

    const-string v2, "http://res2.mobileanjian.com/Resource/ocr2/Android.zip"

    new-instance v3, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;

    invoke-direct {v3, p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/d;Lcom/cyjh/common/d/b;)V

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/http/a/d;->a(Ljava/lang/String;Lcom/cyjh/http/a/d$c;)V

    return-void
.end method

.method private f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->c:Z

    return v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/elfin/ui/a/a;->dismiss()V

    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/c/b/a;->d()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_ba

    const/4 v0, 0x1

    const v1, 0x7f090144

    packed-switch p1, :pswitch_data_c2

    return-void

    :pswitch_f
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1d
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_2b
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_39
    if-nez p2, :cond_4e

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->f:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->d:Lcom/cyjh/elfin/base/AppContext;

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/base/AppContext;->a(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->h:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_4e
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d()V

    return-void

    :pswitch_65
    if-nez p2, :cond_7a

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->h:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_7a

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->d:Lcom/cyjh/elfin/base/AppContext;

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/base/AppContext;->a(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->f:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_7a
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_88
    if-eqz p2, :cond_b9

    new-instance p1, Lcom/cyjh/common/d/b;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/cyjh/common/d/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/cyjh/common/d/b;->show()V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object p2

    const-string v0, "http://res2.mobileanjian.com/Resource/ocr2/Android.zip"

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/d;Lcom/cyjh/common/d/b;)V

    invoke-virtual {p2, v0, v1}, Lcom/cyjh/http/a/d;->a(Ljava/lang/String;Lcom/cyjh/http/a/d$c;)V

    return-void

    :pswitch_a5
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "sp_key_switch_setting_open_run_script"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Z)V

    :cond_b9
    return-void

    :pswitch_data_ba
    .packed-switch 0x7f1000f5
        :pswitch_a5
        :pswitch_88
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x7f1001e8
        :pswitch_65
        :pswitch_39
        :pswitch_2b
        :pswitch_1d
        :pswitch_f
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1000f8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_de

    const v0, 0x7f1000fa

    if-eq p1, v0, :cond_9b

    const v0, 0x7f1001e7

    if-eq p1, v0, :cond_89

    const v0, 0x7f1001ed

    if-eq p1, v0, :cond_1b

    return-void

    :cond_1b
    new-instance p1, Lcom/cyjh/common/util/o$a;

    const-string v0, ".log"

    invoke-direct {p1, v0}, Lcom/cyjh/common/util/o$a;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->d:Lcom/cyjh/elfin/base/AppContext;

    iget-object v3, v3, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_80

    array-length v0, p1

    if-nez v0, :cond_35

    goto :goto_80

    :cond_35
    new-instance v0, Lcom/cyjh/elfin/e/c/g;

    invoke-direct {v0}, Lcom/cyjh/elfin/e/c/g;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    aget-object p1, p1, v2

    new-instance v0, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/entity/ScriptLog;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cyjh/common/util/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/entity/ScriptLog;->setFile(Ljava/io/File;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.FlagLastLog"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.cyjh.elfin.ui.activity.ScriptLogActivity.ScriptLog"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-boolean v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->c:Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->dismiss()V

    return-void

    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->d:Lcom/cyjh/elfin/base/AppContext;

    const v0, 0x7f090029

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/base/AppContext;->a(I)V

    return-void

    :cond_89
    iput-boolean v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->c:Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->dismiss()V

    new-instance p1, Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->show()V

    return-void

    :cond_9b
    iput-boolean v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->c:Z

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->b:Landroid/content/Context;

    if-eqz p1, :cond_ae

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->b:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_ae

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->b:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_ae
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/cyjh/mq/sdk/MqBridge;->exit()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_dd

    const-string v0, "com.cyjh.elfin:download_server"

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_dd
    return-void

    :cond_de
    invoke-static {}, Lcom/cyjh/common/util/m;->a()Lcom/cyjh/common/util/m;

    invoke-static {}, Lcom/cyjh/common/util/m;->b()Z

    move-result p1

    if-nez p1, :cond_168

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_100

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0900dc

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void

    :cond_100
    iput-boolean v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->c:Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "script.info"

    invoke-static {p1, v0}, Lcom/cyjh/elfin/e/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    sget-object p1, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "updateVersionRequest --> 1 ScriptId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",DeviceName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ScriptVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/d;)V

    iput-object v0, p1, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/cyjh/http/c/b/a;->a(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    :cond_168
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/cyjh/elfin/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04008c

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->a(F)V

    const p1, 0x3f666666    # 0.9f

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->a(FF)V

    const p1, 0x7f1001eb

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->e:Landroid/widget/Switch;

    const p1, 0x7f1001e8

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->f:Landroid/widget/Switch;

    const p1, 0x7f1001ea

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->g:Landroid/widget/Switch;

    const p1, 0x7f1001e9

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->h:Landroid/widget/Switch;

    const p1, 0x7f1001ec

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->i:Landroid/widget/Switch;

    const p1, 0x7f1000f6

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    const p1, 0x7f1000f5

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->k:Landroid/widget/Switch;

    const p1, 0x7f1000f4

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->l:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->l:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f1001ed

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v1, 0x7f1000f8

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f1000fa

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f1001e7

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->e:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->f:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->g:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->h:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->i:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->k:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/http/a/d;->b()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_da

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setClickable(Z)V

    goto :goto_e4

    :cond_da
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->j:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_e4
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->e:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->f:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->g:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->h:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->i:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->k:Landroid/widget/Switch;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "sp_key_switch_setting_open_run_script"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
