.class final Lcom/cyjh/elfin/e/c/n$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/c/n$4;->a(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cyjh/elfin/e/c/n$4;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/c/n$4;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/n$4$1;->c:Lcom/cyjh/elfin/e/c/n$4;

    iput-object p2, p0, Lcom/cyjh/elfin/e/c/n$4$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/elfin/e/c/n$4$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "afterDownloadSuccess --> 3 bindStudioProject onSuccess"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/e/c/n$4$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/http/c/c/h;->a()Lcom/cyjh/http/c/c/h;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/n$4$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/common/util/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "script_setting"

    invoke-virtual {v1, v2, v0}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/elf/studio/a/b;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMToken:Ljava/lang/String;

    const/16 v2, 0x2711

    invoke-direct {v1, v2, p1}, Lcom/elf/studio/a/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/http/c/c/h;->a()Lcom/cyjh/http/c/c/h;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    return-void
.end method
