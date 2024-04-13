.class final Lcom/cyjh/elfin/ui/a/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/receiver/NetStateReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/a/h;->d()V
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

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h$1;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/ui/a/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNetConnected --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h$1;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/a/h;->a(Lcom/cyjh/elfin/ui/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h$1;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/a/h;->b(Lcom/cyjh/elfin/ui/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h$1;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/a/h;->c(Lcom/cyjh/elfin/ui/a/h;)V

    :cond_1e
    return-void
.end method

.method public final b()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/ui/a/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNetDisConnect --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h$1;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/a/h;->d(Lcom/cyjh/elfin/ui/a/h;)Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h$1;->a:Lcom/cyjh/elfin/ui/a/h;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/a/h;->e(Lcom/cyjh/elfin/ui/a/h;)Z

    return-void
.end method
