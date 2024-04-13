.class final Lcom/cyjh/elfin/e/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/b/b;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cyjh/elfin/e/b/b;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/b/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/e/b/b$1;->b:Lcom/cyjh/elfin/e/b/b;

    iput-object p2, p0, Lcom/cyjh/elfin/e/b/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .registers 7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0xffff

    and-int/2addr v0, p1

    shr-int/lit8 p1, p1, 0x10

    const-string v1, "MyAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onScreenShotDone -->\u3000width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/cyjh/elfin/e/c/o;->a(IILcom/google/protobuf/ByteString;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_121

    iget-object p2, p0, Lcom/cyjh/elfin/e/b/b$1;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/cyjh/common/util/n;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/cyjh/elfin/e/b/b$1;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_121

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_121

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    if-eqz p1, :cond_108

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_121

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p2

    iget-object p2, p2, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object p2, p2, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    const-string v0, "{AppId}"

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "{ScriptId}"

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "{DeviceId}"

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/http/e/a;->c(Landroid/content/Context;)Lcom/cyjh/http/bean/request/DeviceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MyAsyncTask"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "objectKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/cyjh/http/oss/MyOSSUtils$Builder;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-direct {p2, v0, v1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V

    invoke-virtual {p2}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->build()Lcom/cyjh/http/oss/MyOSSUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/http/oss/MyOSSUtils;->isTokenExpireTime()Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object p1, p0, Lcom/cyjh/elfin/e/b/b$1;->b:Lcom/cyjh/elfin/e/b/b;

    invoke-static {p1}, Lcom/cyjh/elfin/e/b/b;->a(Lcom/cyjh/elfin/e/b/b;)Lcom/cyjh/elfin/e/b/b$a;

    move-result-object p1

    if-eqz p1, :cond_f0

    iget-object p1, p0, Lcom/cyjh/elfin/e/b/b$1;->b:Lcom/cyjh/elfin/e/b/b;

    invoke-static {p1}, Lcom/cyjh/elfin/e/b/b;->a(Lcom/cyjh/elfin/e/b/b;)Lcom/cyjh/elfin/e/b/b$a;

    :cond_f0
    new-instance p1, Lcom/cyjh/http/c/c/k;

    invoke-direct {p1}, Lcom/cyjh/http/c/c/k;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/http/c/c/k;->a(Landroid/content/Context;)V

    return-void

    :cond_fd
    iget-object v0, p0, Lcom/cyjh/elfin/e/b/b$1;->a:Ljava/lang/String;

    new-instance v1, Lcom/cyjh/elfin/e/b/b$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/e/b/b$1$1;-><init>(Lcom/cyjh/elfin/e/b/b$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/cyjh/http/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V

    return-void

    :cond_108
    iget-object p1, p0, Lcom/cyjh/elfin/e/b/b$1;->b:Lcom/cyjh/elfin/e/b/b;

    invoke-static {p1}, Lcom/cyjh/elfin/e/b/b;->a(Lcom/cyjh/elfin/e/b/b;)Lcom/cyjh/elfin/e/b/b$a;

    move-result-object p1

    if-eqz p1, :cond_115

    iget-object p1, p0, Lcom/cyjh/elfin/e/b/b$1;->b:Lcom/cyjh/elfin/e/b/b;

    invoke-static {p1}, Lcom/cyjh/elfin/e/b/b;->a(Lcom/cyjh/elfin/e/b/b;)Lcom/cyjh/elfin/e/b/b$a;

    :cond_115
    new-instance p1, Lcom/cyjh/http/c/c/k;

    invoke-direct {p1}, Lcom/cyjh/http/c/c/k;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/http/c/c/k;->a(Landroid/content/Context;)V

    :cond_121
    return-void
.end method

.method public final onScreenShotFailed(I)V
    .registers 2

    return-void
.end method
