.class public final Lb/a/f/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field a:I

.field final b:Lb/a/f/d$b;

.field private final d:Lc/d;

.field private final e:Z

.field private final f:Lc/c;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lb/a/f/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lb/a/f/j;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lc/d;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/f/j;->d:Lc/d;

    iput-boolean p2, p0, Lb/a/f/j;->e:Z

    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    iput-object p1, p0, Lb/a/f/j;->f:Lc/c;

    new-instance p1, Lb/a/f/d$b;

    iget-object p2, p0, Lb/a/f/j;->f:Lc/c;

    invoke-direct {p1, p2}, Lb/a/f/d$b;-><init>(Lc/c;)V

    iput-object p1, p0, Lb/a/f/j;->b:Lb/a/f/d$b;

    const/16 p1, 0x4000

    iput p1, p0, Lb/a/f/j;->a:I

    return-void
.end method

.method private a(IBLc/c;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, v0, p2}, Lb/a/f/j;->a(IIBB)V

    if-lez p4, :cond_c

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lc/d;->a(Lc/c;J)V

    :cond_c
    return-void
.end method

.method private a(IIBB)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a/f/j;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    sget-object v0, Lb/a/f/j;->c:Ljava/util/logging/Logger;

    invoke-static {v1, p1, p2, p3, p4}, Lb/a/f/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_14
    iget v0, p0, Lb/a/f/j;->a:I

    const/4 v2, 0x1

    if-le p2, v0, :cond_31

    const-string p1, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget p4, p0, Lb/a/f/j;->a:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lb/a/f/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_31
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_45

    const-string p2, "reserved bit set: %s"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lb/a/f/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_45
    iget-object v0, p0, Lb/a/f/j;->d:Lc/d;

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0, v1}, Lc/d;->l(I)Lc/d;

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0, v1}, Lc/d;->l(I)Lc/d;

    and-int/lit16 p2, p2, 0xff

    invoke-interface {v0, p2}, Lc/d;->l(I)Lc/d;

    iget-object p2, p0, Lb/a/f/j;->d:Lc/d;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lc/d;->l(I)Lc/d;

    iget-object p2, p0, Lb/a/f/j;->d:Lc/d;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lc/d;->l(I)Lc/d;

    iget-object p2, p0, Lb/a/f/j;->d:Lc/d;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lc/d;->i(I)Lc/d;

    return-void
.end method

.method private declared-synchronized a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lb/a/f/j;->c(ZILjava/util/List;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Lc/d;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lc/d;->l(I)Lc/d;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lc/d;->l(I)Lc/d;

    and-int/lit16 p1, p1, 0xff

    invoke-interface {p0, p1}, Lc/d;->l(I)Lc/d;

    return-void
.end method

.method private b(IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_26

    iget v2, p0, Lb/a/f/j;->a:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long v5, p2, v3

    const/16 p2, 0x9

    cmp-long p3, v5, v0

    if-nez p3, :cond_19

    const/4 p3, 0x4

    goto :goto_1a

    :cond_19
    const/4 p3, 0x0

    :goto_1a
    invoke-direct {p0, p1, v2, p2, p3}, Lb/a/f/j;->a(IIBB)V

    iget-object p2, p0, Lb/a/f/j;->d:Lc/d;

    iget-object p3, p0, Lb/a/f/j;->f:Lc/c;

    invoke-interface {p2, p3, v3, v4}, Lc/d;->a(Lc/c;J)V

    move-wide p2, v5

    goto :goto_0

    :cond_26
    return-void
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lb/a/f/j;->a:I

    return v0
.end method

.method private c(ZILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lb/a/f/j;->b:Lb/a/f/d$b;

    invoke-virtual {v0, p3}, Lb/a/f/d$b;->a(Ljava/util/List;)V

    iget-object p3, p0, Lb/a/f/j;->f:Lc/c;

    iget-wide v0, p3, Lc/c;->c:J

    iget p3, p0, Lb/a/f/j;->a:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    const/4 v4, 0x4

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    :goto_25
    if-eqz p1, :cond_2a

    or-int/lit8 p1, v4, 0x1

    int-to-byte v4, p1

    :cond_2a
    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1, v4}, Lb/a/f/j;->a(IIBB)V

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    iget-object p3, p0, Lb/a/f/j;->f:Lc/c;

    invoke-interface {p1, p3, v2, v3}, Lc/d;->a(Lc/c;J)V

    cmp-long p1, v0, v2

    if-lez p1, :cond_3e

    sub-long v4, v0, v2

    invoke-direct {p0, p2, v4, v5}, Lb/a/f/j;->b(IJ)V

    :cond_3e
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-boolean v0, p0, Lb/a/f/j;->e:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_46

    if-nez v0, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    sget-object v0, Lb/a/f/j;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lb/a/f/j;->c:Ljava/util/logging/Logger;

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lb/a/f/e;->a:Lc/f;

    invoke-virtual {v4}, Lc/f;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lb/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_34
    iget-object v0, p0, Lb/a/f/j;->d:Lc/d;

    sget-object v1, Lb/a/f/e;->a:Lc/f;

    invoke-virtual {v1}, Lc/f;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lc/d;->d([B)Lc/d;

    iget-object v0, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {v0}, Lc/d;->flush()V
    :try_end_44
    .catchall {:try_start_13 .. :try_end_44} :catchall_46

    monitor-exit p0

    return-void

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(IILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget-object v0, p0, Lb/a/f/j;->b:Lb/a/f/d$b;

    invoke-virtual {v0, p3}, Lb/a/f/d$b;->a(Ljava/util/List;)V

    iget-object p3, p0, Lb/a/f/j;->f:Lc/c;

    iget-wide v0, p3, Lc/c;->c:J

    iget p3, p0, Lb/a/f/j;->a:I

    const/4 v2, 0x4

    sub-int/2addr p3, v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    int-to-long v3, p3

    cmp-long v5, v0, v3

    if-nez v5, :cond_27

    const/4 v5, 0x4

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    :goto_28
    add-int/2addr p3, v2

    const/4 v2, 0x5

    invoke-direct {p0, p1, p3, v2, v5}, Lb/a/f/j;->a(IIBB)V

    iget-object p3, p0, Lb/a/f/j;->d:Lc/d;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Lc/d;->i(I)Lc/d;

    iget-object p2, p0, Lb/a/f/j;->d:Lc/d;

    iget-object p3, p0, Lb/a/f/j;->f:Lc/c;

    invoke-interface {p2, p3, v3, v4}, Lc/d;->a(Lc/c;J)V

    cmp-long p2, v0, v3

    if-lez p2, :cond_46

    sub-long p2, v0, v3

    invoke-direct {p0, p1, p2, p3}, Lb/a/f/j;->b(IJ)V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v0, 0x0

    if-eqz v2, :cond_2f

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p2, v1

    if-lez v3, :cond_1c

    goto :goto_2f

    :cond_1c
    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-direct {p0, p1, v1, v2, v0}, Lb/a/f/j;->a(IIBB)V

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lc/d;->i(I)Lc/d;

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {p1}, Lc/d;->flush()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_3f

    monitor-exit p0

    return-void

    :cond_2f
    :goto_2f
    :try_start_2f
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Lb/a/f/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ILb/a/f/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget v0, p2, Lb/a/f/b;->httpCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_18
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lb/a/f/j;->a(IIBB)V

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    iget p2, p2, Lb/a/f/b;->httpCode:I

    invoke-interface {p1, p2}, Lc/d;->i(I)Lc/d;

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {p1}, Lc/d;->flush()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ILb/a/f/b;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget v0, p2, Lb/a/f/b;->httpCode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1c
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    invoke-direct {p0, v2, v0, v1, v2}, Lb/a/f/j;->a(IIBB)V

    iget-object v0, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {v0, p1}, Lc/d;->i(I)Lc/d;

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    iget p2, p2, Lb/a/f/b;->httpCode:I

    invoke-interface {p1, p2}, Lc/d;->i(I)Lc/d;

    array-length p1, p3

    if-lez p1, :cond_37

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {p1, p3}, Lc/d;->d([B)Lc/d;

    :cond_37
    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {p1}, Lc/d;->flush()V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lb/a/f/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget v0, p0, Lb/a/f/j;->a:I

    iget v1, p1, Lb/a/f/n;->i:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1a

    iget-object v0, p1, Lb/a/f/n;->j:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    :cond_1a
    iput v0, p0, Lb/a/f/j;->a:I

    invoke-virtual {p1}, Lb/a/f/n;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lb/a/f/j;->b:Lb/a/f/d$b;

    invoke-virtual {p1}, Lb/a/f/n;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lb/a/f/d$b;->a(I)V

    :cond_2c
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Lb/a/f/j;->a(IIBB)V

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {p1}, Lc/d;->flush()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ZII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2, p1}, Lb/a/f/j;->a(IIBB)V

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {p1, p2}, Lc/d;->i(I)Lc/d;

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {p1, p3}, Lc/d;->i(I)Lc/d;

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {p1}, Lc/d;->flush()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ZILc/c;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, p2, p4, v0, p1}, Lb/a/f/j;->a(IIBB)V

    if-lez p4, :cond_19

    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lc/d;->a(Lc/c;J)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ZILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lb/a/f/j;->c(ZILjava/util/List;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {v0}, Lc/d;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lb/a/f/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget v0, p1, Lb/a/f/n;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lb/a/f/j;->a(IIBB)V

    :goto_1a
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3f

    invoke-virtual {p1, v2}, Lb/a/f/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-ne v2, v1, :cond_28

    const/4 v0, 0x3

    goto :goto_2e

    :cond_28
    const/4 v0, 0x7

    if-ne v2, v0, :cond_2d

    const/4 v0, 0x4

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    iget-object v3, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {v3, v0}, Lc/d;->k(I)Lc/d;

    iget-object v0, p0, Lb/a/f/j;->d:Lc/d;

    iget-object v3, p1, Lb/a/f/n;->j:[I

    aget v3, v3, v2

    invoke-interface {v0, v3}, Lc/d;->i(I)Lc/d;

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_3f
    iget-object p1, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {p1}, Lc/d;->flush()V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(ZILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/f/j;->g:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lb/a/f/j;->c(ZILjava/util/List;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lb/a/f/j;->g:Z

    iget-object v0, p0, Lb/a/f/j;->d:Lc/d;

    invoke-interface {v0}, Lc/d;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
