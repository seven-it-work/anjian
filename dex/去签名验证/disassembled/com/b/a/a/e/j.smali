.class public final Lcom/b/a/a/e/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/concurrent/ExecutorService;

.field static final synthetic s:Z = true


# instance fields
.field final b:Z

.field final c:Lcom/b/a/a/e/s;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/b/a/a/e/ab;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field final i:Lcom/b/a/a/e/aj;

.field j:J

.field k:J

.field l:Lcom/b/a/a/e/al;

.field final m:Lcom/b/a/a/e/al;

.field n:Z

.field final o:Ljava/net/Socket;

.field final p:Lcom/b/a/a/e/af;

.field final q:Lcom/b/a/a/e/u;

.field final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/b/a/a/e/ai;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/b/a/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/b/a/a/e/r;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/a/e/j;->j:J

    new-instance v0, Lcom/b/a/a/e/al;

    invoke-direct {v0}, Lcom/b/a/a/e/al;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e/j;->l:Lcom/b/a/a/e/al;

    new-instance v0, Lcom/b/a/a/e/al;

    invoke-direct {v0}, Lcom/b/a/a/e/al;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/e/j;->n:Z

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/b/a/a/e/j;->r:Ljava/util/Set;

    iget-object v1, p1, Lcom/b/a/a/e/r;->f:Lcom/b/a/a/e/aj;

    iput-object v1, p0, Lcom/b/a/a/e/j;->i:Lcom/b/a/a/e/aj;

    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    iput-boolean v1, p0, Lcom/b/a/a/e/j;->b:Z

    iget-object v1, p1, Lcom/b/a/a/e/r;->e:Lcom/b/a/a/e/s;

    iput-object v1, p0, Lcom/b/a/a/e/j;->c:Lcom/b/a/a/e/s;

    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3a

    const/4 v1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x2

    :goto_3b
    iput v1, p0, Lcom/b/a/a/e/j;->g:I

    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/b/a/a/e/j;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/b/a/a/e/j;->g:I

    :cond_46
    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    if-eqz v1, :cond_4b

    const/4 v2, 0x1

    :cond_4b
    iput v2, p0, Lcom/b/a/a/e/j;->v:I

    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    const/4 v2, 0x7

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/b/a/a/e/j;->l:Lcom/b/a/a/e/al;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v2, v4}, Lcom/b/a/a/e/al;->a(II)Lcom/b/a/a/e/al;

    :cond_59
    iget-object v1, p1, Lcom/b/a/a/e/r;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v4, "OkHttp %s Push Observer"

    new-array v11, v3, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v12, v11, v0

    invoke-static {v4, v11}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/b/a/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    const v1, 0xffff

    invoke-virtual {v0, v2, v1}, Lcom/b/a/a/e/al;->a(II)Lcom/b/a/a/e/al;

    iget-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/e/al;->a(II)Lcom/b/a/a/e/al;

    iget-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    invoke-virtual {v0}, Lcom/b/a/a/e/al;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/b/a/a/e/j;->k:J

    iget-object v0, p1, Lcom/b/a/a/e/r;->a:Ljava/net/Socket;

    iput-object v0, p0, Lcom/b/a/a/e/j;->o:Ljava/net/Socket;

    new-instance v0, Lcom/b/a/a/e/af;

    iget-object v1, p1, Lcom/b/a/a/e/r;->d:Lcom/b/b/g;

    iget-boolean v2, p0, Lcom/b/a/a/e/j;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/e/af;-><init>(Lcom/b/b/g;Z)V

    iput-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    new-instance v0, Lcom/b/a/a/e/u;

    new-instance v1, Lcom/b/a/a/e/y;

    iget-object p1, p1, Lcom/b/a/a/e/r;->c:Lcom/b/b/h;

    iget-boolean v2, p0, Lcom/b/a/a/e/j;->b:Z

    invoke-direct {v1, p1, v2}, Lcom/b/a/a/e/y;-><init>(Lcom/b/b/h;Z)V

    invoke-direct {v0, p0, v1}, Lcom/b/a/a/e/u;-><init>(Lcom/b/a/a/e/j;Lcom/b/a/a/e/y;)V

    iput-object v0, p0, Lcom/b/a/a/e/j;->q:Lcom/b/a/a/e/u;

    return-void
.end method

.method private b(Ljava/util/List;Z)Lcom/b/a/a/e/ab;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;Z)",
            "Lcom/b/a/a/e/ab;"
        }
    .end annotation

    xor-int/lit8 v6, p2, 0x1

    iget-object v7, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    monitor-enter v7

    :try_start_5
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_58

    :try_start_6
    iget-boolean v0, p0, Lcom/b/a/a/e/j;->h:Z

    if-eqz v0, :cond_10

    new-instance p1, Lcom/b/a/a/e/a;

    invoke-direct {p1}, Lcom/b/a/a/e/a;-><init>()V

    throw p1

    :cond_10
    iget v8, p0, Lcom/b/a/a/e/j;->g:I

    iget v0, p0, Lcom/b/a/a/e/j;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/a/e/j;->g:I

    new-instance v9, Lcom/b/a/a/e/ab;

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/e/ab;-><init>(ILcom/b/a/a/e/j;ZZLjava/util/List;)V

    if-eqz p2, :cond_36

    iget-wide v0, p0, Lcom/b/a/a/e/j;->k:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_36

    iget-wide v0, v9, Lcom/b/a/a/e/ab;->b:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_34

    goto :goto_36

    :cond_34
    const/4 p2, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p2, 0x1

    :goto_37
    invoke-virtual {v9}, Lcom/b/a/a/e/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_55

    :try_start_47
    iget-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v0, v6, v8, p1}, Lcom/b/a/a/e/af;->a(ZILjava/util/List;)V

    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_58

    if-eqz p2, :cond_54

    iget-object p1, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {p1}, Lcom/b/a/a/e/af;->b()V

    :cond_54
    return-object v9

    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw p1

    :catchall_58
    move-exception p1

    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method static d(I)Z
    .registers 2

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    invoke-virtual {v0}, Lcom/b/a/a/e/al;->c()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(I)Lcom/b/a/a/e/ab;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/a/e/ab;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/List;Z)Lcom/b/a/a/e/ab;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;Z)",
            "Lcom/b/a/a/e/ab;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/e/j;->b(Ljava/util/List;Z)Lcom/b/a/a/e/ab;

    move-result-object p1

    return-object p1
.end method

.method final a(IJ)V
    .registers 13

    sget-object v0, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/b/a/a/e/l;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/b/a/a/e/l;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(ILcom/b/a/a/e/b;)V
    .registers 11

    sget-object v0, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/b/a/a/e/k;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/e/k;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/a/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(ILcom/b/b/h;IZ)V
    .registers 14

    new-instance v5, Lcom/b/b/f;

    invoke-direct {v5}, Lcom/b/b/f;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/b/b/h;->a(J)V

    invoke-interface {p2, v5, v0, v1}, Lcom/b/b/h;->a(Lcom/b/b/f;J)J

    invoke-virtual {v5}, Lcom/b/b/f;->b()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_32

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/b/b/f;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    iget-object p2, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/b/a/a/e/p;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/b/a/a/e/p;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/b/f;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/e/j;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p2, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/e/j;->a(ILcom/b/a/a/e/b;)V

    monitor-exit p0

    return-void

    :cond_14
    iget-object v0, p0, Lcom/b/a/a/e/j;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3e

    iget-object v0, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/b/a/a/e/n;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/e/n;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method final a(ILjava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/b/a/a/e/o;

    const-string v3, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/b/a/a/e/o;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(IZLcom/b/b/f;J)V
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_d

    iget-object p4, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {p4, p2, p1, p3, v3}, Lcom/b/a/a/e/af;->a(ZILcom/b/b/f;I)V

    return-void

    :cond_d
    :goto_d
    cmp-long v2, p4, v0

    if-lez v2, :cond_66

    monitor-enter p0

    :goto_12
    :try_start_12
    iget-wide v4, p0, Lcom/b/a/a/e/j;->k:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_30

    iget-object v2, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_2f} :catch_5e
    .catchall {:try_start_12 .. :try_end_2f} :catchall_5c

    goto :goto_12

    :cond_30
    :try_start_30
    iget-wide v4, p0, Lcom/b/a/a/e/j;->k:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v4}, Lcom/b/a/a/e/af;->c()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lcom/b/a/a/e/j;->k:J

    int-to-long v6, v2

    sub-long v8, v4, v6

    iput-wide v8, p0, Lcom/b/a/a/e/j;->k:J

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_5c

    const/4 v4, 0x0

    sub-long v4, p4, v6

    iget-object p4, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    if-eqz p2, :cond_56

    cmp-long p5, v4, v0

    if-nez p5, :cond_56

    const/4 p5, 0x1

    goto :goto_57

    :cond_56
    const/4 p5, 0x0

    :goto_57
    invoke-virtual {p4, p5, p1, p3, v2}, Lcom/b/a/a/e/af;->a(ZILcom/b/b/f;I)V

    move-wide p4, v4

    goto :goto_d

    :catchall_5c
    move-exception p1

    goto :goto_64

    :catch_5e
    :try_start_5e
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_5c

    throw p1

    :cond_66
    return-void
.end method

.method final a(Lcom/b/a/a/e/b;Lcom/b/a/a/e/b;)V
    .registers 9

    sget-boolean v0, Lcom/b/a/a/e/j;->s:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    const/4 v0, 0x0

    :try_start_11
    iget-object v1, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    monitor-enter v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_32

    :try_start_14
    monitor-enter p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_2f

    :try_start_15
    iget-boolean v2, p0, Lcom/b/a/a/e/j;->h:Z

    if-eqz v2, :cond_1c

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_2c

    :goto_1a
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_2f

    goto :goto_2a

    :cond_1c
    const/4 v2, 0x1

    :try_start_1d
    iput-boolean v2, p0, Lcom/b/a/a/e/j;->h:Z

    iget v2, p0, Lcom/b/a/a/e/j;->f:I

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_2c

    :try_start_22
    iget-object v3, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    sget-object v4, Lcom/b/a/a/c;->a:[B

    invoke-virtual {v3, v2, p1, v4}, Lcom/b/a/a/e/af;->a(ILcom/b/a/a/e/b;[B)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2f

    goto :goto_1a

    :goto_2a
    move-object p1, v0

    goto :goto_33

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw p1

    :catchall_2f
    move-exception p1

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2f

    :try_start_31
    throw p1
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception p1

    :goto_33
    monitor-enter p0

    :try_start_34
    iget-object v1, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v1, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/b/a/a/e/ab;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/b/a/a/e/ab;

    iget-object v2, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_57

    :cond_56
    move-object v1, v0

    :goto_57
    iget-object v2, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/b/a/a/e/ai;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/b/a/a/e/ai;

    iput-object v0, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    move-object v0, v2

    :cond_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_34 .. :try_end_73} :catchall_ab

    const/4 v2, 0x0

    if-eqz v1, :cond_89

    array-length v3, v1

    move-object v4, p1

    const/4 p1, 0x0

    :goto_79
    if-ge p1, v3, :cond_88

    aget-object v5, v1, p1

    :try_start_7d
    invoke-virtual {v5, p2}, Lcom/b/a/a/e/ab;->a(Lcom/b/a/a/e/b;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception v5

    if-eqz v4, :cond_85

    move-object v4, v5

    :cond_85
    :goto_85
    add-int/lit8 p1, p1, 0x1

    goto :goto_79

    :cond_88
    move-object p1, v4

    :cond_89
    if-eqz v0, :cond_96

    array-length p2, v0

    :goto_8c
    if-ge v2, p2, :cond_96

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/b/a/a/e/ai;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    :cond_96
    :try_start_96
    iget-object p2, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {p2}, Lcom/b/a/a/e/af;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9b} :catch_9c

    goto :goto_a0

    :catch_9c
    move-exception p2

    if-nez p1, :cond_a0

    move-object p1, p2

    :cond_a0
    :goto_a0
    :try_start_a0
    iget-object p2, p0, Lcom/b/a/a/e/j;->o:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a5} :catch_a6

    goto :goto_a7

    :catch_a6
    move-exception p1

    :goto_a7
    if-eqz p1, :cond_aa

    throw p1

    :cond_aa
    return-void

    :catchall_ab
    move-exception p1

    :try_start_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p1
.end method

.method final declared-synchronized b(I)Lcom/b/a/a/e/ab;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/a/e/ab;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v0}, Lcom/b/a/a/e/af;->a()V

    iget-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    iget-object v1, p0, Lcom/b/a/a/e/j;->l:Lcom/b/a/a/e/al;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e/af;->b(Lcom/b/a/a/e/al;)V

    iget-object v0, p0, Lcom/b/a/a/e/j;->l:Lcom/b/a/a/e/al;

    invoke-virtual {v0}, Lcom/b/a/a/e/al;->d()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_1f

    iget-object v2, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/b/a/a/e/af;->a(IJ)V

    :cond_1f
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/b/a/a/e/j;->q:Lcom/b/a/a/e/u;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method final b(ILcom/b/a/a/e/b;)V
    .registers 4

    iget-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/a/e/af;->a(ILcom/b/a/a/e/b;)V

    return-void
.end method

.method final declared-synchronized c(I)Lcom/b/a/a/e/ai;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/a/e/ai;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    monitor-exit p0

    return-object p1

    :cond_13
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final c(ILcom/b/a/a/e/b;)V
    .registers 11

    iget-object v0, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/b/a/a/e/q;

    const-string v3, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/e/q;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/a/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized c()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/a/e/j;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .registers 3

    sget-object v0, Lcom/b/a/a/e/b;->a:Lcom/b/a/a/e/b;

    sget-object v1, Lcom/b/a/a/e/b;->f:Lcom/b/a/a/e/b;

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/e/j;->a(Lcom/b/a/a/e/b;Lcom/b/a/a/e/b;)V

    return-void
.end method
