.class public final Lcom/cyjh/elfin/ui/a/d;
.super Lcom/cyjh/elfin/ui/a/a;


# instance fields
.field private a:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/cyjh/elfin/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040053

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/d;->setContentView(I)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/elfin/ui/a/d;->a(FF)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/d;->a(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/d;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f100157

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/d;->a:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/d;->a:Landroid/widget/Button;

    new-instance v0, Lcom/cyjh/elfin/ui/a/d$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/a/d$1;-><init>(Lcom/cyjh/elfin/ui/a/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
