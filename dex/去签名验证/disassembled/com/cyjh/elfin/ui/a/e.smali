.class public final Lcom/cyjh/elfin/ui/a/e;
.super Lcom/cyjh/elfin/ui/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/a/e$a;
    }
.end annotation


# static fields
.field public static final b:I = 0x64

.field public static final c:I = 0x65

.field public static final e:Ljava/lang/String; = "first_open_float_permission"


# instance fields
.field a:Lcom/cyjh/elfin/ui/a/e$a;

.field private f:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/elfin/ui/a/e$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cyjh/elfin/ui/a/e;->a:Lcom/cyjh/elfin/ui/a/e$a;

    return-void
.end method

.method private a()V
    .registers 2

    const v0, 0x7f10014a

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/e;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/e;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/cyjh/elfin/ui/a/e$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/e;->a:Lcom/cyjh/elfin/ui/a/e$a;

    return-void
.end method

.method private b()V
    .registers 7

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private c()V
    .registers 2

    new-instance v0, Lcom/cyjh/elfin/ui/a/f;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/a/f;-><init>(Lcom/cyjh/elfin/ui/a/e;)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/e;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private d()V
    .registers 7

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_27

    :goto_10
    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    :goto_12
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package"

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_58

    :cond_27
    const/16 v4, 0x17

    if-lt v2, v4, :cond_2c

    goto :goto_10

    :cond_2c
    const/16 v4, 0x9

    const/high16 v5, 0x10000000

    if-lt v2, v4, :cond_38

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    goto :goto_12

    :cond_38
    const/16 v3, 0x8

    if-gt v2, v3, :cond_58

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings.ApplicationPkgName"

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_58
    :goto_58
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/e;->a:Lcom/cyjh/elfin/ui/a/e$a;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/e;->a:Lcom/cyjh/elfin/ui/a/e$a;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/cyjh/elfin/ui/a/e$a;->a(I)V

    :cond_66
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "first_open_float_permission"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->dismiss()V

    return-void
.end method

.method private e()Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_23

    :goto_c
    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    :goto_e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0

    :cond_23
    const/16 v3, 0x17

    if-lt v1, v3, :cond_28

    goto :goto_c

    :cond_28
    const/16 v3, 0x9

    const/high16 v4, 0x10000000

    if-lt v1, v3, :cond_34

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    goto :goto_e

    :cond_34
    const/16 v2, 0x8

    if-gt v1, v2, :cond_54

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings.ApplicationPkgName"

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_54
    return-object v0
.end method

.method private synthetic f()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/e;->a:Lcom/cyjh/elfin/ui/a/e$a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/e;->a:Lcom/cyjh/elfin/ui/a/e$a;

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Lcom/cyjh/elfin/ui/a/e$a;->a(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10014a

    if-eq p1, v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-lt v1, v2, :cond_31

    :goto_1a
    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_62

    :cond_31
    const/16 v2, 0x17

    if-lt v1, v2, :cond_36

    goto :goto_1a

    :cond_36
    const/16 v2, 0x9

    const/high16 v4, 0x10000000

    if-lt v1, v2, :cond_42

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    goto :goto_1c

    :cond_42
    const/16 v2, 0x8

    if-gt v1, v2, :cond_62

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings.ApplicationPkgName"

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_62
    :goto_62
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/e;->a:Lcom/cyjh/elfin/ui/a/e$a;

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/e;->a:Lcom/cyjh/elfin/ui/a/e$a;

    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/cyjh/elfin/ui/a/e$a;->a(I)V

    :cond_70
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "first_open_float_permission"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->dismiss()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/cyjh/elfin/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040051

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/e;->setContentView(I)V

    const p1, 0x7f10014a

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/e;->f:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/e;->f:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double v1, p1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p1, -0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/e;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance p1, Lcom/cyjh/elfin/ui/a/f;

    invoke-direct {p1, p0}, Lcom/cyjh/elfin/ui/a/f;-><init>(Lcom/cyjh/elfin/ui/a/e;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/e;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
