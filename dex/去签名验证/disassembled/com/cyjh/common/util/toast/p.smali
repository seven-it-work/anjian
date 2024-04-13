.class public final Lcom/cyjh/common/util/toast/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/toast/p$c;,
        Lcom/cyjh/common/util/toast/p$a;,
        Lcom/cyjh/common/util/toast/p$b;,
        Lcom/cyjh/common/util/toast/p$f;,
        Lcom/cyjh/common/util/toast/p$e;,
        Lcom/cyjh/common/util/toast/p$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TAG_TOAST"

.field private static final b:I = -0x1000001

.field private static final c:Ljava/lang/String; = "toast null"

.field private static final d:Ljava/lang/String; = "toast nothing"

.field private static final e:Lcom/cyjh/common/util/toast/p;

.field private static f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cyjh/common/util/toast/p$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:[Landroid/graphics/drawable/Drawable;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/common/util/toast/p;

    invoke-direct {v0}, Lcom/cyjh/common/util/toast/p;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyjh/common/util/toast/p;->h:I

    iput v0, p0, Lcom/cyjh/common/util/toast/p;->i:I

    iput v0, p0, Lcom/cyjh/common/util/toast/p;->j:I

    const v1, -0x1000001

    iput v1, p0, Lcom/cyjh/common/util/toast/p;->k:I

    iput v0, p0, Lcom/cyjh/common/util/toast/p;->l:I

    iput v1, p0, Lcom/cyjh/common/util/toast/p;->m:I

    iput v0, p0, Lcom/cyjh/common/util/toast/p;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/common/util/toast/p;->o:Z

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/cyjh/common/util/toast/p;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/cyjh/common/util/toast/p;Ljava/lang/CharSequence;)Landroid/view/View;
    .registers 10

    const-string v0, "dark"

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_32

    const-string v0, "light"

    iget-object v5, p0, Lcom/cyjh/common/util/toast/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    if-nez v0, :cond_32

    const/4 p0, 0x0

    return-object p0

    :cond_32
    sget v0, Lcom/cyjh/common/R$layout;->utils_toast_view:I

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->a(I)Landroid/view/View;

    move-result-object v0

    const v5, 0x102000b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "dark"

    iget-object v7, p0, Lcom/cyjh/common/util/toast/p;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    const-string v7, "#BB000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_62
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v4

    if-eqz p1, :cond_7b

    sget p1, Lcom/cyjh/common/R$id;->utvLeftIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v5, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    invoke-static {p1, v5}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7b
    iget-object p1, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v3

    if-eqz p1, :cond_91

    sget p1, Lcom/cyjh/common/R$id;->utvTopIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v5, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v5, v3

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_91
    iget-object p1, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    if-eqz p1, :cond_a7

    sget p1, Lcom/cyjh/common/R$id;->utvRightIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v3, v2

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a7
    iget-object p1, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    if-eqz p1, :cond_bd

    sget p1, Lcom/cyjh/common/R$id;->utvBottomIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, v1

    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_bd
    return-object v0
.end method

.method static synthetic a(Lcom/cyjh/common/util/toast/p;)Lcom/cyjh/common/util/toast/p$c;
    .registers 3

    iget-boolean v0, p0, Lcom/cyjh/common/util/toast/p;->q:Z

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1e

    new-instance v0, Lcom/cyjh/common/util/toast/p$e;

    invoke-direct {v0, p0}, Lcom/cyjh/common/util/toast/p$e;-><init>(Lcom/cyjh/common/util/toast/p;)V

    return-object v0

    :cond_1e
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lcom/cyjh/common/util/toast/p$e;

    invoke-direct {v0, p0}, Lcom/cyjh/common/util/toast/p$e;-><init>(Lcom/cyjh/common/util/toast/p;)V

    return-object v0

    :cond_2e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_3c

    new-instance v0, Lcom/cyjh/common/util/toast/p$f;

    const/16 v1, 0x7d5

    invoke-direct {v0, p0, v1}, Lcom/cyjh/common/util/toast/p$f;-><init>(Lcom/cyjh/common/util/toast/p;I)V

    return-object v0

    :cond_3c
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_54

    new-instance v0, Lcom/cyjh/common/util/toast/p$f;

    const/16 v1, 0x7f6

    invoke-direct {v0, p0, v1}, Lcom/cyjh/common/util/toast/p$f;-><init>(Lcom/cyjh/common/util/toast/p;I)V

    return-object v0

    :cond_54
    new-instance v0, Lcom/cyjh/common/util/toast/p$f;

    const/16 v1, 0x7d2

    invoke-direct {v0, p0, v1}, Lcom/cyjh/common/util/toast/p$f;-><init>(Lcom/cyjh/common/util/toast/p;I)V

    return-object v0

    :cond_5c
    new-instance v0, Lcom/cyjh/common/util/toast/p$b;

    invoke-direct {v0, p0}, Lcom/cyjh/common/util/toast/p$b;-><init>(Lcom/cyjh/common/util/toast/p;)V

    return-object v0
.end method

.method private a(I)Lcom/cyjh/common/util/toast/p;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/cyjh/common/util/toast/p;->k:I

    return-object p0
.end method

.method private a(III)Lcom/cyjh/common/util/toast/p;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/cyjh/common/util/toast/p;->h:I

    iput p2, p0, Lcom/cyjh/common/util/toast/p;->i:I

    iput p3, p0, Lcom/cyjh/common/util/toast/p;->j:I

    return-object p0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/common/util/toast/p;
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/cyjh/common/util/toast/p;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/cyjh/common/util/toast/p;->g:Ljava/lang/String;

    return-object p0
.end method

.method private a(Z)Lcom/cyjh/common/util/toast/p;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/cyjh/common/util/toast/p;->o:Z

    return-object p0
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    sput-object p0, Lcom/cyjh/common/util/toast/p;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static a()V
    .registers 1

    new-instance v0, Lcom/cyjh/common/util/toast/p$1;

    invoke-direct {v0}, Lcom/cyjh/common/util/toast/p$1;-><init>()V

    invoke-static {v0}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs a(I[Ljava/lang/Object;)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/cyjh/common/util/toast/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/p;->f()I

    move-result p2

    invoke-static {p1, p2, p0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/p;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0}, Lcom/cyjh/common/util/toast/p;->a(Landroid/view/View;Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private static a(Landroid/view/View;ILcom/cyjh/common/util/toast/p;)V
    .registers 4
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/cyjh/common/util/toast/p;->a(Landroid/view/View;Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V
    .registers 5
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/cyjh/common/util/toast/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/cyjh/common/util/toast/p$2;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/cyjh/common/util/toast/p$2;-><init>(Lcom/cyjh/common/util/toast/p;Landroid/view/View;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)V
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V
    .registers 4
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_5

    const-string p0, "toast null"

    goto :goto_d

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    const-string p0, "toast nothing"

    :cond_d
    :goto_d
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/cyjh/common/util/toast/p;->a(Landroid/view/View;Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/cyjh/common/util/toast/n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/p;->f()I

    move-result p2

    invoke-static {p1, p2, p0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method static synthetic b(Lcom/cyjh/common/util/toast/p;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/common/util/toast/p;->h:I

    return p0
.end method

.method private b(I)Lcom/cyjh/common/util/toast/p;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/cyjh/common/util/toast/p;->l:I

    return-object p0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/common/util/toast/p;
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object p0
.end method

.method static synthetic b()Ljava/lang/ref/WeakReference;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/toast/p;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static varargs b(I[Ljava/lang/Object;)V
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method public static b(Ljava/lang/CharSequence;)V
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/common/util/toast/p;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/common/util/toast/p;->i:I

    return p0
.end method

.method private static c()Lcom/cyjh/common/util/toast/p;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/common/util/toast/p;

    invoke-direct {v0}, Lcom/cyjh/common/util/toast/p;-><init>()V

    return-object v0
.end method

.method private c(I)Lcom/cyjh/common/util/toast/p;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/cyjh/common/util/toast/p;->m:I

    return-object p0
.end method

.method private c(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/common/util/toast/p;
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-object p0
.end method

.method private static varargs c(I[Ljava/lang/Object;)V
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private c(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/p;->f()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method static synthetic d(Lcom/cyjh/common/util/toast/p;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/common/util/toast/p;->j:I

    return p0
.end method

.method private d(Ljava/lang/CharSequence;)Landroid/view/View;
    .registers 10

    const-string v0, "dark"

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_32

    const-string v0, "light"

    iget-object v5, p0, Lcom/cyjh/common/util/toast/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    if-nez v0, :cond_32

    const/4 p1, 0x0

    return-object p1

    :cond_32
    sget v0, Lcom/cyjh/common/R$layout;->utils_toast_view:I

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->a(I)Landroid/view/View;

    move-result-object v0

    const v5, 0x102000b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "dark"

    iget-object v7, p0, Lcom/cyjh/common/util/toast/p;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    const-string v7, "#BB000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_62
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v4

    if-eqz p1, :cond_7b

    sget p1, Lcom/cyjh/common/R$id;->utvLeftIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v5, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    invoke-static {p1, v5}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7b
    iget-object p1, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v3

    if-eqz p1, :cond_91

    sget p1, Lcom/cyjh/common/R$id;->utvTopIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v5, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v5, v3

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_91
    iget-object p1, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    if-eqz p1, :cond_a7

    sget p1, Lcom/cyjh/common/R$id;->utvRightIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v3, v2

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a7
    iget-object p1, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    if-eqz p1, :cond_bd

    sget p1, Lcom/cyjh/common/R$id;->utvBottomIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v2, v1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_bd
    return-object v0
.end method

.method private d()Lcom/cyjh/common/util/toast/p;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/common/util/toast/p;->q:Z

    return-object p0
.end method

.method private d(I)Lcom/cyjh/common/util/toast/p;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/cyjh/common/util/toast/p;->n:I

    return-object p0
.end method

.method private d(Landroid/graphics/drawable/Drawable;)Lcom/cyjh/common/util/toast/p;
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-object p0
.end method

.method static synthetic e(Lcom/cyjh/common/util/toast/p;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/common/util/toast/p;->m:I

    return p0
.end method

.method private static e()Lcom/cyjh/common/util/toast/p;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    return-object v0
.end method

.method private e(I)Lcom/cyjh/common/util/toast/p;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object p0
.end method

.method private static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, "toast null"

    return-object p0

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    const-string p0, "toast nothing"

    :cond_d
    return-object p0
.end method

.method private f()I
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/common/util/toast/p;->o:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/cyjh/common/util/toast/p;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/common/util/toast/p;->n:I

    return p0
.end method

.method private f(I)Lcom/cyjh/common/util/toast/p;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object p0
.end method

.method static synthetic g(Lcom/cyjh/common/util/toast/p;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/common/util/toast/p;->l:I

    return p0
.end method

.method private g(I)Lcom/cyjh/common/util/toast/p;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-object p0
.end method

.method static synthetic h(Lcom/cyjh/common/util/toast/p;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/common/util/toast/p;->k:I

    return p0
.end method

.method private h(I)Lcom/cyjh/common/util/toast/p;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p;->p:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-object p0
.end method

.method private static i(Lcom/cyjh/common/util/toast/p;)Lcom/cyjh/common/util/toast/p$c;
    .registers 3

    iget-boolean v0, p0, Lcom/cyjh/common/util/toast/p;->q:Z

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1e

    new-instance v0, Lcom/cyjh/common/util/toast/p$e;

    invoke-direct {v0, p0}, Lcom/cyjh/common/util/toast/p$e;-><init>(Lcom/cyjh/common/util/toast/p;)V

    return-object v0

    :cond_1e
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lcom/cyjh/common/util/toast/p$e;

    invoke-direct {v0, p0}, Lcom/cyjh/common/util/toast/p$e;-><init>(Lcom/cyjh/common/util/toast/p;)V

    return-object v0

    :cond_2e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_3c

    new-instance v0, Lcom/cyjh/common/util/toast/p$f;

    const/16 v1, 0x7d5

    invoke-direct {v0, p0, v1}, Lcom/cyjh/common/util/toast/p$f;-><init>(Lcom/cyjh/common/util/toast/p;I)V

    return-object v0

    :cond_3c
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_54

    new-instance v0, Lcom/cyjh/common/util/toast/p$f;

    const/16 v1, 0x7f6

    invoke-direct {v0, p0, v1}, Lcom/cyjh/common/util/toast/p$f;-><init>(Lcom/cyjh/common/util/toast/p;I)V

    return-object v0

    :cond_54
    new-instance v0, Lcom/cyjh/common/util/toast/p$f;

    const/16 v1, 0x7d2

    invoke-direct {v0, p0, v1}, Lcom/cyjh/common/util/toast/p$f;-><init>(Lcom/cyjh/common/util/toast/p;I)V

    return-object v0

    :cond_5c
    new-instance v0, Lcom/cyjh/common/util/toast/p$b;

    invoke-direct {v0, p0}, Lcom/cyjh/common/util/toast/p$b;-><init>(Lcom/cyjh/common/util/toast/p;)V

    return-object v0
.end method

.method private i(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/toast/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/p;->f()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private static j(I)V
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private static k(I)V
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cyjh/common/util/toast/p;->e:Lcom/cyjh/common/util/toast/p;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V

    return-void
.end method
