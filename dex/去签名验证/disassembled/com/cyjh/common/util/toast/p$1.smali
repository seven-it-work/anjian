.class final Lcom/cyjh/common/util/toast/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/p;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Lcom/cyjh/common/util/toast/p;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/cyjh/common/util/toast/p;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/util/toast/p$c;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/cyjh/common/util/toast/p$c;->a()V

    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_19
    return-void
.end method
