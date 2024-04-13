.class final Lcom/cyjh/elfin/ui/model/ElfinModel$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elf/studio/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/ElfinModel;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/ElfinModel;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$7;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()V
    .registers 4

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/elf/studio/a/b;

    const-string v2, "\u5de5\u4f5c\u5ba4\u89e3\u7ed1\uff01"

    const/16 v3, 0x2713

    invoke-direct {v1, v3, v2}, Lcom/elf/studio/a/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/elf/studio/a/a;)V
    .registers 6

    const-string v0, "ElfinModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setElfStudioCallback --> messageEvent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/elf/studio/a/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/elf/studio/a/a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f4

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_e8

    const/16 v1, 0x2714

    if-eq v0, v1, :cond_dc

    const/16 v2, 0x2775

    if-eq v0, v2, :cond_c8

    const/16 v2, 0x2777

    if-eq v0, v2, :cond_b4

    const/16 v2, 0x2779

    if-eq v0, v2, :cond_8f

    const/16 v2, 0x277b

    if-eq v0, v2, :cond_79

    const/16 v2, 0x277d

    if-eq v0, v2, :cond_70

    const/16 v2, 0x277f

    if-eq v0, v2, :cond_55

    const/16 v2, 0x2781

    if-eq v0, v2, :cond_3f

    return-void

    :cond_3f
    iget-object p1, p1, Lcom/elf/studio/a/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/elf/studio/a/b;

    invoke-direct {v2, v1, p1}, Lcom/elf/studio/a/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_55
    const-string p1, "ElfinModel"

    const-string v0, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u89e3\u7ed1\u5de5\u4f5c\u5ba4\u9879\u76ee\u6210\u529f"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    sget-object v0, Lcom/cyjh/elfin/ui/model/a;->a:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_70
    invoke-static {}, Lcom/cyjh/elfin/services/a;->a()Lcom/cyjh/elfin/services/a;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/services/a;->a(I)V

    return-void

    :cond_79
    const-string v0, "ElfinModel"

    const-string v1, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/elf/studio/a/a;

    iget-object p1, p1, Lcom/elf/studio/a/a;->d:Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/elf/studio/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_8f
    const-string v0, "ElfinModel"

    const-string v1, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u66f4\u65b0"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->a()Lcom/cyjh/elfin/e/c/n;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/cyjh/elfin/e/c/n;->a:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/cyjh/elfin/e/c/n;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/cyjh/elfin/e/c/n;

    move-result-object v0

    iget-object p1, p1, Lcom/elf/studio/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/e/c/n;->a(Ljava/lang/String;)V

    return-void

    :cond_b4
    const-string p1, "ElfinModel"

    const-string v0, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u505c\u6b62"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/elf/studio/a/a;

    invoke-direct {v0, v2}, Lcom/elf/studio/a/a;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_c8
    const-string p1, "ElfinModel"

    const-string v0, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u542f\u52a8"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/elf/studio/a/a;

    invoke-direct {v0, v2}, Lcom/elf/studio/a/a;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_dc
    const-string v0, "ElfinModel"

    const-string v1, "onReceiveSocketMessage --> HEART_SUCCESS"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/elf/studio/a/a;->f:Z

    if-eqz p1, :cond_f3

    return-void

    :cond_e8
    const-string v0, "ElfinModel"

    const-string v1, "onReceiveSocketMessage --> LOGIN_SUCCESS"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/elf/studio/a/a;->b:I

    if-nez p1, :cond_f3

    :cond_f3
    return-void

    :cond_f4
    const-string p1, "ElfinModel"

    const-string v0, "SocketStatus.CONNECT_ERROR --> "

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$7;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/ElfinModel;->b(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
