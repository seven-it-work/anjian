.class final Lcom/cyjh/elfin/ui/a/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/a/h;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/a/h;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h$2;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/ui/a/h;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloading --> progress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x3e9

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h$2;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/a/h;->f(Lcom/cyjh/elfin/ui/a/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/ui/a/h;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadSuccess --> file="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x3e8

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h$2;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/a/h;->f(Lcom/cyjh/elfin/ui/a/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/ui/a/h;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadFailed --> exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h$2;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/a/h;->f(Lcom/cyjh/elfin/ui/a/h;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
