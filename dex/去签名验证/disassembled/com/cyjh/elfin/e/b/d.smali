.class public final Lcom/cyjh/elfin/e/b/d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/e/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MyAsyncTask"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    new-instance v2, Ljava/io/File;

    aget-object p1, p1, v0

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_d0

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    if-eqz p1, :cond_c4

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    const-string v2, "{AppId}"

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    const v4, 0x7f090097

    invoke-virtual {v3, v4}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{ScriptId}"

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{DeviceId}"

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/http/e/a;->c(Landroid/content/Context;)Lcom/cyjh/http/bean/request/DeviceInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "objectKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-direct {v0, v2, v3}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V

    invoke-virtual {v0}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->build()Lcom/cyjh/http/oss/MyOSSUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/oss/MyOSSUtils;->isTokenExpireTime()Z

    move-result v2

    if-eqz v2, :cond_bb

    new-instance p1, Lcom/cyjh/http/c/c/k;

    invoke-direct {p1}, Lcom/cyjh/http/c/c/k;-><init>()V

    goto :goto_c9

    :cond_bb
    new-instance v2, Lcom/cyjh/elfin/e/b/d$1;

    invoke-direct {v2, p0, p1}, Lcom/cyjh/elfin/e/b/d$1;-><init>(Lcom/cyjh/elfin/e/b/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/cyjh/http/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V

    return-object v1

    :cond_c4
    new-instance p1, Lcom/cyjh/http/c/c/k;

    invoke-direct {p1}, Lcom/cyjh/http/c/c/k;-><init>()V

    :goto_c9
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/http/c/c/k;->a(Landroid/content/Context;)V

    :cond_d0
    return-object v1
.end method

.method private static a()V
    .registers 0

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/e/b/d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/cyjh/http/c/c/q;->a()Lcom/cyjh/http/c/c/q;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/e/b/d$2;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/e/b/d$2;-><init>(Lcom/cyjh/elfin/e/b/d;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/cyjh/http/c/c/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/q$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/cyjh/http/c/c/q;->a()Lcom/cyjh/http/c/c/q;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/e/b/d$2;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/e/b/d$2;-><init>(Lcom/cyjh/elfin/e/b/d;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/cyjh/http/c/c/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/q$a;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    new-instance v2, Ljava/io/File;

    aget-object p1, p1, v0

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_d2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    if-eqz p1, :cond_c6

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    const-string v2, "{AppId}"

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    const v4, 0x7f090097

    invoke-virtual {v3, v4}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{ScriptId}"

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{DeviceId}"

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/http/e/a;->c(Landroid/content/Context;)Lcom/cyjh/http/bean/request/DeviceInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "objectKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-direct {v0, v2, v3}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V

    invoke-virtual {v0}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->build()Lcom/cyjh/http/oss/MyOSSUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/oss/MyOSSUtils;->isTokenExpireTime()Z

    move-result v2

    if-eqz v2, :cond_bd

    new-instance p1, Lcom/cyjh/http/c/c/k;

    invoke-direct {p1}, Lcom/cyjh/http/c/c/k;-><init>()V

    goto :goto_cb

    :cond_bd
    new-instance v2, Lcom/cyjh/elfin/e/b/d$1;

    invoke-direct {v2, p0, p1}, Lcom/cyjh/elfin/e/b/d$1;-><init>(Lcom/cyjh/elfin/e/b/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/cyjh/http/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V

    return-object v1

    :cond_c6
    new-instance p1, Lcom/cyjh/http/c/c/k;

    invoke-direct {p1}, Lcom/cyjh/http/c/c/k;-><init>()V

    :goto_cb
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/http/c/c/k;->a(Landroid/content/Context;)V

    :cond_d2
    return-object v1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
