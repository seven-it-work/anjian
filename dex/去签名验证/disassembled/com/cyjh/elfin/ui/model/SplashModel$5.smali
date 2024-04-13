.class final Lcom/cyjh/elfin/ui/model/SplashModel$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/SplashModel;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/SplashModel;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/model/SplashModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$5;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$5;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-virtual {v1}, Lcom/cyjh/elfin/ui/model/SplashModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$5;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    sget-wide v2, Lcom/cyjh/http/b/a;->b:J

    invoke-static {v1, v2, v3}, Lcom/cyjh/elfin/ui/model/SplashModel;->b(Lcom/cyjh/elfin/ui/model/SplashModel;J)J

    new-instance v1, Lcom/cyjh/http/bean/request/StartAppRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/StartAppRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    invoke-static {}, Lcom/cyjh/http/a/c;->a()Lcom/cyjh/http/a/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/http/a/c;->e:I

    iput v0, v1, Lcom/cyjh/http/bean/request/StartAppRequestInfo;->CloudPhoneType:I

    invoke-static {v1}, Lcom/cyjh/common/util/r;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/elfin/util/IpcSwap;->startAppReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$5;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/cyjh/elfin/ui/model/SplashModel;->a(Lcom/cyjh/elfin/ui/model/SplashModel;Ljava/lang/String;I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
