.class public abstract Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/a/e;


# instance fields
.field protected a:Lcom/cyjh/elfin/ui/view/customview/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setCallBack(Lcom/cyjh/elfin/ui/view/customview/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;->a:Lcom/cyjh/elfin/ui/view/customview/a/c;

    return-void
.end method
