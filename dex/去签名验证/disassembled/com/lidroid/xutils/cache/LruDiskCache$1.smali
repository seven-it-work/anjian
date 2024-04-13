.class Lcom/lidroid/xutils/cache/LruDiskCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit v0

    return-object v2

    :cond_e
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$4(Lcom/lidroid/xutils/cache/LruDiskCache;I)V

    :cond_26
    monitor-exit v0

    return-object v2

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
