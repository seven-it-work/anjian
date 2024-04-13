.class final Lcom/cyjh/mq/c/b$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/c/b;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/c/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b$2;->a:Lcom/cyjh/mq/c/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mq/c/b$2;->a:Lcom/cyjh/mq/c/b;

    iget-object v0, v0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    iget-object v2, p0, Lcom/cyjh/mq/c/b$2;->a:Lcom/cyjh/mq/c/b;

    invoke-interface {v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onConnected(Lcom/cyjh/mq/c/b;)V

    goto :goto_8

    :cond_1a
    sget-object v0, Lcom/cyjh/mq/a/a;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/cyjh/mq/a/a;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    iget-object v1, p0, Lcom/cyjh/mq/c/b$2;->a:Lcom/cyjh/mq/c/b;

    iget-object v1, v1, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    iget v1, v1, Lcom/cyjh/mq/b/a;->a:I

    invoke-interface {v0, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;->onEngineStart(I)V

    :cond_29
    return-void
.end method
