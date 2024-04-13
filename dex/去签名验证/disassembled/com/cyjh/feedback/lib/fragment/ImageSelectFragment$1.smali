.class final Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;
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

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/feedback/lib/c/b;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->a(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v0, p1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->a(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Lcom/cyjh/feedback/lib/c/b;)V

    return-void
.end method
