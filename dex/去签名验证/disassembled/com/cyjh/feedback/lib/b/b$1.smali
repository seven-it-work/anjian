.class final Lcom/cyjh/feedback/lib/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/b/b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/cyjh/feedback/lib/b/b;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/b/b;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/feedback/lib/b/b$1;->b:Lcom/cyjh/feedback/lib/b/b;

    iput-object p2, p0, Lcom/cyjh/feedback/lib/b/b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uploadFail(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b$1;->b:Lcom/cyjh/feedback/lib/b/b;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/b/b$1;->a:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/cyjh/feedback/lib/b/b;->a(Lcom/cyjh/feedback/lib/b/b;Ljava/util/List;)V

    return-void
.end method

.method public final uploadProgress(JJ)V
    .registers 5

    return-void
.end method

.method public final uploadSuc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b$1;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cyjh/feedback/lib/b/b$1;->b:Lcom/cyjh/feedback/lib/b/b;

    iget-object p2, p0, Lcom/cyjh/feedback/lib/b/b$1;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/cyjh/feedback/lib/b/b;->a(Lcom/cyjh/feedback/lib/b/b;Ljava/util/List;)V

    return-void
.end method
