.class final Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$1;->a:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    check-cast p1, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$1;->a:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->a(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget p1, p1, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->a:I

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$1;->a:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->a(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-ne v0, p1, :cond_26

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$1;->a:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$a;

    move-result-object p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$1;->a:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$a;

    :cond_26
    return-void
.end method
