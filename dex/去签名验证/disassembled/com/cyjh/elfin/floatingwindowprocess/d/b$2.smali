.class final Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elfin/engin/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->i()V

    return-void
.end method

.method public final a(FII)V
    .registers 8

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    sget-object v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "posControlBar --> position="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",lockState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isRight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->n:I

    iget p2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->n:I

    if-eqz p2, :cond_38

    iget-object p2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_38
    iget-object p2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_4c

    iget-object p2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    iget-object p2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a()V

    :cond_4c
    const/4 p2, 0x0

    if-nez p3, :cond_51

    const/4 p3, 0x0

    goto :goto_5b

    :cond_51
    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->x:I

    :goto_5b
    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p3, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(II)V

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object p3, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object p3, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_92

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const p2, 0x7f0200c7

    :goto_8e
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_92
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_a1

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const p2, 0x7f0200be

    goto :goto_8e

    :cond_a1
    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const p2, 0x7f0200b1

    goto :goto_8e
.end method

.method public final a(I)V
    .registers 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetControlBarVisiable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(I)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    const/16 v1, 0x1f


    if-ne p1, v1, :cond_17

    :try_start_6
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const p2, 0x7f09006f

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;)V

    return-void

    :catch_15
    move-exception p1

    goto :goto_82

    :cond_17
    const/16 v1, 0x20

    if-ne p1, v1, :cond_2a

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "Message"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;)V

    return-void

    :cond_2a
    const/16 v1, 0x21

    if-ne p1, v1, :cond_3d

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const p2, 0x7f0900e2

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;)V

    return-void

    :cond_3d
    const/16 v1, 0x24

    if-ne p1, v1, :cond_63

    const-string p1, "ScriptRunnerManager"

    const-string p2, "initElf --> ENUM_SCRIPT_NEED_UPGRADE"

    invoke-static {p1, p2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const-string p2, "initElf --> ENUM_SCRIPT_NEED_UPGRADE"

    invoke-static {p1, p2}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v0, 0x7d0

    invoke-direct {p2, v0}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_63
    const/16 v1, 0x22

    if-ne p1, v1, :cond_76

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "Message"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;)V

    return-void

    :cond_76
    const/16 p2, 0x25

    if-ne p1, p2, :cond_a7

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    const/4 p2, 0x4

    iput p2, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_81} :catch_15

    return-void

    :goto_82
    const-string p2, "zzz"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ElfinFreeActivity--initListener e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a7
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "ScriptRunnerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchApp --> packageName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b()V
    .registers 10

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    const-string v1, "ScriptRunnerManager"

    const-string v2, "onStartScript"

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(I)V

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v1

    sget-boolean v2, Lcom/cyjh/elfin/d/c;->d:Z

    if-eqz v2, :cond_4a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, v1, Lcom/cyjh/elfin/d/c;->b:J

    sub-long v6, v4, v2

    const-wide/16 v1, 0x3c

    div-long/2addr v6, v1

    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-lez v3, :cond_4a

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6ce8\u518c\u7801"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    invoke-static {v3, v6, v7}, Lcom/cyjh/common/util/l;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4a
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->e:Z

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    const-string v3, "AppContext  onStartScript --> "

    invoke-static {v2, v3}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;

    invoke-direct {v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V

    invoke-static {v2}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/common/f/a;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    const-string v2, "ScriptRunnerManager"

    const-string v3, "ddyStaticsJudgeOperate --> 1"

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/a/a;->a()Lcom/cyjh/http/a/a;

    invoke-static {}, Lcom/cyjh/http/a/a;->b()Z

    move-result v2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u662f\u5426\u662f\u591a\u591a\u4e91\u73af\u5883\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cyjh/common/util/ae;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "ScriptRunnerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ddyStaticsJudgeOperate --> 2 isDdyEnvironment="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_de

    invoke-static {}, Lcom/cyjh/http/a/b;->a()Lcom/cyjh/http/a/b;

    move-result-object v2

    new-instance v3, Lcom/cyjh/elfin/floatingwindowprocess/d/b$4;

    invoke-direct {v3, v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$4;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V

    iput-object v3, v2, Lcom/cyjh/http/a/b;->b:Lcom/cyjh/http/a/b$a;

    invoke-static {}, Lcom/cyjh/http/a/b;->a()Lcom/cyjh/http/a/b;

    move-result-object v0

    sget-object v2, Lcom/cyjh/http/a/b;->a:Ljava/lang/String;

    const-string v3, "startTimer --> "

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    if-nez v2, :cond_d1

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    new-instance v2, Lcom/cyjh/http/a/b$b;

    invoke-direct {v2, v0, v1}, Lcom/cyjh/http/a/b$b;-><init>(Lcom/cyjh/http/a/b;B)V

    iput-object v2, v0, Lcom/cyjh/http/a/b;->d:Lcom/cyjh/http/a/b$b;

    :cond_d1
    iget-object v3, v0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    iget-object v4, v0, Lcom/cyjh/http/a/b;->d:Lcom/cyjh/http/a/b$b;

    const-wide/32 v5, 0x2bf20

    const-wide/32 v7, 0x6ddd00

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_de
    return-void
.end method

.method public final b(I)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const/16 v1, 0x72

    if-ne p1, v1, :cond_9d

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0900dc

    :goto_28
    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    return-void

    :cond_2c
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/base/AppContext;->f:Z

    if-eqz p1, :cond_3c

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0901a1

    goto :goto_28

    :cond_3c
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/base/AppContext;->g:Z

    if-nez p1, :cond_4c

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0901a3

    goto :goto_28

    :cond_4c
    sget-boolean p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b:Z

    if-eqz p1, :cond_58

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0901a2

    goto :goto_28

    :cond_58
    sput-boolean v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b:Z

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b()Z

    move-result p1

    if-nez p1, :cond_85

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "bindActionKey"

    const/16 v4, 0x44d

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_7a
    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->b:Landroid/os/Messenger;

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7f} :catch_80

    goto :goto_8b

    :catch_80
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8b

    :cond_85
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b:Z

    :goto_8b
    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/d/b$5;

    invoke-direct {v1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$5;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9d
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    const-string v1, "ScriptRunnerManager"

    const-string v2, "onStopScript"

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(I)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iput v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    invoke-static {}, Lcom/cyjh/http/a/b;->a()Lcom/cyjh/http/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/http/a/b;->b()V

    iput-boolean v2, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->e:Z

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppContext  onStopScript --> returnCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "heartbeatCheckFree.txt"

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callback code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_54
    invoke-static {v1}, Lcom/cyjh/http/e/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_66

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_66
    invoke-static {v3, v2}, Lcom/cyjh/http/e/a;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_69} :catch_6a

    goto :goto_6e

    :catch_6a
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6e
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p2

    iget-object p2, p2, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8a

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p2

    iget-object p2, p2, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a6

    :cond_8a
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    invoke-static {p2}, Lcom/cyjh/http/e/a;->c(Landroid/content/Context;)Lcom/cyjh/http/bean/request/DeviceInfo;

    move-result-object p2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    iput-object v2, v1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    iput-object p2, v1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    :cond_a6
    iget-boolean p2, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d:Z

    const/4 v0, 0x0

    if-nez p2, :cond_b6

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object p2

    iget-object p2, p2, Lcom/cyjh/elfin/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    if-eqz p2, :cond_b6

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/http/c/c/c$a;)V

    :cond_b6
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    const/16 p2, 0x3eb

    if-ne p1, p2, :cond_d3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const p2, 0x7f090169

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_de

    :cond_d3
    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_de

    const-string p1, "zzz"

    const-string p2, "AppContext--onStopScript--MqmCode.MQM_RUNNER_EXCEPTION"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    :goto_de
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->isNeedRestart()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_eb

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    :cond_eb
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "ScriptRunnerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "killApp --> packageName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elfin/engin/a/c;->c()Lcom/elfin/engin/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    iget v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b:I

    invoke-interface {v0, p1, v1}, Lcom/elfin/engin/a/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    const-string v1, "IPC_ANDROID"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPause:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v2, 0x4

    if-ne v2, v1, :cond_41

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f09012f

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/w;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_41
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    iget-boolean v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f:Z

    if-eqz v1, :cond_52

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f:Z

    :cond_52
    return-void
.end method

.method public final c(I)V
    .registers 5

    const-string v0, "ScriptRunnerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyPress --> i="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_VA_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    iget-object v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_pxkj_engin_opera"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_engin_keypress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/base/AppContext;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 5

    const-string v0, "ScriptRunnerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inputText --> s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_VA_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    iget-object v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_pxkj_engin_opera"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_engin_input"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/base/AppContext;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f:Z

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/cyjh/elfin/e/c/o;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/cyjh/http/c/c/r;->a()Lcom/cyjh/http/c/c/r;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2$1;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/cyjh/http/c/c/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/r$a;)V

    :cond_22
    return-void
.end method

.method public final e()V
    .registers 1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->g()V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elfin/engin/a/c;->c()Lcom/elfin/engin/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/elfin/engin/a/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
