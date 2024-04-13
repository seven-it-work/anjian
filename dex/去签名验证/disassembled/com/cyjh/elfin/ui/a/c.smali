.class public final Lcom/cyjh/elfin/ui/a/c;
.super Lcom/cyjh/elfin/ui/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/a/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/cyjh/elfin/ui/a/c$a;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .registers 2

    const v0, 0x7f10014a

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/c;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/c;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/cyjh/elfin/ui/a/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/c;->a:Lcom/cyjh/elfin/ui/a/c$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10014a

    if-eq p1, v0, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/c;->a:Lcom/cyjh/elfin/ui/a/c$a;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/c;->a:Lcom/cyjh/elfin/ui/a/c$a;

    invoke-interface {p1}, Lcom/cyjh/elfin/ui/a/c$a;->a()V

    :cond_13
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/cyjh/elfin/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04004b

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/c;->setContentView(I)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/elfin/ui/a/c;->a(FF)V

    const p1, 0x7f10014a

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/c;->b:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/c;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
