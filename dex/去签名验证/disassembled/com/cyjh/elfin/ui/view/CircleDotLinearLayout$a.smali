.class final Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;-><init>(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)V

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->b(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)I

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->c(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->d(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v2}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->c(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_3b

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->c(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v2}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->e(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    :goto_37
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4e

    :cond_3b
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->c(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v2}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->f(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto :goto_37

    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_51
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
