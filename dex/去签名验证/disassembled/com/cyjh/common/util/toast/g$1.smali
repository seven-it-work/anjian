.class final Lcom/cyjh/common/util/toast/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/g;->a(Landroid/view/Window;Lcom/cyjh/common/util/toast/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Window;

.field final synthetic b:[I

.field final synthetic c:Lcom/cyjh/common/util/toast/g$a;


# direct methods
.method constructor <init>(Landroid/view/Window;[ILcom/cyjh/common/util/toast/g$a;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/common/util/toast/g$1;->a:Landroid/view/Window;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/g$1;->b:[I

    iput-object p3, p0, Lcom/cyjh/common/util/toast/g$1;->c:Lcom/cyjh/common/util/toast/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/toast/g$1;->a:Landroid/view/Window;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/g;->a(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/cyjh/common/util/toast/g$1;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v1, v0, :cond_11

    iget-object v1, p0, Lcom/cyjh/common/util/toast/g$1;->b:[I

    aput v0, v1, v2

    :cond_11
    return-void
.end method
