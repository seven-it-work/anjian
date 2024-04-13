.class final Lcom/cyjh/mq/c/b$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/c/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/c/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mq/c/b$1;->a:Lcom/cyjh/mq/c/b;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_3
    iget-object v0, p0, Lcom/cyjh/mq/c/b$1;->a:Lcom/cyjh/mq/c/b;

    iget-boolean v0, v0, Lcom/cyjh/mq/c/b;->a:Z

    if-eqz v0, :cond_3d

    :try_start_9
    iget-object v0, p0, Lcom/cyjh/mq/c/b$1;->a:Lcom/cyjh/mq/c/b;

    iget-object v0, v0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/share/proto/b;

    invoke-direct {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;-><init>(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    iget-object v0, p0, Lcom/cyjh/mq/c/b$1;->a:Lcom/cyjh/mq/c/b;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/c;->a()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v3, v2, 0x4

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/c;->a()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Lcom/cyjh/mq/c/b;->a(Ljava/nio/ByteBuffer;)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_37} :catch_38

    goto :goto_3

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_3d
    return-void
.end method
