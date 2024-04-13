.class public Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcn/bingoogolapple/androidcommon/adapter/f;

.field protected c:Lcn/bingoogolapple/androidcommon/adapter/g;

.field protected d:Lcn/bingoogolapple/androidcommon/adapter/h;

.field protected e:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Lcn/bingoogolapple/androidcommon/adapter/f;Lcn/bingoogolapple/androidcommon/adapter/g;)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->a:Landroid/content/Context;

    iput-object p3, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->b:Lcn/bingoogolapple/androidcommon/adapter/f;

    iput-object p4, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->c:Lcn/bingoogolapple/androidcommon/adapter/g;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p1, Lcn/bingoogolapple/androidcommon/adapter/h;

    iget-object p2, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p1, p2, p3}, Lcn/bingoogolapple/androidcommon/adapter/h;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    iput-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->d:Lcn/bingoogolapple/androidcommon/adapter/h;

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->d:Lcn/bingoogolapple/androidcommon/adapter/h;

    invoke-virtual {p1, p0}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;)V

    return-void
.end method


# virtual methods
.method public final a()Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 2

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->d:Lcn/bingoogolapple/androidcommon/adapter/h;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->b:Lcn/bingoogolapple/androidcommon/adapter/f;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->b:Lcn/bingoogolapple/androidcommon/adapter/f;

    invoke-virtual {p0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcn/bingoogolapple/androidcommon/adapter/f;->a(I)V

    :cond_19
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1a

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->c:Lcn/bingoogolapple/androidcommon/adapter/g;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->c:Lcn/bingoogolapple/androidcommon/adapter/g;

    invoke-virtual {p0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewHolder;->getAdapterPosition()I

    invoke-interface {p1}, Lcn/bingoogolapple/androidcommon/adapter/g;->a()Z

    move-result p1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method
