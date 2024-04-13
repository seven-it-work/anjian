.class final Lcom/b/a/a/e/u;
.super Lcom/b/a/a/b;

# interfaces
.implements Lcom/b/a/a/e/aa;


# instance fields
.field final a:Lcom/b/a/a/e/y;

.field final synthetic c:Lcom/b/a/a/e/j;


# direct methods
.method constructor <init>(Lcom/b/a/a/e/j;Lcom/b/a/a/e/y;)V
    .registers 6

    iput-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .registers 9

    if-nez p1, :cond_18

    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    monitor-enter v0

    :try_start_5
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-wide v1, p1, Lcom/b/a/a/e/j;->k:J

    const/4 v3, 0x0

    add-long v3, v1, p2

    iput-wide v3, p1, Lcom/b/a/a/e/j;->k:J

    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p1}, Lcom/b/a/a/e/j;->a(I)Lcom/b/a/a/e/ab;

    move-result-object p1

    if-eqz p1, :cond_29

    monitor-enter p1

    :try_start_21
    invoke-virtual {p1, p2, p3}, Lcom/b/a/a/e/ab;->a(J)V

    monitor-exit p1

    return-void

    :catchall_26
    move-exception p2

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    throw p2

    :cond_29
    return-void
.end method

.method public final a(ILcom/b/a/a/e/b;)V
    .registers 4

    invoke-static {p1}, Lcom/b/a/a/e/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/a/e/j;->c(ILcom/b/a/a/e/b;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p1}, Lcom/b/a/a/e/j;->b(I)Lcom/b/a/a/e/ab;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1, p2}, Lcom/b/a/a/e/ab;->c(Lcom/b/a/a/e/b;)V

    :cond_17
    return-void
.end method

.method public final a(ILcom/b/b/i;)V
    .registers 7

    invoke-virtual {p2}, Lcom/b/b/i;->g()I

    iget-object p2, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    monitor-enter p2

    :try_start_6
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v0, v0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v1, v1, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/b/a/a/e/ab;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/e/ab;

    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/b/a/a/e/j;->h:Z

    monitor-exit p2
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_44

    array-length p2, v0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, p2, :cond_43

    aget-object v2, v0, v1

    iget v3, v2, Lcom/b/a/a/e/ab;->c:I

    if-le v3, p1, :cond_40

    invoke-virtual {v2}, Lcom/b/a/a/e/ab;->b()Z

    move-result v3

    if-eqz v3, :cond_40

    sget-object v3, Lcom/b/a/a/e/b;->e:Lcom/b/a/a/e/b;

    invoke-virtual {v2, v3}, Lcom/b/a/a/e/ab;->c(Lcom/b/a/a/e/b;)V

    iget-object v3, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget v2, v2, Lcom/b/a/a/e/ab;->c:I

    invoke-virtual {v3, v2}, Lcom/b/a/a/e/j;->b(I)Lcom/b/a/a/e/ab;

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_43
    return-void

    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit p2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public final a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/a/e/j;->a(ILjava/util/List;)V

    return-void
.end method

.method public final a(Lcom/b/a/a/e/al;)V
    .registers 14

    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v1, v1, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    invoke-virtual {v1}, Lcom/b/a/a/e/al;->d()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v2, v2, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    const/16 v5, 0xa

    if-ge v4, v5, :cond_25

    invoke-virtual {p1, v4}, Lcom/b/a/a/e/al;->a(I)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {p1, v4}, Lcom/b/a/a/e/al;->b(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/b/a/a/e/al;->a(II)Lcom/b/a/a/e/al;

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_25
    sget-object v2, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/b/a/a/e/x;

    const-string v5, "OkHttp %s ACK Settings"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v8, v8, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-direct {v4, p0, v5, v7, p1}, Lcom/b/a/a/e/x;-><init>(Lcom/b/a/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Lcom/b/a/a/e/al;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object p1, p1, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    invoke-virtual {p1}, Lcom/b/a/a/e/al;->d()I

    move-result p1

    const/4 v2, -0x1

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    if-eq p1, v2, :cond_8a

    if-eq p1, v1, :cond_8a

    sub-int/2addr p1, v1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-boolean p1, p1, Lcom/b/a/a/e/j;->n:Z

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-wide v8, p1, Lcom/b/a/a/e/j;->k:J

    const/4 v10, 0x0

    add-long v10, v8, v1

    iput-wide v10, p1, Lcom/b/a/a/e/j;->k:J

    cmp-long v8, v1, v4

    if-lez v8, :cond_62

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :cond_62
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iput-boolean v6, p1, Lcom/b/a/a/e/j;->n:Z

    :cond_66
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object p1, p1, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8b

    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object p1, p1, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object v7, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v7, v7, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    new-array v7, v7, [Lcom/b/a/a/e/ab;

    invoke-interface {p1, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Lcom/b/a/a/e/ab;

    goto :goto_8b

    :cond_8a
    move-wide v1, v4

    :cond_8b
    :goto_8b
    sget-object p1, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/b/a/a/e/w;

    const-string v9, "OkHttp %s settings"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v10, v10, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v10, v6, v3

    invoke-direct {v8, p0, v9, v6}, Lcom/b/a/a/e/w;-><init>(Lcom/b/a/a/e/u;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_3 .. :try_end_a0} :catchall_b7

    if-eqz v7, :cond_b6

    cmp-long p1, v1, v4

    if-eqz p1, :cond_b6

    array-length p1, v7

    :goto_a7
    if-ge v3, p1, :cond_b6

    aget-object v0, v7, v3

    monitor-enter v0

    :try_start_ac
    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/e/ab;->a(J)V

    monitor-exit v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    :catchall_b3
    move-exception p1

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_ac .. :try_end_b5} :catchall_b3

    throw p1

    :cond_b6
    return-void

    :catchall_b7
    move-exception p1

    :try_start_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw p1
.end method

.method public final a(ZII)V
    .registers 11

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {p1, p2}, Lcom/b/a/a/e/j;->c(I)Lcom/b/a/a/e/ai;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/b/a/a/e/ai;->b()V

    :cond_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    sget-object p1, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/b/a/a/e/m;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, v1, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    move-object v0, v6

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/e/m;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(ZILcom/b/b/h;I)V
    .registers 6

    invoke-static {p2}, Lcom/b/a/a/e/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/b/a/a/e/j;->a(ILcom/b/b/h;IZ)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p2}, Lcom/b/a/a/e/j;->a(I)Lcom/b/a/a/e/ab;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    sget-object v0, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;

    invoke-virtual {p1, p2, v0}, Lcom/b/a/a/e/j;->a(ILcom/b/a/a/e/b;)V

    int-to-long p1, p4

    invoke-interface {p3, p1, p2}, Lcom/b/b/h;->f(J)V

    return-void

    :cond_20
    invoke-virtual {v0, p3, p4}, Lcom/b/a/a/e/ab;->a(Lcom/b/b/h;I)V

    if-eqz p1, :cond_28

    invoke-virtual {v0}, Lcom/b/a/a/e/ab;->f()V

    :cond_28
    return-void
.end method

.method public final a(ZILjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/b/a/a/e/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p2, p3, p1}, Lcom/b/a/a/e/j;->a(ILjava/util/List;Z)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-boolean v1, v1, Lcom/b/a/a/e/j;->h:Z

    if-eqz v1, :cond_17

    monitor-exit v0

    return-void

    :cond_17
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v1, p2}, Lcom/b/a/a/e/j;->a(I)Lcom/b/a/a/e/ab;

    move-result-object v1

    if-nez v1, :cond_6c

    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget v1, v1, Lcom/b/a/a/e/j;->f:I

    if-gt p2, v1, :cond_27

    monitor-exit v0

    return-void

    :cond_27
    rem-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget v2, v2, Lcom/b/a/a/e/j;->g:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-ne v1, v2, :cond_33

    monitor-exit v0

    return-void

    :cond_33
    new-instance v1, Lcom/b/a/a/e/ab;

    iget-object v6, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    const/4 v7, 0x0

    move-object v4, v1

    move v5, p2

    move v8, p1

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/b/a/a/e/ab;-><init>(ILcom/b/a/a/e/j;ZZLjava/util/List;)V

    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iput p2, p1, Lcom/b/a/a/e/j;->f:I

    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object p1, p1, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/b/a/a/e/v;

    const-string v2, "OkHttp %s stream %d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v5, v5, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-direct {p3, p0, v2, v3, v1}, Lcom/b/a/a/e/v;-><init>(Lcom/b/a/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Lcom/b/a/a/e/ab;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :cond_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_f .. :try_end_6d} :catchall_76

    invoke-virtual {v1, p3}, Lcom/b/a/a/e/ab;->a(Ljava/util/List;)V

    if-eqz p1, :cond_75

    invoke-virtual {v1}, Lcom/b/a/a/e/ab;->f()V

    :cond_75
    return-void

    :catchall_76
    move-exception p1

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p1
.end method

.method protected final b()V
    .registers 6

    sget-object v0, Lcom/b/a/a/e/b;->c:Lcom/b/a/a/e/b;

    sget-object v1, Lcom/b/a/a/e/b;->c:Lcom/b/a/a/e/b;

    :try_start_4
    iget-object v2, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    invoke-virtual {v2, p0}, Lcom/b/a/a/e/y;->a(Lcom/b/a/a/e/aa;)V

    :cond_9
    iget-object v2, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lcom/b/a/a/e/y;->a(ZLcom/b/a/a/e/aa;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/b/a/a/e/b;->a:Lcom/b/a/a/e/b;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_25
    .catchall {:try_start_4 .. :try_end_14} :catchall_23

    :try_start_14
    sget-object v0, Lcom/b/a/a/e/b;->f:Lcom/b/a/a/e/b;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_16} :catch_21
    .catchall {:try_start_14 .. :try_end_16} :catchall_2c

    :try_start_16
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    :goto_18
    invoke-virtual {v1, v2, v0}, Lcom/b/a/a/e/j;->a(Lcom/b/a/a/e/b;Lcom/b/a/a/e/b;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_1b

    :catch_1b
    iget-object v0, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    return-void

    :catch_21
    move-object v0, v2

    goto :goto_25

    :catchall_23
    move-exception v2

    goto :goto_30

    :catch_25
    :goto_25
    :try_start_25
    sget-object v2, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_23

    :try_start_27
    sget-object v0, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2c

    :try_start_29
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2b} :catch_1b

    goto :goto_18

    :catchall_2c
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :goto_30
    :try_start_30
    iget-object v3, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v3, v0, v1}, Lcom/b/a/a/e/j;->a(Lcom/b/a/a/e/b;Lcom/b/a/a/e/b;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_35

    :catch_35
    iget-object v0, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    throw v2
.end method
