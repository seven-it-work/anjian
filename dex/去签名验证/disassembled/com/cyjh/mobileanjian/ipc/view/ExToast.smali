.class public Lcom/cyjh/mobileanjian/ipc/view/ExToast;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0xdac

.field public static final LENGTH_SHORT:I = 0x7d0

.field private static final g:I = 0x33


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Ljava/util/Timer;

.field private d:Landroid/widget/Toast;

.field private e:Z

.field private f:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:I

.field private m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->i:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->j:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->l:I

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a:Landroid/view/WindowManager;

    const-string v0, ""

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->c:Ljava/util/Timer;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_56

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    :goto_53
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_6c

    :cond_56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_67

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_67

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    goto :goto_53

    :cond_67
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    goto :goto_53

    :goto_6c
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_toastDefaultGravity"

    const-string v2, "Integer"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_85

    const/16 v0, 0x51

    goto :goto_8d

    :cond_85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_8d
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "toast_y_offset"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez v0, :cond_a5

    sget v0, Lcom/cyjh/mqsdk/R$dimen;->toast_y_offset:I

    :cond_a5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->h:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "Toast"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(ILjava/lang/CharSequence;IIZ)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 p3, 0x0

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->h:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1c

    :cond_14
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1c
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->e:Z

    if-eqz p1, :cond_33

    if-eqz p5, :cond_40

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_33
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_40
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_29

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    :goto_26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_3f

    :cond_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_3a

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    goto :goto_26

    :cond_3a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    goto :goto_26

    :goto_3f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_toastDefaultGravity"

    const-string v2, "Integer"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_58

    const/16 v0, 0x51

    goto :goto_60

    :cond_58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_60
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "toast_y_offset"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez v0, :cond_78

    sget v0, Lcom/cyjh/mqsdk/R$dimen;->toast_y_offset:I

    :cond_78
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->h:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "Toast"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/cyjh/mobileanjian/ipc/view/ExToast;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/ExToast;
    .registers 4

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->setDuration(I)V

    return-object v0
.end method


# virtual methods
.method public hide()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;->cancel()Z

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->e:Z

    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setDuration(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->l:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->k:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 7

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->k:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a(ILjava/lang/CharSequence;IIZ)V

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->c:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public show(Ljava/lang/CharSequence;III)V
    .registers 16

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_e

    :try_start_7
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->i:I

    if-ltz v3, :cond_1c

    goto :goto_e

    :catchall_c
    move-exception p1

    goto :goto_5f

    :cond_e
    :goto_e
    if-gez p3, :cond_14

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->j:I

    if-ltz v3, :cond_1c

    :cond_14
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->i:I

    if-ne p2, v3, :cond_1e

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->j:I

    if-ne p3, v3, :cond_1e

    :cond_1c
    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    if-ltz p2, :cond_29

    if-gez p3, :cond_24

    goto :goto_29

    :cond_24
    const/16 v4, 0x33

    const/16 v6, 0x33

    goto :goto_2c

    :cond_29
    :goto_29
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    move v6, v4

    :goto_2c
    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->i:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->j:I

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;->cancel()Z

    xor-int/lit8 v10, v3, 0x1

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a(ILjava/lang/CharSequence;IIZ)V

    iput-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->e:Z

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    invoke-direct {p1, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const/16 p1, 0x7d0

    if-gez p4, :cond_4f

    const p4, 0x7fffffff

    goto :goto_55

    :cond_4f
    if-ltz p4, :cond_55

    if-ge p4, p1, :cond_55

    const/16 p4, 0x7d0

    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->c:Ljava/util/Timer;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    int-to-long p3, p4

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit v0

    return-void

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_c

    throw p1
.end method
