.class public final Lcom/cyjh/elfin/floatingwindowprocess/a/a;
.super Lcom/cyjh/elfin/ui/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;,
        Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;
    }
.end annotation


# instance fields
.field public a:Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;

.field public b:Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;

.field private c:Landroid/widget/Button;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/a;-><init>(Landroid/content/Context;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    return-void

    :cond_13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_26

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_26

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    goto :goto_f

    :cond_26
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    goto :goto_f
.end method

.method private a()V
    .registers 2

    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->c:Landroid/widget/Button;

    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;

    return-void
.end method

.method private a(Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_20

    goto :goto_1b

    :pswitch_8
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;

    invoke-interface {p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;->a()V

    goto :goto_1b

    :pswitch_12
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;

    invoke-interface {p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;->a()V

    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->dismiss()V

    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x7f10014b
        :pswitch_12
        :pswitch_8
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/cyjh/elfin/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04004c

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->a(F)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->a(FF)V

    const p1, 0x7f10014c

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->c:Landroid/widget/Button;

    const p1, 0x7f10014b

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->e:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->e:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
