.class public final Lcom/cyjh/common/util/toast/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/toast/o$c;,
        Lcom/cyjh/common/util/toast/o$d;,
        Lcom/cyjh/common/util/toast/o$b;,
        Lcom/cyjh/common/util/toast/o$f;,
        Lcom/cyjh/common/util/toast/o$a;,
        Lcom/cyjh/common/util/toast/o$e;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cyjh/common/util/toast/o$d;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:I

.field private static final e:Ljava/util/Timer;

.field private static final f:B = -0x1t

.field private static final g:B = -0x2t

.field private static final h:B = -0x4t

.field private static final i:B = -0x8t

.field private static j:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cyjh/common/util/toast/o;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/o;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/o;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/cyjh/common/util/toast/o;->d:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/o;->e:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .registers 2

    const/4 v0, -0x2

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static a(II)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILcom/cyjh/common/util/toast/o$d;)V
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static a(ILcom/cyjh/common/util/toast/o$d;I)V
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static a(ILcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V
    .registers 15
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static a(ILcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    invoke-static {p0, p7}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static a(ILcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static a(ILcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    invoke-static {p0, p5}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static a(Lcom/cyjh/common/util/toast/o$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static a(Lcom/cyjh/common/util/toast/o$d;I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static a(Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static a(Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .param p6    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0, p6}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static a(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static a(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0, p4}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    invoke-static {p4, p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_e
    sget-object v0, Lcom/cyjh/common/util/toast/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .registers 4

    sget-object v0, Lcom/cyjh/common/util/toast/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/common/util/toast/o$d;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/util/toast/o$d;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/o$d;->d()V

    goto :goto_d

    :cond_1f
    return-void
.end method

.method private static a(Ljava/util/concurrent/Executor;)V
    .registers 1

    sput-object p0, Lcom/cyjh/common/util/toast/o;->j:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    instance-of v0, p0, Lcom/cyjh/common/util/toast/o$e;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/cyjh/common/util/toast/o;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_e

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/common/util/toast/o$d;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/cyjh/common/util/toast/o$d;->d()V

    goto :goto_e

    :cond_2c
    return-void

    :cond_2d
    const-string p0, "ThreadUtils"

    const-string v0, "The executorService is not ThreadUtils\'s pool."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static varargs a([Lcom/cyjh/common/util/toast/o$d;)V
    .registers 4

    if-eqz p0, :cond_14

    array-length v0, p0

    if-nez v0, :cond_6

    return-void

    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/cyjh/common/util/toast/o$d;->d()V

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method static synthetic b()I
    .registers 1

    sget v0, Lcom/cyjh/common/util/toast/o;->d:I

    return v0
.end method

.method private static b(I)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-static {v0, p0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static b(II)Ljava/util/concurrent/ExecutorService;
    .registers 5

    sget-object v0, Lcom/cyjh/common/util/toast/o;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/cyjh/common/util/toast/o;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2b

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/o$e;->a(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/cyjh/common/util/toast/o;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_2b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_42

    invoke-static {p0, p1}, Lcom/cyjh/common/util/toast/o$e;->a(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    :goto_42
    monitor-exit v0

    return-object v2

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p0
.end method

.method private static b(ILcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static b(ILcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    invoke-static {p0, p5}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static b(Lcom/cyjh/common/util/toast/o$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x2

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static b(Lcom/cyjh/common/util/toast/o$d;I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, -0x2

    invoke-static {v0, p1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static b(Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x2

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static b(Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .param p6    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x2

    invoke-static {v0, p6}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static b(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p0

    move-wide v6, p1

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static b(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0, p4}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method static synthetic c()Ljava/util/concurrent/Executor;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/toast/o;->j:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/common/util/toast/o$3;

    invoke-direct {v0}, Lcom/cyjh/common/util/toast/o$3;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/o;->j:Ljava/util/concurrent/Executor;

    :cond_b
    sget-object v0, Lcom/cyjh/common/util/toast/o;->j:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static c(I)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param

    const/4 v0, -0x2

    invoke-static {v0, p0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/cyjh/common/util/toast/o$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x4

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static c(Lcom/cyjh/common/util/toast/o$d;I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, -0x4

    invoke-static {v0, p1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static c(Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x4

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static c(Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .param p6    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x4

    invoke-static {v0, p6}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static c(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x2

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static c(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x2

    invoke-static {v0, p4}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    invoke-static {p4, p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/toast/o;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/cyjh/common/util/toast/o;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string p0, "ThreadUtils"

    const-string p1, "Task can only be executed once."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_14
    sget-object v1, Lcom/cyjh/common/util/toast/o;->c:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_4d

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_37

    cmp-long p4, p2, v0

    if-nez p4, :cond_28

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_28
    new-instance p4, Lcom/cyjh/common/util/toast/o$1;

    invoke-direct {p4, p0, p1}, Lcom/cyjh/common/util/toast/o$1;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    sget-object p0, Lcom/cyjh/common/util/toast/o;->e:Ljava/util/Timer;

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p4, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_37
    invoke-static {p1}, Lcom/cyjh/common/util/toast/o$d;->a(Lcom/cyjh/common/util/toast/o$d;)V

    new-instance v1, Lcom/cyjh/common/util/toast/o$2;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/common/util/toast/o$2;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    sget-object v0, Lcom/cyjh/common/util/toast/o;->e:Ljava/util/Timer;

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void

    :catchall_4d
    move-exception p0

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method private static c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method static synthetic d()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/toast/o;->c:Ljava/util/Map;

    return-object v0
.end method

.method private static d(I)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param

    const/4 v0, -0x4

    invoke-static {v0, p0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/cyjh/common/util/toast/o$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x8

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static d(Lcom/cyjh/common/util/toast/o$d;I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, -0x8

    invoke-static {v0, p1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V

    return-void
.end method

.method private static d(Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x8

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static d(Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 15
    .param p6    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x8

    invoke-static {v0, p6}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static d(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x2

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p0

    move-wide v6, p1

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static d(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x2

    invoke-static {v0, p4}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static e(I)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param

    const/4 v0, -0x8

    invoke-static {v0, p0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/cyjh/common/util/toast/o$d;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/cyjh/common/util/toast/o$d;->d()V

    return-void
.end method

.method private static e(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x4

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static e(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x4

    invoke-static {v0, p4}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    invoke-static {p4, p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static e()Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static f()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/toast/o;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private static f(I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static f(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x4

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p0

    move-wide v6, p1

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static f(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x4

    invoke-static {v0, p4}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static g()Ljava/util/concurrent/ExecutorService;
    .registers 2

    const/4 v0, -0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static g(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x8

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static g(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 6
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x8

    invoke-static {v0, p4}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    invoke-static {p4, p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static h()Ljava/util/concurrent/ExecutorService;
    .registers 2

    const/4 v0, -0x4

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static h(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x8

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p0

    move-wide v6, p1

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static h(Lcom/cyjh/common/util/toast/o$d;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xaL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x8

    invoke-static {v0, p4}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/cyjh/common/util/toast/o;->b(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static i()Ljava/util/concurrent/ExecutorService;
    .registers 2

    const/4 v0, -0x8

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/o;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static j()Ljava/util/concurrent/Executor;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/toast/o;->j:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/common/util/toast/o$3;

    invoke-direct {v0}, Lcom/cyjh/common/util/toast/o$3;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/o;->j:Ljava/util/concurrent/Executor;

    :cond_b
    sget-object v0, Lcom/cyjh/common/util/toast/o;->j:Ljava/util/concurrent/Executor;

    return-object v0
.end method
