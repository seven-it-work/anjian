.class final Lcom/cyjh/common/util/toast/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/g;->f(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Window;

.field final synthetic b:[I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/view/Window;[ILandroid/view/View;I)V
    .registers 5

    iput-object p1, p0, Lcom/cyjh/common/util/toast/g$2;->a:Landroid/view/Window;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/g$2;->b:[I

    iput-object p3, p0, Lcom/cyjh/common/util/toast/g$2;->c:Landroid/view/View;

    iput p4, p0, Lcom/cyjh/common/util/toast/g$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 9

    iget-object v0, p0, Lcom/cyjh/common/util/toast/g$2;->a:Landroid/view/Window;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/g;->b(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/cyjh/common/util/toast/g$2;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v1, v0, :cond_31

    iget-object v1, p0, Lcom/cyjh/common/util/toast/g$2;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/cyjh/common/util/toast/g$2;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/cyjh/common/util/toast/g$2;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/cyjh/common/util/toast/g$2;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget v6, p0, Lcom/cyjh/common/util/toast/g$2;->d:I

    iget-object v7, p0, Lcom/cyjh/common/util/toast/g$2;->a:Landroid/view/Window;

    invoke-static {v7}, Lcom/cyjh/common/util/toast/g;->a(Landroid/view/Window;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/cyjh/common/util/toast/g$2;->b:[I

    aput v0, v1, v2

    :cond_31
    return-void
.end method
