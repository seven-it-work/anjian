.class public Lcom/cyjh/common/base/activity/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/base/activity/BaseActivity$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/app/ProgressDialog;

.field private b:Lcom/cyjh/common/receiver/NetworkStatusReceiver;

.field private c:Lcom/cyjh/common/f/c;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/common/base/activity/BaseActivity$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/content/Context;II)V
    .registers 5

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/cyjh/common/base/activity/BaseActivity;->a:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object p2, p0, Lcom/cyjh/common/base/activity/BaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private a(Lcom/cyjh/common/base/activity/BaseActivity$a;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method private b(Lcom/cyjh/common/base/activity/BaseActivity$a;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static h_()V
    .registers 0

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_6

    :cond_10
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/cyjh/common/g/a;->a()Lcom/cyjh/common/g/a;

    invoke-static {p0}, Lcom/cyjh/common/g/a;->a(Landroid/app/Activity;)V

    new-instance p1, Lcom/cyjh/common/base/activity/BaseActivity$1;

    invoke-direct {p1, p0}, Lcom/cyjh/common/base/activity/BaseActivity$1;-><init>(Lcom/cyjh/common/base/activity/BaseActivity;)V

    iput-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->c:Lcom/cyjh/common/f/c;

    new-instance p1, Lcom/cyjh/common/receiver/NetworkStatusReceiver;

    invoke-direct {p1}, Lcom/cyjh/common/receiver/NetworkStatusReceiver;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->b:Lcom/cyjh/common/receiver/NetworkStatusReceiver;

    iget-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->b:Lcom/cyjh/common/receiver/NetworkStatusReceiver;

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->c:Lcom/cyjh/common/f/c;

    iput-object v0, p1, Lcom/cyjh/common/receiver/NetworkStatusReceiver;->a:Lcom/cyjh/common/f/c;

    iget-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->b:Lcom/cyjh/common/receiver/NetworkStatusReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/common/base/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->b:Lcom/cyjh/common/receiver/NetworkStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/cyjh/common/base/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/cyjh/common/g/a;->a()Lcom/cyjh/common/g/a;

    invoke-static {p0}, Lcom/cyjh/common/g/a;->b(Landroid/app/Activity;)V

    return-void
.end method
