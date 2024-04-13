.class final Lcom/cyjh/elfin/ui/a/h$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field final synthetic a:Lcom/cyjh/elfin/ui/a/h;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/a/h;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h$a;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/a/h;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/h$a;-><init>(Lcom/cyjh/elfin/ui/a/h;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h$a;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/a/h;->g(Lcom/cyjh/elfin/ui/a/h;)Z

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/e/b;->a()Lcom/cyjh/http/e/b;

    move-result-object v1

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h$a;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/a/h;->h(Lcom/cyjh/elfin/ui/a/h;)Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    move-result-object p1

    iget-object v2, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h$a;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/a/h;->h(Lcom/cyjh/elfin/ui/a/h;)Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    move-result-object p1

    iget v5, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->PackageSize:I

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h$a;->a:Lcom/cyjh/elfin/ui/a/h;

    iget-object v6, p1, Lcom/cyjh/elfin/ui/a/h;->j:Lcom/cyjh/http/e/b$a;

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/http/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cyjh/http/e/b$a;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_39
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/h$a;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final onPreExecute()V
    .registers 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
