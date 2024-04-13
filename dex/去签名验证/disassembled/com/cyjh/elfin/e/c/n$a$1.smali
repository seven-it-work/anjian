.class final Lcom/cyjh/elfin/e/c/n$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/c/n$a;->a([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/e/c/n$a;

.field private b:J


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/c/n$a;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/n$a$1;->a:Lcom/cyjh/elfin/e/c/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/elfin/e/c/n$a$1;->b:J

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloading --> progress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cyjh/elfin/e/c/n$a$1;->b:J

    int-to-long v2, p1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2d

    iput-wide v2, p0, Lcom/cyjh/elfin/e/c/n$a$1;->b:J

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/n$a$1;->a:Lcom/cyjh/elfin/e/c/n$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/n$a;->a(Lcom/cyjh/elfin/e/c/n$a;[Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->b()Ljava/lang/String;

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

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/elfin/e/c/n$a$1;->b:J

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/n$a$1;->a:Lcom/cyjh/elfin/e/c/n$a;

    iget-object v0, v0, Lcom/cyjh/elfin/e/c/n$a;->a:Lcom/cyjh/elfin/e/c/n;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/e/c/n;->a(Lcom/cyjh/elfin/e/c/n;Ljava/io/File;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->b()Ljava/lang/String;

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

    iget-object p1, p0, Lcom/cyjh/elfin/e/c/n$a$1;->a:Lcom/cyjh/elfin/e/c/n$a;

    iget-object p1, p1, Lcom/cyjh/elfin/e/c/n$a;->a:Lcom/cyjh/elfin/e/c/n;

    invoke-static {p1}, Lcom/cyjh/elfin/e/c/n;->a(Lcom/cyjh/elfin/e/c/n;)V

    return-void
.end method
