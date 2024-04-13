.class Lcom/google/protobuf/RpcUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/RpcUtil;->newOneTimeCallback(Lcom/google/protobuf/RpcCallback;)Lcom/google/protobuf/RpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/RpcCallback<",
        "TParameterType;>;"
    }
.end annotation


# instance fields
.field private alreadyCalled:Z

.field private final synthetic val$originalCallback:Lcom/google/protobuf/RpcCallback;


# direct methods
.method constructor <init>(Lcom/google/protobuf/RpcCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/google/protobuf/RpcUtil$2;->val$originalCallback:Lcom/google/protobuf/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/protobuf/RpcUtil$2;->alreadyCalled:Z

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParameterType;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/protobuf/RpcUtil$2;->alreadyCalled:Z

    if-eqz v0, :cond_b

    new-instance p1, Lcom/google/protobuf/RpcUtil$AlreadyCalledException;

    invoke-direct {p1}, Lcom/google/protobuf/RpcUtil$AlreadyCalledException;-><init>()V

    throw p1

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/RpcUtil$2;->alreadyCalled:Z

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    iget-object v0, p0, Lcom/google/protobuf/RpcUtil$2;->val$originalCallback:Lcom/google/protobuf/RpcCallback;

    invoke-interface {v0, p1}, Lcom/google/protobuf/RpcCallback;->run(Ljava/lang/Object;)V

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method
