.class Lcom/google/protobuf/RpcUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/RpcUtil;->generalizeCallback(Lcom/google/protobuf/RpcCallback;Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/RpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/RpcCallback<",
        "Lcom/google/protobuf/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$defaultInstance:Lcom/google/protobuf/Message;

.field private final synthetic val$originalCallback:Lcom/google/protobuf/RpcCallback;

.field private final synthetic val$originalClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/google/protobuf/Message;Lcom/google/protobuf/RpcCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/google/protobuf/RpcUtil$1;->val$originalClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/protobuf/RpcUtil$1;->val$defaultInstance:Lcom/google/protobuf/Message;

    iput-object p3, p0, Lcom/google/protobuf/RpcUtil$1;->val$originalCallback:Lcom/google/protobuf/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/protobuf/Message;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/RpcUtil$1;->val$originalClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_f

    :catch_9
    iget-object v0, p0, Lcom/google/protobuf/RpcUtil$1;->val$defaultInstance:Lcom/google/protobuf/Message;

    # invokes: Lcom/google/protobuf/RpcUtil;->copyAsType(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    invoke-static {v0, p1}, Lcom/google/protobuf/RpcUtil;->access$0(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;

    move-result-object v0

    :goto_f
    iget-object p1, p0, Lcom/google/protobuf/RpcUtil$1;->val$originalCallback:Lcom/google/protobuf/RpcCallback;

    invoke-interface {p1, v0}, Lcom/google/protobuf/RpcCallback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/protobuf/Message;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RpcUtil$1;->run(Lcom/google/protobuf/Message;)V

    return-void
.end method
