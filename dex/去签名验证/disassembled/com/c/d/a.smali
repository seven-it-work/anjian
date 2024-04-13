.class public final Lcom/c/d/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field private static b:Z = false

.field private static c:Ljava/lang/Object; = null

.field private static d:Ljava/lang/Thread$UncaughtExceptionHandler; = null

.field private static e:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/os/Handler; = null

.field private static final g:I = 0x1000

.field private static h:Ljava/util/concurrent/ScheduledExecutorService;

.field private static i:Ljava/io/File;

.field private static j:Ljava/io/File;

.field private static k:Landroid/content/Context;

.field private static final l:[C

.field private static final m:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/d/a;->e:Ljava/util/Map;

    const/16 v0, 0x40

    new-array v1, v0, [C

    sput-object v1, Lcom/c/d/a;->l:[C

    const/4 v1, 0x0

    const/16 v2, 0x41

    const/4 v3, 0x0

    :goto_11
    const/16 v4, 0x5a

    if-le v2, v4, :cond_68

    const/16 v2, 0x61

    :goto_17
    const/16 v4, 0x7a

    if-le v2, v4, :cond_5d

    const/16 v2, 0x30

    :goto_1d
    const/16 v4, 0x39

    if-le v2, v4, :cond_52

    sget-object v2, Lcom/c/d/a;->l:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2b

    aput-char v5, v2, v3

    sget-object v2, Lcom/c/d/a;->l:[C

    const/16 v3, 0x2f

    aput-char v3, v2, v4

    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/c/d/a;->m:[B

    const/4 v2, 0x0

    :goto_36
    sget-object v3, Lcom/c/d/a;->m:[B

    array-length v3, v3

    if-lt v2, v3, :cond_4a

    :goto_3b
    if-lt v1, v0, :cond_3e

    return-void

    :cond_3e
    sget-object v2, Lcom/c/d/a;->m:[B

    sget-object v3, Lcom/c/d/a;->l:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_4a
    sget-object v3, Lcom/c/d/a;->m:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_52
    sget-object v4, Lcom/c/d/a;->l:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_1d

    :cond_5d
    sget-object v4, Lcom/c/d/a;->l:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_17

    :cond_68
    sget-object v4, Lcom/c/d/a;->l:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_11
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static a(Ljava/lang/String;J)J
    .registers 12

    sget-object v0, Lcom/c/d/a;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_d

    return-wide v1

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, v3, v5

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1f

    cmp-long v0, v7, p1

    if-lez v0, :cond_26

    :cond_1f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    return-wide v7
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    sget-object v0, Lcom/c/d/a;->i:Ljava/io/File;

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "aquery"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/c/d/a;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_14
    sget-object p0, Lcom/c/d/a;->i:Ljava/io/File;

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/io/File;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    sget-object p1, Lcom/c/d/a;->j:Ljava/io/File;

    if-eqz p1, :cond_a

    sget-object p0, Lcom/c/d/a;->j:Ljava/io/File;

    return-object p0

    :cond_a
    invoke-static {p0}, Lcom/c/d/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const-string v0, "persistent"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object p1, Lcom/c/d/a;->j:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    sget-object p0, Lcom/c/d/a;->j:Ljava/io/File;

    return-object p0

    :cond_1d
    invoke-static {p0}, Lcom/c/d/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/c/d/a;->a([B)[B

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    :try_start_6
    invoke-static/range {v0 .. v5}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    if-eqz p3, :cond_12

    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_12
    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    const/4 v1, 0x0

    if-nez p3, :cond_b

    :try_start_9
    new-array p3, v1, [Ljava/lang/Class;

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-virtual {p3, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_17} :catch_18

    return-object p3

    :catch_18
    if-eqz p2, :cond_3a

    if-nez p4, :cond_2d

    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Class;

    invoke-virtual {p2, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    :cond_3a
    return-object v0
.end method

.method public static a()V
    .registers 2

    sget-boolean v0, Lcom/c/d/a;->b:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/c/d/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/c/d/a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    sget-object v1, Lcom/c/d/a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    return-void
.end method

.method private static a(J)V
    .registers 4

    sget-boolean v0, Lcom/c/d/a;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/c/d/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/c/d/a;->c:Ljava/lang/Object;

    :cond_10
    sget-object v0, Lcom/c/d/a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    sget-object v1, Lcom/c/d/a;->c:Ljava/lang/Object;

    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_1b
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_1f

    :catchall_19
    move-exception p0

    goto :goto_21

    :catch_1b
    move-exception p0

    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    throw p0
.end method

.method private static a(Landroid/app/Application;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/c/d/a;->k:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 9

    sget v0, Lcom/c/a;->Q:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_11

    const-string v3, "apply"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Landroid/view/View;F)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void

    :cond_a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p1, :cond_9

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_b

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_b
    cmpl-float p1, p1, v0

    if-nez p1, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void

    :cond_13
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 1

    sput-object p0, Lcom/c/d/a;->i:Ljava/io/File;

    if-eqz p0, :cond_9

    sget-object p0, Lcom/c/d/a;->i:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_9
    return-void
.end method

.method public static a(Ljava/io/File;JJ)V
    .registers 16

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/c/d/c;

    invoke-direct {v0}, Lcom/c/d/c;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v5, v2

    const/4 v4, 0x0

    :goto_15
    if-lt v4, v0, :cond_18

    goto :goto_26

    :cond_18
    aget-object v7, p0, v4

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x0

    add-long v9, v5, v7

    cmp-long v5, v9, p1

    if-lez v5, :cond_3f

    const/4 v1, 0x1

    :goto_26
    if-eqz v1, :cond_2b

    invoke-static {p0, p3, p4}, Lcom/c/d/a;->b([Ljava/io/File;J)V

    :cond_2b
    invoke-static {}, Lcom/c/d/a;->c()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/c/d/a;->b([Ljava/io/File;J)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_43

    return-void

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v9

    goto :goto_15

    :catch_43
    move-exception p0

    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    :cond_47
    return-void
.end method

.method public static a(Ljava/io/File;[B)V
    .registers 6

    invoke-static {}, Lcom/c/d/a;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/c/d/c;

    invoke-direct {v1}, Lcom/c/d/c;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v1, p0, v2}, Lcom/c/d/c;->a(I[Ljava/lang/Object;)Lcom/c/d/c;

    move-result-object p0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/c/d/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/c/d/f;)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/c/d/f;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2710

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2d

    invoke-virtual {p3}, Lcom/c/d/f;->a()V

    if-gtz p2, :cond_f

    iput-boolean v2, p3, Lcom/c/d/f;->d:Z

    const/16 p2, 0x2710

    :cond_f
    iput p2, p3, Lcom/c/d/f;->e:I

    iget-object v3, p3, Lcom/c/d/f;->a:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_1f

    iget-object v3, p3, Lcom/c/d/f;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v3, p3, Lcom/c/d/f;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_1f
    iget-object v3, p3, Lcom/c/d/f;->b:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2d

    iget-object v3, p3, Lcom/c/d/f;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v3, p3, Lcom/c/d/f;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v3, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_2d
    const/16 p2, 0x1000

    new-array p2, p2, [B

    const/4 v3, 0x0

    :cond_32
    :goto_32
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0x270f

    if-ne v4, v5, :cond_65

    if-eqz p3, :cond_64

    iget-object p0, p3, Lcom/c/d/f;->a:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_4c

    iget-object p0, p3, Lcom/c/d/f;->a:Landroid/widget/ProgressBar;

    iget-object p1, p3, Lcom/c/d/f;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4c
    iget-object p0, p3, Lcom/c/d/f;->b:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_5b

    iget-object p0, p3, Lcom/c/d/f;->b:Landroid/app/ProgressDialog;

    iget-object p1, p3, Lcom/c/d/f;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getMax()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_5b
    iget-object p0, p3, Lcom/c/d/f;->c:Landroid/app/Activity;

    if-eqz p0, :cond_64

    iget-object p0, p3, Lcom/c/d/f;->c:Landroid/app/Activity;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setProgress(I)V

    :cond_64
    return-void

    :cond_65
    invoke-virtual {p1, p2, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v2

    sget-boolean v5, Lcom/c/d/a;->a:Z

    if-eqz v5, :cond_7b

    const/4 v5, 0x2

    if-le v3, v5, :cond_7b

    const-string p0, "simulating internet error"

    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_7b
    if-eqz p3, :cond_32

    iget-object v5, p3, Lcom/c/d/f;->a:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_8d

    iget-object v5, p3, Lcom/c/d/f;->a:Landroid/widget/ProgressBar;

    iget-boolean v7, p3, Lcom/c/d/f;->d:Z

    if-eqz v7, :cond_89

    const/4 v7, 0x1

    goto :goto_8a

    :cond_89
    move v7, v4

    :goto_8a
    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_8d
    iget-object v5, p3, Lcom/c/d/f;->b:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_9d

    iget-object v5, p3, Lcom/c/d/f;->b:Landroid/app/ProgressDialog;

    iget-boolean v7, p3, Lcom/c/d/f;->d:Z

    if-eqz v7, :cond_99

    const/4 v7, 0x1

    goto :goto_9a

    :cond_99
    move v7, v4

    :goto_9a
    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    :cond_9d
    iget-object v5, p3, Lcom/c/d/f;->c:Landroid/app/Activity;

    if-eqz v5, :cond_32

    iget-boolean v5, p3, Lcom/c/d/f;->d:Z

    if-eqz v5, :cond_ac

    iget v4, p3, Lcom/c/d/f;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p3, Lcom/c/d/f;->f:I

    goto :goto_b8

    :cond_ac
    iget v5, p3, Lcom/c/d/f;->f:I

    add-int/2addr v5, v4

    iput v5, p3, Lcom/c/d/f;->f:I

    iget v4, p3, Lcom/c/d/f;->f:I

    mul-int/lit16 v4, v4, 0x2710

    iget v5, p3, Lcom/c/d/f;->e:I

    div-int/2addr v4, v5

    :goto_b8
    if-le v4, v6, :cond_bc

    const/16 v4, 0x270f

    :cond_bc
    iget-object v5, p3, Lcom/c/d/f;->c:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setProgress(I)V

    goto/16 :goto_32
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 2

    sget-boolean v0, Lcom/c/d/a;->b:Z

    if-eqz v0, :cond_d

    const-string v0, "AQuery"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Lcom/c/d/a$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/c/d/a$1;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/c/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/c/d/a$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/c/d/a$1;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {}, Lcom/c/d/a;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(Ljava/lang/Runnable;J)V
    .registers 4

    invoke-static {}, Lcom/c/d/a;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/c/d/a;->e:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1

    sput-object p0, Lcom/c/d/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    sget-boolean v0, Lcom/c/d/a;->b:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AQuery"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/c/d/a;->b:Z

    return-void
.end method

.method private static a([Ljava/io/File;J)Z
    .registers 12

    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v0, :cond_9

    return v1

    :cond_9
    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long v7, v3, v5

    cmp-long v3, v7, p1

    if-lez v3, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    add-int/lit8 v2, v2, 0x1

    move-wide v3, v7

    goto :goto_6
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    invoke-static {p0, v0}, Lcom/c/d/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_12
    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method private static a([B)[B
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BI)[C
    .registers 13

    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    const/4 v2, 0x0

    add-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-lt v3, p1, :cond_15

    return-object v1

    :cond_15
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ge v5, p1, :cond_24

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    goto :goto_26

    :cond_24
    move v6, v5

    const/4 v5, 0x0

    :goto_26
    if-ge v6, p1, :cond_2f

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    goto :goto_31

    :cond_2f
    move v7, v6

    const/4 v6, 0x0

    :goto_31
    ushr-int/lit8 v8, v3, 0x2

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v9, v5, 0x4

    or-int/2addr v3, v9

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v9, v6, 0x6

    or-int/2addr v5, v9

    and-int/lit8 v6, v6, 0x3f

    add-int/lit8 v9, v4, 0x1

    sget-object v10, Lcom/c/d/a;->l:[C

    aget-char v8, v10, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v9, 0x1

    sget-object v8, Lcom/c/d/a;->l:[C

    aget-char v3, v8, v3

    aput-char v3, v1, v9

    const/16 v3, 0x3d

    if-ge v4, v0, :cond_5c

    sget-object v8, Lcom/c/d/a;->l:[C

    aget-char v5, v8, v5

    goto :goto_5e

    :cond_5c
    const/16 v5, 0x3d

    :goto_5e
    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_68

    sget-object v3, Lcom/c/d/a;->l:[C

    aget-char v3, v3, v6

    :cond_68
    aput-char v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_12
.end method

.method private static b(Landroid/content/Context;F)F
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    div-float/2addr p1, p0

    return p1
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    invoke-static {p0, p1}, Lcom/c/d/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    return-object p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/c/d/a;->a([B)[B

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    invoke-static {p0}, Lcom/c/d/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Lcom/c/d/c;

    invoke-direct {v0}, Lcom/c/d/c;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-wide/32 v2, 0x2dc6c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p0

    const-wide/32 v2, 0x1e8480

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/c/d/c;->a(I[Ljava/lang/Object;)Lcom/c/d/c;

    move-result-object p0

    invoke-static {}, Lcom/c/d/a;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p0

    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Ljava/io/File;)V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method

.method public static b(Ljava/io/File;[B)V
    .registers 4

    if-eqz p0, :cond_2a

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_21

    if-nez v0, :cond_15

    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_15

    :catch_c
    move-exception v0

    :try_start_d
    const-string v1, "file create fail"

    invoke-static {v1, p0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    :try_start_22
    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    :cond_2a
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Lcom/c/d/a;->b:Z

    if-eqz v0, :cond_1d

    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    new-instance v3, Lcom/c/d/a$3;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/c/d/a$3;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-instance p0, Lcom/c/d/a$2;

    invoke-direct {p0, v3}, Lcom/c/d/a$2;-><init>(Ljava/lang/Runnable;)V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static varargs b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/c/d/a$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/c/d/a$3;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-instance p0, Lcom/c/d/a$2;

    invoke-direct {p0, v0}, Lcom/c/d/a$2;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static b(Ljava/lang/Runnable;)V
    .registers 2

    new-instance v0, Lcom/c/d/a$2;

    invoke-direct {v0, p0}, Lcom/c/d/a$2;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 3

    :try_start_0
    const-string v0, "reporting"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/c/d/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/c/d/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    return-void
.end method

.method private static b([Ljava/io/File;J)V
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    :goto_5
    array-length v4, p0

    if-lt v0, v4, :cond_12

    const-string p0, "deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_12
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long v7, v2, v5

    cmp-long v2, v7, p1

    if-ltz v2, :cond_29

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    :cond_29
    move-wide v2, v7

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static b()Z
    .registers 5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Ljava/io/File;
    .registers 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "aquery/temp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return-object v1

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/c/d/a;->a([B)[B

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    invoke-static {p0}, Lcom/c/d/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Lcom/c/d/c;

    invoke-direct {v0}, Lcom/c/d/c;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-wide/32 v2, 0x2dc6c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p0

    const-wide/32 v2, 0x1e8480

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/c/d/c;->a(I[Ljava/lang/Object;)Lcom/c/d/c;

    move-result-object p0

    invoke-static {}, Lcom/c/d/a;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p0

    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Ljava/io/File;[B)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_1f

    if-nez v0, :cond_13

    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    :try_start_b
    const-string v1, "file create fail"

    invoke-static {v1, p0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {}, Lcom/c/d/a;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static d(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-static {p0, p1}, Lcom/c/d/a;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_d
    return-object p0
.end method

.method private static d()Z
    .registers 1

    sget-boolean v0, Lcom/c/d/a;->b:Z

    return v0
.end method

.method private static e()V
    .registers 2

    invoke-static {}, Lcom/c/d/a;->b()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

.method private static f()Landroid/os/Handler;
    .registers 2

    sget-object v0, Lcom/c/d/a;->f:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/c/d/a;->f:Landroid/os/Handler;

    :cond_f
    sget-object v0, Lcom/c/d/a;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private static g()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    sget-object v0, Lcom/c/d/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_a

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/c/d/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_a
    sget-object v0, Lcom/c/d/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private static h()Landroid/content/Context;
    .registers 2

    sget-object v0, Lcom/c/d/a;->k:Landroid/content/Context;

    if-nez v0, :cond_13

    const-string v0, "warn"

    const-string v1, "getContext with null"

    invoke-static {v0, v1}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :cond_13
    sget-object v0, Lcom/c/d/a;->k:Landroid/content/Context;

    return-object v0
.end method
