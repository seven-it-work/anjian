.class final Lcom/cyjh/feedback/lib/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cyjh/feedback/lib/a/a$b;

.field final synthetic c:Lcom/cyjh/feedback/lib/a/a;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/a/a;Ljava/lang/String;Lcom/cyjh/feedback/lib/a/a$b;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    iput-object p2, p0, Lcom/cyjh/feedback/lib/a/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/feedback/lib/a/a$1;->b:Lcom/cyjh/feedback/lib/a/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/a$1;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x800

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    const/4 v0, 0x1

    if-lez p1, :cond_33

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/a;->a(Lcom/cyjh/feedback/lib/a/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/a/a;->a(Lcom/cyjh/feedback/lib/a/a;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_content_too_large:I

    :goto_27
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_33
    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/a;->b(Lcom/cyjh/feedback/lib/a/a;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/feedback/lib/a/a$1;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/a;->b(Lcom/cyjh/feedback/lib/a/a;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/a$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->b:Lcom/cyjh/feedback/lib/a/a$b;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/a/a$b;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->b:Lcom/cyjh/feedback/lib/a/a$b;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/a/a$b;->b:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    :goto_59
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_97

    :cond_5d
    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/a;->b(Lcom/cyjh/feedback/lib/a/a;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_79

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/a;->a(Lcom/cyjh/feedback/lib/a/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/a/a;->a(Lcom/cyjh/feedback/lib/a/a;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_count_more:I

    goto :goto_27

    :cond_79
    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/a;->b(Lcom/cyjh/feedback/lib/a/a;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/a$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->b:Lcom/cyjh/feedback/lib/a/a$b;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/a/a$b;->a:Landroid/widget/ImageView;

    const-string v0, "#77000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->b:Lcom/cyjh/feedback/lib/a/a$b;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/a/a$b;->b:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    goto :goto_59

    :goto_97
    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/a;->c(Lcom/cyjh/feedback/lib/a/a;)Lcom/cyjh/feedback/lib/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/a/a;->c(Lcom/cyjh/feedback/lib/a/a;)Lcom/cyjh/feedback/lib/a/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/a/a$1;->c:Lcom/cyjh/feedback/lib/a/a;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/a/a;->b(Lcom/cyjh/feedback/lib/a/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/cyjh/feedback/lib/a/a$a;->a(I)V

    :cond_b2
    return-void
.end method
