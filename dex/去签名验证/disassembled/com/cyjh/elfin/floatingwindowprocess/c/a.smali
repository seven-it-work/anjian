.class public final Lcom/cyjh/elfin/floatingwindowprocess/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "FloatViewManager"

.field private static final e:Lcom/cyjh/elfin/floatingwindowprocess/c/a;


# instance fields
.field public a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

.field public b:Landroid/content/Context;

.field private d:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    invoke-direct {v0}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->e:Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->e:Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    return-void
.end method

.method private c()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    return-object v0
.end method

.method private d()V
    .registers 4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->d:Landroid/view/WindowManager;

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;-><init>(Landroid/content/Context;Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;)V

    iput-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->d:Landroid/view/WindowManager;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/base/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_4a

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c()V

    :cond_4a
    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setVisibility(I)V

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    :cond_16
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    if-nez v0, :cond_49

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->d:Landroid/view/WindowManager;

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;-><init>(Landroid/content/Context;Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;)V

    iput-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->d:Landroid/view/WindowManager;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/base/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4e

    :cond_49
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c()V

    :cond_4e
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 v1, 0x0

    :goto_62
    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setVisibility(I)V

    return-void

    :cond_66
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/16 v1, 0x8

    goto :goto_62
.end method
