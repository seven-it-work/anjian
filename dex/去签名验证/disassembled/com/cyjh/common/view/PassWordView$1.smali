.class final Lcom/cyjh/common/view/PassWordView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/view/PassWordView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/view/PassWordView;


# direct methods
.method constructor <init>(Lcom/cyjh/common/view/PassWordView;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView$1;->a:Lcom/cyjh/common/view/PassWordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView$1;->a:Lcom/cyjh/common/view/PassWordView;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView$1;->a:Lcom/cyjh/common/view/PassWordView;

    invoke-static {v1}, Lcom/cyjh/common/view/PassWordView;->a(Lcom/cyjh/common/view/PassWordView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/cyjh/common/view/PassWordView;->a(Lcom/cyjh/common/view/PassWordView;Z)Z

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView$1;->a:Lcom/cyjh/common/view/PassWordView;

    invoke-virtual {v0}, Lcom/cyjh/common/view/PassWordView;->invalidate()V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView$1;->a:Lcom/cyjh/common/view/PassWordView;

    invoke-static {v0}, Lcom/cyjh/common/view/PassWordView;->b(Lcom/cyjh/common/view/PassWordView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
