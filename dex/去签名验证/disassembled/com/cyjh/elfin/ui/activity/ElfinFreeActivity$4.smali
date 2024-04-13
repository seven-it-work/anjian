.class final Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Lcom/cyjh/http/bean/NotifyMsgBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/cyjh/http/bean/NotifyMsgBean;)V
    .registers 4
    .param p1    # Lcom/cyjh/http/bean/NotifyMsgBean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4b

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->IsSendMessage:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->d(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/arch/lifecycle/AndroidViewModel;

    move-result-object v1

    check-cast v1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v1, v1, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->a(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->f(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/app/NotificationManager;

    move-result-object p1

    const/16 v0, 0x3e9

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/cyjh/http/bean/NotifyMsgBean;

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->IsSendMessage:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->d(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/arch/lifecycle/AndroidViewModel;

    move-result-object v1

    check-cast v1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v1, v1, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->a(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->f(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/app/NotificationManager;

    move-result-object p1

    const/16 v0, 0x3e9

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4d
    return-void
.end method
