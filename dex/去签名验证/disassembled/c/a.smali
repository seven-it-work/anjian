.class public Lc/a;
.super Lc/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x10000

.field static b:Lc/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final d:J

.field private static final e:J


# instance fields
.field private f:Z

.field private g:Lc/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lc/a;->d:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lc/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lc/a;->e:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc/z;-><init>()V

    return-void
.end method

.method private a(Lc/x;)Lc/x;
    .registers 3

    new-instance v0, Lc/a$1;

    invoke-direct {v0, p0, p1}, Lc/a$1;-><init>(Lc/a;Lc/x;)V

    return-object v0
.end method

.method private a(Lc/y;)Lc/y;
    .registers 3

    new-instance v0, Lc/a$2;

    invoke-direct {v0, p0, p1}, Lc/a$2;-><init>(Lc/a;Lc/y;)V

    return-object v0
.end method

.method private static declared-synchronized a(Lc/a;JZ)V
    .registers 11

    const-class v0, Lc/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lc/a;->b:Lc/a;

    if-nez v1, :cond_16

    new-instance v1, Lc/a;

    invoke-direct {v1}, Lc/a;-><init>()V

    sput-object v1, Lc/a;->b:Lc/a;

    new-instance v1, Lc/a$a;

    invoke-direct {v1}, Lc/a$a;-><init>()V

    invoke-virtual {v1}, Lc/a$a;->start()V

    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_33

    if-eqz p3, :cond_33

    invoke-virtual {p0}, Lc/a;->c()J

    move-result-wide v3

    const/4 p3, 0x0

    sub-long v5, v3, v1

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const/4 p3, 0x0

    add-long v3, v1, p1

    iput-wide v3, p0, Lc/a;->h:J

    goto :goto_44

    :cond_33
    cmp-long v5, p1, v3

    if-eqz v5, :cond_3c

    add-long v3, v1, p1

    iput-wide v3, p0, Lc/a;->h:J

    goto :goto_44

    :cond_3c
    if-eqz p3, :cond_71

    invoke-virtual {p0}, Lc/a;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lc/a;->h:J

    :goto_44
    iget-wide p1, p0, Lc/a;->h:J

    const/4 p3, 0x0

    sub-long v3, p1, v1

    sget-object p1, Lc/a;->b:Lc/a;

    :goto_4b
    iget-object p2, p1, Lc/a;->g:Lc/a;

    if-eqz p2, :cond_5e

    iget-object p2, p1, Lc/a;->g:Lc/a;

    iget-wide p2, p2, Lc/a;->h:J

    const/4 v5, 0x0

    sub-long v5, p2, v1

    cmp-long p2, v3, v5

    if-gez p2, :cond_5b

    goto :goto_5e

    :cond_5b
    iget-object p1, p1, Lc/a;->g:Lc/a;

    goto :goto_4b

    :cond_5e
    :goto_5e
    iget-object p2, p1, Lc/a;->g:Lc/a;

    iput-object p2, p0, Lc/a;->g:Lc/a;

    iput-object p0, p1, Lc/a;->g:Lc/a;

    sget-object p0, Lc/a;->b:Lc/a;

    if-ne p1, p0, :cond_6f

    const-class p0, Lc/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_77

    monitor-exit v0

    return-void

    :cond_6f
    monitor-exit v0

    return-void

    :cond_71
    :try_start_71
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Lc/a;)Z
    .registers 4

    const-class v0, Lc/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lc/a;->b:Lc/a;

    :goto_5
    if-eqz v1, :cond_18

    iget-object v2, v1, Lc/a;->g:Lc/a;

    if-ne v2, p0, :cond_15

    iget-object v2, p0, Lc/a;->g:Lc/a;

    iput-object v2, v1, Lc/a;->g:Lc/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lc/a;->g:Lc/a;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return p0

    :cond_15
    :try_start_15
    iget-object v1, v1, Lc/a;->g:Lc/a;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1a

    goto :goto_5

    :cond_18
    const/4 p0, 0x1

    goto :goto_13

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(J)J
    .registers 7

    iget-wide v0, p0, Lc/a;->h:J

    sub-long v2, v0, p1

    return-wide v2
.end method

.method static e()Lc/a;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    sget-object v0, Lc/a;->b:Lc/a;

    iget-object v0, v0, Lc/a;->g:Lc/a;

    const/4 v1, 0x0

    if-nez v0, :cond_28

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-class v0, Lc/a;

    sget-wide v4, Lc/a;->d:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    sget-object v0, Lc/a;->b:Lc/a;

    iget-object v0, v0, Lc/a;->g:Lc/a;

    if-nez v0, :cond_27

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v6, v4, v2

    sget-wide v2, Lc/a;->e:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_27

    sget-object v0, Lc/a;->b:Lc/a;

    return-object v0

    :cond_27
    return-object v1

    :cond_28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, v0, Lc/a;->h:J

    sub-long v6, v4, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-lez v4, :cond_46

    const-wide/32 v2, 0xf4240

    div-long v4, v6, v2

    mul-long v2, v2, v4

    sub-long v8, v6, v2

    const-class v0, Lc/a;

    long-to-int v2, v8

    invoke-virtual {v0, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V

    return-object v1

    :cond_46
    sget-object v2, Lc/a;->b:Lc/a;

    iget-object v3, v0, Lc/a;->g:Lc/a;

    iput-object v3, v2, Lc/a;->g:Lc/a;

    iput-object v1, v0, Lc/a;->g:Lc/a;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method final a(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc/a;->k_()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_e
    return-void
.end method

.method final b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc/a;->k_()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lc/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final j_()V
    .registers 7

    iget-boolean v0, p0, Lc/a;->f:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lc/a;->l_()J

    move-result-wide v0

    invoke-virtual {p0}, Lc/a;->m_()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1d

    if-nez v2, :cond_1d

    return-void

    :cond_1d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc/a;->f:Z

    invoke-static {p0, v0, v1, v2}, Lc/a;->a(Lc/a;JZ)V

    return-void
.end method

.method public final k_()Z
    .registers 3

    iget-boolean v0, p0, Lc/a;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lc/a;->f:Z

    invoke-static {p0}, Lc/a;->a(Lc/a;)Z

    move-result v0

    return v0
.end method
