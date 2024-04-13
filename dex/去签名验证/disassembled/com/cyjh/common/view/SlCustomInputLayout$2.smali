.class final Lcom/cyjh/common/view/SlCustomInputLayout$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/view/SlCustomInputLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/view/SlCustomInputLayout;


# direct methods
.method constructor <init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$2;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_1f

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$2;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    iget-object p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout$2;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-static {p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(Lcom/cyjh/common/view/SlCustomInputLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/common/view/PassWordView;

    if-eqz p1, :cond_1e

    iget-object p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout$2;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-static {p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->b(Lcom/cyjh/common/view/SlCustomInputLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordView;->setmIsShowRemindLine(Z)V

    invoke-virtual {p1}, Lcom/cyjh/common/view/PassWordView;->a()V

    :cond_1e
    return-void

    :cond_1f
    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$2;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    iget-object p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout$2;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-static {p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(Lcom/cyjh/common/view/SlCustomInputLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/common/view/PassWordView;

    if-eqz p1, :cond_36

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordView;->setmIsShowRemindLine(Z)V

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordView;->a(Z)V

    :cond_36
    return-void
.end method
