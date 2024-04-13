.class final Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_21

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->a:Lcom/cyjh/elfin/ui/view/customview/a/c;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    const-string v0, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->a:Lcom/cyjh/elfin/ui/view/customview/a/c;

    :cond_21
    return-void
.end method
