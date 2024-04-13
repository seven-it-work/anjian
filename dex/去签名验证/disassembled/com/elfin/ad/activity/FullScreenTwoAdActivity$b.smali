.class final Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;
.super Lcom/cyjh/common/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/activity/FullScreenTwoAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;


# direct methods
.method private constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {p0, p2}, Lcom/cyjh/common/c/a;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;I)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 7

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->c(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)I

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->d(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->e(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    sget v2, Lcom/elfin/ad/R$string;->countdown_time:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {p1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->e(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_31
    return-void
.end method

.method public final onFinish()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$b;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->a(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    return-void
.end method
