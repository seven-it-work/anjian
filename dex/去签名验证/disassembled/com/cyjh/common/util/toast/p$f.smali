.class final Lcom/cyjh/common/util/toast/p$f;
.super Lcom/cyjh/common/util/toast/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/toast/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private d:Landroid/view/WindowManager;

.field private e:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/toast/p;I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/cyjh/common/util/toast/p$a;-><init>(Lcom/cyjh/common/util/toast/p;)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/common/util/toast/p$f;->d:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void
.end method

.method constructor <init>(Lcom/cyjh/common/util/toast/p;Landroid/view/WindowManager;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/common/util/toast/p$a;-><init>(Lcom/cyjh/common/util/toast/p;)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/p$f;->d:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x63

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->d:Landroid/view/WindowManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$f;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->d:Landroid/view/WindowManager;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    invoke-super {p0}, Lcom/cyjh/common/util/toast/p$a;->a()V

    return-void
.end method

.method public final b(I)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->a:Landroid/widget/Toast;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ToastWithoutNotification"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$f;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x7

    and-int/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_4b
    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x70

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_58
    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$f;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$f;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$f;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$f;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    :try_start_80
    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->d:Landroid/view/WindowManager;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$f;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$f;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/cyjh/common/util/toast/p$f;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8d} :catch_8d

    :catch_8d
    :cond_8d
    new-instance v0, Lcom/cyjh/common/util/toast/p$f$1;

    invoke-direct {v0, p0}, Lcom/cyjh/common/util/toast/p$f$1;-><init>(Lcom/cyjh/common/util/toast/p$f;)V

    if-nez p1, :cond_97

    const-wide/16 v1, 0x7d0

    goto :goto_99

    :cond_97
    const-wide/16 v1, 0xdac

    :goto_99
    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
