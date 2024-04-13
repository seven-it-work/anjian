.class final Lcom/cyjh/elfin/ui/fragment/MsgPushFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/bingoogolapple/androidcommon/adapter/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->a(Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;)Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/NotifyMsgBean;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;

    invoke-virtual {v1}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cyjh/elfin/ui/activity/MessageDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/cyjh/elfin/ui/activity/MessageDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/fragment/MsgPushFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
