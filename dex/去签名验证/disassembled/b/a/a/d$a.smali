.class public final Lb/a/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final a:Lb/a/a/d$b;

.field final b:[Z

.field final synthetic c:Lb/a/a/d;

.field private d:Z


# direct methods
.method constructor <init>(Lb/a/a/d;Lb/a/a/d$b;)V
    .registers 3

    iput-object p1, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-boolean p2, p2, Lb/a/a/d$b;->e:Z

    if-eqz p2, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    :cond_d
    iget p1, p1, Lb/a/a/d;->j:I

    new-array p1, p1, [Z

    :goto_11
    iput-object p1, p0, Lb/a/a/d$a;->b:[Z

    return-void
.end method

.method private b(I)Lc/y;
    .registers 6

    iget-object v0, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lb/a/a/d$a;->d:Z

    if-eqz v1, :cond_d

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_d
    iget-object v1, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-boolean v1, v1, Lb/a/a/d$b;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-object v1, v1, Lb/a/a/d$b;->f:Lb/a/a/d$a;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2f

    if-eq v1, p0, :cond_1b

    goto :goto_2d

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    iget-object v1, v1, Lb/a/a/d;->h:Lb/a/g/a;

    iget-object v3, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-object v3, v3, Lb/a/a/d$b;->c:[Ljava/io/File;

    aget-object p1, v3, p1

    invoke-interface {v1, p1}, Lb/a/g/a;->a(Ljava/io/File;)Lc/y;

    move-result-object p1
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_29} :catch_2b
    .catchall {:try_start_1b .. :try_end_29} :catchall_2f

    :try_start_29
    monitor-exit v0

    return-object p1

    :catch_2b
    monitor-exit v0

    return-object v2

    :cond_2d
    :goto_2d
    monitor-exit v0

    return-object v2

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lb/a/a/d$a;->d:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-object v1, v1, Lb/a/a/d$b;->f:Lb/a/a/d$a;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    if-ne v1, p0, :cond_13

    :try_start_d
    iget-object v1, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lb/a/a/d;->a(Lb/a/a/d$a;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    :catch_13
    :cond_13
    :try_start_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public final a(I)Lc/x;
    .registers 5

    iget-object v0, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lb/a/a/d$a;->d:Z

    if-eqz v1, :cond_d

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_d
    iget-object v1, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-object v1, v1, Lb/a/a/d$b;->f:Lb/a/a/d$a;

    if-eq v1, p0, :cond_19

    invoke-static {}, Lc/p;->a()Lc/x;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_19
    iget-object v1, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-boolean v1, v1, Lb/a/a/d$b;->e:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lb/a/a/d$a;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    :cond_24
    iget-object v1, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-object v1, v1, Lb/a/a/d$b;->d:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_3f

    :try_start_2a
    iget-object v1, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    iget-object v1, v1, Lb/a/a/d;->h:Lb/a/g/a;

    invoke-interface {v1, p1}, Lb/a/g/a;->b(Ljava/io/File;)Lc/x;

    move-result-object p1
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_32} :catch_39
    .catchall {:try_start_2a .. :try_end_32} :catchall_3f

    :try_start_32
    new-instance v1, Lb/a/a/d$a$1;

    invoke-direct {v1, p0, p1}, Lb/a/a/d$a$1;-><init>(Lb/a/a/d$a;Lc/x;)V

    monitor-exit v0

    return-object v1

    :catch_39
    invoke-static {}, Lc/p;->a()Lc/x;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method final a()V
    .registers 4

    iget-object v0, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-object v0, v0, Lb/a/a/d$b;->f:Lb/a/a/d$a;

    if-ne v0, p0, :cond_22

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->j:I

    if-ge v0, v1, :cond_1d

    :try_start_d
    iget-object v1, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    iget-object v1, v1, Lb/a/a/d;->h:Lb/a/g/a;

    iget-object v2, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-object v2, v2, Lb/a/a/d$b;->d:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lb/a/g/a;->d(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_1a

    :catch_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    iget-object v0, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/a/a/d$b;->f:Lb/a/a/d$a;

    :cond_22
    return-void
.end method

.method public final b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lb/a/a/d$a;->d:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_d
    iget-object v1, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-object v1, v1, Lb/a/a/d$b;->f:Lb/a/a/d$a;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_19

    iget-object v1, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    invoke-virtual {v1, p0, v2}, Lb/a/a/d;->a(Lb/a/a/d$a;Z)V

    :cond_19
    iput-boolean v2, p0, Lb/a/a/d$a;->d:Z

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lb/a/a/d$a;->d:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_d
    iget-object v1, p0, Lb/a/a/d$a;->a:Lb/a/a/d$b;

    iget-object v1, v1, Lb/a/a/d$b;->f:Lb/a/a/d$a;

    if-ne v1, p0, :cond_19

    iget-object v1, p0, Lb/a/a/d$a;->c:Lb/a/a/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lb/a/a/d;->a(Lb/a/a/d$a;Z)V

    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/a/a/d$a;->d:Z

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method
