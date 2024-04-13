.class public Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;
.super Lcom/cyjh/common/base/fragment/BaseFragement;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/TextView;

.field private e:Lcn/bingoogolapple/androidcommon/adapter/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment$1;-><init>(Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->e:Lcn/bingoogolapple/androidcommon/adapter/f;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;)Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)",
            "Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;"
        }
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;

    invoke-direct {v0}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "msg_data"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f10018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/cyjh/elfin/ui/adpter/MsgNotifyAdapter;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/ui/adpter/MsgNotifyAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->e:Lcn/bingoogolapple/androidcommon/adapter/f;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(Lcn/bingoogolapple/androidcommon/adapter/f;)V

    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->d:Landroid/widget/TextView;

    return-void
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->c:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const v0, 0x7f040061

    return v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    invoke-virtual {p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a()V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v1, 0x3eb

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onPause()V

    const-class v0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onResume()V

    const-class v0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/cyjh/common/base/fragment/BaseFragement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    if-eqz p2, :cond_18

    const-string v0, "msg_data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->c:Ljava/util/List;

    :cond_18
    const p2, 0x7f10018e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object p2, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p2, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lcom/cyjh/elfin/ui/adpter/MsgNotifyAdapter;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p2, v0}, Lcom/cyjh/elfin/ui/adpter/MsgNotifyAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p2, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    iget-object p2, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->e:Lcn/bingoogolapple/androidcommon/adapter/f;

    invoke-virtual {p2, v0}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(Lcn/bingoogolapple/androidcommon/adapter/f;)V

    const p2, 0x7f10018f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->c:Ljava/util/List;

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-eqz p1, :cond_84

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_84

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    iget-object p2, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->b:Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    :cond_84
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method
