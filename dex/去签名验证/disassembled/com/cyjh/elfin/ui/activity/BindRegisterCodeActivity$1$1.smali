.class final Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1;->a(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/a/g;

.field final synthetic b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1;Lcom/cyjh/elfin/ui/a/g;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1$1;->b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1$1;->a:Lcom/cyjh/elfin/ui/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$1$1;->a:Lcom/cyjh/elfin/ui/a/g;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/a/g;->dismiss()V

    return-void
.end method
