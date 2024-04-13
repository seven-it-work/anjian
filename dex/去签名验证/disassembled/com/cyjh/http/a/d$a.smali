.class final Lcom/cyjh/http/a/d$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/http/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/http/a/d;

.field private b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/cyjh/http/a/d;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/http/a/d$a;->a:Lcom/cyjh/http/a/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/cyjh/http/a/d$a;->b:Ljava/io/File;

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/cyjh/http/a/d$a;->a:Lcom/cyjh/http/a/d;

    invoke-static {v0}, Lcom/cyjh/http/a/d;->a(Lcom/cyjh/http/a/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tessdata"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/http/a/d$a;->b:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/cyjh/common/util/ak;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    iget-object v1, p0, Lcom/cyjh/http/a/d$a;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/cyjh/common/util/n;->c(Ljava/io/File;)Z

    invoke-static {}, Lcom/cyjh/http/a/d;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeleteZipTask doInBackground --> result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Boolean;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/http/a/d$a;->a:Lcom/cyjh/http/a/d;

    invoke-static {v0}, Lcom/cyjh/http/a/d;->b(Lcom/cyjh/http/a/d;)Lcom/cyjh/http/a/d$c;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/cyjh/http/a/d$a;->a:Lcom/cyjh/http/a/d;

    invoke-static {p1}, Lcom/cyjh/http/a/d;->b(Lcom/cyjh/http/a/d;)Lcom/cyjh/http/a/d$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/cyjh/http/a/d$c;->b()V

    return-void

    :cond_1b
    iget-object p1, p0, Lcom/cyjh/http/a/d$a;->a:Lcom/cyjh/http/a/d;

    invoke-static {p1}, Lcom/cyjh/http/a/d;->b(Lcom/cyjh/http/a/d;)Lcom/cyjh/http/a/d$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/cyjh/http/a/d$c;->c()V

    :cond_24
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object p1, p0, Lcom/cyjh/http/a/d$a;->a:Lcom/cyjh/http/a/d;

    invoke-static {p1}, Lcom/cyjh/http/a/d;->a(Lcom/cyjh/http/a/d;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "tessdata"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/http/a/d$a;->b:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ak;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    iget-object v0, p0, Lcom/cyjh/http/a/d$a;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/cyjh/common/util/n;->c(Ljava/io/File;)Z

    invoke-static {}, Lcom/cyjh/http/a/d;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeleteZipTask doInBackground --> result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/http/a/d$a;->a:Lcom/cyjh/http/a/d;

    invoke-static {v0}, Lcom/cyjh/http/a/d;->b(Lcom/cyjh/http/a/d;)Lcom/cyjh/http/a/d$c;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/cyjh/http/a/d$a;->a:Lcom/cyjh/http/a/d;

    invoke-static {p1}, Lcom/cyjh/http/a/d;->b(Lcom/cyjh/http/a/d;)Lcom/cyjh/http/a/d$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/cyjh/http/a/d$c;->b()V

    return-void

    :cond_1d
    iget-object p1, p0, Lcom/cyjh/http/a/d$a;->a:Lcom/cyjh/http/a/d;

    invoke-static {p1}, Lcom/cyjh/http/a/d;->b(Lcom/cyjh/http/a/d;)Lcom/cyjh/http/a/d$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/cyjh/http/a/d$c;->c()V

    :cond_26
    return-void
.end method
