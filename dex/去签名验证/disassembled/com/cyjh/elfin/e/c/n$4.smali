.class final Lcom/cyjh/elfin/e/c/n$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/c/n;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cyjh/elfin/e/c/n;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/c/n;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/n$4;->b:Lcom/cyjh/elfin/e/c/n;

    iput-object p2, p0, Lcom/cyjh/elfin/e/c/n$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
    .registers 11

    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "afterDownloadSuccess --> 3 unbindStudioProject onSuccess"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cyjh/elfin/e/c/n$4;->a:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-object v3, p1, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {p1, v0}, Lcom/cyjh/elfin/e/c/o;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {p1, v0}, Lcom/cyjh/elfin/e/c/o;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/elfin/e/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/cyjh/http/c/c/h;->a()Lcom/cyjh/http/c/c/h;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    new-instance v8, Lcom/cyjh/elfin/e/c/n$4$1;

    invoke-direct {v8, p0, v3, v7}, Lcom/cyjh/elfin/e/c/n$4$1;-><init>(Lcom/cyjh/elfin/e/c/n$4;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v8}, Lcom/cyjh/http/c/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/h$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
