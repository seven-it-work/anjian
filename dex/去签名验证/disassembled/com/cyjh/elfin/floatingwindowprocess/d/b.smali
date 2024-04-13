.class public final Lcom/cyjh/elfin/floatingwindowprocess/d/b;
.super Ljava/lang/Object;


# static fields
.field private static final i:I = 0xbb8

.field private static final j:Ljava/lang/String; = "ScriptRunnerManager"

.field private static final l:Lcom/cyjh/elfin/floatingwindowprocess/d/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field final c:Landroid/os/Handler;

.field d:Z

.field public e:Z

.field f:Z

.field private g:Z

.field private final h:Lcom/elfin/engin/e;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-direct {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->l:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->c:Landroid/os/Handler;

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h:Lcom/elfin/engin/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->e:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private static a(FII)V
    .registers 7

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    sget-object v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "posControlBar --> position="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",lockState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isRight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->n:I

    iget p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->n:I

    if-eqz p1, :cond_38

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_38
    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4c

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a()V

    :cond_4c
    const/4 p1, 0x0

    if-nez p2, :cond_51

    const/4 p2, 0x0

    goto :goto_5b

    :cond_51
    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->x:I

    :goto_5b
    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, p0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    float-to-int p0, v1

    invoke-virtual {v0, p2, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(II)V

    iget-object p0, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object p2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p0, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object p2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p0

    iget p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_92

    iget-object p0, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const p1, 0x7f0200c7

    :goto_8e
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_92
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p0

    iget p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_a1

    iget-object p0, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const p1, 0x7f0200be

    goto :goto_8e

    :cond_a1
    iget-object p0, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const p1, 0x7f0200b1

    goto :goto_8e
.end method

.method public static a(I)V
    .registers 2

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setControlbarVisiable(I)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    const-string v0, "ScriptRunnerManager"

    const-string v1, "onStopScript"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(I)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iput v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    invoke-static {}, Lcom/cyjh/http/a/b;->a()Lcom/cyjh/http/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/a/b;->b()V

    iput-boolean v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->e:Z

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppContext  onStopScript --> returnCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "heartbeatCheckFree.txt"

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callback code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_52
    invoke-static {v0}, Lcom/cyjh/http/e/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_64

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_64
    invoke-static {v2, v1}, Lcom/cyjh/http/e/a;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6c
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p2

    iget-object p2, p2, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_88

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p2

    iget-object p2, p2, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a4

    :cond_88
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    invoke-static {p2}, Lcom/cyjh/http/e/a;->c(Landroid/content/Context;)Lcom/cyjh/http/bean/request/DeviceInfo;

    move-result-object p2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v1, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/http/b/a;->c:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    iput-object p2, v0, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    :cond_a4
    iget-boolean p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d:Z

    const/4 v0, 0x0

    if-nez p2, :cond_b4

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object p2

    iget-object p2, p2, Lcom/cyjh/elfin/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    if-eqz p2, :cond_b4

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/http/c/c/c$a;)V

    :cond_b4
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    const/16 p2, 0x3eb

    if-ne p1, p2, :cond_d1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const p2, 0x7f090169

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_dc

    :cond_d1
    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_dc

    const-string p1, "zzz"

    const-string p2, "AppContext--onStopScript--MqmCode.MQM_RUNNER_EXCEPTION"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    :goto_dc
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->isNeedRestart()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e9

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    :cond_e9
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .registers 6

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->init(Landroid/app/Application;Ljava/lang/String;Lcom/goldcoast/sdk/domain/AnalyseResult;IB)V

    new-instance p0, Lcom/elfin/engin/f;

    invoke-direct {p0}, Lcom/elfin/engin/f;-><init>()V

    iput-object p0, v0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    iget-object p0, v0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    iput-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v0, v0, Lcom/elfin/engin/c;->j:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/elfin/engin/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-direct {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;-><init>()V

    invoke-virtual {v1, p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setLcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setAtcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p2}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setConfigPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p5}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setScriptEncryptKey(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    const/4 p0, 0x0

    iput p0, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->trialTime:I

    iput-wide p3, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->encryptKey:J

    const-string p0, "zzz"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "runScript--script4Run.scripyEncryptKey:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p6, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->appId:Ljava/lang/String;

    iput-object p7, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->username:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->encrypt:Z

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz p0, :cond_41

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {p0, v1}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V

    :cond_41
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-direct {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;-><init>()V

    invoke-virtual {v1, p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setLcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setAtcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p2}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setConfigPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p3}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setScriptEncryptKey(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz p0, :cond_1e

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {p0, v1}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V

    :cond_1e
    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/floatingwindowprocess/d/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d:Z

    return p1
.end method

.method private b(I)V
    .registers 6

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_98

    const/16 v0, 0x72

    if-ne p1, v0, :cond_98

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0900dc

    :goto_26
    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    return-void

    :cond_2a
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/base/AppContext;->f:Z

    if-eqz p1, :cond_3a

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0901a1

    goto :goto_26

    :cond_3a
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/base/AppContext;->g:Z

    if-nez p1, :cond_4a

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0901a3

    goto :goto_26

    :cond_4a
    sget-boolean p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b:Z

    if-eqz p1, :cond_56

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f0901a2

    goto :goto_26

    :cond_56
    sput-boolean v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b:Z

    invoke-static {}, Lcom/elfin/engin/d;->a()Z

    move-result p1

    if-nez p1, :cond_80

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bindActionKey"

    const/16 v3, 0x44d

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_75
    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->b:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_86

    :catch_7b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_86

    :cond_80
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b:Z

    :goto_86
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->c:Landroid/os/Handler;

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$5;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$5;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_98
    return-void
.end method

.method private b(ILjava/lang/String;)V
    .registers 5

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_15

    :try_start_4
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const p2, 0x7f09006f

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;)V

    return-void

    :catch_13
    move-exception p1

    goto :goto_80

    :cond_15
    const/16 v0, 0x20

    if-ne p1, v0, :cond_28

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "Message"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;)V

    return-void

    :cond_28
    const/16 v0, 0x21

    if-ne p1, v0, :cond_3b

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const p2, 0x7f0900e2

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;)V

    return-void

    :cond_3b
    const/16 v0, 0x24

    if-ne p1, v0, :cond_61

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

    :cond_61
    const/16 v0, 0x22

    if-ne p1, v0, :cond_74

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "Message"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;)V

    return-void

    :cond_74
    const/16 p2, 0x25

    if-ne p1, p2, :cond_a5

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    const/4 p2, 0x4

    iput p2, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7f} :catch_13

    return-void

    :goto_80
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

    :cond_a5
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Lcom/elfin/engin/d;->a()Z

    move-result v0

    return v0
.end method

.method public static c()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/elfin/engin/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a()V

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v2, v0, Lcom/elfin/engin/c;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {v1, v2}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->start()V

    :cond_2a
    return-void
.end method

.method private c(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b:I

    return-void
.end method

.method public static d()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->setNeedRestartValue(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_19

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->stop()V

    :cond_19
    return-void
.end method

.method public static e()V
    .registers 2

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->pause()V

    :cond_11
    return-void
.end method

.method public static f()V
    .registers 2

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->resume()V

    :cond_11
    return-void
.end method

.method public static g()V
    .registers 2

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    return-void
.end method

.method static h()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    iget-object v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v2, 0x7f0200c7

    :goto_25
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3e

    :cond_29
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_38

    iget-object v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v2, 0x7f0200be

    goto :goto_25

    :cond_38
    iget-object v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v2, 0x7f0200b1

    goto :goto_25

    :goto_3e
    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b()V

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_46
    return-void
.end method

.method public static i()V
    .registers 0

    return-void
.end method

.method public static j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->l:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    return-object v0
.end method

.method private k()V
    .registers 8

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    const v3, 0x7f09010f

    invoke-virtual {v2, v3}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h:Lcom/elfin/engin/e;

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v6

    iput-object v3, v6, Lcom/elfin/engin/c;->f:Lcom/elfin/engin/e;

    iget-object v3, v6, Lcom/elfin/engin/c;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    new-instance v4, Lcom/elfin/engin/c$7;

    invoke-direct {v4, v6, v0}, Lcom/elfin/engin/c$7;-><init>(Lcom/elfin/engin/c;Landroid/app/Application;)V

    iget-object v5, v6, Lcom/elfin/engin/c;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    invoke-static/range {v0 .. v5}, Lcom/cyjh/mq/sdk/MqBridge;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V

    iget-object v0, v6, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v1, v6, Lcom/elfin/engin/c;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {v0, v1}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    iget-object v0, v6, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v1, v6, Lcom/elfin/engin/c;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cyjh/mq/sdk/inf/IRunner;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    invoke-static {}, Lcom/rck/yt/ten/cn/Orcck;->init()V

    return-void
.end method

.method private static l()V
    .registers 5

    invoke-static {}, Lcom/elfin/engin/d;->a()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "bindActionKey"

    const/16 v4, 0x44d

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1d
    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->b:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_28
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b:Z

    return-void
.end method

.method private m()V
    .registers 10

    const-string v0, "ScriptRunnerManager"

    const-string v1, "onStartScript"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(I)V

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    sget-boolean v1, Lcom/cyjh/elfin/d/c;->d:Z

    if-eqz v1, :cond_48

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, v0, Lcom/cyjh/elfin/d/c;->b:J

    sub-long v5, v3, v1

    const-wide/16 v0, 0x3c

    div-long/2addr v5, v0

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-lez v2, :cond_48

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6ce8\u518c\u7801"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/cyjh/common/util/l;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_48
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->e:Z

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const-string v2, "AppContext  onStartScript --> "

    invoke-static {v1, v2}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V

    invoke-static {v1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/common/f/a;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    const-string v1, "ScriptRunnerManager"

    const-string v2, "ddyStaticsJudgeOperate --> 1"

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/a/a;->a()Lcom/cyjh/http/a/a;

    invoke-static {}, Lcom/cyjh/http/a/a;->b()Z

    move-result v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u662f\u5426\u662f\u591a\u591a\u4e91\u73af\u5883\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ae;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "ScriptRunnerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ddyStaticsJudgeOperate --> 2 isDdyEnvironment="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_dc

    invoke-static {}, Lcom/cyjh/http/a/b;->a()Lcom/cyjh/http/a/b;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/floatingwindowprocess/d/b$4;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$4;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V

    iput-object v2, v1, Lcom/cyjh/http/a/b;->b:Lcom/cyjh/http/a/b$a;

    invoke-static {}, Lcom/cyjh/http/a/b;->a()Lcom/cyjh/http/a/b;

    move-result-object v1

    sget-object v2, Lcom/cyjh/http/a/b;->a:Ljava/lang/String;

    const-string v3, "startTimer --> "

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    if-nez v2, :cond_cf

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v1, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    new-instance v2, Lcom/cyjh/http/a/b$b;

    invoke-direct {v2, v1, v0}, Lcom/cyjh/http/a/b$b;-><init>(Lcom/cyjh/http/a/b;B)V

    iput-object v2, v1, Lcom/cyjh/http/a/b;->d:Lcom/cyjh/http/a/b$b;

    :cond_cf
    iget-object v3, v1, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    iget-object v4, v1, Lcom/cyjh/http/a/b;->d:Lcom/cyjh/http/a/b$b;

    const-wide/32 v5, 0x2bf20

    const-wide/32 v7, 0x6ddd00

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_dc
    return-void
.end method

.method private n()V
    .registers 10

    const-string v0, "ScriptRunnerManager"

    const-string v1, "ddyStaticsJudgeOperate --> 1"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/a/a;->a()Lcom/cyjh/http/a/a;

    invoke-static {}, Lcom/cyjh/http/a/a;->b()Z

    move-result v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u662f\u5426\u662f\u591a\u591a\u4e91\u73af\u5883\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ae;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "ScriptRunnerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ddyStaticsJudgeOperate --> 2 isDdyEnvironment="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6e

    invoke-static {}, Lcom/cyjh/http/a/b;->a()Lcom/cyjh/http/a/b;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/d/b$4;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$4;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V

    iput-object v1, v0, Lcom/cyjh/http/a/b;->b:Lcom/cyjh/http/a/b$a;

    invoke-static {}, Lcom/cyjh/http/a/b;->a()Lcom/cyjh/http/a/b;

    move-result-object v0

    sget-object v1, Lcom/cyjh/http/a/b;->a:Ljava/lang/String;

    const-string v2, "startTimer --> "

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    if-nez v1, :cond_61

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    new-instance v1, Lcom/cyjh/http/a/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/cyjh/http/a/b$b;-><init>(Lcom/cyjh/http/a/b;B)V

    iput-object v1, v0, Lcom/cyjh/http/a/b;->d:Lcom/cyjh/http/a/b$b;

    :cond_61
    iget-object v3, v0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    iget-object v4, v0, Lcom/cyjh/http/a/b;->d:Lcom/cyjh/http/a/b$b;

    const-wide/32 v5, 0x2bf20

    const-wide/32 v7, 0x6ddd00

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_6e
    return-void
.end method

.method private o()V
    .registers 4

    const-string v0, "IPC_ANDROID"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v2

    iget v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_3f

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f09012f

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/w;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_3f
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    iget-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f:Z

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f:Z

    :cond_50
    return-void
.end method

.method private p()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f:Z

    return-void
.end method

.method private q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private r()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b:I

    return v0
.end method

.method private static s()V
    .registers 6

    invoke-static {}, Lcom/elfin/engin/d;->a()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "common_shared_file"

    const-string v2, "type_resolution"

    invoke-static {v0, v1, v2}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_49

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "app_share_comm_file"

    const-string v2, "AJXJL_DISY"

    invoke-static {v0, v1, v2}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const-string v2, "app_share_comm_file"

    const-string v3, "AJXJL_DISX"

    invoke-static {v1, v2, v3}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    const-string v3, "app_share_comm_file"

    const-string v4, "screen_x_key"

    invoke-static {v2, v3, v4}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    const-string v4, "app_share_comm_file"

    const-string v5, "screen_y_key"

    invoke-static {v3, v4, v5}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3, v2, v0, v1}, Lcom/elfin/engin/d;->a(ZIIII)V

    return-void

    :cond_49
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0, v0}, Lcom/elfin/engin/d;->a(ZIIII)V

    :cond_4d
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->k:I

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v1

    iput v0, v1, Lcom/elfin/engin/c;->c:I

    iget v0, v1, Lcom/elfin/engin/c;->c:I

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    if-nez v0, :cond_18

    new-instance v0, Lcom/elfin/engin/f;

    invoke-direct {v0}, Lcom/elfin/engin/f;-><init>()V

    iput-object v0, v1, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    :cond_18
    iget-object v0, v1, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    :goto_1a
    iput-object v0, v1, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    goto :goto_2b

    :cond_1d
    iget-object v0, v1, Lcom/elfin/engin/c;->e:Lcom/elfin/engin/g;

    if-nez v0, :cond_28

    new-instance v0, Lcom/elfin/engin/g;

    invoke-direct {v0}, Lcom/elfin/engin/g;-><init>()V

    iput-object v0, v1, Lcom/elfin/engin/c;->e:Lcom/elfin/engin/g;

    :cond_28
    iget-object v0, v1, Lcom/elfin/engin/c;->e:Lcom/elfin/engin/g;

    goto :goto_1a

    :goto_2b
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->h:Lcom/elfin/engin/e;

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v1

    iput-object v0, v1, Lcom/elfin/engin/c;->f:Lcom/elfin/engin/e;

    iget-object v5, v1, Lcom/elfin/engin/c;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    new-instance v6, Lcom/elfin/engin/c$7;

    invoke-direct {v6, v1, v2}, Lcom/elfin/engin/c$7;-><init>(Lcom/elfin/engin/c;Landroid/app/Application;)V

    iget-object v7, v1, Lcom/elfin/engin/c;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    invoke-static/range {v2 .. v7}, Lcom/cyjh/mq/sdk/MqBridge;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V

    iget-object v0, v1, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v2, v1, Lcom/elfin/engin/c;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {v0, v2}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    iget-object v0, v1, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v1, v1, Lcom/elfin/engin/c;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cyjh/mq/sdk/inf/IRunner;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    invoke-static {}, Lcom/rck/yt/ten/cn/Orcck;->init()V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/cyjh/elfin/ui/a/g;->a:Z

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/cyjh/elfin/ui/a/g;->c:Z

    if-nez v0, :cond_16

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v2, 0x3ed

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_16
    sget-boolean v0, Lcom/cyjh/elfin/ui/a/g;->a:Z

    if-nez v0, :cond_2f

    new-instance v0, Lcom/cyjh/elfin/ui/a/g;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/cyjh/elfin/ui/a/g;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    new-instance p1, Lcom/cyjh/elfin/floatingwindowprocess/d/b$6;

    invoke-direct {p1, p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b$6;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;Lcom/cyjh/elfin/ui/a/g;)V

    iput-object p1, v0, Lcom/cyjh/elfin/ui/a/g;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/g;->show()V

    return-void

    :cond_2f
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;

    invoke-direct {v1, p1}, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method
