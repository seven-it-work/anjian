.class Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private current:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;)V
    .registers 3

    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_8
    iget-object v0, p1, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1e

    :cond_1a
    invoke-virtual {p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_1e
    move-exception v0

    invoke-virtual {p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method private nextNode(Lcom/lidroid/xutils/task/Node;)Lcom/lidroid/xutils/task/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;)",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    iget-object v0, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    if-ne v0, p1, :cond_b

    iget-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    iget-object p1, p1, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object p1, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    return-object p1

    :cond_b
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_14

    return-object v0

    :cond_14
    move-object p1, v0

    goto :goto_0

    :cond_16
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_5
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    invoke-direct {p0, v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->nextNode(Lcom/lidroid/xutils/task/Node;)Lcom/lidroid/xutils/task/Node;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-nez v1, :cond_23

    const/4 v1, 0x0

    goto :goto_29

    :cond_23
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_29
    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-object v0

    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public remove()V
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_f
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    iget-object v1, v1, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    :cond_18
    iget-object v2, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-nez v1, :cond_20

    goto :goto_27

    :cond_20
    if-ne v1, v0, :cond_18

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->unlink(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2d

    :goto_27
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_2d
    move-exception v0

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method
