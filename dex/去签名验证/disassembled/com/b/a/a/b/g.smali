.class public final Lcom/b/a/a/b/g;
.super Ljava/lang/Object;


# static fields
.field static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/b/a/a;

.field private c:Lcom/b/a/aw;

.field private final d:Lcom/b/a/n;

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/b/a/a/b/f;

.field private g:I

.field private h:Lcom/b/a/a/b/c;

.field private i:Z

.field private j:Z

.field private k:Lcom/b/a/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/b/a/n;Lcom/b/a/a;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    iput-object p2, p0, Lcom/b/a/a/b/g;->a:Lcom/b/a/a;

    new-instance p1, Lcom/b/a/a/b/f;

    invoke-direct {p0}, Lcom/b/a/a/b/g;->f()Lcom/b/a/a/b/d;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/b/a/a/b/f;-><init>(Lcom/b/a/a;Lcom/b/a/a/b/d;)V

    iput-object p1, p0, Lcom/b/a/a/b/g;->f:Lcom/b/a/a/b/f;

    iput-object p3, p0, Lcom/b/a/a/b/g;->e:Ljava/lang/Object;

    return-void
.end method

.method private a(IIIZ)Lcom/b/a/a/b/c;
    .registers 9

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/b/a/a/b/g;->i:Z

    if-eqz v1, :cond_f

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-object v1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    if-eqz v1, :cond_1b

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "codec != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-boolean v1, p0, Lcom/b/a/a/b/g;->j:Z

    if-eqz v1, :cond_27

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz v1, :cond_31

    iget-boolean v2, v1, Lcom/b/a/a/b/c;->a:Z

    if-nez v2, :cond_31

    monitor-exit v0

    return-object v1

    :cond_31
    sget-object v1, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object v2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    iget-object v3, p0, Lcom/b/a/a/b/g;->a:Lcom/b/a/a;

    invoke-virtual {v1, v2, v3, p0}, Lcom/b/a/a/a;->a(Lcom/b/a/n;Lcom/b/a/a;Lcom/b/a/a/b/g;)Lcom/b/a/a/b/c;

    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz v1, :cond_42

    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    monitor-exit v0

    return-object p1

    :cond_42
    iget-object v1, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_a2

    if-nez v1, :cond_4d

    iget-object v0, p0, Lcom/b/a/a/b/g;->f:Lcom/b/a/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/a/b/f;->b()Lcom/b/a/aw;

    move-result-object v1

    :cond_4d
    iget-object v2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v2

    :try_start_50
    iput-object v1, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/b/g;->g:I

    new-instance v0, Lcom/b/a/a/b/c;

    iget-object v3, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-direct {v0, v3, v1}, Lcom/b/a/a/b/c;-><init>(Lcom/b/a/n;Lcom/b/a/aw;)V

    invoke-virtual {p0, v0}, Lcom/b/a/a/b/g;->a(Lcom/b/a/a/b/c;)V

    iget-boolean v1, p0, Lcom/b/a/a/b/g;->j:Z

    if-eqz v1, :cond_6b

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_9f

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/b/a/a/b/c;->a(IIIZ)V

    invoke-direct {p0}, Lcom/b/a/a/b/g;->f()Lcom/b/a/a/b/d;

    move-result-object p1

    invoke-virtual {v0}, Lcom/b/a/a/b/c;->a()Lcom/b/a/aw;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/b/a/a/b/d;->b(Lcom/b/a/aw;)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter p2

    :try_start_7e
    sget-object p3, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object p4, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-virtual {p3, p4, v0}, Lcom/b/a/a/a;->b(Lcom/b/a/n;Lcom/b/a/a/b/c;)V

    invoke-virtual {v0}, Lcom/b/a/a/b/c;->d()Z

    move-result p3

    if-eqz p3, :cond_97

    sget-object p1, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object p3, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    iget-object p4, p0, Lcom/b/a/a/b/g;->a:Lcom/b/a/a;

    invoke-virtual {p1, p3, p4, p0}, Lcom/b/a/a/a;->b(Lcom/b/a/n;Lcom/b/a/a;Lcom/b/a/a/b/g;)Ljava/net/Socket;

    move-result-object p1

    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    :cond_97
    monitor-exit p2
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_9c

    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-object v0

    :catchall_9c
    move-exception p1

    :try_start_9d
    monitor-exit p2
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p1

    :catchall_9f
    move-exception p1

    :try_start_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p1

    :catchall_a2
    move-exception p1

    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw p1
.end method

.method private a(IIIZZ)Lcom/b/a/a/b/c;
    .registers 9

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/b/a/a/b/g;->a(IIIZ)Lcom/b/a/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v1

    :try_start_7
    iget v2, v0, Lcom/b/a/a/b/c;->b:I

    if-nez v2, :cond_d

    monitor-exit v1

    return-object v0

    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    invoke-virtual {v0, p5}, Lcom/b/a/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/b/a/a/b/g;->d()V

    goto :goto_0

    :cond_18
    return-object v0

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private a(ZZZ)Ljava/net/Socket;
    .registers 5

    sget-boolean v0, Lcom/b/a/a/b/g;->b:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    const/4 v0, 0x0

    if-eqz p3, :cond_17

    iput-object v0, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    :cond_17
    const/4 p3, 0x1

    if-eqz p2, :cond_1c

    iput-boolean p3, p0, Lcom/b/a/a/b/g;->i:Z

    :cond_1c
    iget-object p2, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz p2, :cond_62

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iput-boolean p3, p1, Lcom/b/a/a/b/c;->a:Z

    :cond_26
    iget-object p1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    if-nez p1, :cond_62

    iget-boolean p1, p0, Lcom/b/a/a/b/g;->i:Z

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-boolean p1, p1, Lcom/b/a/a/b/c;->a:Z

    if-eqz p1, :cond_62

    :cond_34
    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    invoke-direct {p0, p1}, Lcom/b/a/a/b/g;->c(Lcom/b/a/a/b/c;)V

    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-object p1, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/b/a/a/b/c;->e:J

    sget-object p1, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object p2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    iget-object p3, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    invoke-virtual {p1, p2, p3}, Lcom/b/a/a/a;->a(Lcom/b/a/n;Lcom/b/a/a/b/c;)Z

    move-result p1

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    invoke-virtual {p1}, Lcom/b/a/a/b/c;->b()Ljava/net/Socket;

    move-result-object p1

    goto :goto_5f

    :cond_5e
    move-object p1, v0

    :goto_5f
    iput-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    return-object p1

    :cond_62
    move-object p1, v0

    return-object p1
.end method

.method private c(Lcom/b/a/a/b/c;)V
    .registers 5

    iget-object v0, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    iget-object v2, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    iget-object p1, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private f()Lcom/b/a/a/b/d;
    .registers 3

    sget-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object v1, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-virtual {v0, v1}, Lcom/b/a/a/a;->a(Lcom/b/a/n;)Lcom/b/a/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/b/a/a/c/c;
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final a(Lcom/b/a/ai;Z)Lcom/b/a/a/c/c;
    .registers 9

    invoke-virtual {p1}, Lcom/b/a/ai;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/b/a/ai;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/b/a/ai;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/b/a/ai;->q()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    :try_start_12
    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/g;->a(IIIZZ)Lcom/b/a/a/b/c;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/b/a/a/b/c;->a(Lcom/b/a/ai;Lcom/b/a/a/b/g;)Lcom/b/a/a/c/c;

    move-result-object p1

    iget-object p2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter p2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_24

    :try_start_1d
    iput-object p1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    monitor-exit p2

    return-object p1

    :catchall_21
    move-exception p1

    monitor-exit p2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    :try_start_23
    throw p1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_24} :catch_24

    :catch_24
    move-exception p1

    new-instance p2, Lcom/b/a/a/b/e;

    invoke-direct {p2, p1}, Lcom/b/a/a/b/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final a(Lcom/b/a/a/b/c;)V
    .registers 4

    sget-boolean v0, Lcom/b/a/a/b/g;->b:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz v0, :cond_1c

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1c
    iput-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-object p1, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    new-instance v0, Lcom/b/a/a/b/h;

    iget-object v1, p0, Lcom/b/a/a/b/g;->e:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/b/a/a/b/h;-><init>(Lcom/b/a/a/b/g;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .registers 8

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    :try_start_3
    instance-of v1, p1, Lcom/b/a/a/e/am;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    check-cast p1, Lcom/b/a/a/e/am;

    iget-object v1, p1, Lcom/b/a/a/e/am;->a:Lcom/b/a/a/e/b;

    sget-object v5, Lcom/b/a/a/e/b;->e:Lcom/b/a/a/e/b;

    if-ne v1, v5, :cond_17

    iget v1, p0, Lcom/b/a/a/b/g;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/b/a/a/b/g;->g:I

    :cond_17
    iget-object p1, p1, Lcom/b/a/a/e/am;->a:Lcom/b/a/a/e/b;

    sget-object v1, Lcom/b/a/a/e/b;->e:Lcom/b/a/a/e/b;

    if-ne p1, v1, :cond_45

    iget p1, p0, Lcom/b/a/a/b/g;->g:I

    if-le p1, v4, :cond_49

    goto :goto_45

    :cond_22
    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    invoke-virtual {v1}, Lcom/b/a/a/b/c;->d()Z

    move-result v1

    if-eqz v1, :cond_32

    instance-of v1, p1, Lcom/b/a/a/e/a;

    if-eqz v1, :cond_49

    :cond_32
    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget v1, v1, Lcom/b/a/a/b/c;->b:I

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    if-eqz v1, :cond_45

    if-eqz p1, :cond_45

    iget-object v1, p0, Lcom/b/a/a/b/g;->f:Lcom/b/a/a/b/f;

    iget-object v5, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    invoke-virtual {v1, v5, p1}, Lcom/b/a/a/b/f;->a(Lcom/b/a/aw;Ljava/io/IOException;)V

    :cond_45
    :goto_45
    iput-object v2, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    :cond_47
    const/4 p1, 0x1

    goto :goto_4a

    :cond_49
    const/4 p1, 0x0

    :goto_4a
    invoke-direct {p0, p1, v3, v4}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_53

    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public final a(ZLcom/b/a/a/c/c;)V
    .registers 6

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    if-eqz p2, :cond_20

    :try_start_5
    iget-object v1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    if-eq p2, v1, :cond_a

    goto :goto_20

    :cond_a
    const/4 p2, 0x1

    if-nez p1, :cond_14

    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget v2, v1, Lcom/b/a/a/b/c;->b:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/b/a/a/b/c;->b:I

    :cond_14
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_1e
    move-exception p1

    goto :goto_3e

    :cond_20
    :goto_20
    :try_start_20
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_1e

    throw p1
.end method

.method public final declared-synchronized b()Lcom/b/a/a/b/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/b/a/a/b/c;)Ljava/net/Socket;
    .registers 5

    sget-boolean v0, Lcom/b/a/a/b/g;->b:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    iget-object v0, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-object v0, v0, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    goto :goto_39

    :cond_22
    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-object v0, v0, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-direct {p0, v1, v2, v2}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-object p1, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_39
    :goto_39
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, v2, v1, v2}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-static {v1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, v1, v2, v2}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-static {v1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/b/a/a/b/g;->f:Lcom/b/a/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/b/a/a/b/g;->b()Lcom/b/a/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/b/a/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/b/a/a/b/g;->a:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
