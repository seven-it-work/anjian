.class final Lcom/cyjh/http/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/http/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/http/a/d;


# direct methods
.method constructor <init>(Lcom/cyjh/http/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/a/d$1;->a:Lcom/cyjh/http/a/d;

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

    invoke-static {}, Lcom/cyjh/http/a/d;->c()Ljava/lang/String;

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

    new-instance v0, Lcom/cyjh/http/a/d$a;

    iget-object v1, p0, Lcom/cyjh/http/a/d$1;->a:Lcom/cyjh/http/a/d;

    invoke-direct {v0, v1, p1}, Lcom/cyjh/http/a/d$a;-><init>(Lcom/cyjh/http/a/d;Ljava/io/File;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/cyjh/http/a/d$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/http/a/d;->c()Ljava/lang/String;

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

    iget-object p1, p0, Lcom/cyjh/http/a/d$1;->a:Lcom/cyjh/http/a/d;

    invoke-static {p1}, Lcom/cyjh/http/a/d;->b(Lcom/cyjh/http/a/d;)Lcom/cyjh/http/a/d$c;

    move-result-object p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/cyjh/http/a/d$1;->a:Lcom/cyjh/http/a/d;

    invoke-static {p1}, Lcom/cyjh/http/a/d;->b(Lcom/cyjh/http/a/d;)Lcom/cyjh/http/a/d$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/cyjh/http/a/d$c;->c()V

    :cond_2a
    return-void
.end method
