.class public Landroid/support/design/widget/TextInputEditText;
.super Landroid/support/v7/widget/AppCompatEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v1, :cond_24

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_e
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_24

    instance-of v2, v1, Landroid/support/v7/widget/WithHint;

    if-eqz v2, :cond_1f

    check-cast v1, Landroid/support/v7/widget/WithHint;

    invoke-interface {v1}, Landroid/support/v7/widget/WithHint;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    return-object v0

    :cond_1f
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_e

    :cond_24
    return-object v0
.end method
