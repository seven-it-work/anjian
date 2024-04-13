.class final Lcom/cyjh/common/util/toast/p$b;
.super Lcom/cyjh/common/util/toast/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/toast/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static d:I


# instance fields
.field private e:Lcom/cyjh/common/util/toast/q$a;

.field private f:Lcom/cyjh/common/util/toast/p$c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/cyjh/common/util/toast/p;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/common/util/toast/p$a;-><init>(Lcom/cyjh/common/util/toast/p;)V

    return-void
.end method

.method private a(Landroid/app/Activity;I)Lcom/cyjh/common/util/toast/p$c;
    .registers 5

    new-instance v0, Lcom/cyjh/common/util/toast/p$f;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->b:Lcom/cyjh/common/util/toast/p;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/cyjh/common/util/toast/p$f;-><init>(Lcom/cyjh/common/util/toast/p;Landroid/view/WindowManager;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/common/util/toast/p$b;->a(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/common/util/toast/p$f;->c:Landroid/view/View;

    iget-object p1, p0, Lcom/cyjh/common/util/toast/p$b;->a:Landroid/widget/Toast;

    iput-object p1, v0, Lcom/cyjh/common/util/toast/p$f;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Lcom/cyjh/common/util/toast/p$f;->b(I)V

    return-object v0
.end method

.method private a(Landroid/app/Activity;IZ)V
    .registers 7

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    invoke-static {}, Lcom/cyjh/common/util/toast/s;->c()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    invoke-static {}, Lcom/cyjh/common/util/toast/s;->b()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, p2}, Lcom/cyjh/common/util/toast/p$b;->a(I)Landroid/view/View;

    move-result-object p2

    if-eqz p3, :cond_59

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 v1, 0xc8

    invoke-virtual {p3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_59
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5c
    return-void
.end method

.method static synthetic a(Lcom/cyjh/common/util/toast/p$b;Landroid/app/Activity;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/common/util/toast/p$b;->a(Landroid/app/Activity;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/common/util/toast/p$b;)Z
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/p$b;->d()Z

    move-result p0

    return p0
.end method

.method private b()V
    .registers 3

    sget v0, Lcom/cyjh/common/util/toast/p$b;->d:I

    new-instance v1, Lcom/cyjh/common/util/toast/p$b$2;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/common/util/toast/p$b$2;-><init>(Lcom/cyjh/common/util/toast/p$b;I)V

    iput-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->e:Lcom/cyjh/common/util/toast/q$a;

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->e:Lcom/cyjh/common/util/toast/q$a;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->a(Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private c(I)Lcom/cyjh/common/util/toast/p$c;
    .registers 4

    new-instance v0, Lcom/cyjh/common/util/toast/p$e;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->b:Lcom/cyjh/common/util/toast/p;

    invoke-direct {v0, v1}, Lcom/cyjh/common/util/toast/p$e;-><init>(Lcom/cyjh/common/util/toast/p;)V

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->a:Landroid/widget/Toast;

    iput-object v1, v0, Lcom/cyjh/common/util/toast/p$e;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Lcom/cyjh/common/util/toast/p$e;->b(I)V

    return-object v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->e:Lcom/cyjh/common/util/toast/q$a;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->b(Lcom/cyjh/common/util/toast/q$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->e:Lcom/cyjh/common/util/toast/q$a;

    return-void
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->e:Lcom/cyjh/common/util/toast/q$a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 6

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/p$b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->e:Lcom/cyjh/common/util/toast/q$a;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->b(Lcom/cyjh/common/util/toast/q$a;)V

    iput-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->e:Lcom/cyjh/common/util/toast/q$a;

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_18
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TAG_TOAST"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/cyjh/common/util/toast/p$b;->d:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_18

    :try_start_4e
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_18

    goto :goto_18

    :cond_52
    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->f:Lcom/cyjh/common/util/toast/p$c;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->f:Lcom/cyjh/common/util/toast/p$c;

    invoke-interface {v0}, Lcom/cyjh/common/util/toast/p$c;->a()V

    iput-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->f:Lcom/cyjh/common/util/toast/p$c;

    :cond_5d
    invoke-super {p0}, Lcom/cyjh/common/util/toast/p$a;->a()V

    return-void
.end method

.method public final b(I)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->a:Landroid/widget/Toast;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/cyjh/common/util/toast/s;->a()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/cyjh/common/util/toast/p$b;->c(I)Lcom/cyjh/common/util/toast/p$c;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/common/util/toast/p$b;->f:Lcom/cyjh/common/util/toast/p$c;

    return-void

    :cond_12
    const/4 v0, 0x0

    sget-object v1, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v1}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1e

    if-nez v0, :cond_4f

    new-instance v0, Lcom/cyjh/common/util/toast/p$f;

    iget-object v4, p0, Lcom/cyjh/common/util/toast/p$b;->b:Lcom/cyjh/common/util/toast/p;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/cyjh/common/util/toast/p$f;-><init>(Lcom/cyjh/common/util/toast/p;Landroid/view/WindowManager;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/cyjh/common/util/toast/p$b;->a(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/cyjh/common/util/toast/p$f;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/cyjh/common/util/toast/p$b;->a:Landroid/widget/Toast;

    iput-object v3, v0, Lcom/cyjh/common/util/toast/p$f;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Lcom/cyjh/common/util/toast/p$f;->b(I)V

    iput-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->f:Lcom/cyjh/common/util/toast/p$c;

    const/4 v0, 0x1

    goto :goto_1e

    :cond_4f
    sget v4, Lcom/cyjh/common/util/toast/p$b;->d:I

    invoke-direct {p0, v3, v4, v2}, Lcom/cyjh/common/util/toast/p$b;->a(Landroid/app/Activity;IZ)V

    goto :goto_1e

    :cond_55
    if-eqz v0, :cond_7a

    sget v0, Lcom/cyjh/common/util/toast/p$b;->d:I

    new-instance v1, Lcom/cyjh/common/util/toast/p$b$2;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/common/util/toast/p$b$2;-><init>(Lcom/cyjh/common/util/toast/p$b;I)V

    iput-object v1, p0, Lcom/cyjh/common/util/toast/p$b;->e:Lcom/cyjh/common/util/toast/q$a;

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b;->e:Lcom/cyjh/common/util/toast/q$a;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->a(Lcom/cyjh/common/util/toast/q$a;)V

    new-instance v0, Lcom/cyjh/common/util/toast/p$b$1;

    invoke-direct {v0, p0}, Lcom/cyjh/common/util/toast/p$b$1;-><init>(Lcom/cyjh/common/util/toast/p$b;)V

    if-nez p1, :cond_6f

    const-wide/16 v3, 0x7d0

    goto :goto_71

    :cond_6f
    const-wide/16 v3, 0xdac

    :goto_71
    invoke-static {v0, v3, v4}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;J)V

    sget p1, Lcom/cyjh/common/util/toast/p$b;->d:I

    add-int/2addr p1, v2

    sput p1, Lcom/cyjh/common/util/toast/p$b;->d:I

    return-void

    :cond_7a
    invoke-direct {p0, p1}, Lcom/cyjh/common/util/toast/p$b;->c(I)Lcom/cyjh/common/util/toast/p$c;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/common/util/toast/p$b;->f:Lcom/cyjh/common/util/toast/p$c;

    return-void
.end method
