.class final Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->c()V
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
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$1;->a:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V
    .registers 5
    .param p1    # Lcom/cyjh/http/bean/response/RegCodeInfoResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Message:Ljava/lang/String;

    iget v1, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_11

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$1;->a:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$1;->a:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_31
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;)V
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    iget-object v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Message:Ljava/lang/String;

    iget v1, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_13

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$1;->a:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$1;->a:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_33
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
