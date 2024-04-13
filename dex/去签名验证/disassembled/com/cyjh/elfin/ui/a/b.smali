.class public final Lcom/cyjh/elfin/ui/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/cyjh/elfin/ui/a/b;


# instance fields
.field private b:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/app/AlertDialog;
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0134

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-object p0
.end method

.method public static a()Lcom/cyjh/elfin/ui/a/b;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/ui/a/b;->a:Lcom/cyjh/elfin/ui/a/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/elfin/ui/a/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/ui/a/b;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/ui/a/b;->a:Lcom/cyjh/elfin/ui/a/b;

    :cond_b
    sget-object v0, Lcom/cyjh/elfin/ui/a/b;->a:Lcom/cyjh/elfin/ui/a/b;

    return-object v0
.end method

.method private static a(ILjava/lang/String;Landroid/content/Context;Lcom/cyjh/elfin/ui/b/a;)V
    .registers 5

    const v0, 0x7f040058

    invoke-static {p2, v0}, Lcom/cyjh/elfin/ui/a/b;->a(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f100153

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f100163

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/cyjh/elfin/ui/b/a;->b:Landroid/app/AlertDialog;

    iput p0, p3, Lcom/cyjh/elfin/ui/b/a;->c:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static a(Landroid/app/AlertDialog;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    if-nez v0, :cond_b

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    :cond_b
    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    :cond_14
    return-void
.end method

.method private b(Landroid/content/Context;I)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    if-nez v0, :cond_f

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    :cond_f
    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/b;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
