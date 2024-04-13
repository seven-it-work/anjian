.class final Lcom/cyjh/elfin/e/c/n$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/e/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/e/c/n;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/e/c/n;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/n$a;->a:Lcom/cyjh/elfin/e/c/n;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/e/c/n;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/e/c/n$a;-><init>(Lcom/cyjh/elfin/e/c/n;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    aget-object v2, p1, v0

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p1, v0}, Lcom/cyjh/common/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/http/e/b;->a()Lcom/cyjh/http/e/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    new-instance v6, Lcom/cyjh/elfin/e/c/n$a$1;

    invoke-direct {v6, p0}, Lcom/cyjh/elfin/e/c/n$a$1;-><init>(Lcom/cyjh/elfin/e/c/n$a;)V

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/http/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cyjh/http/e/b$a;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_32
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/cyjh/elfin/e/c/n$a;[Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/e/c/n$a;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private varargs a([Ljava/lang/Integer;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgressUpdate --> progress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u811a\u672c("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "%)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/toast/p;->b(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/e/c/n$a;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 6

    check-cast p1, [Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgressUpdate --> progress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u811a\u672c("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "%)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/toast/p;->b(Ljava/lang/CharSequence;)V

    return-void
.end method
