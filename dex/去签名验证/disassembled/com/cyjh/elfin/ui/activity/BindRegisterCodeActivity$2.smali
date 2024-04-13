.class final Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$2;->a:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V
    .registers 4
    .param p1    # Lcom/cyjh/http/bean/response/RegCodeInfoResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$2;->a:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Data:Lcom/cyjh/http/bean/response/QueryRegCodeInfo;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->a(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V

    return-void

    :cond_e
    iget-object v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget p1, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    iget v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$2;->a:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Data:Lcom/cyjh/http/bean/response/QueryRegCodeInfo;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->a(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V

    return-void

    :cond_10
    iget-object v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget p1, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
