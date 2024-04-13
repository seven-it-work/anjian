.class final Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$2;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object p2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$2;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-static {p2}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->b(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$2;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    sget p4, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->feedback_num_hint:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p3, p4, v0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
