.class public final Lcom/cyjh/feedback/lib/a/b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/feedback/lib/a/b$a;,
        Lcom/cyjh/feedback/lib/a/b$b;
    }
.end annotation


# static fields
.field private static final d:I = 0x4

.field private static final e:I = 0x1


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/cyjh/feedback/lib/a/b$a;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/feedback/lib/a/b;->c:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/feedback/lib/a/b;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/cyjh/feedback/lib/a/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/a/b;->b:Lcom/cyjh/feedback/lib/a/b$a;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/cyjh/feedback/lib/a/b;)Lcom/cyjh/feedback/lib/a/b$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/feedback/lib/a/b;->b:Lcom/cyjh/feedback/lib/a/b$a;

    return-object p0
.end method


# virtual methods
.method public final getCount()I
    .registers 4

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_16

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_16
    return v2

    :cond_17
    return v1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_28

    iget-object p2, p0, Lcom/cyjh/feedback/lib/a/b;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->grid_view_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/cyjh/feedback/lib/a/b$b;

    invoke-direct {p3, p0}, Lcom/cyjh/feedback/lib/a/b$b;-><init>(Lcom/cyjh/feedback/lib/a/b;)V

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_iv_grid_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/cyjh/feedback/lib/a/b$b;->a:Landroid/widget/ImageView;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_delete_select:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/cyjh/feedback/lib/a/b$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_28
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cyjh/feedback/lib/a/b$b;

    :goto_2e
    iget-object v1, p3, Lcom/cyjh/feedback/lib/a/b$b;->a:Landroid/widget/ImageView;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$mipmap;->img_add_img_select:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p3, Lcom/cyjh/feedback/lib/a/b$b;->b:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/a/b;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_5d

    invoke-static {}, Lcom/cyjh/feedback/lib/e/c;->a()Lcom/cyjh/feedback/lib/e/c;

    move-result-object v1

    iget-object v3, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p3, Lcom/cyjh/feedback/lib/a/b$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v4}, Lcom/cyjh/feedback/lib/e/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p3, Lcom/cyjh/feedback/lib/a/b$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5d
    iget-object v1, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_7f

    invoke-static {}, Lcom/cyjh/feedback/lib/e/c;->a()Lcom/cyjh/feedback/lib/e/c;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/feedback/lib/a/b;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p3, Lcom/cyjh/feedback/lib/a/b$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/feedback/lib/e/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p3, Lcom/cyjh/feedback/lib/a/b$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7f
    iget-object p3, p3, Lcom/cyjh/feedback/lib/a/b$b;->b:Landroid/widget/ImageView;

    new-instance v0, Lcom/cyjh/feedback/lib/a/b$1;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/feedback/lib/a/b$1;-><init>(Lcom/cyjh/feedback/lib/a/b;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
