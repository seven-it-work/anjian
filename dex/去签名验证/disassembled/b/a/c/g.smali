.class public final Lb/a/c/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/c/g$a;
    }
.end annotation


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lb/a;

.field public b:Lb/ag;

.field public final c:Lb/k;

.field public final d:Lb/a/c/f;

.field public e:Lb/a/c/c;

.field public f:Z

.field public g:Lb/a/d/c;

.field private final i:Ljava/lang/Object;

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lb/k;Lb/a;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/c/g;->c:Lb/k;

    iput-object p2, p0, Lb/a/c/g;->a:Lb/a;

    new-instance p1, Lb/a/c/f;

    invoke-direct {p0}, Lb/a/c/g;->e()Lb/a/c/d;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lb/a/c/f;-><init>(Lb/a;Lb/a/c/d;)V

    iput-object p1, p0, Lb/a/c/g;->d:Lb/a/c/f;

    iput-object p3, p0, Lb/a/c/g;->i:Ljava/lang/Object;

    return-void
.end method

.method private a(IIIZ)Lb/a/c/c;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lb/a/c/g;->k:Z

    if-eqz v1, :cond_f

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-object v1, p0, Lb/a/c/g;->g:Lb/a/d/c;

    if-eqz v1, :cond_1b

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "codec != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-boolean v1, p0, Lb/a/c/g;->f:Z

    if-eqz v1, :cond_27

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    iget-object v1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    if-eqz v1, :cond_31

    iget-boolean v2, v1, Lb/a/c/c;->h:Z

    if-nez v2, :cond_31

    monitor-exit v0

    return-object v1

    :cond_31
    sget-object v1, Lb/a/a;->a:Lb/a/a;

    iget-object v2, p0, Lb/a/c/g;->c:Lb/k;

    iget-object v3, p0, Lb/a/c/g;->a:Lb/a;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p0, v4}, Lb/a/a;->a(Lb/k;Lb/a;Lb/a/c/g;Lb/ag;)Lb/a/c/c;

    iget-object v1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    if-eqz v1, :cond_43

    iget-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    monitor-exit v0

    return-object p1

    :cond_43
    iget-object v1, p0, Lb/a/c/g;->b:Lb/ag;

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_b1

    if-nez v1, :cond_4e

    iget-object v0, p0, Lb/a/c/g;->d:Lb/a/c/f;

    invoke-virtual {v0}, Lb/a/c/f;->a()Lb/ag;

    move-result-object v1

    :cond_4e
    iget-object v2, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter v2

    :try_start_51
    iget-boolean v0, p0, Lb/a/c/g;->f:Z

    if-eqz v0, :cond_5d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    sget-object v0, Lb/a/a;->a:Lb/a/a;

    iget-object v3, p0, Lb/a/c/g;->c:Lb/k;

    iget-object v5, p0, Lb/a/c/g;->a:Lb/a;

    invoke-virtual {v0, v3, v5, p0, v1}, Lb/a/a;->a(Lb/k;Lb/a;Lb/a/c/g;Lb/ag;)Lb/a/c/c;

    iget-object v0, p0, Lb/a/c/g;->e:Lb/a/c/c;

    if-eqz v0, :cond_6e

    iget-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    monitor-exit v2

    return-object p1

    :cond_6e
    iput-object v1, p0, Lb/a/c/g;->b:Lb/ag;

    const/4 v0, 0x0

    iput v0, p0, Lb/a/c/g;->j:I

    new-instance v0, Lb/a/c/c;

    iget-object v3, p0, Lb/a/c/g;->c:Lb/k;

    invoke-direct {v0, v3, v1}, Lb/a/c/c;-><init>(Lb/k;Lb/ag;)V

    invoke-virtual {p0, v0}, Lb/a/c/g;->a(Lb/a/c/c;)V

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_51 .. :try_end_7e} :catchall_ae

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/c/c;->a(IIIZ)V

    invoke-direct {p0}, Lb/a/c/g;->e()Lb/a/c/d;

    move-result-object p1

    iget-object p2, v0, Lb/a/c/c;->a:Lb/ag;

    invoke-virtual {p1, p2}, Lb/a/c/d;->b(Lb/ag;)V

    iget-object p1, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter p1

    :try_start_8d
    sget-object p2, Lb/a/a;->a:Lb/a/a;

    iget-object p3, p0, Lb/a/c/g;->c:Lb/k;

    invoke-virtual {p2, p3, v0}, Lb/a/a;->b(Lb/k;Lb/a/c/c;)V

    invoke-virtual {v0}, Lb/a/c/c;->e()Z

    move-result p2

    if-eqz p2, :cond_a6

    sget-object p2, Lb/a/a;->a:Lb/a/a;

    iget-object p3, p0, Lb/a/c/g;->c:Lb/k;

    iget-object p4, p0, Lb/a/c/g;->a:Lb/a;

    invoke-virtual {p2, p3, p4, p0}, Lb/a/a;->a(Lb/k;Lb/a;Lb/a/c/g;)Ljava/net/Socket;

    move-result-object v4

    iget-object v0, p0, Lb/a/c/g;->e:Lb/a/c/c;

    :cond_a6
    monitor-exit p1
    :try_end_a7
    .catchall {:try_start_8d .. :try_end_a7} :catchall_ab

    invoke-static {v4}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-object v0

    :catchall_ab
    move-exception p2

    :try_start_ac
    monitor-exit p1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p2

    :catchall_ae
    move-exception p1

    :try_start_af
    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p1

    :catchall_b1
    move-exception p1

    :try_start_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw p1
.end method

.method private a(IIIZZ)Lb/a/c/c;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/c/g;->a(IIIZ)Lb/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter v1

    :try_start_7
    iget v2, v0, Lb/a/c/c;->i:I

    if-nez v2, :cond_d

    monitor-exit v1

    return-object v0

    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    invoke-virtual {v0, p5}, Lb/a/c/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lb/a/c/g;->d()V

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

.method private b(Lb/a/c/c;)V
    .registers 5

    iget-object v0, p1, Lb/a/c/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    iget-object v2, p1, Lb/a/c/c;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    iget-object p1, p1, Lb/a/c/c;->k:Ljava/util/List;

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

.method private c(Lb/a/c/c;)Ljava/net/Socket;
    .registers 5

    sget-boolean v0, Lb/a/c/g;->h:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    iget-object v0, p0, Lb/a/c/g;->g:Lb/a/d/c;

    if-nez v0, :cond_39

    iget-object v0, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iget-object v0, v0, Lb/a/c/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    goto :goto_39

    :cond_22
    iget-object v0, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iget-object v0, v0, Lb/a/c/c;->k:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {p0, v1, v2, v2}, Lb/a/c/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iget-object p1, p1, Lb/a/c/c;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_39
    :goto_39
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private e()Lb/a/c/d;
    .registers 3

    sget-object v0, Lb/a/a;->a:Lb/a/a;

    iget-object v1, p0, Lb/a/c/g;->c:Lb/k;

    invoke-virtual {v0, v1}, Lb/a/a;->a(Lb/k;)Lb/a/c/d;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lb/a/c/g;->f:Z

    iget-object v1, p0, Lb/a/c/g;->g:Lb/a/d/c;

    iget-object v2, p0, Lb/a/c/g;->e:Lb/a/c/c;

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_19

    if-eqz v1, :cond_11

    invoke-interface {v1}, Lb/a/d/c;->c()V

    return-void

    :cond_11
    if-eqz v2, :cond_18

    iget-object v0, v2, Lb/a/c/c;->b:Ljava/net/Socket;

    invoke-static {v0}, Lb/a/c;->a(Ljava/net/Socket;)V

    :cond_18
    return-void

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private g()Z
    .registers 5

    iget-object v0, p0, Lb/a/c/g;->b:Lb/ag;

    const/4 v1, 0x1

    if-nez v0, :cond_22

    iget-object v0, p0, Lb/a/c/g;->d:Lb/a/c/f;

    invoke-virtual {v0}, Lb/a/c/f;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    invoke-virtual {v0}, Lb/a/c/f;->b()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v0}, Lb/a/c/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_21

    return v1

    :cond_21
    return v3

    :cond_22
    return v1
.end method


# virtual methods
.method public final a()Lb/a/d/c;
    .registers 3

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lb/a/c/g;->g:Lb/a/d/c;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final a(Lb/z;Z)Lb/a/d/c;
    .registers 9

    iget v1, p1, Lb/z;->z:I

    iget v2, p1, Lb/z;->A:I

    iget v3, p1, Lb/z;->B:I

    iget-boolean v4, p1, Lb/z;->y:Z

    move-object v0, p0

    move v5, p2

    :try_start_a
    invoke-direct/range {v0 .. v5}, Lb/a/c/g;->a(IIIZZ)Lb/a/c/c;

    move-result-object p2

    iget-object v0, p2, Lb/a/c/c;->e:Lb/a/f/g;

    if-eqz v0, :cond_1a

    new-instance v0, Lb/a/f/f;

    iget-object p2, p2, Lb/a/c/c;->e:Lb/a/f/g;

    invoke-direct {v0, p1, p0, p2}, Lb/a/f/f;-><init>(Lb/z;Lb/a/c/g;Lb/a/f/g;)V

    goto :goto_46

    :cond_1a
    iget-object v0, p2, Lb/a/c/c;->c:Ljava/net/Socket;

    iget v1, p1, Lb/z;->A:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p2, Lb/a/c/c;->f:Lc/e;

    invoke-interface {v0}, Lc/e;->timeout()Lc/z;

    move-result-object v0

    iget v1, p1, Lb/z;->A:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lc/z;->a(JLjava/util/concurrent/TimeUnit;)Lc/z;

    iget-object v0, p2, Lb/a/c/c;->g:Lc/d;

    invoke-interface {v0}, Lc/d;->timeout()Lc/z;

    move-result-object v0

    iget v1, p1, Lb/z;->B:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lc/z;->a(JLjava/util/concurrent/TimeUnit;)Lc/z;

    new-instance v0, Lb/a/e/a;

    iget-object v1, p2, Lb/a/c/c;->f:Lc/e;

    iget-object p2, p2, Lb/a/c/c;->g:Lc/d;

    invoke-direct {v0, p1, p0, v1, p2}, Lb/a/e/a;-><init>(Lb/z;Lb/a/c/g;Lc/e;Lc/d;)V

    :goto_46
    iget-object p1, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter p1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_49} :catch_50

    :try_start_49
    iput-object v0, p0, Lb/a/c/g;->g:Lb/a/d/c;

    monitor-exit p1

    return-object v0

    :catchall_4d
    move-exception p2

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw p2
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_50} :catch_50

    :catch_50
    move-exception p1

    new-instance p2, Lb/a/c/e;

    invoke-direct {p2, p1}, Lb/a/c/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final a(ZZZ)Ljava/net/Socket;
    .registers 5

    sget-boolean v0, Lb/a/c/g;->h:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    const/4 v0, 0x0

    if-eqz p3, :cond_17

    iput-object v0, p0, Lb/a/c/g;->g:Lb/a/d/c;

    :cond_17
    const/4 p3, 0x1

    if-eqz p2, :cond_1c

    iput-boolean p3, p0, Lb/a/c/g;->k:Z

    :cond_1c
    iget-object p2, p0, Lb/a/c/g;->e:Lb/a/c/c;

    if-eqz p2, :cond_60

    if-eqz p1, :cond_26

    iget-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iput-boolean p3, p1, Lb/a/c/c;->h:Z

    :cond_26
    iget-object p1, p0, Lb/a/c/g;->g:Lb/a/d/c;

    if-nez p1, :cond_60

    iget-boolean p1, p0, Lb/a/c/g;->k:Z

    if-nez p1, :cond_34

    iget-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iget-boolean p1, p1, Lb/a/c/c;->h:Z

    if-eqz p1, :cond_60

    :cond_34
    iget-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    invoke-direct {p0, p1}, Lb/a/c/g;->b(Lb/a/c/c;)V

    iget-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iget-object p1, p1, Lb/a/c/c;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lb/a/c/c;->l:J

    sget-object p1, Lb/a/a;->a:Lb/a/a;

    iget-object p2, p0, Lb/a/c/g;->c:Lb/k;

    iget-object p3, p0, Lb/a/c/g;->e:Lb/a/c/c;

    invoke-virtual {p1, p2, p3}, Lb/a/a;->a(Lb/k;Lb/a/c/c;)Z

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iget-object p1, p1, Lb/a/c/c;->c:Ljava/net/Socket;

    goto :goto_5d

    :cond_5c
    move-object p1, v0

    :goto_5d
    iput-object v0, p0, Lb/a/c/g;->e:Lb/a/c/c;

    return-object p1

    :cond_60
    move-object p1, v0

    return-object p1
.end method

.method public final a(Lb/a/c/c;)V
    .registers 4

    sget-boolean v0, Lb/a/c/g;->h:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    iget-object v0, p0, Lb/a/c/g;->e:Lb/a/c/c;

    if-eqz v0, :cond_1c

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1c
    iput-object p1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iget-object p1, p1, Lb/a/c/c;->k:Ljava/util/List;

    new-instance v0, Lb/a/c/g$a;

    iget-object v1, p0, Lb/a/c/g;->i:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lb/a/c/g$a;-><init>(Lb/a/c/g;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .registers 11

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter v0

    :try_start_3
    instance-of v1, p1, Lb/a/f/o;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    check-cast p1, Lb/a/f/o;

    iget-object v1, p1, Lb/a/f/o;->errorCode:Lb/a/f/b;

    sget-object v5, Lb/a/f/b;->REFUSED_STREAM:Lb/a/f/b;

    if-ne v1, v5, :cond_17

    iget v1, p0, Lb/a/c/g;->j:I

    add-int/2addr v1, v4

    iput v1, p0, Lb/a/c/g;->j:I

    :cond_17
    iget-object p1, p1, Lb/a/f/o;->errorCode:Lb/a/f/b;

    sget-object v1, Lb/a/f/b;->REFUSED_STREAM:Lb/a/f/b;

    if-ne p1, v1, :cond_6c

    iget p1, p0, Lb/a/c/g;->j:I

    if-le p1, v4, :cond_70

    goto :goto_6c

    :cond_22
    iget-object v1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    invoke-virtual {v1}, Lb/a/c/c;->e()Z

    move-result v1

    if-eqz v1, :cond_32

    instance-of v1, p1, Lb/a/f/a;

    if-eqz v1, :cond_70

    :cond_32
    iget-object v1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iget v1, v1, Lb/a/c/c;->i:I

    if-nez v1, :cond_6e

    iget-object v1, p0, Lb/a/c/g;->b:Lb/ag;

    if-eqz v1, :cond_6c

    if-eqz p1, :cond_6c

    iget-object v1, p0, Lb/a/c/g;->d:Lb/a/c/f;

    iget-object v5, p0, Lb/a/c/g;->b:Lb/ag;

    iget-object v6, v5, Lb/ag;->b:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v6, v7, :cond_67

    iget-object v6, v1, Lb/a/c/f;->a:Lb/a;

    iget-object v6, v6, Lb/a;->g:Ljava/net/ProxySelector;

    if-eqz v6, :cond_67

    iget-object v6, v1, Lb/a/c/f;->a:Lb/a;

    iget-object v6, v6, Lb/a;->g:Ljava/net/ProxySelector;

    iget-object v7, v1, Lb/a/c/f;->a:Lb/a;

    iget-object v7, v7, Lb/a;->a:Lb/v;

    invoke-virtual {v7}, Lb/v;->a()Ljava/net/URI;

    move-result-object v7

    iget-object v8, v5, Lb/ag;->b:Ljava/net/Proxy;

    invoke-virtual {v8}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_67
    iget-object p1, v1, Lb/a/c/f;->b:Lb/a/c/d;

    invoke-virtual {p1, v5}, Lb/a/c/d;->a(Lb/ag;)V

    :cond_6c
    :goto_6c
    iput-object v2, p0, Lb/a/c/g;->b:Lb/ag;

    :cond_6e
    const/4 p1, 0x1

    goto :goto_71

    :cond_70
    const/4 p1, 0x0

    :goto_71
    invoke-virtual {p0, p1, v3, v4}, Lb/a/c/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_7a

    invoke-static {p1}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_7a
    move-exception p1

    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method public final a(ZLb/a/d/c;)V
    .registers 6

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter v0

    if-eqz p2, :cond_20

    :try_start_5
    iget-object v1, p0, Lb/a/c/g;->g:Lb/a/d/c;

    if-eq p2, v1, :cond_a

    goto :goto_20

    :cond_a
    const/4 p2, 0x1

    if-nez p1, :cond_14

    iget-object v1, p0, Lb/a/c/g;->e:Lb/a/c/c;

    iget v2, v1, Lb/a/c/c;->i:I

    add-int/2addr v2, p2

    iput v2, v1, Lb/a/c/c;->i:I

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lb/a/c/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    invoke-static {p1}, Lb/a/c;->a(Ljava/net/Socket;)V

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

    iget-object v2, p0, Lb/a/c/g;->g:Lb/a/d/c;

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

.method public final declared-synchronized b()Lb/a/c/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lb/a/c/g;->e:Lb/a/c/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v2, v1, v2}, Lb/a/c/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-static {v1}, Lb/a/c;->a(Ljava/net/Socket;)V

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

    iget-object v0, p0, Lb/a/c/g;->c:Lb/k;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v2, v2}, Lb/a/c/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-static {v1}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lb/a/c/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lb/a/c/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
