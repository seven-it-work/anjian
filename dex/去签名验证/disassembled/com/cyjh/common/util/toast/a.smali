.class public final Lcom/cyjh/common/util/toast/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-eqz p0, :cond_2f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2f

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_16

    check-cast p0, Landroid/app/Activity;

    goto :goto_30

    :cond_16
    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1e

    move-object p0, v2

    goto :goto_30

    :cond_1e
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2f
    move-object p0, v0

    :goto_30
    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_37

    return-object v0

    :cond_37
    return-object p0
.end method

.method private static a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_8
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_8

    return-object v1

    :cond_8
    if-nez p1, :cond_b

    return-object v1

    :cond_b
    array-length v0, p1

    if-gtz v0, :cond_f

    return-object v1

    :cond_f
    new-array v1, v0, [Landroid/support/v4/util/Pair;

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_25

    aget-object v3, p1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_25
    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;II)Landroid/os/Bundle;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/Fragment;II)Landroid/os/Bundle;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_3a

    :cond_2f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object p0

    :cond_3a
    :goto_3a
    const-string p0, ""

    return-object p0
.end method

.method private static a()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method private static a(II)V
    .registers 4
    .param p0    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_a

    :cond_1d
    return-void
.end method

.method private static a(Landroid/app/Activity;II)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;II)V
    .registers 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {p0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_10

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_10
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;III)V
    .registers 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {p0, p3, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ge p1, p2, :cond_10

    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_10
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static varargs a(Landroid/app/Activity;Landroid/content/Intent;I[Landroid/view/View;)V
    .registers 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p1, p0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p0, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method private static varargs a(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/cyjh/common/util/toast/q$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0, p0, p1}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/Class;)V
    .registers 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/Class;I)V
    .registers 9
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/Class;II)V
    .registers 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_19

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_19
    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/Class;III)V
    .registers 11
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p3, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ge p1, p2, :cond_1b

    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1b
    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 10
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static varargs a(Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 10
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static varargs a(Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .registers 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {p0, p3, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ge p1, p2, :cond_11

    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_11
    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static varargs a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .registers 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;[Landroid/content/Intent;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/cyjh/common/util/toast/a;->a([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;[Landroid/content/Intent;II)V
    .registers 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {p0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/cyjh/common/util/toast/a;->a([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_10

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_10
    return-void
.end method

.method private static a(Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p0, p2}, Lcom/cyjh/common/util/toast/a;->a([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v0, p0, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, p2, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I)V
    .registers 10
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;II)V
    .registers 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, p0, v0, p2, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ge p0, p2, :cond_18

    invoke-virtual {p1, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_18
    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;III)V
    .registers 12
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p4, p5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ge p0, p2, :cond_1b

    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1b
    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 11
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static varargs a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 11
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, v0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static varargs a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p1, p0, v0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {p1, p4, p5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ge p0, p2, :cond_10

    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_10
    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {p1, p5, p6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ge p0, p2, :cond_15

    invoke-virtual {p1, p5, p6}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_15
    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 12
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static varargs a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .registers 12
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p0, p2, p3, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static varargs a(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p4

    invoke-static {p1, p0, p2, p3, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;Ljava/lang/Class;I)V
    .registers 11
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;Ljava/lang/Class;III)V
    .registers 13
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p4, p5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 12
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static varargs a(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 12
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {p1, p5, p6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 12
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static varargs a(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .registers 12
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, p1, v2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/Class;II)V
    .registers 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, p0, v1, p1, v2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x10

    if-ge p0, p1, :cond_22

    instance-of p0, v0, Landroid/app/Activity;

    if-eqz p0, :cond_22

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_22
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, v1, p1, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x10

    if-ge p0, p1, :cond_1a

    instance-of p0, v0, Landroid/app/Activity;

    if-eqz p0, :cond_1a

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1a
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 4
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;III)V
    .registers 5
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {p0, p3, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;II)Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p1, p0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static varargs a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I[Landroid/view/View;)V
    .registers 4
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p1, p0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/support/v4/app/Fragment;Ljava/lang/Class;I)V
    .registers 10
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/support/v4/app/Fragment;Ljava/lang/Class;III)V
    .registers 12
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p3, p4}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Landroid/support/v4/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 11
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static varargs a(Landroid/support/v4/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 11
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/cyjh/common/util/toast/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static a(Lcom/cyjh/common/util/toast/q$a;)V
    .registers 1
    .param p0    # Lcom/cyjh/common/util/toast/q$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->a(Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private static a(Ljava/lang/Class;)V
    .registers 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0, v2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Ljava/lang/Class;II)V
    .registers 7
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p0, v2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge p0, v1, :cond_23

    instance-of p0, v0, Landroid/app/Activity;

    if-eqz p0, :cond_23

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_23
    return-void
.end method

.method private static a(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0, p1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, p1, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x10

    if-ge p0, p1, :cond_1b

    instance-of p0, v0, Landroid/app/Activity;

    if-eqz p0, :cond_1b

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1b
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a([Landroid/content/Intent;)V
    .registers 3
    .param p0    # [Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cyjh/common/util/toast/a;->a([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a([Landroid/content/Intent;II)V
    .registers 5
    .param p0    # [Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/cyjh/common/util/toast/a;->a([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge p0, v1, :cond_1a

    instance-of p0, v0, Landroid/app/Activity;

    if-eqz p0, :cond_1a

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1a
    return-void
.end method

.method private static a([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_12

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    if-eqz p2, :cond_1e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1e

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_1e
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    return-void
.end method

.method private static a([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3
    .param p0    # [Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/cyjh/common/util/toast/a;->a([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .registers 3

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 7
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v0, p0, p4, p5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/app/Activity;Z)Z
    .registers 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz p1, :cond_21

    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_23
    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    goto :goto_a

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/app/Activity;ZII)Z
    .registers 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz p1, :cond_21

    invoke-static {v1, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;II)V

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_23
    invoke-static {v1, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;II)V

    goto :goto_a

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Intent;)Z
    .registers 3
    .param p0    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Intent;II)Z
    .registers 6
    .param p0    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_1d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1d

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1d

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1d
    return p0
.end method

.method private static a(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z
    .registers 6
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string p0, "ActivityUtils"

    const-string p1, "intent is unavailable"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_f
    if-eqz p3, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1b

    invoke-virtual {p1, p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string p0, "ActivityUtils"

    const-string p1, "intent is unavailable"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_f
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_18

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_18
    if-eqz p2, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_24

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_27

    :cond_24
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_27
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 3
    .param p0    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Intent;Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Z
    .registers 6
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->b(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p0, "ActivityUtils"

    const-string p1, "intent is unavailable"

    :goto_b
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string p0, "ActivityUtils"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not attached to Activity"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_2b
    if-eqz p3, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_37

    invoke-virtual {p1, p0, p2, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_3a

    :cond_37
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3a
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 7
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v0, p0, p4, p5}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Intent;Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/Class;Z)Z
    .registers 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)Z"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz p1, :cond_25

    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    :cond_25
    const/4 p0, 0x1

    return p0

    :cond_27
    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    goto :goto_a

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/Class;ZII)Z
    .registers 7
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;ZII)Z"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz p1, :cond_25

    invoke-static {v1, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;II)V

    :cond_25
    const/4 p0, 0x1

    return p0

    :cond_27
    invoke-static {v1, p2, p3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;II)V

    goto :goto_a

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    return p1
.end method

.method private static b(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2d

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_14

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_14
    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1b

    return-object v2

    :cond_1b
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_27

    return-object v0

    :cond_27
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2d
    return-object v0
.end method

.method private static b(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_8
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()V
    .registers 4

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1, v3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1a
    return-void
.end method

.method private static b(II)V
    .registers 5
    .param p0    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, p0, p1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method private static b(Landroid/app/Activity;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    if-eqz p0, :cond_c

    new-instance v1, Lcom/cyjh/common/util/toast/r$2;

    invoke-direct {v1, v0, p0}, Lcom/cyjh/common/util/toast/r$2;-><init>(Lcom/cyjh/common/util/toast/r;Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private static b(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/cyjh/common/util/toast/q$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0, p0, p1}, Lcom/cyjh/common/util/toast/r;->b(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private static b(Lcom/cyjh/common/util/toast/q$a;)V
    .registers 1
    .param p0    # Lcom/cyjh/common/util/toast/q$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private static b(Ljava/lang/Class;II)V
    .registers 6
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_a

    :cond_27
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v0, v2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/a;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;Z)Z
    .registers 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz p1, :cond_21

    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_23
    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    goto :goto_a

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Intent;)Z
    .registers 3

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/Class;)Z
    .registers 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/Class;Z)Z
    .registers 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)Z"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz p1, :cond_25

    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    :cond_25
    const/4 p0, 0x1

    return p0

    :cond_27
    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    goto :goto_a

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.policy.DecorContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mActivityContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    :cond_2f
    return-object v0
.end method

.method private static c()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_24

    return-object v0

    :cond_24
    :goto_24
    if-ge v3, v2, :cond_40

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_40
    return-object v0
.end method

.method private static c(Ljava/lang/Class;)V
    .registers 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_a

    :cond_28
    return-void
.end method

.method private static c(Ljava/lang/Class;II)V
    .registers 6
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v1, p1, p2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;II)V

    goto :goto_a

    :cond_24
    return-void
.end method

.method private static c(Landroid/app/Activity;)Z
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private static d()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/app/Activity;)V
    .registers 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    return-void
.end method

.method private static d(Ljava/lang/Class;)V
    .registers 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_a

    :cond_28
    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    goto :goto_38

    :cond_4
    if-eqz p0, :cond_2f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2f

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_16

    check-cast p0, Landroid/app/Activity;

    goto :goto_30

    :cond_16
    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1e

    move-object p0, v2

    goto :goto_30

    :cond_1e
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2f
    move-object p0, v0

    :goto_30
    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_38

    :cond_37
    move-object v0, p0

    :goto_38
    invoke-static {v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private static e()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_47

    :goto_2b
    if-ge v4, v3, :cond_47

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_47
    return-object v1
.end method

.method private static e(Landroid/app/Activity;)V
    .registers 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private static e(Ljava/lang/Class;)V
    .registers 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    goto :goto_a

    :cond_24
    return-void
.end method

.method private static f()Landroid/app/Activity;
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static f(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/Class;)V
    .registers 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    goto :goto_a

    :cond_24
    return-void
.end method

.method private static g(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->b(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static g()V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method private static h(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/cyjh/common/util/toast/a;->b(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static h()V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method private static i()V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method private static j()V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/cyjh/common/util/toast/a;->e(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method private static k()Landroid/content/Context;
    .registers 3

    invoke-static {}, Lcom/cyjh/common/util/toast/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0

    :cond_2b
    return-object v1

    :cond_2c
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
