.class public final Lcom/bumptech/glide/load/b/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/b/a;


# static fields
.field private static final a:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final b:I = 0x1

.field private static final c:I = 0x1

.field private static d:Lcom/bumptech/glide/load/b/b/e;


# instance fields
.field private final e:Lcom/bumptech/glide/load/b/b/m;

.field private final f:Ljava/io/File;

.field private final g:J

.field private final h:Lcom/bumptech/glide/load/b/b/c;

.field private i:Lcom/bumptech/glide/b/a;


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/b/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->h:Lcom/bumptech/glide/load/b/b/c;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/e;->f:Ljava/io/File;

    iput-wide p2, p0, Lcom/bumptech/glide/load/b/b/e;->g:J

    new-instance p1, Lcom/bumptech/glide/load/b/b/m;

    invoke-direct {p1}, Lcom/bumptech/glide/load/b/b/m;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/e;->e:Lcom/bumptech/glide/load/b/b/m;

    return-void
.end method

.method private static declared-synchronized a(Ljava/io/File;J)Lcom/bumptech/glide/load/b/b/a;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/b/b/e;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/b/b/e;->d:Lcom/bumptech/glide/load/b/b/e;

    if-nez v1, :cond_e

    new-instance v1, Lcom/bumptech/glide/load/b/b/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/b/b/e;-><init>(Ljava/io/File;J)V

    sput-object v1, Lcom/bumptech/glide/load/b/b/e;->d:Lcom/bumptech/glide/load/b/b/e;

    :cond_e
    sget-object p0, Lcom/bumptech/glide/load/b/b/e;->d:Lcom/bumptech/glide/load/b/b/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized b()Lcom/bumptech/glide/b/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->i:Lcom/bumptech/glide/b/a;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->f:Ljava/io/File;

    iget-wide v1, p0, Lcom/bumptech/glide/load/b/b/e;->g:J

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;J)Lcom/bumptech/glide/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->i:Lcom/bumptech/glide/b/a;

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->i:Lcom/bumptech/glide/b/a;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Ljava/io/File;J)Lcom/bumptech/glide/load/b/b/a;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/b/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/b/b/e;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method private declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->i:Lcom/bumptech/glide/b/a;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/g;)Ljava/io/File;
    .registers 6

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->e:Lcom/bumptech/glide/load/b/b/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/b/m;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get: Obtained: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 p1, 0x0

    :try_start_2b
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->b()Lcom/bumptech/glide/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/b/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/b/a$d;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, v0, Lcom/bumptech/glide/b/a$d;->a:[Ljava/io/File;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3a} :catch_3c

    move-object p1, v0

    return-object p1

    :catch_3c
    move-exception v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to get from disk cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4d
    return-object p1
.end method

.method public final declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->b()Lcom/bumptech/glide/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->a()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_f
    .catchall {:try_start_1 .. :try_end_8} :catchall_d

    :try_start_8
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->c()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_29

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    goto :goto_25

    :catch_f
    move-exception v0

    :try_start_10
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache or disk cache cleared externally"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_d

    :cond_20
    :try_start_20
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->c()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_29

    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->c()V

    throw v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/b/a$b;)V
    .registers 8

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->e:Lcom/bumptech/glide/load/b/b/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/b/m;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/e;->h:Lcom/bumptech/glide/load/b/b/c;

    monitor-enter v1

    :try_start_9
    iget-object v2, v1, Lcom/bumptech/glide/load/b/b/c;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/b/b/c$a;

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/bumptech/glide/load/b/b/c;->b:Lcom/bumptech/glide/load/b/b/c$b;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/b/c$b;->a()Lcom/bumptech/glide/load/b/b/c$a;

    move-result-object v2

    iget-object v3, v1, Lcom/bumptech/glide/load/b/b/c;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget v3, v2, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_ae

    iget-object v1, v2, Lcom/bumptech/glide/load/b/b/c$a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2a
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Put: Obtained: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_a7

    :cond_4e
    :try_start_4e
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->b()Lcom/bumptech/glide/b/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/b/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/b/a$d;

    move-result-object v1
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_95
    .catchall {:try_start_4e .. :try_end_56} :catchall_a7

    if-eqz v1, :cond_5e

    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/bumptech/glide/load/b/b/e;->h:Lcom/bumptech/glide/load/b/b/c;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/b/b/c;->a(Ljava/lang/String;)V

    return-void

    :cond_5e
    const-wide/16 v1, -0x1

    :try_start_60
    invoke-virtual {p1, v0, v1, v2}, Lcom/bumptech/glide/b/a;->a(Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;

    move-result-object p1

    if-nez p1, :cond_7a

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Had two simultaneous puts for: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_7a} :catch_95
    .catchall {:try_start_60 .. :try_end_7a} :catchall_a7

    :cond_7a
    const/4 v1, 0x0

    :try_start_7b
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/b/a$b;->a(I)Ljava/io/File;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/b/b/a$b;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_8c

    iget-object p2, p1, Lcom/bumptech/glide/b/a$b;->d:Lcom/bumptech/glide/b/a;

    invoke-static {p2, p1, v4}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$b;Z)V

    iput-boolean v4, p1, Lcom/bumptech/glide/b/a$b;->c:Z
    :try_end_8c
    .catchall {:try_start_7b .. :try_end_8c} :catchall_90

    :cond_8c
    :try_start_8c
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a$b;->b()V

    goto :goto_58

    :catchall_90
    move-exception p2

    invoke-virtual {p1}, Lcom/bumptech/glide/b/a$b;->b()V

    throw p2
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_95} :catch_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_a7

    :catch_95
    move-exception p1

    :try_start_96
    const-string p2, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_58

    const-string p2, "DiskLruCacheWrapper"

    const-string v1, "Unable to put to disk cache"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_96 .. :try_end_a6} :catchall_a7

    goto :goto_58

    :catchall_a7
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/b/b/e;->h:Lcom/bumptech/glide/load/b/b/c;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/b/b/c;->a(Ljava/lang/String;)V

    throw p1

    :catchall_ae
    move-exception p1

    :try_start_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p1
.end method

.method public final b(Lcom/bumptech/glide/load/g;)V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->e:Lcom/bumptech/glide/load/b/b/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/b/m;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/String;

    move-result-object p1

    :try_start_6
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->b()Lcom/bumptech/glide/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/b/a;->b(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    const-string v0, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "DiskLruCacheWrapper"

    const-string v1, "Unable to delete from disk cache"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    return-void
.end method
