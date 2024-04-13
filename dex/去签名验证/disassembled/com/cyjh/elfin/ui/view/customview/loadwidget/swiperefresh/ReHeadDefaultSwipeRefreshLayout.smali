.class public abstract Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReHeadDefaultSwipeRefreshLayout;
.super Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_36

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReHeadDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    instance-of v0, v0, Landroid/widget/AbsListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReHeadDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2b

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_2a

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_2b

    :cond_2a
    return v1

    :cond_2b
    return v2

    :cond_2c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReHeadDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_35

    return v1

    :cond_35
    return v2

    :cond_36
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReHeadDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
