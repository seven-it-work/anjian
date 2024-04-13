.class public abstract Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:I

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation
.end field

.field protected d:Lcn/bingoogolapple/androidcommon/adapter/d;

.field protected e:Lcn/bingoogolapple/androidcommon/adapter/e;

.field protected f:Lcn/bingoogolapple/androidcommon/adapter/c;

.field protected g:Lcn/bingoogolapple/androidcommon/adapter/f;

.field protected h:Lcn/bingoogolapple/androidcommon/adapter/g;

.field protected i:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->b:Landroid/content/Context;

    const p1, 0x7f040036

    iput p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;
    .registers 7

    new-instance v0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;

    iget-object v1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->g:Lcn/bingoogolapple/androidcommon/adapter/f;

    iget-object v3, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->h:Lcn/bingoogolapple/androidcommon/adapter/g;

    invoke-direct {v0, v1, p1, v2, v3}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Lcn/bingoogolapple/androidcommon/adapter/f;Lcn/bingoogolapple/androidcommon/adapter/g;)V

    invoke-virtual {v0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    move-result-object p1

    iget-object v1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->d:Lcn/bingoogolapple/androidcommon/adapter/d;

    invoke-virtual {p1, v1}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(Lcn/bingoogolapple/androidcommon/adapter/d;)V

    invoke-virtual {v0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    move-result-object p1

    iget-object v1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->e:Lcn/bingoogolapple/androidcommon/adapter/e;

    invoke-virtual {p1, v1}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(Lcn/bingoogolapple/androidcommon/adapter/e;)V

    invoke-virtual {v0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    move-result-object p1

    iget-object v1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->f:Lcn/bingoogolapple/androidcommon/adapter/c;

    invoke-virtual {p1, v1}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(Lcn/bingoogolapple/androidcommon/adapter/c;)V

    invoke-virtual {v0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    return-object v0
.end method

.method private a(II)V
    .registers 5

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    iget-object v1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method private a(Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;I)V
    .registers 3

    invoke-virtual {p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(Lcn/bingoogolapple/androidcommon/adapter/h;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcn/bingoogolapple/androidcommon/adapter/c;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->f:Lcn/bingoogolapple/androidcommon/adapter/c;

    return-void
.end method

.method private a(Lcn/bingoogolapple/androidcommon/adapter/d;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->d:Lcn/bingoogolapple/androidcommon/adapter/d;

    return-void
.end method

.method private a(Lcn/bingoogolapple/androidcommon/adapter/e;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->e:Lcn/bingoogolapple/androidcommon/adapter/e;

    return-void
.end method

.method private a(Lcn/bingoogolapple/androidcommon/adapter/g;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->h:Lcn/bingoogolapple/androidcommon/adapter/g;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static b()V
    .registers 0

    return-void
.end method

.method private b(I)V
    .registers 3

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method private b(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyItemRangeInserted(II)V

    :cond_f
    return-void
.end method

.method private c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    return-object v0
.end method

.method private c(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    iget-object v1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyItemRangeInserted(II)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TM;"
        }
    .end annotation

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Lcn/bingoogolapple/androidcommon/adapter/f;)V
    .registers 2

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->g:Lcn/bingoogolapple/androidcommon/adapter/f;

    return-void
.end method

.method public abstract a(Lcn/bingoogolapple/androidcommon/adapter/h;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bingoogolapple/androidcommon/adapter/h;",
            "TM;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    goto :goto_a

    :cond_5
    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_a
    invoke-virtual {p0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;

    invoke-virtual {p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(Lcn/bingoogolapple/androidcommon/adapter/h;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    new-instance p2, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->g:Lcn/bingoogolapple/androidcommon/adapter/f;

    iget-object v2, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->h:Lcn/bingoogolapple/androidcommon/adapter/g;

    invoke-direct {p2, v0, p1, v1, v2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Lcn/bingoogolapple/androidcommon/adapter/f;Lcn/bingoogolapple/androidcommon/adapter/g;)V

    invoke-virtual {p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->d:Lcn/bingoogolapple/androidcommon/adapter/d;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(Lcn/bingoogolapple/androidcommon/adapter/d;)V

    invoke-virtual {p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->e:Lcn/bingoogolapple/androidcommon/adapter/e;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(Lcn/bingoogolapple/androidcommon/adapter/e;)V

    invoke-virtual {p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->f:Lcn/bingoogolapple/androidcommon/adapter/c;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(Lcn/bingoogolapple/androidcommon/adapter/c;)V

    invoke-virtual {p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a()Lcn/bingoogolapple/androidcommon/adapter/h;

    return-object p2
.end method
