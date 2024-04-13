.class final Lcom/cyjh/elfin/floatingwindowprocess/d/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/d/b;->n()V
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

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$4;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .registers 4

    const-string v0, "ScriptRunnerManager"

    const-string v1, "ddyStaticsJudgeOperate --> 3"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$4;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
