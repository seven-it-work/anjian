.class public final Lcom/cyjh/elfin/ui/model/ElfinModel$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/ElfinModel;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/ElfinModel;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$5;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "regCode"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/a/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "regCodeStatus"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/a/a;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qureyRegCode"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "oldFileRegCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "qureyRegCode"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "json:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x3ee

    if-eqz v2, :cond_83

    const-string v1, "zzz"

    const-string v2, "ElfinPayActivity:statusInfo\u65e7\u7684--"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v1

    iput-object v0, v1, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cc

    :goto_75
    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$5;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->b(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_83
    const-string v0, "zzz"

    const-string v2, "ElfinPayActivity:statusInfo\u65b0\u7684--"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;

    invoke-static {v1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;

    const-string v1, "qureyRegCode"

    const-string v2, "ElfinPayActivity:statusInfo\u65b0\u7684--"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_aa

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cc

    goto :goto_75

    :cond_aa
    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v1

    iget-object v2, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cc

    iget v0, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_cc

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$5;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->b(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_cc
    return-void
.end method
