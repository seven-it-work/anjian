.class public final Lcom/cyjh/feedback/lib/a/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/feedback/lib/a/a$a;,
        Lcom/cyjh/feedback/lib/a/a$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/cyjh/feedback/lib/a/a$a;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/a/a;->a:Ljava/util/Set;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/a/a;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/feedback/lib/a/a;->d:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/cyjh/feedback/lib/a/a;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/feedback/lib/a/a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/feedback/lib/a/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method private a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/a;->a:Ljava/util/Set;

    return-object v0
.end method

.method private a(Lcom/cyjh/feedback/lib/a/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/a/a;->b:Lcom/cyjh/feedback/lib/a/a$a;

    return-void
.end method

.method static synthetic b(Lcom/cyjh/feedback/lib/a/a;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/feedback/lib/a/a;->a:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic c(Lcom/cyjh/feedback/lib/a/a;)Lcom/cyjh/feedback/lib/a/a$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/feedback/lib/a/a;->b:Lcom/cyjh/feedback/lib/a/a$a;

    return-object p0
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_28

    new-instance p2, Lcom/cyjh/feedback/lib/a/a$b;

    invoke-direct {p2, p0}, Lcom/cyjh/feedback/lib/a/a$b;-><init>(Lcom/cyjh/feedback/lib/a/a;)V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/a/a;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->image_adapter_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_select_grid_item:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p2, Lcom/cyjh/feedback/lib/a/a$b;->b:Landroid/widget/ImageButton;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_grid_item:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/cyjh/feedback/lib/a/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_31

    :cond_28
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cyjh/feedback/lib/a/a$b;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    :goto_31
    iget-object v1, p2, Lcom/cyjh/feedback/lib/a/a$b;->a:Landroid/widget/ImageView;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$mipmap;->pictures_no:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/a/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/cyjh/feedback/lib/e/c$c;->FILO$789f335a:I

    invoke-static {v1}, Lcom/cyjh/feedback/lib/e/c;->a(I)Lcom/cyjh/feedback/lib/e/c;

    move-result-object v1

    iget-object v2, p2, Lcom/cyjh/feedback/lib/a/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v2}, Lcom/cyjh/feedback/lib/e/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p2, Lcom/cyjh/feedback/lib/a/a$b;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p2, Lcom/cyjh/feedback/lib/a/a$b;->b:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/a/a;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p2, Lcom/cyjh/feedback/lib/a/a$b;->a:Landroid/widget/ImageView;

    const-string v2, "#77000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p2, Lcom/cyjh/feedback/lib/a/a$b;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_6f
    iget-object v0, p2, Lcom/cyjh/feedback/lib/a/a$b;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/cyjh/feedback/lib/a/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cyjh/feedback/lib/a/a$1;-><init>(Lcom/cyjh/feedback/lib/a/a;Ljava/lang/String;Lcom/cyjh/feedback/lib/a/a$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
