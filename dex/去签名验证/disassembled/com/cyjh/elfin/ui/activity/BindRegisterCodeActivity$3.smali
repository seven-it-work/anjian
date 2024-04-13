.class final Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->a(Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;->b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;->b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->b(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Landroid/arch/lifecycle/AndroidViewModel;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/model/RegCodeModel;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$3;->b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->a(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Ljava/lang/String;I)V

    return-void
.end method
