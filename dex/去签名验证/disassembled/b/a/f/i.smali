.class public final Lb/a/f/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/f/i$c;,
        Lb/a/f/i$a;,
        Lb/a/f/i$b;
    }
.end annotation


# static fields
.field static final synthetic l:Z = true


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lb/a/f/g;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field final g:Lb/a/f/i$b;

.field final h:Lb/a/f/i$a;

.field final i:Lb/a/f/i$c;

.field final j:Lb/a/f/i$c;

.field k:Lb/a/f/b;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(ILb/a/f/g;ZZLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lb/a/f/g;",
            "ZZ",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/a/f/i;->a:J

    new-instance v0, Lb/a/f/i$c;

    invoke-direct {v0, p0}, Lb/a/f/i$c;-><init>(Lb/a/f/i;)V

    iput-object v0, p0, Lb/a/f/i;->i:Lb/a/f/i$c;

    new-instance v0, Lb/a/f/i$c;

    invoke-direct {v0, p0}, Lb/a/f/i$c;-><init>(Lb/a/f/i;)V

    iput-object v0, p0, Lb/a/f/i;->j:Lb/a/f/i$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/f/i;->k:Lb/a/f/b;

    if-nez p2, :cond_22

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    if-nez p5, :cond_2c

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    iput p1, p0, Lb/a/f/i;->c:I

    iput-object p2, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget-object p1, p2, Lb/a/f/g;->n:Lb/a/f/n;

    invoke-virtual {p1}, Lb/a/f/n;->b()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lb/a/f/i;->b:J

    new-instance p1, Lb/a/f/i$b;

    iget-object p2, p2, Lb/a/f/g;->m:Lb/a/f/n;

    invoke-virtual {p2}, Lb/a/f/n;->b()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, p0, v0, v1}, Lb/a/f/i$b;-><init>(Lb/a/f/i;J)V

    iput-object p1, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    new-instance p1, Lb/a/f/i$a;

    invoke-direct {p1, p0}, Lb/a/f/i$a;-><init>(Lb/a/f/i;)V

    iput-object p1, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iget-object p1, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    iput-boolean p4, p1, Lb/a/f/i$b;->b:Z

    iget-object p1, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iput-boolean p3, p1, Lb/a/f/i$a;->b:Z

    iput-object p5, p0, Lb/a/f/i;->m:Ljava/util/List;

    return-void
.end method

.method private a(Lc/e;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lb/a/f/i;->l:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget-object v0, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lb/a/f/i$b;->a(Lc/e;J)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lb/a/f/i;->l:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, Lb/a/f/i;->f:Z

    iget-object v1, p0, Lb/a/f/i;->e:Ljava/util/List;

    if-nez v1, :cond_22

    iput-object p1, p0, Lb/a/f/i;->e:Ljava/util/List;

    invoke-virtual {p0}, Lb/a/f/i;->a()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_35

    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lb/a/f/i;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lb/a/f/i;->e:Ljava/util/List;

    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_40

    if-nez v0, :cond_3f

    iget-object p1, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget v0, p0, Lb/a/f/i;->c:I

    invoke-virtual {p1, v0}, Lb/a/f/g;->b(I)Lb/a/f/i;

    :cond_3f
    return-void

    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p1
.end method

.method private a(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lb/a/f/i;->l:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    if-nez p1, :cond_1a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "responseHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_1d
    iput-boolean v1, p0, Lb/a/f/i;->f:Z

    if-nez p2, :cond_26

    iget-object p2, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iput-boolean v1, p2, Lb/a/f/i$a;->b:Z

    const/4 v0, 0x1

    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_3a

    iget-object p2, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget v1, p0, Lb/a/f/i;->c:I

    iget-object p2, p2, Lb/a/f/g;->q:Lb/a/f/j;

    invoke-virtual {p2, v0, v1, p1}, Lb/a/f/j;->b(ZILjava/util/List;)V

    if-eqz v0, :cond_39

    iget-object p1, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget-object p1, p1, Lb/a/f/g;->q:Lb/a/f/j;

    invoke-virtual {p1}, Lb/a/f/j;->b()V

    :cond_39
    return-void

    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private d(Lb/a/f/b;)Z
    .registers 4

    sget-boolean v0, Lb/a/f/i;->l:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lb/a/f/i;->k:Lb/a/f/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    monitor-exit p0

    return v1

    :cond_18
    iget-object v0, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    iget-boolean v0, v0, Lb/a/f/i$b;->b:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iget-boolean v0, v0, Lb/a/f/i$a;->b:Z

    if-eqz v0, :cond_26

    monitor-exit p0

    return v1

    :cond_26
    iput-object p1, p0, Lb/a/f/i;->k:Lb/a/f/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_35

    iget-object p1, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget v0, p0, Lb/a/f/i;->c:I

    invoke-virtual {p1, v0}, Lb/a/f/g;->b(I)Lb/a/f/i;

    const/4 p1, 0x1

    return p1

    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

.method private i()I
    .registers 2

    iget v0, p0, Lb/a/f/i;->c:I

    return v0
.end method

.method private j()Lb/a/f/g;
    .registers 2

    iget-object v0, p0, Lb/a/f/i;->d:Lb/a/f/g;

    return-object v0
.end method

.method private k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/i;->m:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized l()Lb/a/f/b;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lb/a/f/i;->k:Lb/a/f/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()Lc/z;
    .registers 2

    iget-object v0, p0, Lb/a/f/i;->i:Lb/a/f/i$c;

    return-object v0
.end method

.method private n()Lc/z;
    .registers 2

    iget-object v0, p0, Lb/a/f/i;->j:Lb/a/f/i$c;

    return-object v0
.end method

.method private o()Lc/y;
    .registers 2

    iget-object v0, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    return-object v0
.end method


# virtual methods
.method final a(J)V
    .registers 7

    iget-wide v0, p0, Lb/a/f/i;->b:J

    add-long v2, v0, p1

    iput-wide v2, p0, Lb/a/f/i;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_f
    return-void
.end method

.method public final a(Lb/a/f/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/a/f/i;->d(Lb/a/f/b;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget v1, p0, Lb/a/f/i;->c:I

    invoke-virtual {v0, v1, p1}, Lb/a/f/g;->b(ILb/a/f/b;)V

    return-void
.end method

.method public final declared-synchronized a()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lb/a/f/i;->k:Lb/a/f/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    iget-boolean v0, v0, Lb/a/f/i$b;->b:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    iget-boolean v0, v0, Lb/a/f/i$b;->a:Z

    if-eqz v0, :cond_26

    :cond_14
    iget-object v0, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iget-boolean v0, v0, Lb/a/f/i$a;->b:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iget-boolean v0, v0, Lb/a/f/i$a;->a:Z

    if-eqz v0, :cond_26

    :cond_20
    iget-boolean v0, p0, Lb/a/f/i;->f:Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    if-eqz v0, :cond_26

    monitor-exit p0

    return v1

    :cond_26
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lb/a/f/b;)V
    .registers 4

    invoke-direct {p0, p1}, Lb/a/f/i;->d(Lb/a/f/b;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget v1, p0, Lb/a/f/i;->c:I

    invoke-virtual {v0, v1, p1}, Lb/a/f/g;->a(ILb/a/f/b;)V

    return-void
.end method

.method public final b()Z
    .registers 5

    iget v0, p0, Lb/a/f/i;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v3, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget-boolean v3, v3, Lb/a/f/g;->b:Z

    if-ne v3, v0, :cond_11

    return v1

    :cond_11
    return v2
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lb/a/f/i;->b()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lb/a/f/i;->i:Lb/a/f/i$c;

    invoke-virtual {v0}, Lb/a/f/i$c;->j_()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3d

    :goto_14
    :try_start_14
    iget-object v0, p0, Lb/a/f/i;->e:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, Lb/a/f/i;->k:Lb/a/f/b;

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lb/a/f/i;->h()V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_36

    goto :goto_14

    :cond_20
    :try_start_20
    iget-object v0, p0, Lb/a/f/i;->i:Lb/a/f/i$c;

    invoke-virtual {v0}, Lb/a/f/i$c;->b()V

    iget-object v0, p0, Lb/a/f/i;->e:Ljava/util/List;

    if-eqz v0, :cond_2e

    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/f/i;->e:Ljava/util/List;
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_3d

    monitor-exit p0

    return-object v0

    :cond_2e
    :try_start_2e
    new-instance v0, Lb/a/f/o;

    iget-object v1, p0, Lb/a/f/i;->k:Lb/a/f/b;

    invoke-direct {v0, v1}, Lb/a/f/o;-><init>(Lb/a/f/b;)V

    throw v0

    :catchall_36
    move-exception v0

    iget-object v1, p0, Lb/a/f/i;->i:Lb/a/f/i$c;

    invoke-virtual {v1}, Lb/a/f/i$c;->b()V

    throw v0
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(Lb/a/f/b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lb/a/f/i;->k:Lb/a/f/b;

    if-nez v0, :cond_a

    iput-object p1, p0, Lb/a/f/i;->k:Lb/a/f/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Lc/x;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/i;->f:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lb/a/f/i;->b()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    iget-object v0, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    return-object v0

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method final e()V
    .registers 3

    sget-boolean v0, Lb/a/f/i;->l:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/a/f/i$b;->b:Z

    invoke-virtual {p0}, Lb/a/f/i;->a()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_28

    if-nez v0, :cond_27

    iget-object v0, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget v1, p0, Lb/a/f/i;->c:I

    invoke-virtual {v0, v1}, Lb/a/f/g;->b(I)Lb/a/f/i;

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method final f()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lb/a/f/i;->l:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    iget-boolean v0, v0, Lb/a/f/i$b;->b:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lb/a/f/i;->g:Lb/a/f/i$b;

    iget-boolean v0, v0, Lb/a/f/i$b;->a:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iget-boolean v0, v0, Lb/a/f/i$a;->b:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iget-boolean v0, v0, Lb/a/f/i$a;->a:Z

    if-eqz v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-virtual {p0}, Lb/a/f/i;->a()Z

    move-result v1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_43

    if-eqz v0, :cond_39

    sget-object v0, Lb/a/f/b;->CANCEL:Lb/a/f/b;

    invoke-virtual {p0, v0}, Lb/a/f/i;->a(Lb/a/f/b;)V

    return-void

    :cond_39
    if-nez v1, :cond_42

    iget-object v0, p0, Lb/a/f/i;->d:Lb/a/f/g;

    iget v1, p0, Lb/a/f/i;->c:I

    invoke-virtual {v0, v1}, Lb/a/f/g;->b(I)Lb/a/f/i;

    :cond_42
    return-void

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method final g()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iget-boolean v0, v0, Lb/a/f/i$a;->a:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lb/a/f/i;->h:Lb/a/f/i$a;

    iget-boolean v0, v0, Lb/a/f/i$a;->b:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Lb/a/f/i;->k:Lb/a/f/b;

    if-eqz v0, :cond_28

    new-instance v0, Lb/a/f/o;

    iget-object v1, p0, Lb/a/f/i;->k:Lb/a/f/b;

    invoke-direct {v0, v1}, Lb/a/f/o;-><init>(Lb/a/f/b;)V

    throw v0

    :cond_28
    return-void
.end method

.method final h()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
