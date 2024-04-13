.class final Lcom/cyjh/elfin/e/b/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/b/d;->a([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cyjh/elfin/e/b/d;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/b/d;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/e/b/d$1;->b:Lcom/cyjh/elfin/e/b/d;

    iput-object p2, p0, Lcom/cyjh/elfin/e/b/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uploadFail(Ljava/lang/String;)V
    .registers 5

    const-string v0, "MyAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uploadFail -- > \u4e0a\u4f20\u56fe\u7247\u5931\u8d25 fileName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final uploadProgress(JJ)V
    .registers 5

    return-void
.end method

.method public final uploadSuc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p2, "MyAsyncTask"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uploadSuc -- > \u4e0a\u4f20\u56fe\u7247\u6210\u529f serverUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/e/b/d$1;->b:Lcom/cyjh/elfin/e/b/d;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p2

    iget-object p2, p2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {p2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/cyjh/elfin/e/b/d$1;->a:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/cyjh/elfin/e/b/d;->a(Lcom/cyjh/elfin/e/b/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
