.class public final Lcn/bingoogolapple/androidcommon/adapter/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field protected final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcn/bingoogolapple/androidcommon/adapter/d;

.field protected c:Lcn/bingoogolapple/androidcommon/adapter/e;

.field protected d:Lcn/bingoogolapple/androidcommon/adapter/c;

.field protected e:Landroid/view/View;

.field protected f:Landroid/content/Context;

.field protected g:I

.field protected h:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;

.field protected i:Landroid/support/v7/widget/RecyclerView;

.field protected j:Landroid/view/ViewGroup;

.field protected k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->a:Landroid/util/SparseArray;

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->i:Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->f:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->a:Landroid/util/SparseArray;

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->j:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->f:Landroid/content/Context;

    return-void
.end method

.method private a()Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;
    .registers 2

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->h:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;

    return-object v0
.end method

.method private a(II)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method private a(IILjava/lang/Object;)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method private a(ILandroid/graphics/Bitmap;)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private a(ILandroid/graphics/drawable/Drawable;)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private a(ILjava/lang/Object;)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method private a(ILjava/lang/String;)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private a(IZ)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object p0
.end method

.method private a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->k:Ljava/lang/Object;

    return-void
.end method

.method private b()I
    .registers 2

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->h:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->h:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;

    invoke-virtual {v0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->getAdapterPosition()I

    move-result v0

    return v0

    :cond_b
    iget v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->g:I

    return v0
.end method

.method private b(II)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method private c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->e:Landroid/view/View;

    return-object v0
.end method

.method private c(II)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method private c(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d(II)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method private d()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->k:Ljava/lang/Object;

    return-object v0
.end method

.method private d(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private e(II)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method private e(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_11
    return-void
.end method

.method private f(I)Landroid/widget/ImageView;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method private f(II)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method private g(I)Landroid/widget/TextView;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method private g(II)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method private h(II)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;)Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->g:I

    return-void
.end method

.method public final a(Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->h:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;

    return-void
.end method

.method public final a(Lcn/bingoogolapple/androidcommon/adapter/c;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->d:Lcn/bingoogolapple/androidcommon/adapter/c;

    return-void
.end method

.method public final a(Lcn/bingoogolapple/androidcommon/adapter/d;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->b:Lcn/bingoogolapple/androidcommon/adapter/d;

    return-void
.end method

.method public final a(Lcn/bingoogolapple/androidcommon/adapter/e;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->c:Lcn/bingoogolapple/androidcommon/adapter/e;

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->d:Lcn/bingoogolapple/androidcommon/adapter/c;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcn/bingoogolapple/androidcommon/adapter/h;->b()I

    return-void

    :cond_c
    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->j:Landroid/view/ViewGroup;

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcn/bingoogolapple/androidcommon/adapter/h;->b()I

    :cond_13
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->b:Lcn/bingoogolapple/androidcommon/adapter/d;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcn/bingoogolapple/androidcommon/adapter/h;->b()I

    return-void

    :cond_c
    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->j:Landroid/view/ViewGroup;

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcn/bingoogolapple/androidcommon/adapter/h;->b()I

    :cond_13
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .registers 2

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->c:Lcn/bingoogolapple/androidcommon/adapter/e;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_12

    :goto_8
    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->c:Lcn/bingoogolapple/androidcommon/adapter/e;

    invoke-direct {p0}, Lcn/bingoogolapple/androidcommon/adapter/h;->b()I

    invoke-interface {p1}, Lcn/bingoogolapple/androidcommon/adapter/e;->a()Z

    move-result p1

    return p1

    :cond_12
    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/h;->j:Landroid/view/ViewGroup;

    if-eqz p1, :cond_17

    goto :goto_8

    :cond_17
    const/4 p1, 0x0

    return p1
.end method
