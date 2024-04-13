.class public final Lb/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c$b;,
        Lb/c$c;,
        Lb/c$a;
    }
.end annotation


# static fields
.field private static final e:I = 0x31191

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field final a:Lb/a/a/f;

.field final b:Lb/a/a/d;

.field c:I

.field d:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/io/File;J)V
    .registers 5

    sget-object v0, Lb/a/g/a;->a:Lb/a/g/a;

    invoke-direct {p0, p1, p2, p3, v0}, Lb/c;-><init>(Ljava/io/File;JLb/a/g/a;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JLb/a/g/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/c$1;

    invoke-direct {v0, p0}, Lb/c$1;-><init>(Lb/c;)V

    iput-object v0, p0, Lb/c;->a:Lb/a/a/f;

    invoke-static {p4, p1, p2, p3}, Lb/a/a/d;->a(Lb/a/g/a;Ljava/io/File;J)Lb/a/a/d;

    move-result-object p1

    iput-object p1, p0, Lb/c;->b:Lb/a/a/d;

    return-void
.end method

.method static a(Lc/e;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lc/e;->n()J

    move-result-wide v0

    invoke-interface {p0}, Lc/e;->s()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1e

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_1e

    :cond_1c
    long-to-int p0, v0

    return p0

    :cond_1e
    :goto_1e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "expected an int but was \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lb/v;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lb/v;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object p0

    invoke-virtual {p0}, Lc/f;->md5()Lc/f;

    move-result-object p0

    invoke-virtual {p0}, Lc/f;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lb/a/a/d$a;)V
    .registers 1
    .param p0    # Lb/a/a/d$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_6

    :try_start_2
    invoke-virtual {p0}, Lb/a/a/d$a;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    :cond_6
    return-void
.end method

.method private static a(Lb/ae;Lb/ae;)V
    .registers 6

    new-instance v0, Lb/c$c;

    invoke-direct {v0, p1}, Lb/c$c;-><init>(Lb/ae;)V

    iget-object p0, p0, Lb/ae;->g:Lb/af;

    check-cast p0, Lb/c$b;

    iget-object p0, p0, Lb/c$b;->a:Lb/a/a/d$c;

    :try_start_b
    iget-object p1, p0, Lb/a/a/d$c;->d:Lb/a/a/d;

    iget-object v1, p0, Lb/a/a/d$c;->a:Ljava/lang/String;

    iget-wide v2, p0, Lb/a/a/d$c;->b:J

    invoke-virtual {p1, v1, v2, v3}, Lb/a/a/d;->a(Ljava/lang/String;J)Lb/a/a/d$a;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_1e

    if-eqz p0, :cond_1d

    :try_start_17
    invoke-virtual {v0, p0}, Lb/c$c;->a(Lb/a/a/d$a;)V

    invoke-virtual {p0}, Lb/a/a/d$a;->b()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1f

    :cond_1d
    return-void

    :catch_1e
    const/4 p0, 0x0

    :catch_1f
    invoke-static {p0}, Lb/c;->a(Lb/a/a/d$a;)V

    return-void
.end method

.method private b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->a()V

    return-void
.end method

.method private c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->h()V

    return-void
.end method

.method private d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->i()V

    return-void
.end method

.method private e()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/c$2;

    invoke-direct {v0, p0}, Lb/c$2;-><init>(Lb/c;)V

    return-object v0
.end method

.method private declared-synchronized f()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lb/c;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lb/c;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private i()J
    .registers 3

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method private j()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    iget-object v0, v0, Lb/a/a/d;->i:Ljava/io/File;

    return-object v0
.end method

.method private k()Z
    .registers 2

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->f()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized l()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lb/c;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lb/c;->j:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lb/c;->k:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a(Lb/ae;)Lb/a/a/b;
    .registers 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p1, Lb/ae;->a:Lb/ac;

    iget-object v0, v0, Lb/ac;->b:Ljava/lang/String;

    iget-object v1, p1, Lb/ae;->a:Lb/ac;

    iget-object v1, v1, Lb/ac;->b:Ljava/lang/String;

    invoke-static {v1}, Lb/a/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    :try_start_f
    iget-object p1, p1, Lb/ae;->a:Lb/ac;

    invoke-virtual {p0, p1}, Lb/c;->b(Lb/ac;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_14

    :catch_14
    return-object v2

    :cond_15
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    return-object v2

    :cond_1e
    invoke-static {p1}, Lb/a/d/e;->b(Lb/ae;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-object v2

    :cond_25
    new-instance v0, Lb/c$c;

    invoke-direct {v0, p1}, Lb/c$c;-><init>(Lb/ae;)V

    :try_start_2a
    iget-object v1, p0, Lb/c;->b:Lb/a/a/d;

    iget-object p1, p1, Lb/ae;->a:Lb/ac;

    iget-object p1, p1, Lb/ac;->a:Lb/v;

    invoke-static {p1}, Lb/c;->a(Lb/v;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v3, -0x1

    invoke-virtual {v1, p1, v3, v4}, Lb/a/a/d;->a(Ljava/lang/String;J)Lb/a/a/d$a;

    move-result-object p1
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3a} :catch_46

    if-nez p1, :cond_3d

    return-object v2

    :cond_3d
    :try_start_3d
    invoke-virtual {v0, p1}, Lb/c$c;->a(Lb/a/a/d$a;)V

    new-instance v0, Lb/c$a;

    invoke-direct {v0, p0, p1}, Lb/c$a;-><init>(Lb/c;Lb/a/a/d$a;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_45} :catch_47

    return-object v0

    :catch_46
    move-object p1, v2

    :catch_47
    invoke-static {p1}, Lb/c;->a(Lb/a/a/d$a;)V

    return-object v2
.end method

.method final a(Lb/ac;)Lb/ae;
    .registers 11
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p1, Lb/ac;->a:Lb/v;

    invoke-static {v0}, Lb/c;->a(Lb/v;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v2, v0}, Lb/a/a/d;->a(Ljava/lang/String;)Lb/a/a/d$c;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_a2

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    :try_start_10
    new-instance v2, Lb/c$c;

    iget-object v3, v0, Lb/a/a/d$c;->c:[Lc/y;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Lb/c$c;-><init>(Lc/y;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_9f

    iget-object v3, v2, Lb/c$c;->g:Lb/u;

    const-string v5, "Content-Type"

    invoke-virtual {v3, v5}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lb/c$c;->g:Lb/u;

    const-string v6, "Content-Length"

    invoke-virtual {v5, v6}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lb/ac$a;

    invoke-direct {v6}, Lb/ac$a;-><init>()V

    iget-object v7, v2, Lb/c$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lb/ac$a;->a(Ljava/lang/String;)Lb/ac$a;

    move-result-object v6

    iget-object v7, v2, Lb/c$c;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object v6

    iget-object v7, v2, Lb/c$c;->b:Lb/u;

    invoke-virtual {v6, v7}, Lb/ac$a;->a(Lb/u;)Lb/ac$a;

    move-result-object v6

    invoke-virtual {v6}, Lb/ac$a;->d()Lb/ac;

    move-result-object v6

    new-instance v7, Lb/ae$a;

    invoke-direct {v7}, Lb/ae$a;-><init>()V

    iput-object v6, v7, Lb/ae$a;->a:Lb/ac;

    iget-object v6, v2, Lb/c$c;->d:Lb/aa;

    iput-object v6, v7, Lb/ae$a;->b:Lb/aa;

    iget v6, v2, Lb/c$c;->e:I

    iput v6, v7, Lb/ae$a;->c:I

    iget-object v6, v2, Lb/c$c;->f:Ljava/lang/String;

    iput-object v6, v7, Lb/ae$a;->d:Ljava/lang/String;

    iget-object v6, v2, Lb/c$c;->g:Lb/u;

    invoke-virtual {v7, v6}, Lb/ae$a;->a(Lb/u;)Lb/ae$a;

    move-result-object v6

    new-instance v7, Lb/c$b;

    invoke-direct {v7, v0, v3, v5}, Lb/c$b;-><init>(Lb/a/a/d$c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lb/ae$a;->g:Lb/af;

    iget-object v0, v2, Lb/c$c;->h:Lb/t;

    iput-object v0, v6, Lb/ae$a;->e:Lb/t;

    iget-wide v7, v2, Lb/c$c;->i:J

    iput-wide v7, v6, Lb/ae$a;->k:J

    iget-wide v7, v2, Lb/c$c;->j:J

    iput-wide v7, v6, Lb/ae$a;->l:J

    invoke-virtual {v6}, Lb/ae$a;->a()Lb/ae;

    move-result-object v0

    iget-object v3, v2, Lb/c$c;->a:Ljava/lang/String;

    iget-object v5, p1, Lb/ac;->a:Lb/v;

    invoke-virtual {v5}, Lb/v;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v3, v2, Lb/c$c;->c:Ljava/lang/String;

    iget-object v5, p1, Lb/ac;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v2, v2, Lb/c$c;->b:Lb/u;

    invoke-static {v0, v2, p1}, Lb/a/d/e;->a(Lb/ae;Lb/u;Lb/ac;)Z

    move-result p1

    if-eqz p1, :cond_96

    const/4 v4, 0x1

    :cond_96
    if-nez v4, :cond_9e

    iget-object p1, v0, Lb/ae;->g:Lb/af;

    invoke-static {p1}, Lb/a/c;->a(Ljava/io/Closeable;)V

    return-object v1

    :cond_9e
    return-object v0

    :catch_9f
    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    :catch_a2
    return-object v1
.end method

.method final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lb/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/c;->j:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lb/a/a/c;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lb/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/c;->k:I

    iget-object v0, p1, Lb/a/a/c;->a:Lb/ac;

    if-eqz v0, :cond_13

    iget p1, p0, Lb/c;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/c;->i:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1f

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget-object p1, p1, Lb/a/a/c;->b:Lb/ae;

    if-eqz p1, :cond_1d

    iget p1, p0, Lb/c;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/c;->j:I
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final b(Lb/ac;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    iget-object p1, p1, Lb/ac;->a:Lb/v;

    invoke-static {p1}, Lb/c;->a(Lb/v;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/a/a/d;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->close()V

    return-void
.end method

.method public final flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->flush()V

    return-void
.end method
