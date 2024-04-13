.class public Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FindSwipeRefreshLayout;
.super Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReHeadDefaultSwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReHeadDefaultSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0e0016

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FindSwipeRefreshLayout;->setColorSchemeResources([I)V

    const v0, 0x7f100222

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FindSwipeRefreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FindSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FindSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FindSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method
