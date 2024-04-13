.class public final Lcom/cyjh/mobileanjian/ipc/ui/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/c$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/EditText;

.field c:Lcom/cyjh/mobileanjian/ipc/ui/c$a;

.field d:Landroid/view/WindowManager;

.field private e:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/ui/c$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->c:Lcom/cyjh/mobileanjian/ipc/ui/c$a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/cyjh/mqsdk/R$layout;->dialog_input:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    sget v0, Lcom/cyjh/mqsdk/R$id;->prompt:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    sget p3, Lcom/cyjh/mqsdk/R$id;->et_input:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->b:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    sget p3, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/c$1;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/ui/c$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/c;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->d:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_59

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7f6

    :goto_56
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_6f

    :cond_59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_6a

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_6a

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d5

    goto :goto_56

    :cond_6a
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d2

    goto :goto_56

    :goto_6f
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x11

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/c;)Lcom/cyjh/mobileanjian/ipc/ui/c$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->c:Lcom/cyjh/mobileanjian/ipc/ui/c$a;

    return-object p0
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/c;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .registers 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    :goto_11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2a

    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_25

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    goto :goto_11

    :cond_25
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    goto :goto_11

    :goto_2a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private static synthetic c(Lcom/cyjh/mobileanjian/ipc/ui/c;)V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->d:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
