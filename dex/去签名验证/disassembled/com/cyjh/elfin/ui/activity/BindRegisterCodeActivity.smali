.class public Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;
.super Lcom/cyjh/common/base/activity/BaseModelActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/common/base/activity/BaseModelActivity<",
        "Lcom/cyjh/elfin/ui/model/RegCodeModel;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final d:I = 0x3eb


# instance fields
.field private e:Ljava/lang/String;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private final p:Landroid/os/Handler;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V
    .registers 5

    iget p1, p1, Lcom/cyjh/http/bean/response/QueryRegCodeInfo;->IsSuperposeConfirm:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_39

    invoke-static {}, Lcom/cyjh/elfin/ui/a/b;->a()Lcom/cyjh/elfin/ui/a/b;

    const p1, 0x7f040054

    invoke-static {p0, p1}, Lcom/cyjh/elfin/ui/a/b;->a(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f100158

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100159

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$4;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_39
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V
    .registers 5

    iget p1, p1, Lcom/cyjh/http/bean/response/QueryRegCodeInfo;->IsSuperposeConfirm:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_39

    invoke-static {}, Lcom/cyjh/elfin/ui/a/b;->a()Lcom/cyjh/elfin/ui/a/b;

    const p1, 0x7f040054

    invoke-static {p0, p1}, Lcom/cyjh/elfin/ui/a/b;->a(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f100158

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100159

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$4;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_39
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const-string p1, "android"

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Landroid/arch/lifecycle/AndroidViewModel;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const-string p1, "android"

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Landroid/arch/lifecycle/AndroidViewModel;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    return-object p0
.end method

.method static synthetic d(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->q:Z

    return v0
.end method

.method private f()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->c:[Ljava/lang/String;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g()V

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g()V

    return-void
.end method

.method private g()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private h()V
    .registers 10

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_86

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->i:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->j:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->k:Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o:Landroid/widget/TextView;

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->l:Landroid/view/View;

    aput-object v6, v2, v1

    iget-object v6, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->m:Landroid/view/View;

    aput-object v6, v2, v3

    iget-object v6, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->n:Landroid/view/View;

    aput-object v6, v2, v4

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v4, 0x0

    :goto_46
    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v6

    iget-object v6, v6, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_85

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v6

    iget-object v6, v6, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;

    aget-object v7, v0, v4

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v6, Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;->ButtonName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v8

    iget-object v8, v8, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ge v5, v8, :cond_7a

    aget-object v8, v2, v4

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7a
    new-instance v8, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;

    invoke-direct {v8, p0, v6}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_85
    return-void

    :cond_86
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/cyjh/elfin/ui/model/RegCodeModel;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    return-object v0
.end method

.method protected final c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method protected final d()V
    .registers 10

    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090049

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const v2, 0x7f0200df

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const v2, 0x7f090125

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightTvText(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const v3, 0x7f1000d6

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->f:Landroid/widget/EditText;

    const v3, 0x7f1000d9

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g:Landroid/widget/TextView;

    const v3, 0x7f1000da

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->h:Landroid/widget/LinearLayout;

    const v3, 0x7f1000db

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->i:Landroid/widget/TextView;

    const v3, 0x7f1000dd

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->j:Landroid/widget/TextView;

    const v3, 0x7f1000df

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->k:Landroid/widget/TextView;

    const v3, 0x7f1000dc

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->l:Landroid/view/View;

    const v3, 0x7f1000de

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->m:Landroid/view/View;

    const v3, 0x7f1000e0

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->n:Landroid/view/View;

    const v3, 0x7f1000e1

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o:Landroid/widget/TextView;

    const v3, 0x7f1000d7

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->f:Landroid/widget/EditText;

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1000d8

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$5;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$5;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    invoke-virtual {v0, v3}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$c;)V

    new-instance v3, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$a;

    invoke-direct {v3, p0, v2}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;B)V

    invoke-virtual {v0, v3}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    if-eqz v0, :cond_146

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_146

    new-array v0, v1, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->i:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->j:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->k:Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o:Landroid/widget/TextView;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-array v1, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->l:Landroid/view/View;

    aput-object v6, v1, v2

    iget-object v6, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->m:Landroid/view/View;

    aput-object v6, v1, v3

    iget-object v6, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->n:Landroid/view/View;

    aput-object v6, v1, v4

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v4, 0x0

    :goto_106
    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v6

    iget-object v6, v6, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_145

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v6

    iget-object v6, v6, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;

    aget-object v7, v0, v4

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v6, Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;->ButtonName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v8

    iget-object v8, v8, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ge v5, v8, :cond_13a

    aget-object v8, v1, v4

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13a
    new-instance v8, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;

    invoke-direct {v8, p0, v6}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_106

    :cond_145
    return-void

    :cond_146
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected final e()I
    .registers 2

    const v0, 0x7f040029

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_37

    const/4 p1, -0x1

    if-ne p2, p1, :cond_37

    if-eqz p3, :cond_37

    const-string p1, "SWEEP_RESULT_BACK"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->f:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object p2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Ljava/lang/String;)V

    return-void

    :cond_2d
    const p1, 0x7f090124

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_8e

    return-void

    :pswitch_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_26

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_22

    sget-object p1, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->c:[Ljava/lang/String;

    const/16 v0, 0x3e8

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_22
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g()V

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g()V

    return-void

    :pswitch_2a
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0900be

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void

    :cond_4d
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6a

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_6a
    iget-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->q:Z

    if-eqz p1, :cond_6f

    return-void

    :cond_6f
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->q:Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->p:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->p:Landroid/os/Handler;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$6;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$6;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_8e
    .packed-switch 0x7f1000d7
        :pswitch_2a
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_13

    array-length p1, p3

    if-lez p1, :cond_10

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->g()V

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->finish()V

    :cond_13
    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
