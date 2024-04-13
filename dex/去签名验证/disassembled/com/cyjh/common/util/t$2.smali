.class final Lcom/cyjh/common/util/t$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cyjh/common/util/t;


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/t;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/common/util/t$2;->c:Lcom/cyjh/common/util/t;

    iput-object p2, p0, Lcom/cyjh/common/util/t$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/common/util/t$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/common/util/t$2;->c:Lcom/cyjh/common/util/t;

    iget-object v1, p0, Lcom/cyjh/common/util/t$2;->c:Lcom/cyjh/common/util/t;

    iget-object v1, v1, Lcom/cyjh/common/util/t;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cyjh/common/util/t$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyjh/common/util/t$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/common/util/t$2;->c:Lcom/cyjh/common/util/t;

    iget-boolean v0, v0, Lcom/cyjh/common/util/t;->c:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/cyjh/common/util/t$2;->c:Lcom/cyjh/common/util/t;

    iget-object v0, v0, Lcom/cyjh/common/util/t;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_1c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/cyjh/common/util/t$2;->c:Lcom/cyjh/common/util/t;

    iget-object v0, v0, Lcom/cyjh/common/util/t;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cyjh/common/util/t$2;->c:Lcom/cyjh/common/util/t;

    iget-object v2, v2, Lcom/cyjh/common/util/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1c
.end method
