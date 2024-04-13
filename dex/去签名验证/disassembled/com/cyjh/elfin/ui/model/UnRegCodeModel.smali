.class public Lcom/cyjh/elfin/ui/model/UnRegCodeModel;
.super Landroid/arch/lifecycle/AndroidViewModel;

# interfaces
.implements Lcom/cyjh/http/c/d/i;


# instance fields
.field public a:Lcom/cyjh/http/c/c/p;

.field public b:Ljava/lang/String;

.field public c:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->c:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method

.method private a()Landroid/arch/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->c:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->a:Lcom/cyjh/http/c/c/p;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/http/c/c/p;

    invoke-direct {v0, p0}, Lcom/cyjh/http/c/c/p;-><init>(Lcom/cyjh/http/c/d/i;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->a:Lcom/cyjh/http/c/c/p;

    :cond_b
    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->a:Lcom/cyjh/http/c/c/p;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/cyjh/http/c/c/p;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V
    .registers 7

    iget v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_53

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    new-instance v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->status:I

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "regCodeStatus"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/a/a;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cyjh/http/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->c:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->c:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCleared()V
    .registers 3

    invoke-super {p0}, Landroid/arch/lifecycle/AndroidViewModel;->onCleared()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->a:Lcom/cyjh/http/c/c/p;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/UnRegCodeModel;->a:Lcom/cyjh/http/c/c/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method
