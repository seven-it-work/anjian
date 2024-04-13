.class public Lcom/cyjh/elfin/ui/adpter/MsgNotifyAdapter;
.super Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter<",
        "Lcom/cyjh/http/bean/NotifyMsgBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/bingoogolapple/androidcommon/adapter/BGARecyclerViewAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private a(Lcn/bingoogolapple/androidcommon/adapter/h;Lcom/cyjh/http/bean/NotifyMsgBean;)V
    .registers 9

    if-eqz p2, :cond_6a

    const v0, 0x7f10011a

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000c9

    invoke-virtual {p1, v2}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f100118

    iget-object v4, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(ILjava/lang/CharSequence;)Lcn/bingoogolapple/androidcommon/adapter/h;

    const v3, 0x7f100119

    iget-object v4, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(ILjava/lang/CharSequence;)Lcn/bingoogolapple/androidcommon/adapter/h;

    iget-object v3, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_3d

    iget-object p2, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(ILjava/lang/CharSequence;)Lcn/bingoogolapple/androidcommon/adapter/h;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3d
    iget-object p1, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/adpter/MsgNotifyAdapter;->b:Landroid/content/Context;

    iget-object p2, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-static {p1}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {p1}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/o;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_6a
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcn/bingoogolapple/androidcommon/adapter/h;Ljava/lang/Object;)V
    .registers 9

    check-cast p2, Lcom/cyjh/http/bean/NotifyMsgBean;

    if-eqz p2, :cond_6c

    const v0, 0x7f10011a

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000c9

    invoke-virtual {p1, v2}, Lcn/bingoogolapple/androidcommon/adapter/h;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f100118

    iget-object v4, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(ILjava/lang/CharSequence;)Lcn/bingoogolapple/androidcommon/adapter/h;

    const v3, 0x7f100119

    iget-object v4, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(ILjava/lang/CharSequence;)Lcn/bingoogolapple/androidcommon/adapter/h;

    iget-object v3, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_3f

    iget-object p2, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcn/bingoogolapple/androidcommon/adapter/h;->a(ILjava/lang/CharSequence;)Lcn/bingoogolapple/androidcommon/adapter/h;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3f
    iget-object p1, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/adpter/MsgNotifyAdapter;->b:Landroid/content/Context;

    iget-object p2, p2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-static {p1}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {p1}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/o;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_6c
    return-void
.end method
