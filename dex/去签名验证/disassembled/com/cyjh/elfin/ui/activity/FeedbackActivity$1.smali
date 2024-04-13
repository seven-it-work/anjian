.class final Lcom/cyjh/elfin/ui/activity/FeedbackActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/FeedbackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$1;->a:Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$1;->a:Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->onBackPressed()V

    return-void
.end method
