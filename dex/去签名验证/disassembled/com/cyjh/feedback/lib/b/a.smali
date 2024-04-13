.class public final Lcom/cyjh/feedback/lib/b/a;
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

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->dialog_feedback_commit:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/a;->setContentView(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/a;->a(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Lcom/cyjh/feedback/lib/b/a;->a(FF)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/b/a;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
