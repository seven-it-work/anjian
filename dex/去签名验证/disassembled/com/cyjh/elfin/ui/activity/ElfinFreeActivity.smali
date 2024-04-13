.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;
.super Lcom/cyjh/common/base/activity/BaseModelActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/common/base/activity/BaseModelActivity<",
        "Lcom/cyjh/elfin/ui/model/ElfinModel;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "ElfinFreeActivity"

.field public static final d:I = 0x2

.field private static final f:I = 0x3e9


# instance fields
.field private e:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

.field private g:Landroid/os/Handler;

.field private h:Landroid/support/v4/app/NotificationCompat$Builder;

.field private i:Landroid/app/NotificationManager;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/cyjh/elfin/entity/GameSwitchInfo;

.field private m:Z

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Z

.field private r:Lcom/cyjh/elfin/ui/model/RegCodeModel;

.field private s:Lcom/cyjh/http/c/c/k;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->m:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->t:Z

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .registers 5

    sget-object v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c:Ljava/lang/String;

    const-string v1, "cloudIMInitJudgeOperate --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    new-instance v1, Lcom/elf/studio/b;

    invoke-direct {v1}, Lcom/elf/studio/b;-><init>()V

    const v1, 0x7f090097

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p0

    iget-object p0, p0, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p0, p0, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {}, Lcom/elfin/engin/d;->a()Z

    const-string p0, "ElfStudioUtil"

    const-string v0, "cloudIMInit --> "

    invoke-static {p0, v0}, Lcom/hlzn/socketclient/f/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_45
    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Ljava/util/ArrayList;)V
    .registers 5

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->i:Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msg_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f0200e9

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->i:Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msg_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f0200e9

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/arch/lifecycle/AndroidViewModel;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    return-object p0
.end method

.method static synthetic e(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static synthetic f(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/app/NotificationManager;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->i:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static final synthetic f()V
    .registers 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    return-void
.end method

.method private g()V
    .registers 6

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyjh/elfin/base/AppContext;->g:Z

    const/16 v0, 0x66

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {}, Lcom/cyjh/elfin/b/b;->a()Lcom/cyjh/elfin/b/b;

    move-result-object v2

    new-instance v3, Lcom/cyjh/elfin/ui/model/ElfinModel$4;

    invoke-direct {v3, v0}, Lcom/cyjh/elfin/ui/model/ElfinModel$4;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v0

    new-instance v4, Lcom/cyjh/elfin/b/b$1;

    invoke-direct {v4, v2, v3}, Lcom/cyjh/elfin/b/b$1;-><init>(Lcom/cyjh/elfin/b/b;Lcom/cyjh/common/f/a;)V

    invoke-virtual {v0, v4}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v2

    new-instance v3, Lcom/cyjh/elfin/ui/model/ElfinModel$5;

    invoke-direct {v3, v0}, Lcom/cyjh/elfin/ui/model/ElfinModel$5;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-virtual {v2, v3}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->b()V

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09005b

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_a3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    goto :goto_a3

    :cond_9d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_aa

    :cond_a3
    :goto_a3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->n:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_aa
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-direct {v2}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;-><init>()V

    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    new-instance v2, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;

    invoke-direct {v2}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;-><init>()V

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/cyjh/elfin/ui/adpter/TabAdapter;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/cyjh/elfin/ui/adpter/TabAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/RTDViewPager;

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/RTDViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v2, 0x7f1000cb

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v2, "red_dot_flag"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f9
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v2

    new-instance v3, Lcom/cyjh/elfin/ui/model/ElfinModel$1;

    invoke-direct {v3, v0}, Lcom/cyjh/elfin/ui/model/ElfinModel$1;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-virtual {v2, v3}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/cyjh/http/c/c/k;

    invoke-direct {v0}, Lcom/cyjh/http/c/c/k;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->s:Lcom/cyjh/http/c/c/k;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->s:Lcom/cyjh/http/c/c/k;

    invoke-virtual {v0, p0}, Lcom/cyjh/http/c/c/k;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/elfin/services/a;->a()Lcom/cyjh/elfin/services/a;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, v0, Lcom/cyjh/elfin/services/a;->b:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_133

    iget-object v0, v0, Lcom/cyjh/elfin/services/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_133
    new-instance v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;

    invoke-direct {v0, p0, v4}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;B)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v3, v4, [Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/base/AppContext;->m:Z

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v2

    const-string v3, "sp_key_switch_setting_open_run_script"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-static {p0, v2}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Z)V

    if-eqz v2, :cond_171

    if-eqz v0, :cond_171

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v2, v0, Lcom/cyjh/elfin/ui/model/ElfinModel;->h:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance v1, Lcom/cyjh/elfin/ui/model/ElfinModel$6;

    invoke-direct {v1, v0}, Lcom/cyjh/elfin/ui/model/ElfinModel$6;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-static {v1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/common/f/a;)V

    :cond_171
    return-void
.end method

.method static synthetic g(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->q:Z

    return p0
.end method

.method private h()V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/base/AppContext;->m:Z

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "sp_key_switch_setting_open_run_script"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Z)V

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v1, v0, Lcom/cyjh/elfin/ui/model/ElfinModel;->h:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance v1, Lcom/cyjh/elfin/ui/model/ElfinModel$6;

    invoke-direct {v1, v0}, Lcom/cyjh/elfin/ui/model/ElfinModel$6;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-static {v1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/common/f/a;)V

    :cond_32
    return-void
.end method

.method static synthetic h(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lcom/cyjh/elfin/ui/model/RegCodeModel;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->r:Lcom/cyjh/elfin/ui/model/RegCodeModel;

    return-object p0
.end method

.method private i()V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->moveTaskToBack(Z)Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g:Landroid/os/Handler;

    sget-object v1, Lcom/cyjh/elfin/ui/activity/a;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic j(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lcom/cyjh/http/c/c/k;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->s:Lcom/cyjh/http/c/c/k;

    return-object p0
.end method

.method private j()V
    .registers 3

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->r:Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->r:Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method private k()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {}, Lcom/cyjh/elfin/b/b;->a()Lcom/cyjh/elfin/b/b;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/ui/model/ElfinModel$4;

    invoke-direct {v2, v0}, Lcom/cyjh/elfin/ui/model/ElfinModel$4;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v0

    new-instance v3, Lcom/cyjh/elfin/b/b$1;

    invoke-direct {v3, v1, v2}, Lcom/cyjh/elfin/b/b$1;-><init>(Lcom/cyjh/elfin/b/b;Lcom/cyjh/common/f/a;)V

    invoke-virtual {v0, v3}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/ui/model/ElfinModel$5;

    invoke-direct {v2, v0}, Lcom/cyjh/elfin/ui/model/ElfinModel$5;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-virtual {v1, v2}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic k(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->moveTaskToBack(Z)Z

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g:Landroid/os/Handler;

    sget-object v0, Lcom/cyjh/elfin/ui/activity/a;->a:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private l()V
    .registers 5

    sget-object v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c:Ljava/lang/String;

    const-string v1, "cloudIMInitJudgeOperate --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    new-instance v1, Lcom/elf/studio/b;

    invoke-direct {v1}, Lcom/elf/studio/b;-><init>()V

    const v1, 0x7f090097

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {}, Lcom/elfin/engin/d;->a()Z

    const-string v0, "ElfStudioUtil"

    const-string v1, "cloudIMInit --> "

    invoke-static {v0, v1}, Lcom/hlzn/socketclient/f/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_45
    return-void
.end method

.method static synthetic l(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .registers 9

    :try_start_0
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "has_already_push_system_app"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_12e

    const-string v0, "setenforce 0"

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v3, "has_already_push_system_app"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app-release.apk"

    invoke-static {v3, v4}, Lcom/cyjh/common/util/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const-string v3, "/sdcard/app-release.apk"

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "app-release.apk"

    invoke-static {p0, v4, v3}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-gt v4, v5, :cond_4a

    const-string v4, "app"

    goto :goto_4c

    :cond_4a
    const-string v4, "priv-app"

    :goto_4c
    sget-object v5, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pushApkToSystemApp --> filePath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",copyAppResult="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/String;

    const-string v5, "setenforce 0"

    aput-object v5, p0, v2

    const-string v2, "mount -o remount,rw /system"

    aput-object v2, p0, v1

    const/4 v2, 0x2

    const-string v5, "chmod 777 /system"

    aput-object v5, p0, v2

    const/4 v2, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 /system/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v2

    const/4 v2, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cat "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > /system/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app-release.apk"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "chmod 777 /system/"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app-release.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2

    const/4 v2, 0x6

    const-string v3, "mount -o remount,ro /system"

    aput-object v3, p0, v2

    invoke-static {p0}, Lcom/cyjh/common/util/ac;->a([Ljava/lang/String;)Lcom/cyjh/common/util/ac$a;

    move-result-object p0

    iget-object v2, p0, Lcom/cyjh/common/util/ac$a;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "has_already_push_system_app"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v3, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pushApkToSystemApp --> errorMsg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cyjh/common/util/ac$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",successMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cyjh/common/util/ac$a;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",cmdResult="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/util/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_117

    invoke-static {v0, v1}, Lcom/cyjh/common/util/e;->a(Ljava/lang/String;Z)V

    return-void

    :cond_117
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12e

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/cyjh/common/util/e;->a(Ljava/lang/String;Z)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12e} :catch_12f

    :cond_12e
    return-void

    :catch_12f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private m()V
    .registers 2

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_61

    :cond_5a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    :goto_5d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    goto :goto_5d
.end method

.method private o()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-direct {v1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;-><init>()V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    new-instance v1, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;

    invoke-direct {v1}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;-><init>()V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cyjh/elfin/ui/adpter/TabAdapter;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/cyjh/elfin/ui/adpter/TabAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/RTDViewPager;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/RTDViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v1, 0x7f1000cb

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method private p()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->stopService(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/elfin/engin/d;->a(Landroid/content/Context;)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_23

    const-string v1, "com.cyjh.elfin:download_server"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private q()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    iget-object v1, v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->stopService(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/elfin/engin/d;->a(Landroid/content/Context;)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_33

    const-string v1, "com.cyjh.elfin:download_server"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method private r()V
    .registers 5

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "red_dot_flag"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method private s()V
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;B)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v1, v1, [Ljava/io/InputStream;

    invoke-virtual {v0, v2, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private t()V
    .registers 10

    :try_start_0
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "has_already_push_system_app"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_12e

    const-string v0, "setenforce 0"

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v3, "has_already_push_system_app"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app-release.apk"

    invoke-static {v3, v4}, Lcom/cyjh/common/util/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const-string v3, "/sdcard/app-release.apk"

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "app-release.apk"

    invoke-static {v4, v5, v3}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-gt v5, v6, :cond_4a

    const-string v5, "app"

    goto :goto_4c

    :cond_4a
    const-string v5, "priv-app"

    :goto_4c
    sget-object v6, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pushApkToSystemApp --> filePath="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",copyAppResult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "setenforce 0"

    aput-object v6, v4, v2

    const-string v2, "mount -o remount,rw /system"

    aput-object v2, v4, v1

    const/4 v2, 0x2

    const-string v6, "chmod 777 /system"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmod 777 /system/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cat "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > /system/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app-release.apk"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 /system/"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "app-release.apk"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "mount -o remount,ro /system"

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/cyjh/common/util/ac;->a([Ljava/lang/String;)Lcom/cyjh/common/util/ac$a;

    move-result-object v2

    iget-object v3, v2, Lcom/cyjh/common/util/ac$a;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v4

    const-string v5, "has_already_push_system_app"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v4, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pushApkToSystemApp --> errorMsg="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/cyjh/common/util/ac$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",successMsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/cyjh/common/util/ac$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cmdResult="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/util/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-static {v0, v1}, Lcom/cyjh/common/util/e;->a(Ljava/lang/String;Z)V

    return-void

    :cond_117
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cyjh/common/util/e;->a(Ljava/lang/String;Z)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12e} :catch_12f

    :cond_12e
    return-void

    :catch_12f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/cyjh/elfin/ui/model/ElfinModel;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    return-object v0
.end method

.method protected final c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/ElfinModel;->f:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$4;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/ElfinModel;->e:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/ElfinModel;->g:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/ElfinModel;->h:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$7;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$7;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method protected final d()V
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->p:Landroid/widget/ImageView;

    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o:Landroid/widget/ImageView;

    const v0, 0x7f1000cd

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f1000cc

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->k:Landroid/widget/TextView;

    return-void
.end method

.method protected final e()I
    .registers 2

    const v0, 0x7f040025

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_14

    const/4 p2, 0x2

    if-ne p1, p2, :cond_14

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/elfin/engin/a/c;->c()Lcom/elfin/engin/a/b;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/elfin/engin/a/b;->a(Landroid/content/Context;)V

    :cond_14
    const/16 p2, 0x2710

    if-eq p1, p2, :cond_19

    return-void

    :cond_19
    sget-object p1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c:Ljava/lang/String;

    const-string p2, "onActivityResult --> "

    invoke-static {p1, p2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6f

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const p3, 0x7f090105

    invoke-virtual {p0, p3}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "application/vnd.android.package-archive"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_6f
    return-void
.end method

.method public onBackPressed()V
    .registers 5

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->t:Z

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    iget-object v1, v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz v1, :cond_23

    iget-object v0, v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->stopService(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/elfin/engin/d;->a(Landroid/content/Context;)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_46

    const-string v1, "com.cyjh.elfin:download_server"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_46
    invoke-static {}, Lcom/cyjh/common/g/a;->a()Lcom/cyjh/common/g/a;

    invoke-static {}, Lcom/cyjh/common/g/a;->b()V

    return-void

    :cond_4d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->t:Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900cd

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$3;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$3;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_38

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->j:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_28

    const-string v1, "msg_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_28
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2c
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x7f1000c8
        :pswitch_2c
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/cyjh/elfin/base/AppContext;->g:Z

    const/16 p1, 0x66

    invoke-static {p1}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {}, Lcom/cyjh/elfin/b/b;->a()Lcom/cyjh/elfin/b/b;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/ui/model/ElfinModel$4;

    invoke-direct {v2, p1}, Lcom/cyjh/elfin/ui/model/ElfinModel$4;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object p1

    new-instance v3, Lcom/cyjh/elfin/b/b$1;

    invoke-direct {v3, v1, v2}, Lcom/cyjh/elfin/b/b$1;-><init>(Lcom/cyjh/elfin/b/b;Lcom/cyjh/common/f/a;)V

    invoke-virtual {p1, v3}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/ui/model/ElfinModel$5;

    invoke-direct {v2, p1}, Lcom/cyjh/elfin/ui/model/ElfinModel$5;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-virtual {v1, v2}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/model/ElfinModel;->b()V

    :cond_45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_a6

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a0

    goto :goto_a6

    :cond_a0
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ad

    :cond_a6
    :goto_a6
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_ad
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-direct {v1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;-><init>()V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    new-instance v1, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;

    invoke-direct {v1}, Lcom/cyjh/elfin/ui/fragment/DescriptionFragment;-><init>()V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->e:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cyjh/elfin/ui/adpter/TabAdapter;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/cyjh/elfin/ui/adpter/TabAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    const p1, 0x7f1000ce

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/RTDViewPager;

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/ui/view/customview/RTDViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v1, 0x7f1000cb

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v1, "red_dot_flag"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_fc

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_fc
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a()V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/ui/model/ElfinModel$1;

    invoke-direct {v2, p1}, Lcom/cyjh/elfin/ui/model/ElfinModel$1;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-virtual {v1, v2}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/cyjh/http/c/c/k;

    invoke-direct {p1}, Lcom/cyjh/http/c/c/k;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->s:Lcom/cyjh/http/c/c/k;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->s:Lcom/cyjh/http/c/c/k;

    invoke-virtual {p1, p0}, Lcom/cyjh/http/c/c/k;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/elfin/services/a;->a()Lcom/cyjh/elfin/services/a;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p1, Lcom/cyjh/elfin/services/a;->b:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_136

    iget-object p1, p1, Lcom/cyjh/elfin/services/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_136
    new-instance p1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;

    invoke-direct {p1, p0, v3}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;B)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/base/AppContext;->m:Z

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "sp_key_switch_setting_open_run_script"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Z)V

    if-eqz v1, :cond_174

    if-eqz p1, :cond_174

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object v1, p1, Lcom/cyjh/elfin/ui/model/ElfinModel;->h:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/cyjh/elfin/ui/model/ElfinModel$6;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/ui/model/ElfinModel$6;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/common/f/a;)V

    :cond_174
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->r:Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->r:Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/model/RegCodeModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$2;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {p1, p0, v0}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->m:Z

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iput-boolean v0, v2, Lcom/cyjh/elfin/base/AppContext;->f:Z

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iput-boolean v0, v2, Lcom/cyjh/elfin/base/AppContext;->g:Z

    invoke-static {}, Lcom/cyjh/elfin/b/b;->a()Lcom/cyjh/elfin/b/b;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    invoke-virtual {v2}, Lcom/cyjh/elfin/b/a;->close()V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/ParamsWrap;->cleanData()V

    invoke-static {}, Lcom/cyjh/http/c/c/k;->a()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iput-boolean v0, v2, Lcom/cyjh/elfin/base/AppContext;->h:Z

    invoke-static {}, Lcom/cyjh/elfin/services/a;->a()Lcom/cyjh/elfin/services/a;

    move-result-object v0

    iget-object v2, v0, Lcom/cyjh/elfin/services/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, v0, Lcom/cyjh/elfin/services/a;->c:Lcom/cyjh/elfin/services/a$a;

    iput-object v1, v0, Lcom/cyjh/elfin/services/a;->d:Landroid/os/Messenger;

    iput-object v1, v0, Lcom/cyjh/elfin/services/a;->a:Landroid/os/Messenger;

    return-void
.end method

.method public onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_23

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_11

    return-void

    :cond_11
    sget-object p1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c:Ljava/lang/String;

    const-string v0, "SCRIPT_NEED_UPGRADE"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->q:Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a()V

    return-void

    :cond_23
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast p1, Lcom/cyjh/elfin/ui/model/ElfinModel;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/cyjh/elfin/b/b;->a()Lcom/cyjh/elfin/b/b;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    invoke-virtual {p1}, Lcom/cyjh/elfin/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "Message"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_3d
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->j:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->m:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->b()V

    :cond_11
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->m:Z

    return-void
.end method
