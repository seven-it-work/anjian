.class Lcom/cyjh/http/oss/MyOSSUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/http/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/http/oss/MyOSSUtils;

.field final synthetic val$callBack:Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;


# direct methods
.method constructor <init>(Lcom/cyjh/http/oss/MyOSSUtils;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/http/oss/MyOSSUtils$1;->this$0:Lcom/cyjh/http/oss/MyOSSUtils;

    iput-object p2, p0, Lcom/cyjh/http/oss/MyOSSUtils$1;->val$callBack:Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .registers 6

    iget-object p1, p0, Lcom/cyjh/http/oss/MyOSSUtils$1;->val$callBack:Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;->uploadProgress(JJ)V

    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .registers 12

    move-object v1, p1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/http/oss/MyOSSUtils$1;->onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method
