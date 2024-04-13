.class public abstract Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;
.super Landroid/support/v4/widget/SwipeRefreshLayout;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

.field private b:I

.field private c:F

.field private d:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(II)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    iput p1, v0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->a:I

    sput p2, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->b:I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->setScrollLoad(Z)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/cyjh/elfin/ui/view/customview/a/c;Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .registers 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->setIListViewCallBack(Lcom/cyjh/elfin/ui/view/customview/a/c;)V

    :cond_7
    if-eqz p2, :cond_c

    invoke-virtual {p0, p2}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->a()V

    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->b()V

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->c()V

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->d()V

    return-void
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->e()V

    return-void
.end method

.method public abstract f()V
.end method

.method public getListView()Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_28

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->c:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->b:I

    add-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_28

    const/4 p1, 0x0

    return p1

    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->c:F

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->d:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$a;

    :cond_28
    :goto_28
    invoke-super {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->a:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_7
    return-void
.end method

.method public setTouchCallBackListener(Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->d:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$a;

    return-void
.end method
