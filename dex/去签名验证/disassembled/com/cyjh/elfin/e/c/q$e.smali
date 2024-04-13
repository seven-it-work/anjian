.class final Lcom/cyjh/elfin/e/c/q$e;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/e/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Lcom/cyjh/elfin/e/c/q$a;


# direct methods
.method private constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/q$e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    # setter for: Lcom/cyjh/elfin/e/c/q$a;->mPool:Lcom/cyjh/elfin/e/c/q$e;
    invoke-static {p6, p0}, Lcom/cyjh/elfin/e/c/q$a;->access$302(Lcom/cyjh/elfin/e/c/q$a;Lcom/cyjh/elfin/e/c/q$e;)Lcom/cyjh/elfin/e/c/q$e;

    iput-object p6, p0, Lcom/cyjh/elfin/e/c/q$e;->b:Lcom/cyjh/elfin/e/c/q$a;

    return-void
.end method

.method private a()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/q$e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method static synthetic a(II)Ljava/util/concurrent/ExecutorService;
    .registers 26

    move/from16 v2, p0

    move/from16 v0, p1

    const/4 v1, -0x8

    const/4 v3, 0x1

    if-eq v2, v1, :cond_99

    const/4 v1, -0x4

    if-eq v2, v1, :cond_72

    packed-switch v2, :pswitch_data_c2

    new-instance v8, Lcom/cyjh/elfin/e/c/q$e;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v6}, Lcom/cyjh/elfin/e/c/q$a;-><init>()V

    new-instance v7, Lcom/cyjh/elfin/e/c/q$f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "fixed("

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object v0, v8

    move v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8

    :pswitch_37
    new-instance v1, Lcom/cyjh/elfin/e/c/q$e;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v15}, Lcom/cyjh/elfin/e/c/q$a;-><init>()V

    new-instance v2, Lcom/cyjh/elfin/e/c/q$f;

    const-string v3, "single"

    invoke-direct {v2, v3, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object v9, v1

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v16}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    :pswitch_52
    new-instance v1, Lcom/cyjh/elfin/e/c/q$e;

    const/16 v17, 0x0

    const/16 v18, 0x80

    const-wide/16 v19, 0x3c

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v2, v3}, Lcom/cyjh/elfin/e/c/q$a;-><init>(Z)V

    new-instance v3, Lcom/cyjh/elfin/e/c/q$f;

    const-string v4, "cached"

    invoke-direct {v3, v4, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object/from16 v16, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v23}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    :cond_72
    new-instance v1, Lcom/cyjh/elfin/e/c/q$e;

    invoke-static {}, Lcom/cyjh/elfin/e/c/q;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v6, v2, 0x1

    invoke-static {}, Lcom/cyjh/elfin/e/c/q;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v7, v2, 0x1

    const-wide/16 v8, 0x1e

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v11}, Lcom/cyjh/elfin/e/c/q$a;-><init>()V

    new-instance v12, Lcom/cyjh/elfin/e/c/q$f;

    const-string v2, "io"

    invoke-direct {v12, v2, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    :cond_99
    new-instance v1, Lcom/cyjh/elfin/e/c/q$e;

    invoke-static {}, Lcom/cyjh/elfin/e/c/q;->a()I

    move-result v2

    add-int/lit8 v14, v2, 0x1

    invoke-static {}, Lcom/cyjh/elfin/e/c/q;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v15, v2, 0x1

    const-wide/16 v16, 0x1e

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v2, v3}, Lcom/cyjh/elfin/e/c/q$a;-><init>(Z)V

    new-instance v3, Lcom/cyjh/elfin/e/c/q$f;

    const-string v4, "cpu"

    invoke-direct {v3, v4, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object v13, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v13 .. v20}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    :pswitch_data_c2
    .packed-switch -0x2
        :pswitch_52
        :pswitch_37
    .end packed-switch
.end method

.method private static b(II)Ljava/util/concurrent/ExecutorService;
    .registers 26

    move/from16 v2, p0

    move/from16 v0, p1

    const/4 v1, -0x8

    const/4 v3, 0x1

    if-eq v2, v1, :cond_99

    const/4 v1, -0x4

    if-eq v2, v1, :cond_72

    packed-switch v2, :pswitch_data_c2

    new-instance v8, Lcom/cyjh/elfin/e/c/q$e;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v6}, Lcom/cyjh/elfin/e/c/q$a;-><init>()V

    new-instance v7, Lcom/cyjh/elfin/e/c/q$f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "fixed("

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object v0, v8

    move v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8

    :pswitch_37
    new-instance v1, Lcom/cyjh/elfin/e/c/q$e;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v15}, Lcom/cyjh/elfin/e/c/q$a;-><init>()V

    new-instance v2, Lcom/cyjh/elfin/e/c/q$f;

    const-string v3, "single"

    invoke-direct {v2, v3, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object v9, v1

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v16}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    :pswitch_52
    new-instance v1, Lcom/cyjh/elfin/e/c/q$e;

    const/16 v17, 0x0

    const/16 v18, 0x80

    const-wide/16 v19, 0x3c

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v2, v3}, Lcom/cyjh/elfin/e/c/q$a;-><init>(Z)V

    new-instance v3, Lcom/cyjh/elfin/e/c/q$f;

    const-string v4, "cached"

    invoke-direct {v3, v4, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object/from16 v16, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v23}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    :cond_72
    new-instance v1, Lcom/cyjh/elfin/e/c/q$e;

    invoke-static {}, Lcom/cyjh/elfin/e/c/q;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v6, v2, 0x1

    invoke-static {}, Lcom/cyjh/elfin/e/c/q;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v7, v2, 0x1

    const-wide/16 v8, 0x1e

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v11}, Lcom/cyjh/elfin/e/c/q$a;-><init>()V

    new-instance v12, Lcom/cyjh/elfin/e/c/q$f;

    const-string v2, "io"

    invoke-direct {v12, v2, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    :cond_99
    new-instance v1, Lcom/cyjh/elfin/e/c/q$e;

    invoke-static {}, Lcom/cyjh/elfin/e/c/q;->a()I

    move-result v2

    add-int/lit8 v14, v2, 0x1

    invoke-static {}, Lcom/cyjh/elfin/e/c/q;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v15, v2, 0x1

    const-wide/16 v16, 0x1e

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/cyjh/elfin/e/c/q$a;

    invoke-direct {v2, v3}, Lcom/cyjh/elfin/e/c/q$a;-><init>(Z)V

    new-instance v3, Lcom/cyjh/elfin/e/c/q$f;

    const-string v4, "cpu"

    invoke-direct {v3, v4, v0}, Lcom/cyjh/elfin/e/c/q$f;-><init>(Ljava/lang/String;I)V

    move-object v13, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v13 .. v20}, Lcom/cyjh/elfin/e/c/q$e;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/cyjh/elfin/e/c/q$a;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    :pswitch_data_c2
    .packed-switch -0x2
        :pswitch_52
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/q$e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/cyjh/elfin/e/c/q$e;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/cyjh/elfin/e/c/q$e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :try_start_c
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_f} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    iget-object p1, p0, Lcom/cyjh/elfin/e/c/q$e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :catch_16
    const-string v0, "ThreadUtils"

    const-string v1, "This will not happen!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/q$e;->b:Lcom/cyjh/elfin/e/c/q$a;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/e/c/q$a;->offer(Ljava/lang/Runnable;)Z

    return-void
.end method
