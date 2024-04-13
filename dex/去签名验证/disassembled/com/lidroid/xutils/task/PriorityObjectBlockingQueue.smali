.class public Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;
.super Ljava/util/AbstractQueue;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient last:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    if-gtz p1, :cond_30

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_30
    iput p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    new-instance p1, Lcom/lidroid/xutils/task/Node;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;-><init>(I)V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_44

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1f
    :try_start_1f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    if-nez v2, :cond_2d

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_2d
    iget v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v1, v3, :cond_39

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Queue full"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    new-instance v3, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v3, v2}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_44

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :catchall_44
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private _dequeue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method private _enqueue(Lcom/lidroid/xutils/task/Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    :goto_2
    iget-object v1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    goto :goto_21

    :cond_8
    iget-object v1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lidroid/xutils/task/Priority;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/lidroid/xutils/task/Node;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lidroid/xutils/task/Priority;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_2a

    iput-object p1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v1, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    const/4 v0, 0x1

    :goto_21
    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    iput-object p1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    :cond_29
    return-void

    :cond_2a
    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    goto :goto_2
.end method

.method private declared-synchronized opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_b

    :try_start_3
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->_dequeue()Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    goto :goto_11

    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->_enqueue(Lcom/lidroid/xutils/task/Node;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :goto_11
    monitor-exit p0

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/lidroid/xutils/task/Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    :goto_13
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1d
    return-void
.end method

.method private signalNotEmpty()V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private signalNotFull()V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    :goto_8
    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1c

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    goto :goto_8

    :catchall_1c
    move-exception p1

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw p1
.end method


# virtual methods
.method public clear()V
    .registers 3

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    :goto_5
    iget-object v1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    if-nez v1, :cond_21

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_29

    :cond_1d
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :cond_21
    :try_start_21
    iput-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_29

    move-object v0, v1

    goto :goto_5

    :catchall_29
    move-exception v0

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_7
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    :cond_9
    iget-object v1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_20

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return v0

    :cond_11
    :try_start_11
    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_20

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    const/4 p1, 0x1

    return p1

    :catchall_20
    move-exception p1

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw p1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    if-ne p1, p0, :cond_10

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_10
    const/4 v0, 0x0

    if-gtz p2, :cond_14

    return v0

    :cond_14
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_19
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    move-object v3, v2

    const/4 v2, 0x0

    :goto_27
    const/4 v4, 0x1

    if-lt v2, p2, :cond_43

    if-lez v2, :cond_3a

    iput-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_68

    if-ne p1, v2, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_42

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_42
    return p2

    :cond_43
    :try_start_43
    iget-object v5, v3, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v5}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    iput-object v3, v3, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_56

    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_27

    :catchall_56
    move-exception p1

    if-lez v2, :cond_67

    :try_start_59
    iput-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object p2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p2

    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne p2, v2, :cond_67

    const/4 v0, 0x1

    :cond_67
    throw p1
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_71

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_71
    throw p1
.end method

.method fullyLock()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method fullyUnlock()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;-><init>(Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_14

    return v3

    :cond_14
    const/4 v1, -0x1

    new-instance v2, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v2, p1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_39

    invoke-direct {p0, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v0, v2, :cond_39

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_46

    :cond_39
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v1, :cond_41

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    :cond_41
    if-ltz v1, :cond_45

    const/4 p1, 0x1

    return p1

    :cond_45
    return v3

    :catchall_46
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    iget-object p4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_13
    :try_start_13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-eq v1, v2, :cond_3c

    new-instance p2, Lcom/lidroid/xutils/task/Node;

    invoke-direct {p2, p1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    iget p3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge p2, p3, :cond_32

    iget-object p2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_4e

    :cond_32
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_3a

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    :cond_3a
    const/4 p1, 0x1

    return p1

    :cond_3c
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_47

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :cond_47
    :try_start_47
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_4e

    goto :goto_13

    :catchall_4e
    move-exception p1

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_f
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v2, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_21

    if-nez v2, :cond_19

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_19
    :try_start_19
    invoke-virtual {v2}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_26

    invoke-direct {p0, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_26

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_31

    :cond_26
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v1, v0, :cond_30

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_30
    return-object v2

    :catchall_31
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_b
    :try_start_b
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-direct {p0, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_22

    iget-object p3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_3e

    :cond_22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget p3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne p2, p3, :cond_2c

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_2c
    return-object p1

    :cond_2d
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_37

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3e

    goto :goto_b

    :catchall_3e
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public put(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    new-instance v0, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-eq v2, v3, :cond_37

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v1, v2, :cond_2e

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_3d

    :cond_2e
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_36

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    :cond_36
    return-void

    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_14

    :catchall_3d
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remainingCapacity()I
    .registers 3

    iget v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_7
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    :cond_9
    iget-object v2, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_26

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return v0

    :cond_14
    :try_start_14
    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v1, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->unlink(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_26

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    const/4 p1, 0x1

    return p1

    :catchall_26
    move-exception p1

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1e

    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2f

    :cond_1e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_28

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_28
    return-object v2

    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2f

    goto :goto_7

    :catchall_2f
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v2, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    :goto_10
    if-nez v2, :cond_16

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-object v0

    :cond_16
    add-int/lit8 v3, v1, 0x1

    :try_start_18
    invoke-virtual {v2}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    iget-object v2, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_22

    move v1, v3

    goto :goto_10

    :catchall_22
    move-exception v0

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1a
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    :goto_1f
    if-nez v1, :cond_2b

    array-length v1, p1

    if-le v1, v0, :cond_27

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_37

    :cond_27
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-object p1

    :cond_2b
    add-int/lit8 v2, v0, 0x1

    :try_start_2d
    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v0

    iget-object v1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_37

    move v0, v2

    goto :goto_1f

    :catchall_37
    move-exception p1

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw p1
.end method

.method unlink(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    if-ne v0, p1, :cond_e

    iput-object p2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    :cond_e
    iget-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    iget p2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne p1, p2, :cond_1d

    iget-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1d
    return-void
.end method
