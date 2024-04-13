.class public Lcom/elfin/ad/activity/FullScreenTwoAdActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;,
        Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;
    }
.end annotation


# static fields
.field public static final b:I = 0x8

.field public static final c:I = 0xc8

.field public static final d:I = 0x3e8

.field public static final e:I = 0x3

.field public static final f:I = 0x3e9

.field public static final g:I = 0x3ea

.field public static final h:I = 0x3eb

.field private static final i:Ljava/lang/String; = "FullScreenTwoAdActivity"

.field private static final q:I = 0x5

.field private static final u:I = 0x64

.field private static final v:I = 0x65

.field private static final w:I = 0x66

.field private static final x:I = 0x67


# instance fields
.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/iflytek/voiceads/conn/NativeDataRef;

.field private n:I

.field private o:I

.field private p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

.field private r:Z

.field private s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

.field private t:Z

.field private y:I

.field private z:Lcom/elfin/ad/d/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n:I

    iput v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o:I

    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->r:Z

    new-instance v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;B)V

    iput-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->t:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->y:I

    new-instance v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;

    invoke-direct {v0, p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->z:Lcom/elfin/ad/d/a;

    return-void
.end method

.method static synthetic a(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p1
.end method

.method static synthetic a(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n()V

    return-void
.end method

.method static synthetic a(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    goto :goto_25

    :cond_17
    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/cyjh/common/util/q;->b(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    :goto_25
    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_64

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onExposure(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5c

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->k:Landroid/widget/TextView;

    sget v2, Lcom/elfin/ad/R$string;->ad_source_mark:I

    invoke-virtual {p0, v2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v4}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5c
    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getActionType()I

    move-result p1

    iput p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n:I

    :cond_64
    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->r:Z

    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m()V

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    if-nez p1, :cond_75

    new-instance p1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0, v1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;IB)V

    iput-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    :cond_75
    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    invoke-virtual {p1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->start()Landroid/os/CountDownTimer;

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->y:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_95

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_95
    iget p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->y:I

    const/16 v0, 0x66

    if-ne p1, v0, :cond_a6

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    const/16 v0, 0x3eb

    invoke-virtual {p1, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_a6
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V
    .registers 4

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/elfin/ad/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;IB)V

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    invoke-virtual {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->start()Landroid/os/CountDownTimer;

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "\u540e\u53f0\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {p0, v1}, Lcom/cyjh/common/util/ae;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x66

    iput v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->y:I

    invoke-direct {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->a(Ljava/lang/String;)V

    return-void

    :cond_35
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n()V

    return-void

    :cond_39
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n()V

    return-void
.end method

.method static synthetic c(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)I
    .registers 3

    iget v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o:I

    return v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d()V
    .registers 2

    sget v0, Lcom/elfin/ad/R$id;->iv_splash_ad_fullscreen:I

    invoke-virtual {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    sget v0, Lcom/elfin/ad/R$id;->tv_splash_ad_mark:I

    invoke-virtual {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->k:Landroid/widget/TextView;

    sget v0, Lcom/elfin/ad/R$id;->tv_close_ad:I

    invoke-virtual {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->l:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic d(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->r:Z

    return p0
.end method

.method static synthetic e(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .registers 6

    invoke-static {p0}, Lcom/cyjh/common/util/f;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/cyjh/common/util/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1d

    const-string v2, "amd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    :goto_1e
    if-eqz v0, :cond_24

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :cond_24
    :goto_24
    const/16 v0, 0x3ea

    if-eqz v3, :cond_32

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    invoke-virtual {v1, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_32
    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "761D5F3C12409F07DCE571A8AA3C0480"

    invoke-virtual {v1, v2, v3}, Lcom/elfin/ad/e/a;->a(ILjava/lang/String;)Lcom/elfin/ad/b/b;

    move-result-object v1

    sget-object v2, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadIFLYAd --> ilfyAd.isDisplay="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/elfin/ad/b/b;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/elfin/ad/b/b;->a:Z

    if-eqz v2, :cond_6c

    new-instance v0, Lcom/iflytek/voiceads/IFLYNativeAd;

    iget-object v1, v1, Lcom/elfin/ad/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->z:Lcom/elfin/ad/d/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    const-string v1, "app_ver"

    invoke-static {p0}, Lcom/cyjh/common/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V

    return-void

    :cond_6c
    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    invoke-virtual {v1, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic f(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .registers 1

    iget-object p0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p0
.end method

.method private f()V
    .registers 6

    invoke-static {p0}, Lcom/cyjh/common/util/f;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/cyjh/common/util/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1d

    const-string v2, "amd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    :goto_1e
    if-eqz v0, :cond_24

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :cond_24
    :goto_24
    const/16 v0, 0x3ea

    if-eqz v3, :cond_32

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    invoke-virtual {v1, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_32
    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "761D5F3C12409F07DCE571A8AA3C0480"

    invoke-virtual {v1, v2, v3}, Lcom/elfin/ad/e/a;->a(ILjava/lang/String;)Lcom/elfin/ad/b/b;

    move-result-object v1

    sget-object v2, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadIFLYAd --> ilfyAd.isDisplay="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/elfin/ad/b/b;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/elfin/ad/b/b;->a:Z

    if-eqz v2, :cond_6c

    new-instance v0, Lcom/iflytek/voiceads/IFLYNativeAd;

    iget-object v1, v1, Lcom/elfin/ad/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->z:Lcom/elfin/ad/d/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    const-string v1, "app_ver"

    invoke-static {p0}, Lcom/cyjh/common/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V

    return-void

    :cond_6c
    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    invoke-virtual {v1, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic g(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;
    .registers 1

    iget-object p0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    return-object p0
.end method

.method private g()V
    .registers 5

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    const-string v1, "761D5F3C12409F07DCE571A8AA3C0480"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/elfin/ad/e/a;->a(ILjava/lang/String;)Lcom/elfin/ad/b/b;

    move-result-object v0

    sget-object v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadIFLYAd --> ilfyAd.isDisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/elfin/ad/b/b;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/elfin/ad/b/b;->a:Z

    if-eqz v1, :cond_3a

    new-instance v1, Lcom/iflytek/voiceads/IFLYNativeAd;

    iget-object v0, v0, Lcom/elfin/ad/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->z:Lcom/elfin/ad/d/a;

    invoke-direct {v1, p0, v0, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    const-string v0, "app_ver"

    invoke-static {p0}, Lcom/cyjh/common/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V

    return-void

    :cond_3a
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private h()V
    .registers 2

    const/16 v0, 0x66

    iput v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->y:I

    return-void
.end method

.method private i()V
    .registers 8

    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m()V

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onClick(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->t:Z

    iget v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    new-instance v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$2;

    invoke-direct {v1, p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$2;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    return-void

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->t:Z

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v1

    new-instance v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$3;

    invoke-direct {v0, p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$3;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    iput-object v0, v1, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v5, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Id:J

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    return-void
.end method

.method private j()V
    .registers 4

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/elfin/ad/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;IB)V

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    invoke-virtual {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->start()Landroid/os/CountDownTimer;

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "\u540e\u53f0\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {p0, v1}, Lcom/cyjh/common/util/ae;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x66

    iput v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->y:I

    invoke-direct {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->a(Ljava/lang/String;)V

    return-void

    :cond_35
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n()V

    return-void

    :cond_39
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n()V

    return-void
.end method

.method private k()V
    .registers 7

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v3, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onExposure(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->k:Landroid/widget/TextView;

    sget v3, Lcom/elfin/ad/R$string;->ad_source_mark:I

    invoke-virtual {p0, v3}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v5}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_37
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n:I

    :cond_3f
    iput-boolean v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->r:Z

    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m()V

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    if-nez v0, :cond_50

    new-instance v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;IB)V

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    :cond_50
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    invoke-virtual {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->y:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_70

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_70
    iget v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->y:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_81

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_81
    return-void
.end method

.method private l()V
    .registers 4

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    if-nez v0, :cond_d

    new-instance v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;IB)V

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    :cond_d
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    invoke-virtual {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private m()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    invoke-virtual {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;

    :cond_f
    return-void
.end method

.method private n()V
    .registers 3

    :try_start_0
    const-string v0, "com.cyjh.elfin.ui.activity.ElfinFreeActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_18
    invoke-virtual {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->finish()V

    return-void
.end method

.method private o()V
    .registers 5

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onClick(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->t:Z

    iget v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    new-instance v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$2;

    invoke-direct {v1, p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$2;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method private p()V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->t:Z

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v1

    new-instance v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$3;

    invoke-direct {v0, p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$3;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    iput-object v0, v1, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v5, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Id:J

    const/4 v3, 0x1

    const/4 v4, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/elfin/ad/R$id;->tv_close_ad:I

    if-ne p1, v0, :cond_15

    iget p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_11

    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->i()V

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->n()V

    return-void

    :cond_15
    sget v0, Lcom/elfin/ad/R$id;->iv_splash_ad_fullscreen:I

    if-ne p1, v0, :cond_1c

    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->i()V

    :cond_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    sget v0, Lcom/elfin/ad/R$layout;->activity_fullscreen_ad_two:I

    invoke-virtual {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->setContentView(I)V

    sget v0, Lcom/elfin/ad/R$id;->iv_splash_ad_fullscreen:I

    invoke-virtual {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->j:Landroid/widget/ImageView;

    sget v0, Lcom/elfin/ad/R$id;->tv_splash_ad_mark:I

    invoke-virtual {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->k:Landroid/widget/TextView;

    sget v0, Lcom/elfin/ad/R$id;->tv_close_ad:I

    invoke-virtual {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->l:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/cyjh/common/util/f;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/cyjh/common/util/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4f

    const-string v2, "amd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v1, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v1, 0x1

    :goto_50
    if-eqz v0, :cond_56

    if-eqz v1, :cond_55

    goto :goto_56

    :cond_55
    const/4 p1, 0x0

    :cond_56
    :goto_56
    const/16 v0, 0x3ea

    if-eqz p1, :cond_64

    :cond_5a
    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    invoke-virtual {p1, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9d

    :cond_64
    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object p1

    const/4 v1, 0x2

    const-string v2, "761D5F3C12409F07DCE571A8AA3C0480"

    invoke-virtual {p1, v1, v2}, Lcom/elfin/ad/e/a;->a(ILjava/lang/String;)Lcom/elfin/ad/b/b;

    move-result-object p1

    sget-object v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadIFLYAd --> ilfyAd.isDisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/elfin/ad/b/b;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/elfin/ad/b/b;->a:Z

    if-eqz v1, :cond_5a

    new-instance v0, Lcom/iflytek/voiceads/IFLYNativeAd;

    iget-object p1, p1, Lcom/elfin/ad/b/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->z:Lcom/elfin/ad/d/a;

    invoke-direct {v0, p0, p1, v1}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    const-string p1, "app_ver"

    invoke-static {p0}, Lcom/cyjh/common/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V

    :goto_9d
    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m()V

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->r:Z

    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->t:Z

    iput-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->m:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/c/c/c;->b()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->t:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->s:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    new-instance v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$1;

    invoke-direct {v1, p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$1;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    return-void
.end method
