.class final Lcom/cyjh/common/util/toast/s;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p1, :cond_25

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_25
    return-object v0
.end method

.method static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_26

    :cond_21
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_67

    :cond_26
    :goto_26
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_51

    :cond_4c
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_67

    :cond_51
    :goto_51
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_67
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object v2
.end method

.method static a(I)Landroid/view/View;
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    if-eqz p0, :cond_c

    new-instance v1, Lcom/cyjh/common/util/toast/r$2;

    invoke-direct {v1, v0, p0}, Lcom/cyjh/common/util/toast/r$2;-><init>(Lcom/cyjh/common/util/toast/r;Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0, p0, p1}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method static a(Landroid/app/Application;)V
    .registers 2

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static a(Lcom/cyjh/common/util/toast/q$a;)V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    sget-object v1, Lcom/cyjh/common/util/toast/r;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private static a(Lcom/cyjh/common/util/toast/q$d;)V
    .registers 2

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    iget-object v0, v0, Lcom/cyjh/common/util/toast/r;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static varargs a([Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-gtz v1, :cond_10

    aget-object v2, p0, v0

    invoke-static {}, Lcom/cyjh/common/util/toast/o;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method static a()Z
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    iget-boolean v0, v0, Lcom/cyjh/common/util/toast/r;->e:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method static a(Landroid/content/Intent;)Z
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

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_31

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_20

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_20

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_30

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_31

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_30
    return v0

    :cond_31
    return v1
.end method

.method static b()I
    .registers 4

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0, p0, p1}, Lcom/cyjh/common/util/toast/r;->b(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private static b(Landroid/app/Application;)V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    iget-object v1, v0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static b(Lcom/cyjh/common/util/toast/q$a;)V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    sget-object v1, Lcom/cyjh/common/util/toast/r;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/common/util/toast/r;->b(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private static b(Lcom/cyjh/common/util/toast/q$d;)V
    .registers 2

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    iget-object v0, v0, Lcom/cyjh/common/util/toast/r;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b(Landroid/app/Activity;)Z
    .registers 1

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/String;)Z
    .registers 5

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_18

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_15

    return v1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method static c()I
    .registers 4

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/cyjh/common/util/toast/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/cyjh/common/util/toast/g;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private static d()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v1, Lcom/cyjh/common/util/toast/b$1;

    invoke-direct {v1}, Lcom/cyjh/common/util/toast/b$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    :goto_c
    if-gtz v1, :cond_1a

    aget-object v3, v0, v2

    invoke-static {}, Lcom/cyjh/common/util/toast/o;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-void
.end method

.method private static e()Landroid/app/Activity;
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

.method private static f()Ljava/util/List;
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

.method private static g()Landroid/app/Application;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-static {}, Lcom/cyjh/common/util/toast/r;->b()Landroid/app/Application;

    move-result-object v0

    return-object v0
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

.method private static i()Z
    .registers 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static j()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/j;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static l()I
    .registers 2

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_10

    const/4 v0, -0x1

    return v0

    :cond_10
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    return v0
.end method

.method private static m()I
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static n()Lcom/cyjh/common/util/toast/k;
    .registers 1

    const-string v0, "Utils"

    invoke-static {v0}, Lcom/cyjh/common/util/toast/k;->a(Ljava/lang/String;)Lcom/cyjh/common/util/toast/k;

    move-result-object v0

    return-object v0
.end method

.method private static o()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_38

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_22

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_30

    :cond_22
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_30
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_38

    return v2

    :cond_38
    return v1
.end method
