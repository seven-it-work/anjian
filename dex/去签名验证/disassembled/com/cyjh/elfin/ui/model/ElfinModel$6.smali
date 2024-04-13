.class public final Lcom/cyjh/elfin/ui/model/ElfinModel$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/common/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/ElfinModel;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cyjh/common/f/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/ElfinModel;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$6;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$6;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->c(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$6;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->c(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 3

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$6;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/ElfinModel;->c(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
