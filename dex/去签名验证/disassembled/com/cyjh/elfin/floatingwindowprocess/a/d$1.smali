.class final Lcom/cyjh/elfin/floatingwindowprocess/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/a/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/a/d;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 5

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->a:Ljava/lang/String;

    const-string v1, "onUpdateHas --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_a

    return-void

    :cond_a
    new-instance v0, Lcom/cyjh/elfin/ui/a/h;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-virtual {v1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/cyjh/elfin/ui/a/h;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/VersionUpdateInfo;Z)V

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/h;->show()V

    return-void
.end method

.method public final b(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 2

    return-void
.end method

.method public final c(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 2

    return-void
.end method
