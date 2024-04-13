.class public final Lcom/b/a/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic j:Z = true


# instance fields
.field final b:Lcom/b/a/a/f/a;

.field final c:I

.field d:Lcom/b/b/g;

.field final e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/b/a/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:Z

.field h:Z

.field i:Z

.field private k:J

.field private l:J

.field private final m:Ljava/util/concurrent/Executor;

.field private final n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a/f;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private a()Z
    .registers 3

    iget v0, p0, Lcom/b/a/a/a/f;->f:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/b/a/a/a/f;->f:I

    iget-object v1, p0, Lcom/b/a/a/a/f;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private a(Lcom/b/a/a/a/h;)Z
    .registers 10

    iget-object v0, p1, Lcom/b/a/a/a/h;->f:Lcom/b/a/a/a/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/b/a/a/a/h;->f:Lcom/b/a/a/a/g;

    iget-object v2, v0, Lcom/b/a/a/a/g;->a:Lcom/b/a/a/a/h;

    iget-object v2, v2, Lcom/b/a/a/a/h;->f:Lcom/b/a/a/a/g;

    if-ne v2, v0, :cond_29

    const/4 v2, 0x0

    :goto_e
    iget-object v3, v0, Lcom/b/a/a/a/g;->b:Lcom/b/a/a/a/f;

    iget v3, v3, Lcom/b/a/a/a/f;->c:I

    if-ge v2, v3, :cond_24

    :try_start_14
    iget-object v3, v0, Lcom/b/a/a/a/g;->b:Lcom/b/a/a/a/f;

    iget-object v3, v3, Lcom/b/a/a/a/f;->b:Lcom/b/a/a/f/a;

    iget-object v4, v0, Lcom/b/a/a/a/g;->a:Lcom/b/a/a/a/h;

    iget-object v4, v4, Lcom/b/a/a/a/h;->d:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/b/a/a/f/a;->a(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_21

    :catch_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    iget-object v0, v0, Lcom/b/a/a/a/g;->a:Lcom/b/a/a/a/h;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/b/a/a/a/h;->f:Lcom/b/a/a/a/g;

    :cond_29
    :goto_29
    iget v0, p0, Lcom/b/a/a/a/f;->c:I

    if-ge v1, v0, :cond_49

    iget-object v0, p0, Lcom/b/a/a/a/f;->b:Lcom/b/a/a/f/a;

    iget-object v2, p1, Lcom/b/a/a/a/h;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Lcom/b/a/a/f/a;->a(Ljava/io/File;)V

    iget-wide v2, p0, Lcom/b/a/a/a/f;->l:J

    iget-object v0, p1, Lcom/b/a/a/a/h;->b:[J

    aget-wide v4, v0, v1

    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/b/a/a/a/f;->l:J

    iget-object v0, p1, Lcom/b/a/a/a/h;->b:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_49
    iget v0, p0, Lcom/b/a/a/a/f;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/a/a/f;->f:I

    iget-object v0, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lcom/b/b/g;->h(I)Lcom/b/b/g;

    move-result-object v0

    iget-object v2, p1, Lcom/b/a/a/a/h;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/b/b/g;->h(I)Lcom/b/b/g;

    iget-object v0, p0, Lcom/b/a/a/a/f;->e:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/b/a/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/b/a/a/a/f;->a()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/b/a/a/a/f;->m:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/b/a/a/a/f;->n:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7c
    return v1
.end method

.method private declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/a/a/f;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/b/a/a/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .registers 6

    :goto_0
    iget-wide v0, p0, Lcom/b/a/a/a/f;->l:J

    iget-wide v2, p0, Lcom/b/a/a/a/f;->k:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    iget-object v0, p0, Lcom/b/a/a/a/f;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a/h;

    invoke-direct {p0, v0}, Lcom/b/a/a/a/f;->a(Lcom/b/a/a/a/h;)Z

    goto :goto_0

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/a/f;->i:Z

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/b/a/a/a/g;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/b/a/a/a/g;->a:Lcom/b/a/a/a/h;

    iget-object v1, v0, Lcom/b/a/a/a/h;->f:Lcom/b/a/a/a/g;

    if-eq v1, p1, :cond_d

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_d
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_f
    iget v2, p0, Lcom/b/a/a/a/f;->c:I

    if-ge v1, v2, :cond_1f

    iget-object v2, v0, Lcom/b/a/a/a/h;->d:[Ljava/io/File;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/b/a/a/a/f;->b:Lcom/b/a/a/f/a;

    invoke-interface {v3, v2}, Lcom/b/a/a/f/a;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    iget v1, p0, Lcom/b/a/a/a/f;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/b/a/a/a/f;->f:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/b/a/a/a/h;->f:Lcom/b/a/a/a/g;

    iget-boolean v1, v0, Lcom/b/a/a/a/h;->e:Z

    or-int/2addr p1, v1

    const/16 v1, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_50

    iput-boolean v2, v0, Lcom/b/a/a/a/h;->e:Z

    iget-object p1, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    const-string v2, "CLEAN"

    invoke-interface {p1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/b/b/g;->h(I)Lcom/b/b/g;

    iget-object p1, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    iget-object v2, v0, Lcom/b/a/a/a/h;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    iget-object p1, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    invoke-virtual {v0, p1}, Lcom/b/a/a/a/h;->a(Lcom/b/b/g;)V

    iget-object p1, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    :goto_4c
    invoke-interface {p1, v1}, Lcom/b/b/g;->h(I)Lcom/b/b/g;

    goto :goto_6c

    :cond_50
    iget-object p1, p0, Lcom/b/a/a/a/f;->e:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/b/a/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    const-string v2, "REMOVE"

    invoke-interface {p1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/b/b/g;->h(I)Lcom/b/b/g;

    iget-object p1, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    iget-object v0, v0, Lcom/b/a/a/a/h;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    iget-object p1, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    goto :goto_4c

    :goto_6c
    iget-object p1, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    invoke-interface {p1}, Lcom/b/b/g;->flush()V

    iget-wide v0, p0, Lcom/b/a/a/a/f;->l:J

    iget-wide v2, p0, Lcom/b/a/a/a/f;->k:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_7f

    invoke-direct {p0}, Lcom/b/a/a/a/f;->a()Z

    move-result p1

    if-eqz p1, :cond_86

    :cond_7f
    iget-object p1, p0, Lcom/b/a/a/a/f;->m:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/b/a/a/a/f;->n:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_88

    :cond_86
    monitor-exit p0

    return-void

    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/a/a/f;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/b/a/a/a/f;->h:Z

    if-eqz v0, :cond_b

    goto :goto_40

    :cond_b
    iget-object v0, p0, Lcom/b/a/a/a/f;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/a/a/f;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/b/a/a/a/h;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/a/h;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_31

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/b/a/a/a/h;->f:Lcom/b/a/a/a/g;

    if-eqz v5, :cond_2e

    iget-object v4, v4, Lcom/b/a/a/a/h;->f:Lcom/b/a/a/a/g;

    invoke-virtual {v4}, Lcom/b/a/a/a/g;->a()V

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_31
    invoke-direct {p0}, Lcom/b/a/a/a/f;->d()V

    iget-object v0, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    iput-boolean v1, p0, Lcom/b/a/a/a/f;->h:Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_44

    monitor-exit p0

    return-void

    :cond_40
    :goto_40
    :try_start_40
    iput-boolean v1, p0, Lcom/b/a/a/a/f;->h:Z
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_44

    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/a/a/f;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/b/a/a/a/f;->c()V

    invoke-direct {p0}, Lcom/b/a/a/a/f;->d()V

    iget-object v0, p0, Lcom/b/a/a/a/f;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
