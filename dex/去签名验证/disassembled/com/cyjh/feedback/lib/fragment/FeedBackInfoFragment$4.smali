.class final Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/feedback/lib/a/b$a;


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

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$4;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$4;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->c(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$4;->a:Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->image_add:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
