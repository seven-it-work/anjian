.class final Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;->b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;->b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;->b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;->b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->c(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Ljava/lang/Runnable;

    return-void
.end method
