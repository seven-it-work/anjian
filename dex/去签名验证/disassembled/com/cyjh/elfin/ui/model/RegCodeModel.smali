.class public Lcom/cyjh/elfin/ui/model/RegCodeModel;
.super Landroid/arch/lifecycle/AndroidViewModel;

# interfaces
.implements Lcom/cyjh/http/c/d/b;
.implements Lcom/cyjh/http/c/d/g;


# static fields
.field private static final c:Ljava/lang/String; = "RegCodeModel"


# instance fields
.field public a:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/BaseResponseInfo;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/cyjh/http/c/c/e;

.field private e:Lcom/cyjh/http/c/c/n;

.field private f:Ljava/lang/String;


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

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a:Landroid/arch/lifecycle/MutableLiveData;

    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method

.method private a()Landroid/arch/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/BaseResponseInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/model/RegCodeModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->f:Ljava/lang/String;

    return-object p0
.end method

.method private b()Landroid/arch/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/cyjh/elfin/d/c;->b:J

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/cyjh/http/bean/response/BindRegCodeResponse;)V
    .registers 11

    iget v0, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_69

    iget-object v0, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Data:Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;

    iget-wide v1, v0, Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;->ExpireTime:J

    iget-wide v3, v0, Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;->ServerTimestamp:J

    sub-long v5, v1, v3

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    iput-wide v1, v0, Lcom/cyjh/elfin/d/c;->b:J

    const-string v0, "RegCodeModel"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onBindSuc --> expireTime="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",serverTimestamp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",dueTime="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v0

    new-instance v3, Lcom/cyjh/elfin/ui/model/RegCodeModel$1;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/ui/model/RegCodeModel$1;-><init>(Lcom/cyjh/elfin/ui/model/RegCodeModel;)V

    invoke-virtual {v0, v3}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    iget-object v3, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->f:Ljava/lang/String;

    iput-object v3, v0, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v3, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;

    invoke-direct {v3, v1, v2}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;-><init>(J)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    iget v2, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    iget-object p1, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Message:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_69
    new-instance v0, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    iget v1, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    iget-object v2, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V

    iget p1, p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    const/16 v0, 0x579

    if-ne p1, v0, :cond_c2

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->f:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c2

    const-string p1, "zzz"

    const-string v0, "RegisterCodeActivationFragment:onBindSuc\u6ce8\u518c\u7801\u8fc7\u671f\uff0c\u6e05\u7a7a\u6ce8\u518c\u7801"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->f:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/elfin/engin/d;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "regCodeStatus"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/a/a;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/http/e/a;->b(Ljava/lang/String;Landroid/content/Context;)V

    :cond_c2
    return-void
.end method

.method public final a(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->e:Lcom/cyjh/http/c/c/n;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/http/c/c/n;

    invoke-direct {v0, p0}, Lcom/cyjh/http/c/c/n;-><init>(Lcom/cyjh/http/c/d/g;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->e:Lcom/cyjh/http/c/c/n;

    :cond_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->e:Lcom/cyjh/http/c/c/n;

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/cyjh/http/c/c/n;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->d:Lcom/cyjh/http/c/c/e;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/http/c/c/e;

    invoke-direct {v0, p0}, Lcom/cyjh/http/c/c/e;-><init>(Lcom/cyjh/http/c/d/b;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->d:Lcom/cyjh/http/c/c/e;

    :cond_b
    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->d:Lcom/cyjh/http/c/c/e;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/cyjh/http/c/c/e;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCleared()V
    .registers 3

    invoke-super {p0}, Landroid/arch/lifecycle/AndroidViewModel;->onCleared()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->d:Lcom/cyjh/http/c/c/e;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->d:Lcom/cyjh/http/c/c/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->e:Lcom/cyjh/http/c/c/n;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel;->e:Lcom/cyjh/http/c/c/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method
