.class public final Lcom/cyjh/elfin/floatingwindowprocess/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ScriptRunHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 5

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/d/a$3;

    invoke-direct {v1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a$3;-><init>()V

    iput-object v1, v0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreStart"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/cyjh/common/f/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cyjh/common/f/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/d/a$4;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a$4;-><init>(Lcom/cyjh/common/f/a;)V

    iput-object v1, v0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Start"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "updateVersionRequest --> "

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    const/4 v0, 0x1

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->IsScriptHotUpgrade:I

    invoke-static {}, Lcom/cyjh/common/util/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    const-string v0, "ScriptRunHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateVersionRequest --> 1 ScriptId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",DeviceName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AppVersion:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/d/a$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    iput-object v1, v0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/cyjh/http/c/b/a;->a(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void
.end method

.method public static a(Lcom/cyjh/http/c/c/c$a;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    iput-object p0, v0, Lcom/cyjh/http/c/c/c;->b:Lcom/cyjh/http/c/c/c$a;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->RunGuid:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/d/a$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a$2;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    iput-object v1, v0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreStart"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "updateVersionRequest --> "

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    const/4 v0, 0x1

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->IsScriptHotUpgrade:I

    invoke-static {}, Lcom/cyjh/common/util/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    const-string v0, "ScriptRunHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateVersionRequest --> 1 ScriptId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",DeviceName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AppVersion:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/d/a$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    iput-object v1, v0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/cyjh/http/c/b/a;->a(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void
.end method

.method private static d(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/d/a$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a$2;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    iput-object v1, v0, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreStart"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
