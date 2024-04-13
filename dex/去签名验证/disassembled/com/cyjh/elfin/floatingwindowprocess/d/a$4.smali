.class final Lcom/cyjh/elfin/floatingwindowprocess/d/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/common/f/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/f/a;


# direct methods
.method constructor <init>(Lcom/cyjh/common/f/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/a$4;->a:Lcom/cyjh/common/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c1

    const-class v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    invoke-static {p1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    iget v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2b

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/a$4;->a:Lcom/cyjh/common/f/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cyjh/common/f/a;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iput-object p1, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    goto/16 :goto_da

    :cond_2b
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/a$4;->a:Lcom/cyjh/common/f/a;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/cyjh/common/f/a;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_ad

    const-string v0, "zzz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppContext--onStartScript message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    iget-object v2, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    const/16 v3, 0x44c

    if-eq v3, v0, :cond_72

    const/16 v3, 0x4b0

    if-eq v3, v0, :cond_72

    const/16 v3, 0x4b1

    if-eq v3, v0, :cond_72

    const/16 v3, 0x4b2

    if-eq v3, v0, :cond_72

    const/16 v3, 0x4b3

    if-eq v3, v0, :cond_72

    const/16 v3, 0x514

    if-ne v3, v0, :cond_68

    goto :goto_72

    :cond_68
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b7

    :cond_72
    :goto_72
    sget-boolean p1, Lcom/cyjh/elfin/ui/a/g;->a:Z

    if-eqz p1, :cond_88

    sget-boolean p1, Lcom/cyjh/elfin/ui/a/g;->c:Z

    if-nez p1, :cond_88

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v3, 0x3ed

    invoke-direct {v0, v3}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_88
    sget-boolean p1, Lcom/cyjh/elfin/ui/a/g;->a:Z

    if-nez p1, :cond_a0

    new-instance p1, Lcom/cyjh/elfin/ui/a/g;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-direct {p1, v0, v1, v2}, Lcom/cyjh/elfin/ui/a/g;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/d/a$4$1;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a$4$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/a$4;Lcom/cyjh/elfin/ui/a/g;)V

    iput-object v0, p1, Lcom/cyjh/elfin/ui/a/g;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/a/g;->show()V

    goto :goto_b7

    :cond_a0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;

    invoke-direct {v0, v2}, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_b7

    :cond_ad
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0900c4

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    :goto_b7
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b()Z

    move-result p1

    if-eqz p1, :cond_da

    goto :goto_d4

    :cond_c1
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/a$4;->a:Lcom/cyjh/common/f/a;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/common/f/a;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0900c3

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    :goto_d4
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    :cond_da
    :goto_da
    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/http/c/c/c;->d()V

    return-void
.end method
