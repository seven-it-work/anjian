.class final Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lcom/cyjh/mobileanjian/ipc/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lcom/cyjh/mobileanjian/ipc/ui/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_23

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->c(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_26
    return-void
.end method
