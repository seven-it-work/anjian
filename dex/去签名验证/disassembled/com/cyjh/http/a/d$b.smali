.class final Lcom/cyjh/http/a/d$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/http/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/http/a/d;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cyjh/http/a/d;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/http/a/d$b;->a:Lcom/cyjh/http/a/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/cyjh/http/a/d$b;->b:Landroid/content/Context;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/http/a/d$b;->b:Landroid/content/Context;

    const-string v1, "tessdata"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "chi_sim.traineddata"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "chi_sim.traineddata"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cyjh/common/util/n;->c(Ljava/io/File;)Z

    invoke-static {v2}, Lcom/cyjh/common/util/n;->c(Ljava/io/File;)Z

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p1, v0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2, v1}, Lcom/cyjh/common/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/http/a/d;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LibraryDownloadTask doInBackground --> zipName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file path = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/e/b;->a()Lcom/cyjh/http/e/b;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    iget-object p1, p0, Lcom/cyjh/http/a/d$b;->a:Lcom/cyjh/http/a/d;

    iget-object v9, p1, Lcom/cyjh/http/a/d;->b:Lcom/cyjh/http/e/b$a;

    invoke-virtual/range {v4 .. v9}, Lcom/cyjh/http/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cyjh/http/e/b$a;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_72
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cyjh/http/a/d$b;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
