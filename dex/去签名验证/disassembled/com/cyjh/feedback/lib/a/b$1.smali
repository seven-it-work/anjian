.class final Lcom/cyjh/feedback/lib/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/a/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cyjh/feedback/lib/a/b;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/a/b;I)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/feedback/lib/a/b$1;->b:Lcom/cyjh/feedback/lib/a/b;

    iput p2, p0, Lcom/cyjh/feedback/lib/a/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/b$1;->b:Lcom/cyjh/feedback/lib/a/b;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/b;->a(Lcom/cyjh/feedback/lib/a/b;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/b$1;->b:Lcom/cyjh/feedback/lib/a/b;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/a/b;->a(Lcom/cyjh/feedback/lib/a/b;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/cyjh/feedback/lib/a/b$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/b$1;->b:Lcom/cyjh/feedback/lib/a/b;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/a/b;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/b$1;->b:Lcom/cyjh/feedback/lib/a/b;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/b;->b(Lcom/cyjh/feedback/lib/a/b;)Lcom/cyjh/feedback/lib/a/b$a;

    move-result-object p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/b$1;->b:Lcom/cyjh/feedback/lib/a/b;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/b;->b(Lcom/cyjh/feedback/lib/a/b;)Lcom/cyjh/feedback/lib/a/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/b$1;->b:Lcom/cyjh/feedback/lib/a/b;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/a/b;->a(Lcom/cyjh/feedback/lib/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/cyjh/feedback/lib/a/b$a;->a(I)V

    :cond_35
    return-void
.end method
