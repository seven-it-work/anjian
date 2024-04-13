.class Landroid/support/v7/util/MessageThreadUtil$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/util/MessageThreadUtil$1;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil$1;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :goto_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v0, v0, Landroid/support/v7/util/MessageThreadUtil$1;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget v1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v1, :pswitch_data_4c

    const-string v1, "ThreadUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported message, what="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_25
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v0}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_0

    :pswitch_31
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget-object v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/util/TileList$Tile;

    invoke-interface {v1, v2, v0}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->addTile(ILandroid/support/v7/util/TileList$Tile;)V

    goto :goto_0

    :pswitch_3f
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v0}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    goto :goto_0

    :cond_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_31
        :pswitch_25
    .end packed-switch
.end method
