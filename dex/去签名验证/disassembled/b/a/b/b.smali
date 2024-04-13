.class final Lb/a/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/b$a;
    }
.end annotation


# static fields
.field static final a:Lc/f;

.field static final b:Lc/f;

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:J = 0x20L


# instance fields
.field c:Ljava/io/RandomAccessFile;

.field d:Ljava/lang/Thread;

.field e:Lc/y;

.field final f:Lc/c;

.field g:J

.field h:Z

.field final i:Lc/c;

.field final j:J

.field k:I

.field private final o:Lc/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/b;->a:Lc/f;

    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/b;->b:Lc/f;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lc/y;JLc/f;J)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    iput-object v0, p0, Lb/a/b/b;->f:Lc/c;

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    iput-object v0, p0, Lb/a/b/b;->i:Lc/c;

    iput-object p1, p0, Lb/a/b/b;->c:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lb/a/b/b;->e:Lc/y;

    if-nez p2, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-boolean p1, p0, Lb/a/b/b;->h:Z

    iput-wide p3, p0, Lb/a/b/b;->g:J

    iput-object p5, p0, Lb/a/b/b;->o:Lc/f;

    iput-wide p6, p0, Lb/a/b/b;->j:J

    return-void
.end method

.method private static a(Ljava/io/File;)Lb/a/b/b;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lb/a/b/a;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/b/a;-><init>(Ljava/nio/channels/FileChannel;)V

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x20

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lb/a/b/a;->b(JLc/c;J)V

    sget-object v2, Lb/a/b/b;->a:Lc/f;

    invoke-virtual {v2}, Lc/f;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lc/c;->d(J)Lc/f;

    move-result-object v2

    sget-object v3, Lb/a/b/b;->a:Lc/f;

    invoke-virtual {v2, v3}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    new-instance p0, Ljava/io/IOException;

    const-string v0, "unreadable cache file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    invoke-virtual {v0}, Lc/c;->j()J

    move-result-wide v8

    invoke-virtual {v0}, Lc/c;->j()J

    move-result-wide v6

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    const-wide/16 v2, 0x20

    add-long v4, v8, v2

    move-object v2, p0

    move-wide v3, v4

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lb/a/b/a;->b(JLc/c;J)V

    invoke-virtual {v0}, Lc/c;->p()Lc/f;

    move-result-object v5

    new-instance p0, Lb/a/b/b;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Lb/a/b/b;-><init>(Ljava/io/RandomAccessFile;Lc/y;JLc/f;J)V

    return-object p0
.end method

.method private static a(Ljava/io/File;Lc/y;Lc/f;J)Lb/a/b/b;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v8, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lb/a/b/b;

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lb/a/b/b;-><init>(Ljava/io/RandomAccessFile;Lc/y;JLc/f;J)V

    const-wide/16 p1, 0x0

    invoke-virtual {v8, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    sget-object v2, Lb/a/b/b;->b:Lc/f;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lb/a/b/b;->a(Lc/f;JJ)V

    return-object p0
.end method

.method private a(Lc/f;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Lc/c;

    invoke-direct {v3}, Lc/c;-><init>()V

    invoke-virtual {v3, p1}, Lc/c;->a(Lc/f;)Lc/c;

    invoke-virtual {v3, p2, p3}, Lc/c;->i(J)Lc/c;

    invoke-virtual {v3, p4, p5}, Lc/c;->i(J)Lc/c;

    iget-wide p1, v3, Lc/c;->c:J

    const-wide/16 p3, 0x20

    cmp-long p5, p1, p3

    if-eqz p5, :cond_1c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1c
    new-instance v0, Lb/a/b/a;

    iget-object p1, p0, Lb/a/b/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/b/a;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual/range {v0 .. v5}, Lb/a/b/a;->a(JLc/c;J)V

    return-void
.end method

.method private a()Z
    .registers 2

    iget-object v0, p0, Lb/a/b/b;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private b()Lc/f;
    .registers 2

    iget-object v0, p0, Lb/a/b/b;->o:Lc/f;

    return-object v0
.end method

.method private b(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Lc/c;

    invoke-direct {v3}, Lc/c;-><init>()V

    iget-object v0, p0, Lb/a/b/b;->o:Lc/f;

    invoke-virtual {v3, v0}, Lc/c;->a(Lc/f;)Lc/c;

    new-instance v0, Lb/a/b/a;

    iget-object v1, p0, Lb/a/b/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/b/a;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long v4, p1, v1

    iget-object p1, p0, Lb/a/b/b;->o:Lc/f;

    invoke-virtual {p1}, Lc/f;->size()I

    move-result p1

    int-to-long p1, p1

    move-wide v1, v4

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lb/a/b/a;->a(JLc/c;J)V

    return-void
.end method

.method private c()Lc/y;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lb/a/b/b;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    iget v0, p0, Lb/a/b/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/b/b;->k:I

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    new-instance v0, Lb/a/b/b$a;

    invoke-direct {v0, p0}, Lb/a/b/b$a;-><init>(Lb/a/b/b;)V

    return-object v0

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method final a(J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Lc/c;

    invoke-direct {v3}, Lc/c;-><init>()V

    iget-object v0, p0, Lb/a/b/b;->o:Lc/f;

    invoke-virtual {v3, v0}, Lc/c;->a(Lc/f;)Lc/c;

    new-instance v0, Lb/a/b/a;

    iget-object v1, p0, Lb/a/b/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/b/a;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long v4, p1, v1

    iget-object v1, p0, Lb/a/b/b;->o:Lc/f;

    invoke-virtual {v1}, Lc/f;->size()I

    move-result v1

    int-to-long v6, v1

    move-wide v1, v4

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Lb/a/b/a;->a(JLc/c;J)V

    iget-object v0, p0, Lb/a/b/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    sget-object v3, Lb/a/b/b;->a:Lc/f;

    iget-object v0, p0, Lb/a/b/b;->o:Lc/f;

    invoke-virtual {v0}, Lc/f;->size()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lb/a/b/b;->a(Lc/f;JJ)V

    iget-object p1, p0, Lb/a/b/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_48
    iput-boolean p1, p0, Lb/a/b/b;->h:Z

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_54

    iget-object p1, p0, Lb/a/b/b;->e:Lc/y;

    invoke-static {p1}, Lb/a/c;->a(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/a/b/b;->e:Lc/y;

    return-void

    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1
.end method
