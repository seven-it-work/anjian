.class final Lcom/cyjh/common/view/PassWordLayout$b;
.super Landroid/view/inputmethod/BaseInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/PassWordLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/view/PassWordLayout;


# direct methods
.method public constructor <init>(Lcom/cyjh/common/view/PassWordLayout;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordLayout$b;->a:Lcom/cyjh/common/view/PassWordLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final commitText(Ljava/lang/CharSequence;I)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public final deleteSurroundingText(II)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    if-nez p2, :cond_20

    new-instance p1, Landroid/view/KeyEvent;

    const/16 p2, 0x43

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/PassWordLayout$b;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1f

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v0, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/PassWordLayout$b;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v0

    :cond_1f
    return v1

    :cond_20
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
