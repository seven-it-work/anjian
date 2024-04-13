.class public final Lcom/cyjh/feedback/lib/b/b;
.super Lcom/cyjh/feedback/lib/base/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cyjh/http/c/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/feedback/lib/b/b$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "0"

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final r:I = 0x1

.field private static final s:I


# instance fields
.field public c:Lcom/cyjh/feedback/lib/b/b$a;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

.field private n:Lcom/cyjh/feedback/lib/b/c;

.field private o:Landroid/content/Context;

.field private p:Lcom/cyjh/http/c/c/i;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile t:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/http/bean/request/FeedbackRequestInfo;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cyjh/http/bean/request/FeedbackRequestInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cyjh/feedback/lib/base/a;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/feedback/lib/b/b;->t:I

    iput-object p2, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    iput-object p3, p0, Lcom/cyjh/feedback/lib/b/b;->q:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 5

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#3c7ac5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v1, p0, v0, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private a(Lcom/cyjh/feedback/lib/b/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->c:Lcom/cyjh/feedback/lib/b/b$a;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/feedback/lib/b/b;Ljava/util/List;)V
    .registers 4

    iget v0, p0, Lcom/cyjh/feedback/lib/b/b;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/feedback/lib/b/b;->t:I

    iget v0, p0, Lcom/cyjh/feedback/lib/b/b;->t:I

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->FreebackImages:[Ljava/lang/String;

    :cond_26
    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->p:Lcom/cyjh/http/c/c/i;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    iget-object p0, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-virtual {p1, v0, p0}, Lcom/cyjh/http/c/c/i;->a(Landroid/content/Context;Lcom/cyjh/http/bean/request/FeedbackRequestInfo;)V

    :cond_2f
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/cyjh/feedback/lib/b/b;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/feedback/lib/b/b;->t:I

    iget v0, p0, Lcom/cyjh/feedback/lib/b/b;->t:I

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->FreebackImages:[Ljava/lang/String;

    :cond_26
    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->p:Lcom/cyjh/http/c/c/i;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/http/c/c/i;->a(Landroid/content/Context;Lcom/cyjh/http/bean/request/FeedbackRequestInfo;)V

    :cond_2f
    return-void
.end method

.method private c()V
    .registers 2

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_name:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->i:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_system:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->j:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_root:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->k:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_feedback_content:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->l:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_back:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->g:Landroid/widget/Button;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback_info:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->h:Landroid/widget/Button;

    return-void
.end method

.method private d()V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_name:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v4, v4, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v3, v3, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/cyjh/feedback/lib/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_use_system:I

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v4, v4, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v3, v3, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/cyjh/feedback/lib/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->RootStatus:I

    packed-switch v0, :pswitch_data_9a

    goto :goto_84

    :pswitch_44
    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_is_root:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v4, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_no_root:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_no_root:I

    goto :goto_79

    :pswitch_5f
    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_is_root:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v4, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_yes_root:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_yes_root:I

    :goto_79
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cyjh/feedback/lib/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_84
    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    sget-object v1, Lcom/cyjh/feedback/lib/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_99
    return-void

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_44
    .end packed-switch
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->n:Lcom/cyjh/feedback/lib/b/c;

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/b/c;->dismiss()V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->c:Lcom/cyjh/feedback/lib/b/b$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->c:Lcom/cyjh/feedback/lib/b/b$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cyjh/feedback/lib/b/b$a;->a(I)V

    :cond_f
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/b/b;->dismiss()V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->n:Lcom/cyjh/feedback/lib/b/c;

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/b/c;->dismiss()V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->c:Lcom/cyjh/feedback/lib/b/b$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->c:Lcom/cyjh/feedback/lib/b/b$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cyjh/feedback/lib/b/b$a;->a(I)V

    :cond_f
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/b/b;->dismiss()V

    return-void
.end method

.method public final dismiss()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/feedback/lib/base/a;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/feedback/lib/b/b;->t:I

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->p:Lcom/cyjh/http/c/c/i;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->p:Lcom/cyjh/http/c/c/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_back:I

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/b/b;->dismiss()V

    return-void

    :cond_c
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback_info:I

    if-ne p1, v0, :cond_129

    :try_start_10
    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    if-nez p1, :cond_6d

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_58

    :cond_51
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_59

    :cond_58
    const/4 v0, 0x1

    :cond_59
    if-nez v0, :cond_6d

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->is_net_open:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6d
    new-instance p1, Lcom/cyjh/http/oss/MyOSSUtils$Builder;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-direct {p1, v0, v2}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V

    invoke-virtual {p1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->build()Lcom/cyjh/http/oss/MyOSSUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/http/oss/MyOSSUtils;->isTokenExpireTime()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    const-string v0, "\u963f\u91cc\u4e91Token\u8fc7\u671f\uff0c\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Lcom/cyjh/http/c/c/k;

    invoke-direct {p1}, Lcom/cyjh/http/c/c/k;-><init>()V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/cyjh/http/c/c/k;->a(Landroid/content/Context;)V

    return-void

    :cond_9a
    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->n:Lcom/cyjh/feedback/lib/b/c;

    if-nez v0, :cond_a7

    new-instance v0, Lcom/cyjh/feedback/lib/b/c;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/feedback/lib/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->n:Lcom/cyjh/feedback/lib/b/c;

    :cond_a7
    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->n:Lcom/cyjh/feedback/lib/b/c;

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/b/c;->show()V

    new-instance v0, Lcom/cyjh/http/c/c/i;

    invoke-direct {v0, p0}, Lcom/cyjh/http/c/c/i;-><init>(Lcom/cyjh/http/c/d/c;)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->p:Lcom/cyjh/http/c/c/i;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_104

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    if-eqz v0, :cond_104

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v5

    iget-object v5, v5, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v5, v5, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cyjh/feedback/lib/b/b$1;

    invoke-direct {v4, p0, v0}, Lcom/cyjh/feedback/lib/b/b$1;-><init>(Lcom/cyjh/feedback/lib/b/b;Ljava/util/List;)V

    invoke-virtual {p1, v2, v3, v4}, Lcom/cyjh/http/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V

    goto :goto_ce

    :cond_103
    return-void

    :cond_104
    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->p:Lcom/cyjh/http/c/c/i;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/http/c/c/i;->a(Landroid/content/Context;Lcom/cyjh/http/bean/request/FeedbackRequestInfo;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10d} :catch_10e

    return-void

    :catch_10e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FeedBackDialog--\u63d0\u4ea4\u6570\u636e\u7ed9\u540e\u53f0\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_129
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/cyjh/feedback/lib/base/a;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->dialog_feedback_info:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/b;->setContentView(I)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/b;->a(F)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/feedback/lib/b/b;->a(FF)V

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_name:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->i:Landroid/widget/TextView;

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_system:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->j:Landroid/widget/TextView;

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_root:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->k:Landroid/widget/TextView;

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_feedback_content:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->l:Landroid/widget/TextView;

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_back:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->g:Landroid/widget/Button;

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback_info:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/b/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->h:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_name:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v3, v3, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v2, v2, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/cyjh/feedback/lib/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_use_system:I

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v3, v3, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v2, v2, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/cyjh/feedback/lib/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget p1, p1, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->RootStatus:I

    packed-switch p1, :pswitch_data_f8

    goto :goto_d7

    :pswitch_97
    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_is_root:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_no_root:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_no_root:I

    goto :goto_cc

    :pswitch_b2
    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_is_root:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_yes_root:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/b/b;->o:Landroid/content/Context;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_yes_root:I

    :goto_cc
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/feedback/lib/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d7
    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    sget-object v0, Lcom/cyjh/feedback/lib/b/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ec

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b;->m:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ec
    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->h:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b;->g:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_97
    .end packed-switch
.end method
