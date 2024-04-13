.class final Lcom/cyjh/elfin/ui/model/SplashModel$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/SplashModel;->a(Lcom/cyjh/http/bean/response/PhoneConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/http/bean/response/PhoneConfig;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cyjh/elfin/ui/model/SplashModel;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/model/SplashModel;Lcom/cyjh/http/bean/response/PhoneConfig;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$2;->c:Lcom/cyjh/elfin/ui/model/SplashModel;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/model/SplashModel$2;->a:Lcom/cyjh/http/bean/response/PhoneConfig;

    iput-object p3, p0, Lcom/cyjh/elfin/ui/model/SplashModel$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .registers 5

    const-string v0, "SplashModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ddyGuideImagePreLoad --> onDownloadSuccess --> file="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$2;->a:Lcom/cyjh/http/bean/response/PhoneConfig;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/SplashModel$2;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->setImageUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$2;->c:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->d(Lcom/cyjh/elfin/ui/model/SplashModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/SplashModel$2;->a:Lcom/cyjh/http/bean/response/PhoneConfig;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 5

    const-string v0, "SplashModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ddyGuideImagePreLoad --> onDownloadFailed --> ex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$2;->c:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->d(Lcom/cyjh/elfin/ui/model/SplashModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
