.class final Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/feedback/lib/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->b(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->btn_sure:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
