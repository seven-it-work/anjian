.class final Lcom/cyjh/elfin/ui/model/RegCodeModel$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Lcom/cyjh/http/bean/response/BindRegCodeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/RegCodeModel;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/model/RegCodeModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel$1;->a:Lcom/cyjh/elfin/ui/model/RegCodeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    new-instance v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->status:I

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel$1;->a:Lcom/cyjh/elfin/ui/model/RegCodeModel;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Lcom/cyjh/elfin/ui/model/RegCodeModel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/RegCodeModel$1;->a:Lcom/cyjh/elfin/ui/model/RegCodeModel;

    invoke-virtual {v1}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "regCodeStatus"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/a/a;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cyjh/http/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc9

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    return-void
.end method
