.class public final Lcom/cyjh/feedback/lib/b/c;
.super Lcom/cyjh/feedback/lib/base/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cyjh/feedback/lib/base/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/cyjh/feedback/lib/base/a;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->dialog_loading:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/c;->setContentView(I)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/c;->a(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Lcom/cyjh/feedback/lib/b/c;->a(FF)V

    return-void
.end method
