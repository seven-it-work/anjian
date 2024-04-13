.class public final Lcom/cyjh/mobileanjian/ipc/ui/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3


# instance fields
.field i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

.field private j:Landroid/view/WindowManager;

.field private k:Landroid/view/WindowManager$LayoutParams;

.field private l:Landroid/view/View;

.field private m:I

.field private n:I

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/cyjh/mobileanjian/ipc/ui/b$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    const-string p4, "window"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->j:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p4, Lcom/cyjh/mqsdk/R$layout;->dialog_alert:I

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->prompt:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_3d

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7f6

    :goto_3a
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_53

    :cond_3d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_4e

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_4e

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d5

    goto :goto_3a

    :cond_4e
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d2

    goto :goto_3a

    :goto_53
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x10

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p1, 0x8

    packed-switch p3, :pswitch_data_170

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type2:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type3:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    goto/16 :goto_145

    :pswitch_9f
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type2:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->yes_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->no_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->s:Landroid/widget/Button;

    goto :goto_145

    :pswitch_da
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type3:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->negative_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    sget p2, Lcom/cyjh/mqsdk/R$string;->dialog_yes_button:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    sget p2, Lcom/cyjh/mqsdk/R$string;->dialog_no_button:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_145

    :pswitch_117
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type3:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->negative_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    :goto_145
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    if-eqz p1, :cond_153

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/b$1;

    invoke-direct {p2, p0, p3}, Lcom/cyjh/mobileanjian/ipc/ui/b$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/b;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_153
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    if-eqz p1, :cond_161

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/b$2;

    invoke-direct {p2, p0, p3}, Lcom/cyjh/mobileanjian/ipc/ui/b$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/b;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_161
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->s:Landroid/widget/Button;

    if-eqz p1, :cond_16f

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->s:Landroid/widget/Button;

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/b$3;

    invoke-direct {p2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/b$3;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16f
    return-void

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_117
        :pswitch_da
        :pswitch_9f
    .end packed-switch
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/b;)V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->j:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/b;)Lcom/cyjh/mobileanjian/ipc/ui/b$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    return-object p0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->j:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .registers 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

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

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    goto :goto_11

    :cond_25
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    goto :goto_11

    :goto_2a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->j:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
