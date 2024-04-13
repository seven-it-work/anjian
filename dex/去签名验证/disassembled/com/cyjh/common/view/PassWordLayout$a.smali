.class final Lcom/cyjh/common/view/PassWordLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/PassWordLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/view/PassWordLayout;


# direct methods
.method constructor <init>(Lcom/cyjh/common/view/PassWordLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordLayout$a;->a:Lcom/cyjh/common/view/PassWordLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_c3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_e

    return v0

    :cond_e
    const/4 p1, 0x7

    const/4 p3, 0x1

    if-lt p2, p1, :cond_4b

    const/16 v1, 0x10

    if-gt p2, v1, :cond_4b

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout$a;->a:Lcom/cyjh/common/view/PassWordLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v0, Lcom/cyjh/common/view/PassWordLayout;->c:Ljava/util/List;

    if-eqz p2, :cond_3b

    iget-object p2, v0, Lcom/cyjh/common/view/PassWordLayout;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget v1, v0, Lcom/cyjh/common/view/PassWordLayout;->a:I

    if-ge p2, v1, :cond_3b

    iget-object p2, v0, Lcom/cyjh/common/view/PassWordLayout;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/cyjh/common/view/PassWordLayout;->setNextInput(Ljava/lang/String;)V

    :cond_3b
    iget-object p1, v0, Lcom/cyjh/common/view/PassWordLayout;->d:Lcom/cyjh/common/view/PassWordLayout$c;

    if-eqz p1, :cond_4a

    iget-object p1, v0, Lcom/cyjh/common/view/PassWordLayout;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, v0, Lcom/cyjh/common/view/PassWordLayout;->a:I

    invoke-virtual {v0}, Lcom/cyjh/common/view/PassWordLayout;->getPassString()Ljava/lang/String;

    :cond_4a
    return p3

    :cond_4b
    const/16 p1, 0x43

    if-ne p2, p1, :cond_aa

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout$a;->a:Lcom/cyjh/common/view/PassWordLayout;

    iget-object p2, p1, Lcom/cyjh/common/view/PassWordLayout;->c:Ljava/util/List;

    if-eqz p2, :cond_9a

    iget-object p2, p1, Lcom/cyjh/common/view/PassWordLayout;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9a

    iget-object p2, p1, Lcom/cyjh/common/view/PassWordLayout;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/cyjh/common/view/PassWordLayout;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget p2, p1, Lcom/cyjh/common/view/PassWordLayout;->b:I

    if-lez p2, :cond_84

    iget p2, p1, Lcom/cyjh/common/view/PassWordLayout;->b:I

    const-string v1, ""

    invoke-virtual {p1, p2, v0, v1}, Lcom/cyjh/common/view/PassWordLayout;->a(IZLjava/lang/String;)V

    iget p2, p1, Lcom/cyjh/common/view/PassWordLayout;->b:I

    sub-int/2addr p2, p3

    iput p2, p1, Lcom/cyjh/common/view/PassWordLayout;->b:I

    iget p2, p1, Lcom/cyjh/common/view/PassWordLayout;->b:I

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cyjh/common/view/PassWordView;

    if-eqz p2, :cond_9a

    goto :goto_92

    :cond_84
    iget p2, p1, Lcom/cyjh/common/view/PassWordLayout;->b:I

    if-nez p2, :cond_9a

    iget p2, p1, Lcom/cyjh/common/view/PassWordLayout;->b:I

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cyjh/common/view/PassWordView;

    if-eqz p2, :cond_9a

    :goto_92
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cyjh/common/view/PassWordView;->a()V

    :cond_9a
    iget-object p2, p1, Lcom/cyjh/common/view/PassWordLayout;->d:Lcom/cyjh/common/view/PassWordLayout$c;

    if-eqz p2, :cond_a9

    iget-object p2, p1, Lcom/cyjh/common/view/PassWordLayout;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a9

    invoke-virtual {p1}, Lcom/cyjh/common/view/PassWordLayout;->getPassString()Ljava/lang/String;

    :cond_a9
    return p3

    :cond_aa
    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout$a;->a:Lcom/cyjh/common/view/PassWordLayout;

    invoke-static {p1}, Lcom/cyjh/common/view/PassWordLayout;->c(Lcom/cyjh/common/view/PassWordLayout;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/cyjh/common/view/PassWordLayout$a;->a:Lcom/cyjh/common/view/PassWordLayout;

    invoke-virtual {p2}, Lcom/cyjh/common/view/PassWordLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return p3

    :cond_c3
    return v0
.end method
