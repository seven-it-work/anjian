.class final Lcom/cyjh/common/view/SlCustomInputLayout$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/SlCustomInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/view/SlCustomInputLayout;


# direct methods
.method constructor <init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$b;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_fc

    const-string p1, "key"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_21

    return v0

    :cond_21
    const/4 p1, 0x7

    const/4 p3, 0x1

    if-lt p2, p1, :cond_3c

    const/16 v1, 0x10

    if-gt p2, v1, :cond_3c

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout$b;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(Ljava/lang/String;)V

    return p3

    :cond_3c
    const/16 p1, 0x1d

    const/16 v1, 0x36

    if-lt p2, p1, :cond_61

    if-gt p2, v1, :cond_61

    const-string p1, "key"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u5199\u5b57\u6bcd keyCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$b;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(Ljava/lang/String;)V

    return p3

    :cond_61
    const/16 p1, 0x9f

    if-lt p2, p1, :cond_84

    if-gt p2, v1, :cond_84

    const-string p1, "key"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u5199\u5b57\u6bcd keyCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$b;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(Ljava/lang/String;)V

    return p3

    :cond_84
    const/16 p1, 0x43

    if-ne p2, p1, :cond_e3

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$b;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    iget-object p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    if-eqz p2, :cond_d3

    iget-object p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_d3

    iget-object p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    if-lez p2, :cond_bd

    iget p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    const-string v1, ""

    invoke-virtual {p1, p2, v0, v1}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(IZLjava/lang/String;)V

    iget p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    sub-int/2addr p2, p3

    iput p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    iget p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cyjh/common/view/PassWordView;

    if-eqz p2, :cond_d3

    goto :goto_cb

    :cond_bd
    iget p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    if-nez p2, :cond_d3

    iget p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cyjh/common/view/PassWordView;

    if-eqz p2, :cond_d3

    :goto_cb
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cyjh/common/view/PassWordView;->a()V

    :cond_d3
    iget-object p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->c:Lcom/cyjh/common/view/SlCustomInputLayout$a;

    if-eqz p2, :cond_e2

    iget-object p2, p1, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_e2

    invoke-virtual {p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->getPassString()Ljava/lang/String;

    :cond_e2
    return p3

    :cond_e3
    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$b;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-static {p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->c(Lcom/cyjh/common/view/SlCustomInputLayout;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout$b;->a:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-virtual {p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return p3

    :cond_fc
    return v0
.end method
