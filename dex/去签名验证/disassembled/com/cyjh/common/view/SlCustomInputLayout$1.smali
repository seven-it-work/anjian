.class final Lcom/cyjh/common/view/SlCustomInputLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$1;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$1;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->setFocusable(Z)V

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$1;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-virtual {p1, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$1;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-virtual {p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$1;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-virtual {p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$1;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
