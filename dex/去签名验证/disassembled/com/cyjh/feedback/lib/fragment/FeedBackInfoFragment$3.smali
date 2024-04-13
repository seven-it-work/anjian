.class final Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->a(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p3, p1, :cond_20

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-virtual {p2}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/cyjh/feedback/lib/activity/ImageSelectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    const/16 p3, 0x100

    invoke-virtual {p2, p1, p3}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_20
    return-void
.end method
