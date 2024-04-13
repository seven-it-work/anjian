.class final Lcom/cyjh/elfin/floatingwindowprocess/d/b$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$2$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "ScriptRunnerManager"

    const-string v1, "doSpecialFuction --> uploadInstanceData onSuccess"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "ScriptRunnerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doSpecialFuction --> uploadInstanceData onFailure message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
